# schemaspy

## usage

```
docker run \
-e DB_HOST=hostname \
-e DB_USER=username \
-e DB_NAME=dbname \
-e DB_PASS=dbpasswrod \
-e S3PATH=s3://xxxx/ \
-v "$PWD/output:/output" \
imagename
```