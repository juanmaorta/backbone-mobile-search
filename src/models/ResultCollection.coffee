define( [
	'jquery'
	'backbone'
	'models/ResultEntry'
	], ( $, Backbone, ResultEntry ) ->
		"use strict"
		ResultCollection = Backbone.Collection.extend
			model: ResultEntry
			parse: (response) ->
				return response

		return ResultCollection
)