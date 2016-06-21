#Creating Repo for Mongo DB dowload
cookbook_file '/etc/yum.repos.d/mongo_repo.repo' do
  source 'mongo_repo.repo'
  owner 'root'
  group 'root'
  mode '0755'
  action :create_if_missing
end
