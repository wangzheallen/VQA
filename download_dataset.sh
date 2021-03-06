#!/usr/bin/env bash

V7W_DB_NAME=v7w_telling

V7W_URL="http://web.stanford.edu/~yukez/papers/resources/dataset_${V7W_DB_NAME}.zip"

if [ -f "dataset_${V7W_DB_NAME}.json" ]; then
  echo "Dataset already exists."
  read -p "Would you like to update the dataset file? [y/n] " -n 1 -r
  echo    # (optional) move to a new line
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    echo "Bye!"
    exit
  fi
fi

echo "Downloading ${V7W_DB_NAME} dataset..."
wget -q $V7W_URL -O dataset.zip
unzip -j dataset.zip
rm dataset.zip
echo "Done."
