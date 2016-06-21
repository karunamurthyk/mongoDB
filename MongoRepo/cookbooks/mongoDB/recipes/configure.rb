#Setup MongoDB User
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
