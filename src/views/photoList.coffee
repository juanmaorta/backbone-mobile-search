define( [
	'jquery'
	'backbone'
	'underscore'
	'models/PhotoCollection'
	'text!templates/photoview.html'],
	( $, Backbone, _ , PhotoCollection, photoTemplate) ->
		"use strict"
		PhotoList = Backbone.View.extend
			el: $( "#photoviewholder" )

			initialize: ->
				this.collection = new PhotoCollection
				_.bindAll(this, "renderList")
				this.collection.bind( "reset", this.renderList )

			renderList: ( collection ) ->
				compiled_template = _.template(photoTemplate)
				collection = this.collection
				$el = $(this.el)

				mobileSearch.utils.loadPrompt( "Loading photo..." )
				$( '#photo .ui-title' ).html( 'Photo view' )
				$el.html( compiled_template( { results: collection.models } ) )

				setTimeout( 
					-> $el.listview('refresh')
					0
				)
				
		return PhotoList
)