#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/mannequins"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "mannequin": {
      "given_name": "'"${FIRST}"'",
      "surname": "'"${LAST}"'",
      "height": "'"${HEIGHT}"'",
      "weight": "'"${WEIGHT}"'",
      "age": "'"${AGE}"'",
      "measurements": "'"${MEASUREMENTS}"'",
      "eye_color": "'"${EYECOLOR}"'",
      "hair_color": "'"${HAIRCOLOR}"'",
      "hair_length": "'"${HAIRLENGTH}"'",
      "gender": "'"${GENDER}"'"
    }
  }'

echo
