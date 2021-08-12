#!/bin/sh
[ -d $SCHEMASPY_DRIVERS ] && export DRIVER_PATH=$SCHEMASPY_DRIVERS || export DRIVER_PATH=/drivers_inc/
echo -n "Using drivers:"
ls -Ax $DRIVER_PATH | sed -e 's/  */, /g'
java -jar /usr/local/lib/schemaspy/schemaspy*.jar -dp $DRIVER_PATH -o $SCHEMASPY_OUTPUT -t mysql -host ${DB_HOST} -u ${DB_USER} -db ${DB_NAME} -s ${DB_NAME} -port 3306 -p ${DB_PASS} -vizjs
aws s3 rm $S3PATH --recursive
aws s3 cp /output $S3PATH --recursive