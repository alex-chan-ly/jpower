@echo on
cd C:\_util\_gcp

set GOOGLE_APPLICATION_CREDENTIALS=C:\_util\_gcp\My-Project-d3b31085ee62.json
rem set JAVA_FLAGS=-Djavax.net.ssl.trustStore=C:\util\Java\jdk1.8.0_25\jre\lib\security\cacerts -Djavax.net.ssl.trustStorePassword=43873962 -Dhttp.proxyHost=intpxy1.hk.hsbc -Dhttp.proxyPort=8080 -Dhttps.proxyHost=intpxy1.hk.hsbc -Dhttps.proxyPort=8080 
								  
java %JAVA_FLAGS% -cp google-cloud-dataflow-java-examples-all-bundled-0.0.1-EXAMPLES.jar;google-cloud-dataflow-java-examples-all-0.0.1-EXAMPLES.jar;.  com.google.cloud.dataflow.examples.WordCount --project=rational-clock-164414 --stagingLocation=gs://store-dataflow/staging/ --runner=BlockingDataflowPipelineRunner
