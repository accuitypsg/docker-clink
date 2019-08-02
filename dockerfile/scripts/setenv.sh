#
# Default Accuity Home and Classpath Setting
#
[ -z "${ACCUITY_HOME}" ] && export ACCUITY_HOME="/data/accuity"
[ -z "${CLASSPATH}" ] && export CLASSPATH="${ACCUITY_HOME}/config"

#
# Default JVM Memory Options
#
[ -z "${HEAP_OPT}" ] && export HEAP_OPT="-Xms1g -Xmx2g"
[ -z "${PERMGEN_OPT}" ] && export PERMGEN_OPT="-XX:MetaspaceSize=64m -XX:MaxMetaspaceSize=128m"
[ -z "${GC_OPT}" ] && export GC_OPT="-XX:+UseG1GC"
[ -z "${MEM_OPTS}" ] && export MEM_OPTS="${HEAP_OPT} ${PERMGEN_OPT} ${GC_OPT}"

#
# Default Log Directory
#
#[ -z "${LOG4J_OPTS}" ] && export LOG4J_OPTS="-Dlog4j.configurationFile=${ACCUITY_HOME}/config/log4j2.xml"
[ -z "${LOG_DIR}" ] && export LOG_DIR="${ACCUITY_HOME}/clink/../clink/logs"

#
# Default ComplianceLink JVM Options
#
[ -z "${FAST_FUZZY}" ] && export FAST_FUZZY="-Dfast.fuzzy=true"
[ -z "${FILE_ENCODING}" ] && export FILE_ENCODING="-Dfile.encoding=UTF-8"
[ -z "${FILTER_MEM}" ] && export FILTER_MEM="-Dfilter.memory.count=20000"
[ -z "${CL_WORKERS}" ] && export CL_WORKERS="-Dcl.workers.count=8"
[ -z "${CLINK_OPTS}" ] && export CLINK_OPTS="${FAST_FUZZY} ${FILE_ENCODING} ${FILTER_MEM} ${CL_WORKERS}"

#
# Default Security Options
#
[ -z "${SECRET_KEY}" ] && export SECRET_KEY="10d763c78c534bf4bdeb1f05562e7e13"
[ -z "${KEYSTORE_PATH}" ] && export KEYSTORE_PATH="${ACCUITY_HOME}/keystore/ks.properties"

#
# Build JAVA_OPTS
#
export JAVA_OPTS="${MEM_OPTS} ${LOG4J_OPTS} -Dfirco.log.dir=${LOG_DIR} -Dsecurity.props=${KEYSTORE_PATH} -DSECRET_KEY=${SECRET_KEY} ${CLINK_OPTS}"
