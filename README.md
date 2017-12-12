# MafiaScum Test Runner Image
This image runs tests for phpbb extensons developed for use with mafiascum.com

# Instructions
To use this image, run this container with a single parameter -- the location of the extension's phpunit.xml.dist in your container. This is best achieved via mounting your extension as a volume in the container.

You should also have a mysql/mariadb database with which to generate/use test fixtures. The following environment variables should be set in order for phpbb to correctly find your testing database:

```
PHPBB_TEST_DBMS=mysqli
PHPBB_TEST_DBHOST=<your db host>
PHPBB_TEST_DBPORT=<your db port, probably 3306>
PHPBB_TEST_DBNAME=ms_phpbb3
PHPBB_TEST_DBUSER=root
PHPBB_TEST_DBPASSWD=password
```


## For Extension Developers

See https://github.com/mafiascum/forum-loader for more detailed instructions

## For CI

Coming soon!
