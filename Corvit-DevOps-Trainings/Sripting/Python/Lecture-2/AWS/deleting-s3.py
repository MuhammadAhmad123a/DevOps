import boto3

client = boto3.client('s3')
bucket_name='bucket151899'
response = client.delete_bucket(Bucket=bucket_name)
print(response)