### coffeescript generated ###

define([
	'backbone'
	'views/appview'
	'routers/workspace'
	'utils'
	'ui'
], (Backbone, AppView, Workspace, utils, ui) -> 
	"use strict"
	$(->
		## namespacing
		window.mobileSearch ?= {
			views:
				appview: new AppView
			routers:
				workspace:new Workspace()
			utils: utils
			ui: ui
			
			defaults:
				resultsPerPage: 16
				safeSearch: 2
				maxDate:''
				minDate:'01/01/1970'
		} # create the namespace

		window.mobileSearch.utils.toggleNavigation( false )
		Backbone.history.start()
		return false
	)
)

