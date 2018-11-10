#!/bin/bash

chown www-data:www-data /var/www/app/public/logo/

sleep 300s
while /bin/true; do
	/var/www/app/artisan ninja:send-invoices
	/var/www/app/artisan ninja:send-reminders
	sleep 1d
done
