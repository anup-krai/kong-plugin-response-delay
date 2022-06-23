local typedefs = require "kong.db.schema.typedefs"

return {
  name = "response-delay",
  fields = {
    {consumer = typedefs.no_consumer},
    {protocols = typedefs.protocols},
    {
      config = {
        type = "record",
        fields = {
          {sleep_time = {type = "number", required = true, default = 0.001},},
        },
      },
    },
  }
}
