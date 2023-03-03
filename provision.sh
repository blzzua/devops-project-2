sudo apt update
sudo apt -y install python3-pip
#sudo pip install Flask
#sudo pip install gunicorn
sudo pip install -r requirements.txt
sudo cp app.service /etc/systemd/system/app.service
systemctl daemon-reload
systemctl restart app.service


