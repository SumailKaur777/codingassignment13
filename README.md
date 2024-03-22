# How to run the web application

To run the web application on localhost port 8018, follow these steps:

1. Make sure you have Docker installed on your machine.

2. Clone this repository:

    ```bash
    git clone  https://github.com/SumailKaur777/codingassignment13.git
    ```

3. Navigate to the project directory:

    ```bash
    cd sumailapp
    ```

4. Build the Docker container:

    ```bash
    docker build -t sumailkaur/sumailapp
    ```

5. Run the Docker container:

    ```bash
    docker run -p 8018:8018 sumailkaur/sumailapp
    ```

6. Open your web browser and go to http://localhost:8018 to view the web application.

**Note:** Make sure no other service is running on port 8018 on your machine.
