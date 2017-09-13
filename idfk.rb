require 'rubygems'
require 'aws-sdk'
require 'csv'
 load "./local_env.rb"

 def send_to_bucket()
 	Aws::S3::Client.new()
 	s3 = Aws::S3::Resource.new(region: 'us-east-2')
 	bucket = s3.bucket('westsbucket')
 	# name = File.basename "csvfile.rb"
 	obj = s3.bucket('westsbucket').object('isbn_file_csv.csv')   
 	 File.open('isbn_numbers.csv', 'rb') do |file|
      obj.put(body: '1hellowworld')
      p file
    end

    p "LOOK HEREEEEEEEE"
 
 end
 send_to_bucket()