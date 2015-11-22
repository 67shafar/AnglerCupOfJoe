path = require 'path'

module.exports = (grunt)->

  seleniumPath = path.resolve './node_modules/protractor/selenium'

  grunt.initConfig

    project:
      app: 'public/app'
      coffee: 'zdev/coffee'
      sass: 'zdev/sass'
      assets: 'public/assets'
      css: '<%= project.assets %>/css'
      js: '<%= project.assets %>/js'
      img: '<%= project.assets %>/img'
      fonts: '<%= project.assets %>/fonts'
      features: 'zdev/test/features'
      specs: 'zdev/test/specs'

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
      files: './<%= project.features %>/**/*.feature'
      options:
        coffee: true

    shell:
      selenium:
        command: './node_modules/protractor/bin/webdriver-manager start'
        options:
          stdout: true

    coffee:
      glob_to_multiple:
        expand: true
        flatten: false
        cwd: '<%= project.coffee %>'
        src: ['**/*.coffee']
        dest: '<%= project.app %>'
        ext: '.js'

    compass:
      dev:
        options:
          outputStyle: 'expanded'
          httpPath: "public/"
          cssDir: '<%= project.assets %>/css'
          sassDir: "zdev/sass/"
          imagesDir: '<%= project.assets %>/img'
          javascriptsDir: '<%= project.assets %>/js'
          fontsDir: '<%= project.assets %>/fonts'
      dist:
        options:
          httpPath: "public/"
          cssDir: '<%= project.assets %>/css'
          sassDir: "zdev/sass/"
          imagesDir: '<%= project.assets %>img'
          javascriptsDir: '<%= project.assets %>/js'
          fontsDir: '<%= project.assets %>/fonts'
          outputStyle: 'compressed'

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
  
  grunt.registerTask 'server', ['connect:server']
  grunt.registerTask 'default', ['compass:dev','coffee']
  grunt.registerTask 'selenium', ['shell:selenium']
  grunt.registerTask 'e2e', ['env:test', 'cucumberjs']
  grunt.registerTask 'unit', ['mochaTest:unit']
  grunt.registerTask 'build', ['compass:dev','coffee']
  grunt.registerTask 'publish', ['compass:dist', 'coffee']