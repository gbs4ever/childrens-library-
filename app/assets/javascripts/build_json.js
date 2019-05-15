$(document).ready( ()=> {
  reviewFetchJson()
})

const reviewFetchJson =  ()=>{
  $(".review").on("click", function (event) {
    event.preventDefault()
    let id = $(this).data("id")
   
    fetch(`/books/${id}.json`).then(res => res.json())
      .then(data =>{
        $(`.review_container${id}`).html('')
        let newbox= $(`.review_container${id}`).html(`<ol></ol>`)
        data["reviews"].forEach(  (review)=>{
         
      let newReview = new Review(review)
      
      let newHtml = newReview.formatIndex()
          console.log(newHtml)
          $(newbox).append(newHtml)
        })
      })

  })

}

//create a json object
function Review(review){
this.id = review.id
this.comments = review.comments
this.status = review.status

}

Review.prototype.formatIndex = function(){
  let reviewHtml = `<br><li>${this.comments}</li> <br>`
  return reviewHtml

}