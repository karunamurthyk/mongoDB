#Building Mongo DB from scratch

resource_name :mongodb_build 

action :setup_startup do
	package 'mongodb-org'
	package 'mongodb-org-server'
	package 'mongodb-org-mongos'
	package 'mongodb-org-shell'
	package 'mongodb-org-tools'

	user 'mongod' do
        	comment 'MongoDB User'
	end

	#Setting up Permission of Lib path for User : mongod
	directory 'mongo library path' do
       		path '/var/lib/mongo'
        	owner 'mongod'
        	recursive true
	end

	#Setting up Permission of Log path for User : mongod
	directory 'mongo log path' do
        	path '/var/log/mongodb'
        	owner 'mongod'
        	recursive true
	end
	
	#Service Startup
	service "mongod" do
        	action  [ :enable, :restart ]
	end
end
