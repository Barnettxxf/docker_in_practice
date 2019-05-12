import socket, time, sys
while True:
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect(('talkto', 2000))
    s.send('Hello World\n')
    data = s.recv(1024)
    print "received:", data
    sys.stdout.flush()
    s.close()
    time.sleep(3)
