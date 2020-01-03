# KafkaClusterForWindows
Scripts to Create Cluster on Local Windows Machine       
           
Steps:       
1. Set cluster.properties file in "BatchFiles" folder         
   zookeeper=localhost:2181         
   bootstrap-server=localhost:9092       
   topicname=kick          
   groupname=kickgroup        
   KAFKAPATH=C:\kafka_2.12-2.3.0\bin\windows        
           
2. Run script CopyServerProperties.bat file             
          
You can create 1 Zookeeper & max 3 Kafka server node one machine       
You can create as many subscribers,Producers as you wish        
You can delete all your data and log files using "ResetCluster"             



