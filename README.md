# KafkaTestBedForWindows
Scripts to Create Cluster on Local Windows Machine       
           
Steps:       
1. Set cluster.properties file in "BatchFiles" folder         
   zookeeper=localhost:2181         
   bootstrap-server=localhost:9092       
   topicname=topic_name         
   groupname=topic_group        
   KAFKAPATH=C:\kafka_2.12-2.3.0\bin\windows        
           
2. If you are using kafka_2.12-2.3.0, then it is fine, otherwise you need to manually edit all  server{i} properties files for
log.dirs=C:/{your kafka version}/data/kafka0

3. Run script CopyServerProperties.bat file to copy all properties files(zookeeper+servers in your config directory).       
          
You can create 1 Zookeeper & max 3 Kafka server node one machine       
You can create as many subscribers,Producers as you wish. Describe Group, Delete Topic(marked For), Topic Create, Topic Describe ect. properties are also present with it.
You can delete all your data and log files using "ResetCluster"             



