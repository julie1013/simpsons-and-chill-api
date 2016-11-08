#!/bin/bash

curl --include --request PATCH http://localhost:4741/change-password/1 \
  --header "Authorization: Token token=BAhJIiVkZWMxNjFjYzdhMTk4ODhiNTQ2ZTZjNGRmMjM5NjBjNAY6BkVG--8b73a2d14f5cb6bd31ba863d456c75ae65e6742d" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "dogs",
      "new": "dog"
    }
  }'
