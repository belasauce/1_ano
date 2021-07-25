from socket import *

def main():
    udp_s = socket(AF_INET, SOCK_DGRAM)
    udp_s.bind(("127.0.0.1", 0))
    server_addr = ("127.0.0.1", 1234)

    while 1:
        str_data = input("client1:")
        b_data = str_data.encode("utf-8")
        udp_s.sendto(b_data, server_addr)

    udp_s.close()

if __name__=="__main__":
    main()

