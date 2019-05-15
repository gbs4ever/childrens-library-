// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require bootstrap
//= require_tree .

//book checkout 
$(document).ready(function checkout () {
   console.log("j.checkout has loaded")
  $(".check").on("click", function (event) {
   event.preventDefault()
   console.log('clicked')
     let id = $(this).data("id");
    $.post("/checkouts.json", {
      checkout: {
        book_id: id
      }
    }).done( () => {
    this.remove()
    
      $(`.status${id}`).html('<p class="success-message"> Book checked out </p> ')
     console.log("smile")
 
      //this happens after the request is complete
   
    })
  });
 })
 // add checkout books to welcome
$(function () {
  $(".js-more").on("click", function () {
    $.getJSON("/checkouts.json", function (data) {
      console.log("the page clicker loaded")
      data.forEach((el) => {
        console.log(`${ el.due_date }`)
        // add due date
        $(".checkout ul")[0].innerHTML += `<li>${el.book.title}</li><br><br>${ el.due_date }`
     })

    })
  });
})
