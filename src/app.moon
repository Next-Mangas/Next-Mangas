lapis = require "lapis"

class extends lapis.Application
  @enable "etlua"
  [index: "/"]: =>
    @manga_data = {
      highlight: { "Manga", "Info", "array" },
      genres: {}
    }
    render: true
