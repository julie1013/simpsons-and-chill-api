curl --include --request POST http://localhost:4741/queuings \
  --header "Content-Type: application/json" \
  --data '{
    "queuing": {
      "episode_id": "4",
      "playlist_id": "1"
    }
  }'
