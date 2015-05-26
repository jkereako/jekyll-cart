---
---
class Cart
  constructor: (@buttons, @cart) ->
    @buttons.click (event) =>
      @textContent = 'Added'
      do event.preventDefault
      itemContainer = event.target.parentNode.parentNode.parentNode
      itemNumber = do $ itemContainer
      .find 'h3.panel-title'
      .text

      @cart.append "<p>#{itemNumber}</p>"


      console.log itemContainer

$ ->
  cart = new Cart $('form button'), $('div#cart')
