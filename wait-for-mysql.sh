#!/bin/bash

until nc -z -v -w30 $PHPBB_TEST_DBHOST $PHPBB_TEST_DBPORT
do
  echo "Waiting for database connection..."
  # wait for 5 seconds before check again
  sleep 5
done

./phpBB/vendor/bin/phpunit -c $1
