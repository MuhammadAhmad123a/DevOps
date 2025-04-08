# Terminating EC2 Instance

import boto3
ec2= boto3.resource('ec2')
instacne_id='i-064dd59da5a313f64'
instance=ec2.Instance(instacne_id)
response= instance.terminate()
print(response)
