if [ ! -f "fast" ]; then
     wget https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_amd64 -O fast
     chmod +x fast
fi
echo > _ins.sh
echo "while [ 1 ]" >> _ins.sh
echo "do" >> _ins.sh
echo "./fast$1 -d" >> _ins.sh
echo "done" >> _ins.sh
for i in `seq 1 4`
do
     cp fast fast$i
     chmod a+x fast$i
     nohup bash _ins.sh $i > /dev/null 2>&1 &
     sleep 1
     echo "thread $i start!"
done
