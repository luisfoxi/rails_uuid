request = NEWOBJECT("Microsoft.XMLHTTP")
*body = '{"query": "query {  posts { id title updatedAt } }", "variables": null}'
*body = '{"query": "query {\n  posts {\n    id\n    title\n  }\n}", "variables": null, "graphql": {"query": "query {\n  posts {\n    id\n    title\n  }\n}", "variables": null}}'
body = '?query="query {\n  posts {\n    id\n    title\n  }\n}"'

*WAIT WINDOW body
request.Open('POST', 'http://localhost:3000/graphql', .T.)
WAIT WINDOW request.send(body)
*WAIT WINDOW request.status
MESSAGEBOX( request.responseText)
