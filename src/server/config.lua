local config = require("lapis.config")

config("dev", {
    port = 3000,
    mysql = {
        host = "localhost",
        user = "root",
        password = "1234",
        database = "lapis_server",
        ssl = false
    }
})

config("prod", {
    port = 3000,
    code_cache = "on"
})