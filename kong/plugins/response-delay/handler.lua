local kong = kong
local socket = socket

local ResponseDelayHandler = {
    PRIORITY = 1005,
    VERSION = "1.0.0"
}

function ResponseDelayHandler:header_filter(conf)
    local http_status = kong.response.get_status()
    local sleep_time = conf.sleep_time
    if http_status == 200 then
        socket.sleep(sleep_time)
    end
    --kong.response.add_header("sleep_time", sleep_time)
end
return ResponseDelayHandler
