docker-compose down

cd ../accessible-course-material
git pull
cd ../course-exercises
git pull
cd ../visualizing-concepts
git pull
cd ../server
git pull

docker-compose up --build