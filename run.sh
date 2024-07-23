# install frontend dependencies
cd client
npm install --legacy-peer-deps webpack-cli

# compile frontend files
npm run compile && cd ..

# create logs directory if doesn't exist
mkdir -p logs
touch logs/error.log
touch logs/access.log

# run virtual env
#. ../venv/bin/activate
# install pip dependencies
pip install -r requirements.txt
# run server
python main.py 
#&> out.log &

#deactivate
