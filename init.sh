sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart

cd /home/box/web/ask
gunicorn --bind=0.0.0.0:8000 ask.wsgi:application

# sudo /etc/init.d/mysql start

# mkdir -p /home/box/web/public/img
# mkdir -p /home/box/web/public/css
# mkdir -p /home/box/web/public/js
# mkdir -p /home/box/web/uploads
# mkdir -p /home/box/web/etc
