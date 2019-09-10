#sudo s


sudo yum install npm -y

sudo npm update

#sudo rm -rf node_modules

#sudo rm ./package-lock.json

sudo npm install

sudo npm start

sudo npm test

sudo docker build -t "nodeapp" .

sudo docker run --name "nodejsapp" -p 8000:8000 -d "nodeapp"
