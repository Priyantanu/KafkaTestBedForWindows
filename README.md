# KafkaClusterForWindows
Scripts to Create Cluster on Local Machine

Steps:
1. SET "KAFKAPATH" to your kafka windows directory like for mine it is "C:\kafka_2.12-2.3.0\bin\windows"
	env to set in your system
   "KAFKAPATH=C:\kafka_2.12-2.3.0\bin\windows"
2. Run script CopyServerProperties.bat file

zookeeper will run at localhost:2181     
server0 will run at localhost:9092     
server1 will run at localhost:9093    
server2 will run at localhost:9094    

You can create as many subscribers,Producers as you wish
You can delete all your data and log files using "Delete data+logs" := use to reset/clear cluster informantion


