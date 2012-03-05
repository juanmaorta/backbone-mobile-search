define( [
	'jquery'
	'backbone'
], ( $, Backbone ) ->
	"use strict"
	Workspace = Backbone.Router.extend(
		q:''
		p:1
		s:'relevance'
		bookmarkMode:false
		routes:
			"search/:query": "search"
			"search/:query/s:sort/p:page": "search"
			"photo/:id": "photo"
			"" : "root"
		search: ( query, sort, page ) ->
			mobileSearch.utils.dfdQuery( 'search', mobileSearch.views.appview, query, sort, page )
		photo: (id) ->
			mobileSearch.utils.dfdQuery( 'photo', mobileSearch.views.appview, id )
		root: ->
			this.bookmarkMode = true
			mobileSearch.utils.changePage( "#index", "slide", false, false )
	)
	return Workspace
)