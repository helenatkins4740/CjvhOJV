#!/bin/bash

curl -s -XPOST 'localhost:4001/db/execute' -H "Content-Type: application/json" -d '[
]'

for i in {1..20}
   curl -s -XPOST 'localhost:4001/db/execute' -H "Content-Type: application/json" -d '[
    "INSERT INTO foo(name) VALUES(\"fiona\")"
]'
done
