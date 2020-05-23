docker build -t ankurbnsl8099/multi-client:latest -t ankurbnsl8099/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t ankurbnsl8099/multi-server:latest -t ankurbnsl8099/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t ankurbnsl8099/multi-worker:latest -t ankurbnsl8099/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push ankurbnsl8099/multi-client:latest
docker push ankurbnsl8099/multi-server:latest
docker push ankurbnsl8099/multi-worker:latest

docker push ankurbnsl8099/multi-client:$SHA
docker push ankurbnsl8099/multi-server:$SHA
docker push ankurbnsl8099/multi-worker:$SHA