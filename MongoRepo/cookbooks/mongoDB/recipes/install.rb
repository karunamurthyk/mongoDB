#Recipe to install Mongo DB

yum_package 'MongoDB Install' do
	package_name mongodb-org
done
yum_package "MondgoDB Server Install" do
	package_name mongodb-org-server 
done
yum_package "MondgoDB Mongos Install" do
	package_name mongodb-org-mongos 
done
yum_package "MondgoDB Shell Install" do
	package_name mongodb-org-shell 
done
yum_package "MondgoDB Tools Install" do
	package_name mongodb-org-tools 
done
