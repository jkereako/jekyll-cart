---
---
class Cart
  constructor: (@buttons) ->
    @buttons.click (event)->
      @textContent = 'Added'
      do event.preventDefault
      itemContainer = @parentNode.parentNode.parentNode
      console.log itemContainer

$ ->
  cart = new Cart $ 'form button'
