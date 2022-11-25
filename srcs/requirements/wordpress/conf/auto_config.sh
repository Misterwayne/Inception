sleep 10
wp config create --allow-root \
	--dbname=$SQL_DATABASE \
	--dbuser=$SQL_USER \
	--dbpass=$SQL_PASWORD \
	--dbhost=mariadb:3306 --path='/var/www/wordpress'

wp core install --url='http://mwane.42.fr' \
	--title='Blog Title' \
	--admin_user='adminuser' \
	--admin_password='password' \
	--admin_email='email@domain.com'
