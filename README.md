# KafkaClusterForWindows
Scripts to Create Cluster on Local Windows Machine       
you can automate the process of creating parallel data pipelines(displaying data on command-prompt) aka consumers in a consumerGroup just by launching "Create Subscriber" again and again, without any hassle. You can also launch as many producers(console) as you need.    
           
Steps:       
1. SET "KAFKAPATH" to your kafka windows directory like for mine it is "C:\kafka_2.12-2.3.0\bin\windows"
	env to set in your system
   "KAFKAPATH=C:\kafka_2.12-2.3.0\bin\windows"
2. Run script CopyServerProperties.bat file          
         
zookeeper will run at localhost:2181     
server0 will run at localhost:9092     
server1 will run at localhost:9093    
server2 will run at localhost:9094    
     
With this, You can create 1 Zookeeper & max 3 Kafka server node one machine       
You can create as many subscribers,Producers as you wish        
You can delete all your data and log files using "Delete data+logs" := use to reset/clear cluster informantion        



