%= form_tag customers_upload_path, multipart: true do %>
  <%= file_field_tag :leads %>
  <%= submit_tag "Import Leads" %>
<% end %>
 def upload
    CSV.foreach(params[:leads].path, headers: true) do |lead|
      Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end