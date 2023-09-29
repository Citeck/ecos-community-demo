#!/bin/bash

if [ "$WITH_DEMO_DATA" == "true" ]; then
  echo "Restoring demo dump..."
  mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    var rootUser = '$MONGO_INITDB_ROOT_USERNAME';
    var rootPassword = '$MONGO_INITDB_ROOT_PASSWORD';
    var admin = db.getSiblingDB('admin');
    admin.auth(rootUser, rootPassword);

    db = db.getSiblingDB('$ECOS_PROCESS_APP_DATASOURCE_DATABASE')
    db.createUser({
      user: '$ECOS_PROCESS_APP_DATASOURCE_USERNAME',
      pwd: '$ECOS_PROCESS_APP_DATASOURCE_PASSWORD',
      roles: [
        {
          role: 'dbOwner',
          db: '$ECOS_PROCESS_APP_DATASOURCE_DATABASE',
        },
      ],
    });

    db = db.getSiblingDB('$ECOS_HISTORY_APP_DATASOURCE_DATABASE')
    db.createUser({
      user: '$ECOS_HISTORY_APP_DATASOURCE_USERNAME',
      pwd: '$ECOS_HISTORY_APP_DATASOURCE_PASSWORD',
      roles: [
        {
          role: 'dbOwner',
          db: '$ECOS_HISTORY_APP_DATASOURCE_DATABASE',
        },
      ],
    });
EOF
  mongorestore --host localhost --port 27017 --username root_user --password root_user_password /tmp/mongo
else
  echo "Create DB"
  mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    var rootUser = '$MONGO_INITDB_ROOT_USERNAME';
    var rootPassword = '$MONGO_INITDB_ROOT_PASSWORD';
    var admin = db.getSiblingDB('admin');
    admin.auth(rootUser, rootPassword);

    db = db.getSiblingDB('$ECOS_PROCESS_APP_DATASOURCE_DATABASE')
    db.createUser({
      user: '$ECOS_PROCESS_APP_DATASOURCE_USERNAME',
      pwd: '$ECOS_PROCESS_APP_DATASOURCE_PASSWORD',
      roles: [
        {
          role: 'dbOwner',
          db: '$ECOS_PROCESS_APP_DATASOURCE_DATABASE',
        },
      ],
    });

    db = db.getSiblingDB('$ECOS_HISTORY_APP_DATASOURCE_DATABASE')
    db.createUser({
      user: '$ECOS_HISTORY_APP_DATASOURCE_USERNAME',
      pwd: '$ECOS_HISTORY_APP_DATASOURCE_PASSWORD',
      roles: [
        {
          role: 'dbOwner',
          db: '$ECOS_HISTORY_APP_DATASOURCE_DATABASE',
        },
      ],
    });
EOF
fi

exec "$@"