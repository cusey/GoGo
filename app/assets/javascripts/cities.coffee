# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class App.Cities extends App.Base

  index: ->
    $ ->
      $('#dataTable').dataTable
        ajax: Routes.cities_index_path()
        columns: [
            data: "id"
          ,
            data: "name"
          ,
            data: "iata"
          ,
            data: "custom_column"
          ,
            data: "country_name"
        ]