cat ../sh/basescript.sh ../sh/kafkaserver.sh | sed 's/"/\\"/g' | sed 's/^/"/' |sed 's/$/\\n",/' |sed '$ s/,//'
