#!/bin/bash

CONTAINER_NAME="mysql"
MYSQL_USER="root"
MYSQL_PASSWORD="root"
MYSQL_DB="testdb"

SQL_COMMANDS="
CREATE TABLE IF NOT EXISTS tutorials (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  description TEXT,
  published BOOLEAN,
  PRIMARY KEY (id)
);
ALTER TABLE tutorials MODIFY COLUMN id BIGINT NOT NULL AUTO_INCREMENT;
-- Add more queries here separated by semicolons
"

docker exec -i $CONTAINER_NAME mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DB <<EOF
$SQL_COMMANDS
EOF

echo "Queries executed successfully."
