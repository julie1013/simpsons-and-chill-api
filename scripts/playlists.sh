curl --include --request PATCH http://localhost:4741/playlists/1 \
  --header "Content-Type: application/json" \
  --data '{
    "first_episode": "Kamp Krusty"
  }'
