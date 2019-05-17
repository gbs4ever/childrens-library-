$(document).ready( ()=> {
  reviewFetchJson()
})

const reviewFetchJson =  ()=>{
  $(".review").on("click", function (event) {
    event.preventDefault()
    let id = $(this).data("id")
   
    fetch(`/books/${id}.json`).then(res => res.json())
      .then(data =>{
        $(`.review-container${id}`).html('')
        let newbox = $(`.review-container${id}`).html(`<ol class= "text-primary"></ol>`)
        data["reviews"].forEach(  (review)=>{
         
      let newReview = new Review(review)
      
      let newHtml = newReview.formatIndex()
         
          $(`.review-container${id} ol`).append(newHtml)
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
  let reviewHtml = `<li>${this.comments}</li><br>`
  return reviewHtml

}