# docker-postgresql
This postgresql docker image extends from the offical postgresql:11. It will automatically create a sample database ```dvdrental``` when the container spins up.

## Usage
1. Clone this repo.
2. Cd into this repo.
3. Run 
    ```
    docker-compose up -d
    ```
    to spin up the container.
4. Run
    ```
    docker exec -it -u postgres <container id> psql
    ```
    to get into container
4. Run
    ```
    \c dvdrental
    ```
    to connect to dvdrental sample database
5. Now you can query the sample database
