#!/bin/bash
docker exec -i $(docker ps -qf "ancestor=owasp/zap2docker-stable") zap-cli -p 8090 status -t 120
docker exec -i $(docker ps -qf "ancestor=owasp/zap2docker-stable") zap-cli -p 8090 open-url http://testsite.com
docker exec -i $(docker ps -qf "ancestor=owasp/zap2docker-stable") zap-cli -p 8090 spider http://testsite.com
docker exec -i $(docker ps -qf "ancestor=owasp/zap2docker-stable") zap-cli -p 8090 active-scan http://testsite.com
docker exec -i $(docker ps -qf "ancestor=owasp/zap2docker-stable") zap-cli -p 8090 report -o zap_report.html -f html
