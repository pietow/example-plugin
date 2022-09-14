local http = require("socket.http")
local ltn12 = require("ltn12")
local json = require "dkjson"
local payload = {{"test", "test", null, 0}}  --payload to be sent

local request_body = { payload = payload } --the json body
local response_body = {}
request_body = json.encode(request_body)

b, c, h = http.request {url="http://localhost:8080/", method="POST", headers={["Content-Type"]="application/json"}, source=ltn12.source.string(request_body)}
print(b)
print(c)
print(h)
