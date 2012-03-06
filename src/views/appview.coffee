define( [
	'jquery'
	'backbone'
	'utils'
	'views/resultList'
	'views/photoList'],
	( $, Backbone, utils, ResultList, PhotoList ) ->
		"use strict"
		AppView = Backbone.View.extend
			el: $( "#appview" )

			events:
				"submit #queryForm" : "keyLoadResults"
				"change #sortBy": "keyLoadResults"
				"keydown #searchbox" : "handleKey"
			setView: (option) ->
				if option is 'search'
					this.result_view = new ResultList
				else
					this.photo_view = new PhotoList
			handleKey: (event) ->

			keyLoadResults: (event) ->
				query = $( '#searchbox' ).val()
				if query
					sort = $( '#sortBy' ).val()
					endpoint = mobileSearch.utils.queryConstructor( query, sort, 1 )
					location.hash = endpoint
				else
					mobileSearch.utils.loadPrompt( 'Please enter a search query to continue' )
				return false
		return AppView

)