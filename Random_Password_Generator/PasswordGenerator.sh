#! /bin/bash

#Generate a random password of a user-defined length
#Using openSSL library for its cryptography toolkit and the algorithms

echo "Random Password Generator"

read -p "What's the length for your password: " PASS_LEN

for i in $(seq 1);
do
	openssl rand -base64 48 | cut -c1-$PASS_LEN
done





