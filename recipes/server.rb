package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content "<h1> HELLO HORLD! </h1>
		<h2>HOSTNAME: #{node['hostname']}<h2>
		<h2>IPADDRESS: #{node['ipaddress']}<h2>
		<h2>CPU: #{node['cpu']['0']['mhz']}<h2>
		<h2>MEMORY #{node['memory']['total']}<h2>
		
"
end

service 'httpd' do
	action [ :enable, :start ]
end
