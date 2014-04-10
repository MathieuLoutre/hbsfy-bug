module.exports = (grunt) ->

	# Configuration
	grunt.initConfig

		browserify:
			app:
				src: ["src/start.coffee"]
				dest: "dist/app.js"
				options:
					transform: ['coffeeify', 'hbsfy', 'uglifyify']
					extensions: ['.coffee', '.hbs']
					aliasMappings:[
						cwd: "src/"
						src: ['**/*.coffee', '**/*.hbs']
						dest: 'app'
					]

	# Load Plugins

	grunt.loadNpmTasks('grunt-browserify')

	# Register tasks

	grunt.registerTask('default', ['browserify'])