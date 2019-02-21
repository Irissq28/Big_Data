### Note

The scripts contains RDD and DataFrame version.

Spark runs based on Hortonworks. In Spark 2.0, a dataframe is really a datasets of row objects.

If you use it on Cluster, Specifying [which Version of Spark](https://docs.hortonworks.com/HDPDocuments/HDP2/HDP-2.6.5/bk_spark-component-guide/content/spark-choose-version.html) to run in Putty. 

**Spark 2.0**

```
export SPARK_MAJOR_VERSION=2
```

Then run to get the result. 

```
spark-submit <filename>.py
```
