module.exports = (grunt)->

  grunt.initConfig

    pkg: grunt.file.readJSON('package.json')
      connect:
        example:
          port: 8000
          base: 'public'
      coffee:
        glob_to_multiple:
          expand: true
          flatten: false
          cwd: 'zdev/coffee/'
          src: ['**/*.coffee']
          dest: 'public/app/'
          ext: '.js'

    grunt.loadNpmTasks 'grunt-connect'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.registerTask 'default', ['coffee', 'connect:example']
