#/bin/bash
docker exec gescont-djdesweb-alone-djdesweb-1 sh -c "python manage.py shell < createTables.py"


