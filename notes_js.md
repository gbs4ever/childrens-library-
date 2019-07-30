[]you this when app is ready to upload files 
 def upload
    CSV.foreach(params[:leads].path, headers: true) do |lead|
      Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end
[] confirm that a user can only delete their books 
