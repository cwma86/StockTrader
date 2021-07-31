#!/bin/bash
cat > .env << EOF
export APCA_API_BASE_URL="${APCA_API_BASE_URL}"
export APCA_API_KEY_ID="${APCA_API_KEY_ID}"
export APCA_API_SECRET_KEY="${APCA_API_SECRET_KEY}"
EOF
sudo docker build . -t stock-trader:latest