require 'rubygems'
require 'aws-sdk'
require 'csv'
 load "./local_env.rb"

 def send_to_bucket(bucketlist)
 	Aws::S3::Client.new(
 		access_key_id: ENV['AWS_ACCESS_KEY_ID'],
 		secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
 		region: ENV['AWS_REGION'])
 	file = "isbn_file_csv.csv"
 	write_to_file = File.open(file,"a")
 	write_to_file << bucketlist + "\n"
 	write_to_file.close 


 	s3 = Aws::S3::Resource.new(region: 'us-east-2')
 	bucket ='westsbucket'
 # 	# name = File.basename "csvfile.rb"
 	obj = s3.bucket(bucket).object('isbn_file_csv.csv')   
 	 File.open('isbn_file_csv.csv', 'rb') do |file|
      obj.put(body: file )
 #      p file
 	end
end

 #    p "LOOK HEREEEEEEEE"
 
 # end
 # def get_from_bucket
 # 	gottenbucket = s3.get_object(bucket:"westsbucket", key:" ")
 # send_to_bucket()