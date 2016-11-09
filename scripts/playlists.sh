
  curl --include --request POST https://localhost:4741/playlists/1 \
  --header "Content-Type: application/json" \
    --data '{
      "episode": {
        "user_id": "1",
        "episode_id": "2",
        "rating": "5"
      }
    }'

curl --include --request GET http://localhost:4741/playlists/

curl --include --request DELETE https://localhost:4741/playlists/1

curl --include --request PATCH http://localhost:4741/playlists/1 \
  --header "Content-Type: application/json" \
  --data '{
    "episode": {
      "user_id": "1",
      "episode_id": "1",
      "rating": "3"
    }
  }'
