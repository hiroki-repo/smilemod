cp /system/bin/sh /data/data/com.kknet.term/bin
cp /system/bin/busybox /data/data/com.kknet.term/bin
if [ ! -e /sdcard/smilemods/curlinsted ]; then
cd sdcard
mkdir /data/data/com.kknet.term/curl/
/data/data/com.kknet.term/bin/busybox tar -vx</sdcard/curl.tar
/data/data/com.kknet.term/bin/busybox cp -rf /sdcard/curl/* /data/data/com.kknet.term/curl/
chmod 777 /data/data/com.kknet.term/curl/bin/*
touch /sdcard/smilemods/curlinsted
cd /
fi
echo "Loading SmileMod..."
echo "Running required mods..."
for i in /sdcard/smilemods/*.smk
do
/data/data/com.kknet.term/bin/sh $i
done
echo "Runed required mods..."
echo "Running mentenances..."
/data/data/com.kknet.term/bin/sh /storage/sdcard1/runner.sh
echo "Runed mentenances..."
echo "Welcome to SmileMod."
echo "============================="
while :
do
for i in /sdcard/smilemods/*.smd
do
/data/data/com.kknet.term/bin/sh $i
done

done