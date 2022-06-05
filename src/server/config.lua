local config = require("lapis.config")

config("dev", {
    port = 3000
})

config("prod", {
    port = 3000,
    code_cache = "on"
})