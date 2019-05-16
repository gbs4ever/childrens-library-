//delete request
$(document).ready(function checkout() {
  console.log("j.checkin has loaded")
  $(".checkin").on("click", function (event) {
    event.preventDefault()
     let id = $(this).data("id");
    $.ajax({
      url: `/checkouts/${id}`,
      type: 'DELETE',
      dataType: 'json',
      success:
        () => {
          this.remove()
          console.log("item returned")
          $(`.status${id}`).html('<p class="success-message">Thank you for checking in your book</p>')
        }
      //play with data
    })
  });
})