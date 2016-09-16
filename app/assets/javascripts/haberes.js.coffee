# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#habere_subcategorium_id').parent().hide()
	subcategorias = $('#habere_subcategorium_id').html()
	$('#_categorium_id').change ->
		categoria = $('#_categorium_id :selected').text()
		options = $(subcategorias).filter("optgroup[label='#{categoria}']").html()
		if options
			$('#habere_subcategorium_id').parent().show()
			$('#habere_subcategorium_id').html(options)
			
		else
			$('#habere_subcategorium_id').empty()
			$('#habere_subcategorium_id').parent().hide()
	
