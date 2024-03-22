# How to run the web application

To run the web application on localhost port 8018, follow these steps:

1. Make sure you have Docker installed on your machine.

2. Clone this repository:

    ```bash
    git clone <repository-url>
    ```

3. Navigate to the project directory:

    ```bash
    cd lastName_firstName_ui_garden_build_checks
    ```

4. Build the Docker container:

    ```bash
    docker build -t lastName_firstName_coding_assignment13 .
    ```

5. Run the Docker container:

    ```bash
    docker run -p 8018:8018 lastName_firstName_coding_assignment13
    ```

6. Open your web browser and go to http://localhost:8018 to view the web application.

**Note:** Make sure no other service is running on port 8018 on your machine.
