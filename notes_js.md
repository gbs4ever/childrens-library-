[]you this when app is ready to upload files 
 def upload
    CSV.foreach(params[:leads].path, headers: true) do |lead|
      Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end
[] confirm that a user can only delete their books 
[] style errors so it is clear to user ! 
[] add pic to the background 
[]have  book cover pull from api 
[]send email 3 days before books are do 
[]send email on signup 
[x]check for login validations
[x]check for login validations styling
[x]check or signup validations messages
