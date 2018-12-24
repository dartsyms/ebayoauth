# encoding: utf-8

get "/callback/*" do
  path = request.path.gsub("/callback/nugenie/", "")
  path_query = "#{path}?#{request.query_string}"
  url = "nugenie://oauth-callback#{path_query}"
  puts url
  redirect url
end