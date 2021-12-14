sudo apt-get install curl
curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt-get install speedtest
echo "while [ 1 ]" > _ins.sh
echo "do" >> _ins.sh
echo "speedtest" >> _ins.sh
echo "sleep 5" >> _ins.sh
echo "done" >> _ins.sh
for i in `seq 1 4`
do
     nohup bash _ins.sh $i > /dev/null 2>&1 &
     sleep 2
     echo "thread $i start!"
done
