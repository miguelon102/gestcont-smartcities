# Master in Geomatics and Geoinformation. <a href="https://upv.es" target="blank">Universitat Politècnica de València</a>

## Web Develop and Geoportals subject

### Example of dockerized Django API.
 
### Instructions

This docker project needs a docker service called *postgis*, in an external docker network called *postgis_postgis*, and a database called *djdesweb*, with the extension *postgis* added. You can create the requirements with the following repo: https://github.com/joamona/docker-postgis-pgadmin4-geoserver.

- Clone the repo:

	git clone https://github.com/joamona/gescont-djdesweb-alone.git

- Change to the project folder:

	cd gescont-djdesweb-alone

- Start the API:

	docker compose up

- Only first time you will need to initialize the database:

	./init_db.sh

	./create_tables.sh
 