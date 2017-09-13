require 'aws-sdk'
require 'csv'
 load "./local_env.rb"

 def send_to_bucket()
 	s3 = Aws::S3::Resource.new(region: 'us-east-2')
 	bucket = s3.bucket('westsbucket')
 	name = File.basename "csvfile.rb"