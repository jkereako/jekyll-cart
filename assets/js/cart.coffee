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

      listItem = do $ @cart
      .find 'li:last'
      .clone

      listItem.text itemNumber
      @cart.append listItem
      .hide()
      .fadeIn 'slow'


      console.log itemContainer

$ ->
  cart = new Cart $('form button'), $('ul#cart')
