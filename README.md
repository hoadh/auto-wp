## Server preparation

https://www.nixcraft.com/t/innodb-io-setup-failed-with-eagain-will-make-5-attempts-before-giving-up/3839/2

```
sudo sysctl -w fs.aio-max-nr=524288
```

To set the aio-max-nr value at boot time permanently
```
vi /etc/sysctl.conf
```

Append
```
fs.aio-max-nr=524288
```

Save and then run:
```
sudo sysctl -p /etc/sysctl.conf
```


## Up
```
chmod +x ./*
./all-in-one.sh
./docker-compose-up.sh
```