
curl --include --request GET http://localhost:4741/episodes/

curl --include --request GET http://localhost:4741/episodes/2


curl --include --request POST http://localhost:4741/episodes \
--header "Content-Type: application/json" \
  --data '{
    "episode": {
      "title": "Some episode"
    }
  }'


curl --include --request PATCH http://localhost:4741/episodes/23 \
  --header "Content-Type: application/json" \
  --data '{
    "episode": {
      "title": "Some episode 2"
    }
  }'


curl --include --request DELETE http://localhost:4741/episodes/23
