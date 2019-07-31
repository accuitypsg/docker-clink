#export SECRET_KEY=10d763c78c534bf4bdeb1f05562e7e13
export ACCUITY_HOME=/data/accuity
export CLASSPATH=${ACCUITY_HOME}/config
export JAVA_OPTS="${MEM_OPTS} -Dlog4j.configuration=${ACCUITY_HOME}/config/log4j.xml -Dlog4j.configurationFile=${ACCUITY_HOME}/config/log4j2.xml -Dsecurity.props=${ACCUITY_HOME}/keystore/ks.properties -DSECRET_KEY=${SECRET_KEY} -Dfast.fuzzy=true -Dfile.encoding=UTF-8 -Dfilter.memory.count=20000 -Dcl.workers.count=8"
