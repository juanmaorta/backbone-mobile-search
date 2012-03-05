define( [
	'jquery'
	'backbone'
	'models/ResultEntry'
	], ( $, Backbone, ResultEntry ) ->
		"use strict"
		PhotoCollection = Backbone.Collection.extend
			 model: ResultEntry
		return PhotoCollection
)