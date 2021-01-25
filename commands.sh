# create ssh key pair
# ssh-keygen -t rsa

# display the ssh key
# cat ./home/your-name/.ssh/ir_rsa

# clone the repository
# git clone your-repo.git

# go to the repository folder
# cd your-repo

# create a virtual environment
python3 -m venv ~/.udacity-devops

# source it
source ~/.udacity-devops/bin/activate

# create webapp
make install
az webapp up --name webappdemo

# display logs in cloud shell
az webapp log tail

# make a prediction
# ./make_predict_azure_app.sh