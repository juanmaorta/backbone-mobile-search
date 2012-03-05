### coffeescript generated ###

require.config
	paths: 
	    'backbone':         'libs/AMDbackbone-0.5.3'
	    'underscore':       'libs/underscore-1.2.2'
	    'text':             'libs/require/text'
	    'jquery':           'libs/jquery-1.7.1'
	    'json2':            'libs/json2'
	    'datepicker':       'libs/jQuery.ui.datepicker'
	    'datepickermobile': 'libs/jquery.ui.datepicker.mobile'
	    'jquerymobile':     'libs/jquery.mobile-1.0'
	baseUrl: 'app'

require [
	'require'
	'backbone'
	'jquery'
	'underscore'],
	(require, Backbone, $, _) ->
		# framework loaded
		require([
			'require'
			'jquerymobile'
			'json2'
			'datepicker'
			'datepickermobile'
			'app'
		], (require) ->
			$.mobile.hashListeningEnabled = false
			$.mobile.pushStateEnabled = false
			$.mobile.page.prototype.options.degradeInputs.date = true
			$( '#date-min, #date-max' ).datepicker()
		)

