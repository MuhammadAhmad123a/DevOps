import boto3

s3= boto3.resource('s3')
bucket_name='bucket151899'
try:
    response=s3.create_bucket(Bucket=bucket_name, CreateBucketConfiguration={'LocationConstraint':'ap-northeast-1'})
    print(response)

except Exception as error:
 print(error)    