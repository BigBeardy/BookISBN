require 'sinatra'
# require_relative 'class_isbn.rb'
require_relative 'bookisbn.rb'


enable :sessions 

get '/' do
	list = get_file
	erb :ISBN_input, :locals => {:isbn_num => '', :results => '',:list => list, :message1 => '', :message2 => ''}
end

post '/ISBN_num' do
	isbn_num = params[:isbn_input]
	results = check_last_number?(isbn_num)
    send_to_bucket("#{isbn_num},#{results},")
    list = get_file
	#"#{isbn_num} is --> #{results}"
	erb :ISBN_input, :locals => {:isbn_num => isbn_num, :results => results,:list => list, :message1 => ' is a ', :message2 => ' ISBN'}
end 

get '/phonebook' do 
    isbn_num = params[:isbn_input] 
    session[:first] = params[:first]
    session[:last] = params[:last]
    session[:zip] = params[:zip]
    session[:num] = params[:num]
    session[:street] = params[:street]
     erb :ISBN_input, :locals => {:isbn_num => '', :results => '', :message1 => '', :message2 => '', first: session[:first], last: session[:last], zip: session[:zip], street: session[:street]} 
     redirect '/final'
 end