# NoSQL
## HBase
**Python**
Add a new port 8000, which means I’m going to be able to communicate through my VirtualMachine(Azure) here on port 8000 to my service.

Have an HBase instance running on top of HDFS instance and a REST server sitting on top of that can vend GET and PUT requests and whatever else to whatever service sitting outside of HBase cluster

```
/usr/hdp/current/hbase-master/bin/hbase-daemon.sh start rest -p 8000 —info port 8001
```

Shut down Hbase REST interface
```
/usr/hdp/current/hbase-master/bin/hbase-daemon.sh stop rest
```

**Pig**

*Run in Putty terminal*

```
pig hbase.pig

less hbase.pig

pig hbase.pig
```

*Converting to HBase Shell*

<img align ="center" src="https://github.com/Irissq28/Big_Data/blob/master/NoSQL/HBase/image/shell.png" width="400" height="300"/>

*Create table 'users' followed by a family column named 'userinfo'*

```
create 'users', 'userinfo'
```

*List all the tables*

<img align ="center" src="https://github.com/Irissq28/Big_Data/blob/master/NoSQL/HBase/image/list.png" width="400" height="300"/>

*use Scan to take a peek of the table*
```
scan 'users'
```

<img align ="center" src="https://github.com/Irissq28/Big_Data/blob/master/NoSQL/HBase/image/scan.png" width="400" height="300"/>

*Before drop the table, disable it first*

<img align ="center" src="https://github.com/Irissq28/Big_Data/blob/master/NoSQL/HBase/image/disable_drop.png" width="400" height="300"/>

*Exit the HBase Shell*

```
exit
```


After all things done, remember to shut down the HBase service in Ambari.

## MongoDB

Install MongoDB first.

```

```
