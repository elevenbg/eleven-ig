# Exports

module.exports = (grunt) ->


  # Configure

  grunt.initConfig({
    clean: {
      any: []
      all: ['dist/app', 'www']
    }
    coffee: {
      app: {
        expand: true
        cwd: 'app'
        ext: '.js'
        src: ['**/*.coffee']
        dest: 'dist/app'
      }
    }
    coffee_jshint: {
      app: {
        options: {
          globals: ['console', 'window', 'it', 'describe', 'before']
        }
        files: [{
          src: 'app/**/*.coffee'
        }]
      }
      # test: {
      #   options: {
      #     globals: [
      #       'require', 'console', 'it', 'describe', 'before', 'beforeEach',
      #       'after', 'module'
      #     ]
      #   }
      #   files: [{
      #     src: 'test/**/*.coffee'
      #   }]
      # }
    }
    connect: {
      server: {
        options: {
          base: 'www'
          # keepalive: true
          hostname: '127.0.0.1'
          port: 1337
          livereload: 1338
        }
      }
    }
    jade: {
      www: {
        expand: true
        cwd: 'templates/www'
        src: ['**/*.jade']
        dest: 'www'
        ext: '.html'
      }
      appDev: {
        options: {
          amd: true
          client: true
          namespace: false
        }
        expand: true
        cwd: 'templates/app'
        src: ['**/*.jade']
        dest: 'dist/app/templates'
        ext: '.js'
      }
      appProd: {
        options: {
          amd: true
          client: true
          namespace: false
          compileDebug: false
        }
        expand: true
        cwd: 'templates/app'
        src: ['**/*.jade']
        dest: 'dist/app/templates'
        ext: '.js'
      }
    }
    requirejs: {
      app: {
        options: {
          baseUrl: 'dist'
          mainConfigFile: 'dist/app/main.js'
          name: 'app/main'
          out: 'www/js/app/main.js'
          optimize: 'uglify2'
          # optimize: 'none'
        }
      }
    }
    'ftp-deploy': {
      build: {
        auth: {
          host: 'ftp.eleven.bg'
          port: 21
          authKey: 'key1'
        }
        src: 'www'
        dest: '/infographic'
        # exclusions: [
        #   'path/to/source/folder/**/.DS_Store'
        #   'path/to/source/folder/**/Thumbs.db'
        #   'path/to/dist/tmp'
        # ]
      }
    }
    # s3: {
    #   options: {
    #     key: aws.key
    #     secret: aws.secret
    #     access: 'public-read'
    #   }
    #   prod: {
    #     options: {
    #       region: 'eu-west-1'
    #       bucket: 'infographic.eleven.bg'
    #       gzip: true
    #     }
    #     upload: [{
    #       src: 'www/**'
    #       dest: ''
    #       rel: 'www'
    #     }]
    #   }
    # }
    less: {
      dev: {
        options: {compress:false}
        files: {'www/css/main.css':'styles/main.less'}
      }
      prod: {
        options: {compress:true}
        files: {'www/css/main.css':'styles/main.less'}
      }
    }
    # json: {
    #   platform: {
    #     options: {
    #       processName: (filename) -> filename
    #     }
    #     src: '../platform.json'
    #     dest: 'dist/platform.js'
    #   }
    # }
    # symlink: {
    #   bootstrapFonts: {
    #     expand: true
    #     cwd: 'dist/lib/bootstrap/dist/fonts/'
    #     src: '**'
    #     dest: 'www/fonts/'
    #     filter: 'isFile'
    #   }
    #   general: {
    #     files: {
    #       # 'app/platform': '../platform/app'
    #       # 'styles/platform': '../platform/styles'
    #       # 'templates/app/platform': '../platform/templates'
    #       'www/assets': 'assets'
    #       'styles/lib/bootstrap': 'dist/lib/bootstrap/less'
    #       'dist/require.js': 'dist/lib/requirejs/require.js'
    #       'dist/text.js': 'dist/lib/requirejs-text/text.js'
    #     }
    #   }
    #   dev: {
    #     files: {
    #       'www/js': 'dist'
    #       # 'dist/app/platform.json': '../platform/dev.json'
    #     }
    #   }
    #   prod: {
    #     files: {
    #       'www/js/require.js': 'dist/lib/requirejs/require.js'
    #       'www/js/text.js': 'dist/lib/requirejs-text/text.js'
    #       # 'dist/app/platform.json': '../platform/prod.json'
    #     }
    #   }
    # }
    copy: {
      bootstrapFonts: {
        expand: true
        cwd: 'dist/lib/bootstrap/dist/fonts/'
        src: '**'
        dest: 'www/fonts/'
      }
      assets: {
        expand: true
        cwd: 'assets'
        src: '**'
        dest: 'www/assets'
      }
      bootstrap: {
        expand: true
        cwd: 'dist/lib/bootstrap/less/'
        src: '**'
        dest: 'styles/lib/bootstrap/'
      }
      require: {
        expand: true
        cwd: 'dist/lib/requirejs/'
        src: 'require.js'
        dest: 'dist'
      }
      requireText: {
        expand: true
        cwd: 'dist/lib/requirejs-text/'
        src: 'text.js'
        dest: 'dist'
      }
      dev: {
        expand: true
        cwd: 'dist/'
        src: '**'
        dest: 'www/js/'
      }
      prodRequire: {
        expand: true
        cwd: 'dist/lib/requirejs/'
        src: 'require.js'
        dest: 'www/js'
      }
      prodRequireText: {
        expand: true
        cwd: 'dist/lib/requirejs-text/'
        src: 'text.js'
        dest: 'www/js'
      }
    }
    watch: {
      options: {
        livereload: 1338
      }
      coffee: {
        files: '**/**/*.coffee'
        tasks: ['newer:coffee']
      }
      jade: {
        files: 'templates/**/*.jade'
        tasks: ['newer:jade:www', 'newer:jade:appDev']
      }
      less: {
        files: 'styles/**/*.less'
        tasks: ['less']
        options: {}
      }
    }
  })


  # Load tasks

  grunt.loadNpmTasks('grunt-contrib-clean')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-copy')
  grunt.loadNpmTasks('grunt-contrib-connect')
  grunt.loadNpmTasks('grunt-contrib-jade')
  grunt.loadNpmTasks('grunt-contrib-less')
  grunt.loadNpmTasks('grunt-contrib-requirejs')
  grunt.loadNpmTasks('grunt-contrib-symlink')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-newer')
  grunt.loadNpmTasks('grunt-notify')
  # grunt.loadNpmTasks('grunt-s3')
  grunt.loadNpmTasks('grunt-ftp-deploy')

  # Helpers

  compileOrDelete = (watch, task, taskTarget, fromExt, toExt) ->
    (action, path, target) ->
      if target is watch
        if action is 'deleted'
          cwd = grunt.config.get([task, taskTarget, 'cwd'])
          dest = grunt.config.get([task, taskTarget, 'dest'])
          path = path.replace(cwd, dest)
          path = path.replace(fromExt, toExt)
          grunt.config([task, taskTarget, 'src'], [])
          grunt.config(['clean', 'any'], [path])
        else
          grunt.config(['clean', 'any'], [])
          cwd = grunt.config.get([task, taskTarget, 'cwd']) + '/'
          path = path.replace(cwd, '')
          grunt.config([task, taskTarget, 'src'], path)


  # Events

  # Compile and delete site pages only as needed
  grunt.event.on(
    'watch', compileOrDelete('jade', 'jade', 'www', '.jade', '.html')
  )

  # Compile and delete application templates only as needed
  grunt.event.on(
    'watch', compileOrDelete('jade', 'jade', 'app', '.jade', '.js')
  )

  # Compile and delete code files only as needed
  grunt.event.on(
    'watch', compileOrDelete('coffee', 'coffee', 'app', '.coffee', '.js')
  )


  # Tasks

  grunt.registerTask('build', ['clean:all', 'coffee'])
  grunt.registerTask('copyGeneral', ['copy:bootstrapFonts', 'copy:assets', 'copy:bootstrap', 'copy:require', 'copy:requireText'])
  grunt.registerTask('copyProd', ['copy:prodRequire', 'copy:prodRequireText'])
  grunt.registerTask('publish', [
    'clean:all'
    'coffee'
    # 'symlink:bootstrapFonts'
    'copyGeneral'
    'jade:appProd'
    'jade:www'
    'requirejs'
    'less:prod'
    'copyProd'
    # 's3:prod'
    'ftp-deploy'
  ])
  grunt.registerTask('dev', [
    'build'
    'coffee'
    # 'symlink:bootstrapFonts'
    'copyGeneral'
    'jade:appDev'
    'jade:www'
    'less:dev'
    'copy:dev'
  ])
  grunt.registerTask('default', ['dev', 'connect', 'watch'])
