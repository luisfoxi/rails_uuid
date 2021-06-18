request = NEWOBJECT("Microsoft.XMLHTTP")
*request = NEWOBJECT("WinHttp.WinHttpRequest.5.1")
*request = NEWOBJECT("MSXML2.XMLHTTP.3.0")

body_text = utf8encode( 'query { posts { id title } }' )
*WAIT WINDOW body_text

url = 'http://localhost:3000/graphql.json'

request.Open('POST', url, .T.)
*request.setRequestHeader('Accept', 'application/json')
request.setRequestHeader("Content-Type", 'application/x-www-form-urlencoded')
*request.setRequestHeader("Content-Disposition", 'form-data; name="query"; data="query")



WAIT WINDOW request.send('query=' + body_text)

MESSAGEBOX( request.responseText)

RETURN

func utf8encode( lcString )
local cUtf, i

cUtf = ""
for i = 1 to len(lcString)
    c = asc(substr(lcString,i,1))
    if  c < 128
        cUtf = cUtf+chr(c)
    else
        cUtf = cUtf+chr(bitor(192,bitrshift(c,6)))+chr(bitor(128,bitand(c,63)))
    endif
next

return cUtf  