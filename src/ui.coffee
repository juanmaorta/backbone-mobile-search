define( [
	'jquery'
	'utils' ],
	( $, utils ) ->
		"use strict"
		ui = {}

		ui.nextOption = $( '#nextSet' )
		ui.prevOption = $( '#prevSet' )

		ui.nextOption.on "click", (e) ->
			e.preventDefault()
			utils.historySwitch( 'next' )

		ui.prevOption.on "click", (e) ->
			e.preventDefault()
			utils.historySwitch( 'prev' )
		return ui
)