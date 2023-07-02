if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/pawanjaatpk/file-filter-bot.git /file-filter-botv5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /file-filter-botv5
fi
cd /file-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
