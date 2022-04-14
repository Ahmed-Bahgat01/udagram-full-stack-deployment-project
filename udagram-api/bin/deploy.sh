# coping code bundle
aws s3 cp ./www/Archive.zip $AWS_SOURCE_CODE_BUCKET 

# create application version
aws elasticbeanstalk create-application-version \
--application-name $ELASTIC_BEANSTALK_APP_NAME \
--version-label $(git log -1 --pretty=%h) \
--source-bundle S3Bucket=$AWS_SOURCE_S3BUCKET,S3Key=Archive.zip \
--auto-create-application 

# set envrionment variables
aws elasticbeanstalk setenv POSTGRES_USERNAME=$POSTGRES_USERNAME \
POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
POSTGRES_DB=$POSTGRES_DB \
POSTGRES_HOST=$POSTGRES_HOST \
DB_PORT=$DB_PORT \
PORT=$PORT \
AWS_REGION=$AWS_REGION \
AWS_BUCKET=$AWS_BUCKET \
AWS_SOURCE_CODE_BUCKET=$AWS_SOURCE_CODE_BUCKET \
AWS_SOURCE_S3BUCKET=$AWS_SOURCE_S3BUCKET \
URL=$URL \
JWT_SECRET=$JWT_SECRET \
AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
ELASTIC_BEANSTALK_ENV=$ELASTIC_BEANSTALK_ENV \
ELASTIC_BEANSTALK_APP_NAME=$ELASTIC_BEANSTALK_APP_NAME \
ELASTIC_BEANSTALK_PLATFORM=$ELASTIC_BEANSTALK_PLATFORM



# # update environment
# aws elasticbeanstalk update-environment \
# --application-name $ELASTIC_BEANSTALK_APP_NAME \
# --environment-name $ELASTIC_BEANSTALK_ENV \
# --version-label $(git log -1 --pretty=%h)
