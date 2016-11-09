
curl --include --request GET http://localhost:4741/episodes/


curl --include --request POST https://localhost:4741/episodes \
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


  curl --include --request DELETE https://localhost:4741/episodes/23
