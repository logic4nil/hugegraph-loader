STATIC_DIR=./assembly/static
mvn install:install-file -Dfile=$STATIC_DIR/lib/ojdbc8-12.2.0.1.jar -DgroupId=com.oracle -DartifactId=ojdbc8 -Dversion=12.2.0.1 -Dpackaging=jar
rm -rf ${STATIC_DIR}/lib/hugegraph-common-1.8.10.jar
rm -rf ${STATIC_DIR}/lib/hugegraph-client-3.0.0.jar
rm -rf ${STATIC_DIR}/lib/common-pom.xml
rm -rf ${STATIC_DIR}/lib/client-pom.xml
mvn clean install -Dmaven.test.skip=true
