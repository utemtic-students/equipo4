# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jquery =->
        #i=1

        $("#ID_container").hide()
        $("#FirstDate_container").hide()
        $("#LastDate_container").hide()
        $("#Filtra_container").hide()
        #$('#impresiones').dataTable()
        $('#filterType').on "change", ->
            o = $(this).find("option:selected")
            if o.val() == "select" then clear()
            if o.val() == "typeofpayment"  then showpayment()
            if o.val() == "date" then  showdate()
            if o.val() == "dates" then  showdates()
            if o.val() == "ghost" then  showghost()
            if o.val() == "all" then  all()


clear =->
        $("#ID_container").hide()
        $("#FirstDate_container").hide()
        $("#LastDate_container").hide()
        $("#Filtra_container").hide()
all =->
        $("#ID_container").show()
        $("#FirstDate_container").show()
        $("#LastDate_container").show()
        $("#Filtra_container").show()
showpayment =->
        $("#ID_container").show()
        $("#FirstDate_container").hide()
        $("#LastDate_container").hide()
        $("#Filtra_container").show()
showdate =->
        $("#ID_container").hide()
        $("#FirstDate_container").show()
        $("#LastDate_container").hide()
        $("#Filtra_container").show()
showdates =->
        $("#ID_container").hide()
        $("#FirstDate_container").show()
        $("#LastDate_container").show()
        $("#Filtra_container").show()
showghost =->
        $("#ID_container").hide()
        $("#FirstDate_container").hide()
        $("#LastDate_container").hide()
        $("#Filtra_container").hide()
        $("#Filtrar").trigger("click")

$(document).ready(jquery)
$(document).on('page:load',jquery)
