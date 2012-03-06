define( [
	'jquery'
	'backbone'
	'underscore'
	'models/ResultCollection'
	'text!templates/listview.html'],
	( $, Backbone, _, ResultCollection, listTemplate ) ->
		"use strict"

		ResultList = Backbone.View.extend
			el: $( "#listviewholder" )
			initialize: ->
				this.collection = new ResultCollection
				_.bindAll(this, "renderList")
				this.collection.bind( "reset", this.renderList )

			renderList: ->
				compiled_template = _.template( listTemplate )
				collection = this.collection
				$el = $(this.el)

				mobileSearch.utils.loadPrompt( "Loading results..." )
				mobileSearch.utils.toggleNavigation( true )
				$el.html( compiled_template( { results: collection.models } ) )

				setTimeout( 
					-> $el.listview('refresh')
					0
				)
		return ResultList
)