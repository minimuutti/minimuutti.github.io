#!/usr/bin/env bash

for FILE in $(ls); do
	NAME=$(echo ${FILE} | perl -pe 's/\d+-\d+-\d+-(.+)\.md/\1/')
	sed -i "0,/---/! {0,/---/ s/---/redirect_from:\n  - \/en\/activation\/${NAME}\n---/}" "${FILE}"
done
