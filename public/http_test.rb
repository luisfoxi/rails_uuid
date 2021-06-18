# References: https://www.twilio.com/blog/5-ways-make-http-requests-ruby
# nethttp3.rb
require 'uri'
require 'net/http'

body_text = 'query { posts { id title } }'
# body_text = '{"query": "query { posts { id title } }", "variables": null, "graphql": {"query": "query { posts { id title } }", "variables": null}}'

uri = URI('http://localhost:3000/graphql.json')
res = Net::HTTP.post_form(uri, query: body_text)
puts res.body  if res.is_a?(Net::HTTPSuccess)

# uri = URI('https://jsonplaceholder.typicode.com/posts')
# res = Net::HTTP.post_form(uri, 'title' => 'foo', 'body' => 'bar', 'userID' => 1)
# puts res.body  if res.is_a?(Net::HTTPSuccess)

