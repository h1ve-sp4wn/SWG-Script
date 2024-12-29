Running in the Terminal:

Step 1: Install Dependencies

Before running the script in the terminal, install the required dependencies via pip. Open a terminal window and execute the following commands:

    pip install cryptography pycryptodome websockets requests

Step 2: Prepare the Script

Save the script in a .py file, for example swg_script.py.

Step 3: Prepare the Payload File and WebSocket URL

Ensure that the path to your payload file (payload_file_path) and the WebSocket URL (ws_url) are set correctly in the script. Update the following values:

    payload_file_path = "path_to_your_payload_file"  # The path to the payload you wish to split, encrypt, and send

    ws_url = "wss://your-websocket-server.com"  # Your WebSocket URL for sending payload

Step 4: Run the Script

Navigate to the directory where your script is located and run the script using Python:

    python swg_script.py

This should execute the complete process of splitting the payload, encrypting it, and transmitting it over a WebSocket connection.

Running in Docker:

Build the Docker Image

Build the Docker image using the following command in the same directory as your Dockerfile:

    docker build -t swg-script .

Step 3: Run the Docker Container

After building the Docker image, run the container using the following command:

    docker run -it --rm payload-script

This command will start the container, execute the Python script, and automatically clean up the container after it finishes.

Step 4: Configure for WebSocket and Payload

Ensure that:

Your WebSocket server is running and reachable from the Docker container. You may need to adjust network settings if you are using a local WebSocket server.
    
The payload file path is correctly set within the container. You can either mount the file as a volume or adjust the path accordingly.

To mount a file from your local system into the Docker container, use the -v flag:

    docker run -it --rm -v /path/to/your/local/file:/app/payload_file payload-script

This will mount the local file /path/to/your/local/file to /app/payload_file inside the container.


