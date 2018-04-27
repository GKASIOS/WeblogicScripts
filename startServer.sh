# Change DOMAIN_HOME to the path of your domain
DOMAIN_HOME="/app/Middleware/user_projects/domains/MyDomain"

nohup ${DOMAIN_HOME}/bin/startWebLogic.sh < /dev/null &> /dev/null & echo $! > .process.pid
