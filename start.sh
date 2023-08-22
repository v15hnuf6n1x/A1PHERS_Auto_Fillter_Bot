if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/GreyMatterbots/url-auto-delete-shortener-bot /Eva
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Eva
fi
cd /Eva
pip3 install -U -r requirements.txt
echo "A1PHERS_Auto_Fillter_Bot is Starting...."
python3 bot.py
