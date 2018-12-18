# Get Status
GET /

# cat Indices
GET _cat/indices?pretty

# Create Index
PUT demo?pretty
{
  "settings" : {
    "number_of_shards" : 1, 
    "number_of_replicas" : 1
  }
}

# Put Doc
PUT demo/doc/1?pretty
{
  "title" : "hello elastic",
  "more_title" : "hello es-mode"
}

# Fetch Doc
GET demo/doc/1?pretty

# Delete Doc
DELETE demo/doc/1?pretty

# Delete Index
DELETE demo
