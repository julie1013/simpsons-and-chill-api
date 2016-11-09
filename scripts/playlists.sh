
curl --include --request POST http://localhost:4741/playlists/ \
--header "Content-Type: application/json" \
  --data '{
    "playlist": {
      "episode_id": "1",
      "user_id": "1",
      "rating": "5"
    }
  }'

curl --include --request GET http://localhost:4741/playlists/

curl --include --request GET http://localhost:4741/playlists/29

curl --include --request DELETE http://localhost:4741/playlists/2

curl --include --request PATCH http://localhost:4741/playlists/27 \
  --header "Content-Type: application/json" \
  --data '{
    "playlist": {
      "user_id": "1",
      "episode_id": "2",
      "rating": "4"
    }
  }'
