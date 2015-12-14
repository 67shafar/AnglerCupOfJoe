path = require 'path'

module.exports = (grunt)->

  seleniumPath = path.resolve './node_modules/protractor/selenium'

  grunt.initConfig

    project:
      app: 'public/app'
      coffee: 'zdev/app'
      sass: 'zdev/sass'
      assets: 'public/assets'
      css: '<%= project.assets %>/css'
      js: '<%= project.assets %>/js'
      img: '<%= project.assets %>/img'
      fonts: '<%= project.assets %>/fonts'
      features: 'ztests/features'
      specs: 'ztests/specs'

    env:
      test:
        PATH: "#{seleniumPath}:process.env.PATH"

    pkg: grunt.file.readJSON 'package.json'

    connect:
      server:
        hostname: 'localhost'
        port: 8000
        base: 'public'

    cucumberjs:
      files: '<%= project.features %>/**/*.feature'
      options:
        coffee: true

    shell:
      selenium:
        command: './node_modules/protractor/bin/webdriver-manager start'
        options:
          stdout: true

    coffee:
      dev:
        options:
          sourceMap: true
          join: true
        files: [
          src: '<%= project.coffee %>/**/*.coffee'
          dest:'<%= project.app %>/app.js'
        ]
      dist:
        options:
          join: true
        files: [
          src: '<%= project.coffee %>/**/*.coffee'
          dest:'<%= project.app %>/app.js'
        ]

    compass:
      dev:
        options:
          basePath: 'public/'
          outputStyle: 'expanded'
          cssDir: 'assets/css'
          sassDir: "../zdev/sass/"
          imagesDir: 'assets/img'
          javascriptsDir: 'assets/js'
          fontsDir: 'assets/fonts'
      dist:
        options:
          basePath: 'public/'
          cssDir: 'assets/css'
          sassDir: "../zdev/sass/"
          imagesDir: 'assets/img'
          javascriptsDir: 'assets/js'
          fontsDir: 'assets/fonts'
          outputStyle: 'compressed'

    haml:
      dev:
        expand: true
        cwd: 'zdev'
        src: '**/*.haml'
        dest: 'public'
        ext: '.html'
        flatten: false
      dist:
        expand: true
        cwd: 'zdev'
        src: '**/*.haml'
        dest: 'public'
        ext: '.html'
        flatten: false

    clean:
      all:
        src: ['public/app/**/*', 'public/**/*.html', 'public/**/*.js',
              'public/**/*.css', 'public/**/*.map']
      build:
        src: ['public/**/*.html', 'public/**/*.js', 'public/**/*.css',
              'public/**/*.map']
      dist:
        src: ['public/app/app.js']

    uglify:
      dev:
        options:
          sourceMapIn: '<%= project.app %>/app.js.map'
          sourceMap: true
          sourceMapName: '<%= project.app %>/app.min.js.map'
        files: [
          src: '<%= project.app %>/app.js'
          dest: '<%= project.app %>/app.min.js'
        ]
      dist:
        files: [
          src: '<%= project.app %>/app.js'
          dest: '<%= project.app %>/app.min.js'
        ]

    watch:
      haml:
        files:['zdev/**/*.haml']
        tasks: ['haml:dev']
      coffee:
        files: ['<%= project.coffee %>/**/*.coffee']
        tasks: ['coffee:dev', 'uglify:dev']
      compass:
        files: ['<%= project.sass %>/**/*.sass',
                '<%= project.sass %>/**/*.scss']
        tasks: ['compass:dev']


    mochaTest:
      unit:
        options:
          require: 'coffee-script/register'
        src: ['./<%= project.specs %>/**/*.coffee']

  grunt.loadNpmTasks 'grunt-connect'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-cucumber'
  grunt.loadNpmTasks 'grunt-env'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-mocha-test'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-contrib-haml'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'server', ['connect:server']
  grunt.registerTask 'default', ['compass:dev','coffee:dev', 'haml:dev',
                                 'uglify:dev']
  grunt.registerTask 'selenium', ['shell:selenium']
  grunt.registerTask 'e2e', ['env:test', 'cucumberjs']
  grunt.registerTask 'unit', ['mochaTest:unit']
  grunt.registerTask 'build', ['clean:all', 'compass:dev','coffee:dev',
                               'haml:dev', 'uglify:dev']
  grunt.registerTask 'publish', ['clean:all', 'compass:dist', 'coffee:dist',
                                 'haml:dist', 'uglify:dist', 'clean:dist']