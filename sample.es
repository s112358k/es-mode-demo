# Get Status
GET /

# List Indices
GET _aliases?pretty

# Create Index
PUT demo?pretty
{
  "settings" : {
    "number_of_shards" : 1, 
    "number_of_replicas" : 1
  }
}

# Push Doc
PUT demo/doc/1?pretty
{
  "title" : "hello elastic"
}

# Fetch Doc
GET demo/doc/1?pretty

# Delete Doc
DELETE demo/doc/1?pretty

# Delete Index
DELETE demo
