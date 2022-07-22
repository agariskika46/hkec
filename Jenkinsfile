pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh '''
				echo APP_NAME=Laravel >> .env
                echo APP_ENV=local >> .env
                echo APP_KEY=base64:llhsZ2L6YBnyYPS5lKRKSQb7fjBsOeyFMiSESWXWwqM= >> .env
                echo APP_DEBUG=true >> .env
                echo APP_LOG_LEVEL=debug >> .env
                echo APP_URL=https://sandbox-apiedr.iki.id:2540 >> .env
                echo APP_TIMEZONE=ASIA/JAKARTA >> .env
                echo DB_SOURCE=server >> .env
                echo DB_CONNECTION=$DEV_DB_CONNECTION_PGSQL >> .env
                echo DB_HOST=$DEV_DB_HOST >> .env
                echo DB_PORT=$DEV_DB_PORT_PGSQL >> .env
                echo DB_USERNAME=$DEV_DB_USER_PGSQL >> .env
                echo DB_PASSWORD=$DEV_DWH_PASS >> .env
                echo DB_DATABASE=$DEV_DB_NAME_LOCAL >> .env
                echo DB_DATABASE_2=$DEV_DB_NAME_TA >> .env
                echo DB_DATABASE_3=$DEV_DB_NAME_APP >> .env
                echo DB_CONNECTION_LOCAL=$DEV_DB_CONNECTION_PGSQL >> .env
                echo DB_HOST_LOCAL=localhost >> .env
                echo DB_PORT_LOCAL=$DEV_DB_PORT_PGSQL >> .env
                echo DB_USERNAME_LOCAL=$DEV_DB_USER_PGSQL >> .env
                echo DB_PASSWORD_LOCAL=$DEV_DB_PASS_LOCAL >> .env
                echo DB_DATABASE_LOCAL=$DEV_DB_NAME_LOCAL >> .env
                echo echo DB_DATABASE_LOCAL_2=$DEV_DB_NAME_TA >> .env
                echo DB_DATABASE_LOCAL_3=$DEV_DB_NAME_APP >> .env
                echo BROADCAST_DRIVER=log >> .env
                echo CACHE_DRIVER=$DEV_CACHE_DRIVER >> .env
                echo SESSION_DRIVER=$DEV_CACHE_DRIVER >> .env
                echo QUEUE_DRIVER=sync >> .env
                echo REDIS_HOST=$DEV_REDIS_HOST >> .env
                echo REDIS_PASSWORD=null >> .env
                echo REDIS_PORT=$DEV_REDIS_PORT >> .env
                echo MAIL_DRIVER=$DEV_MAIL_DRIVER >> .env
                echo MAIL_HOST=$DEV_MAIL_HOST >> .env
                echo MAIL_PORT=$DEV_MAIL_PORT >> .env
                echo MAIL_USERNAME=null >> .env
                echo MAIL_PASSWORD=null >> .env
                echo MAIL_ENCRYPT= >> .env
                echo PUSHER_APP_ID= >> .env
                echo PUSHER_APP_KEY= >> .env
                echo PUSHER_APP_SECRET= >> .env
                echo URL_LOCAL = http://139.99.60.117 >> .env
                echo URL_BALANCE = $D2A_URL_BALANCE >> .env
				'''
            }
        }
    }
}
