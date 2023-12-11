#Filename: server.py
#Auther: Chandana Challa
#Description: This python script works as mqtt server-subscriber
#Reference: https://github.com/eclipse/paho.mqtt.python
#            https://github.com/cu-ecen-aeld/buildroot-assignments-base/pull/15/files/27acf36fc2e053114e796988541d803198c7ec05

#Importing Modules
 
import paho
import paho.mqtt.client as mqtt


#port is the network port of the server host to connect to.
Port=1883
# Maximum period in seconds between communications with the broker.
Keepalive=60

try:
        # This is the Subscriber
        print("Health Monitoring System Server")

        # connect callback
        def on_connect(client, userdata, flags, rc):
            print("Connected to client status: "+ str(rc))
            # subscribe to a topic
            client.subscribe("topic/healthmonitoringsystem")

        # Callback invoked when message is received from client
        def on_message(client, userdata, msg):
            received_msg = msg.payload.decode()
            print("Received sensor data from client : '%s'" %received_msg)	

        # Client Constructor
        client = mqtt.Client()

        #Connect to a remote broker.
        client.connect("localhost",Port,Keepalive)

        client.on_connect = on_connect
        client.on_message = on_message

        client.loop_forever()

#Error Checking for script.
except Exception as e:
        print(e)
