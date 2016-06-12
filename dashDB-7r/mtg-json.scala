

val sqlContext = new org.apache.spark.sql.SQLContext(sc)

//read json file from local
val df = sqlContext.read.json("C:/Users/Kizmet/Downloads/ibm-demo/data/raw_mtg_data-cleanse-2.json")

df.printSchema

//count number of rows in dataset -- 1570
df.count()

//Analyzing JSON files in Scala as DataFrames
df.select("mtg_id").collect()

// Convert DataFrame directly into an RDD
val dfRDD = df.rdd

// View first 3 rows of the RDD
dfRDD.take(3).foreach(println)

// View distinct values in the 'employee_code' column
//needs work df.map(r => r(0).asInstanceOf[Seq[Long]]).flatMap(x => x).distinct().collect()

// Create a Spark SQL temp table
// Note that temp tables will not persist across cluster restarts
df.registerTempTable("test_json")
val ee = sqlContext.sql("select employee_code, tm_of_dy_ind, count(mtg_id) as mtg_ct, sum(mtg_dur) as dur_ttl from test_json group by employee_code, tm_of_dy_ind order by mtg_ct desc")
ee.show

//schema ref:
root
 |-- _id: string (nullable = true)
 |-- about: string (nullable = true)
 |-- ee_mtg_orgnzr_flg: string (nullable = true)
 |-- employee_code: long (nullable = true)
 |-- guid: string (nullable = true)
 |-- index: long (nullable = true)
 |-- invitees: array (nullable = true)
 |    |-- element: struct (containsNull = true)
 |    |    |-- id: long (nullable = true)
 |    |    |-- name: string (nullable = true)
 |-- mtg_accptd_ct: long (nullable = true)
 |-- mtg_attchmt_flg: string (nullable = true)
 |-- mtg_attchmt_ttl_sz: double (nullable = true)
 |-- mtg_dclnd_ct: long (nullable = true)
 |-- mtg_desc: string (nullable = true)
 |-- mtg_dte: string (nullable = true)
 |-- mtg_dur: long (nullable = true)
 |-- mtg_id: long (nullable = true)
 |-- mtg_invtd_ct: long (nullable = true)
 |-- mtg_loc: long (nullable = true)
 |-- mtg_tag: string (nullable = true)
 |-- mtg_title: string (nullable = true)
 |-- mtg_title_cat: string (nullable = true)
 |-- tags: array (nullable = true)
 |    |-- element: string (containsNull = true)
 |-- timestamp_mtg: string (nullable = true)
 |-- tm_of_dy_ind: string (nullable = true)
