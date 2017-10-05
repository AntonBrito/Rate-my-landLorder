API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comment": {
      "subject": "'"${SUBJECT}"'",
      "rate": "'"${RATE}"'",
      "comment": "'"${COMMENT}"'",
      "landlord_id": "'"${LANDLORD_ID}"'"
    }
  }'

echo
