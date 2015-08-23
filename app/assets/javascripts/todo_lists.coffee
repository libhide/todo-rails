jQuery ->
  $("[data-behavior='delete']").on "click", (e) ->
    e.preventDefault()

    swal {
      title: 'Are you sure?'
      text: 'You will not be able to recover this todo later!'
      type: 'warning'
      showCancelButton: true
      confirmButtonColor: '#DD6B55'
      confirmButtonText: 'Yes, delete it!'
      closeOnConfirm: false
    }, (confirmed) =>
      if confirmed
        $.ajax(
          url: $(this).attr("href")
          dataType: "JSON"
          method: "DELETE"
          success: =>
            swal {
              title: 'Deleted!'
              text: 'The todo has been deleted!'
              type: 'success'
            }, ->
              window.location.href = '/'
        )