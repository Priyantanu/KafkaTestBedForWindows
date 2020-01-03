# Kafka Cluster TestBed For Windows
Scripts to Create Cluster on Local Windows Machine       
you can automate the process of creating parallel data pipelines(displaying data on command-prompt) aka consumers in a consumerGroup just by launching "Create Subscriber" again and again, without any hassle. You can also launch as many producers(console) as you need.    
           
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



