require 'rubygems'
require 'aws/s3'
require 'csv'
load "./local_env.rb"
def send_to_bucket
	AWS::S3::Base.establish_connection!(
    :access_key_id => ENV['S3_KEY'],
     :secret_access_key => ENV['S3_SECRET']  
   )
	file = "csvfile.rb"
	bucket = "tttresults"
	csv = AWS::S3::S3Object.value(file, bucket)
    csv << "some code here to show something being added to the bucket."+ "\n"
    AWS::S3::S3Object.store(File.basename(file),
        csv,
        bucket,
        :access => :public_read)
end
send_to_bucket