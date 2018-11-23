

echo "Removing Existing Containers"
docker-compose -f docker-compose.yml rm --force

echo "Building Containers"
docker-compose -f docker-compose.yml build --no-cache

echo "Deploying Containers"
docker-compose -f docker-compose.yml up --abort-on-container-exit