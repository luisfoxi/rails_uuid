request = NEWOBJECT("Microsoft.XMLHTTP")
body = '{"query": "query {  posts { id title updatedAt } }", "variables": null}'

*WAIT WINDOW body
request.Open('POST', 'http://localhost:3000/graphql.json', .T.)
WAIT WINDOW request.send(body)
*WAIT WINDOW request.status
MESSAGEBOX( request.responseText)

