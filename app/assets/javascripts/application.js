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

//book page  checkout 

$(document).ready(function checkout () {
   console.log("j.checkout has loaded")
  $(".check").on("click", function (event) {
    console.log("we shouldnt see you")
   event.preventDefault()
  let id = $(this).data("id");
    $.post("/checkouts.json", {
      checkout: {
        book_id: id
      }
    }).done( () => {
    this.remove()
      //this happens after the request is complete
      $(`.status${id}`).html('<p class="success-message"> Book checked out </p> ')
     console.log("smile")
 
    })
  });
 })
 // add checkedout books to welcome page 
$(function () {
  $(".js-more").on("click", function () {
   
    $.getJSON("/checkouts.json", (data) => {
      console.log("the page clicker loaded")
       data.forEach((el) => {
         this.remove()
         $(".col-2 p")[0].innerHTML += `${el.book.title}<br>`
         $(".col-3 span")[0].innerHTML += `${el.due_date }<br>`
       //  $(".container").append('<p class="text-warning">Your checkout books</p>')
        })
    })
  });
})
