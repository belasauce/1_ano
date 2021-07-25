#!/usr/bin/python3

import os
import sys
import socket
import json
import base64
from common_comm import send_dict, recv_dict, sendrecv_dict

from Crypto.Cipher import AES

# Função para encriptar valores a enviar em formato jsos com codificação base64
# return int data encrypted in a 16 bytes binary string coded in base64
def encrypt_intvalue (cipherkey, data):
	cipher = AES.new(cipherkey, AES.MODE_ECB)
	data = cipher.encrypt(bytes("%16d" % (data), 'utf8')) # bytes
	data_tosend = str(base64.b64encode(data), 'utf8')
	return data_tosend


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary strings coded in base64
def decrypt_intvalue (cipherkey, data):
	cipher = AES.new(cipherkey, AES.MODE_ECB)
	data = base64.b64decode (data)
	data = cipher.decrypt (data)
	return data
	

#String KEY
def str_Key():
	key = str(base64.b64encode(os.urandom(16)), 'utf8')
	return key

# verify if response from server is valid or is an error message and act accordingly
def validate_response (client_sock, response):
	return None


# process QUIT operation
def quit_action (client_sock, attempts):
	q = sendrecv_dict(client_sock,{"op":"QUIT"})
	client_sock.close()


# Outcomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "GUESS", number }
# { op = "STOP", number, attempts }
#
# Incomming message structure:
# { op = "START", status, max_attempts }
# { op = "QUIT" , status }
# { op = "GUESS", status, result }
# { op = "STOP", status, guess }


	
#
# Suporte da execução do cliente
#
def run_client (client_sock, client_id):
	
	##inicio interfase
	os.system('clear')
	print("________________________GUESS GAME______________________________\n")
	print("\t\t\tGamer-->%s\n"% client_id)
	print("\t\t\tAttempts --> 10 to 30\n")
	print("\t\t\tRange guess--> 0 to 100\n")
	print("\t\t\tType => s/S to START\n\t\t\tType = q/Q to QUIT at any time\n")	
	while True:
		iniciar = input("\t\t\tType:").strip()
		if iniciar.lower()=="q":
			exit(0)
		elif iniciar.lower()=="s":
			break
			

	os.system('clear')
	
	
	##Adicionar a Key para client#######################Nao consegui acabar a encriptacao#########################
	# print("\n\n\n\tIf you want your messages to be encrypted type = s/S\n")
	# print("\n\n\n\tWe are having technical dificulties with the encryptation \n\t\tpress any key besides s/S to Start\n")
	# encrypt = input("\t\t\tType: ").strip()
	# key = None
	# if encrypt.lower() == "s":
		# key = str_Key()
	################################################################################################

    # START
	key = None
	start = sendrecv_dict(client_sock,{"op":"START","client_id":client_id,'cipher': key})	
	
	os.system('clear')
	
	maxtentativas = start["max_attempts"]
	Tentativas = "Tentativas: %2d"
	nums = []
	n = 0

	##print("\n\n\n\n______________________________Tentativas:",maxtentativas,"______________________________\n\n")
	print(f'\n\n\n\n{Tentativas:_^66}\n\n\n\n'% maxtentativas)
	
	
	# tentativas
	while len(nums)<maxtentativas:
		while True:
			n = input("Guess: ").strip()
	
			if n.lower() == 'q':
				break
	
			elif n.isdigit():
				n = int(n)
				if n>=0 and n<=100:
					break
			print("It must be an integer(0-100) or q/Q to Quit")
			
		
		if n=="q" or n=="Q":
			#q = sendrecv_dict(client_sock,{"op":"QUIT"})
			quit_action (client_sock, maxtentativas-len(nums))
			return None
			
		## se Quiser encrypitar	#########################Nao consegui acabar a encriptacao##########################################
		# if key!=None:
			# n =encrypt_intvalue(key, n)

		# guess = sendrecv_dict(client_sock, {"op":"GUESS","number":n})
		# nums.append([n,guess["result"]])
		
		
		############################################################################################
		
		os.system('clear')
		
		guess = sendrecv_dict(client_sock, {"op":"GUESS","number":n})
		nums.append([n,guess["result"]])
		
		if((maxtentativas-len(nums))!=0) and guess["result"] != "equals":
			##print("\n\n\n\n______________________________Tentativas: %2d______________________________\n\n"% int(maxtentativas-len(nums)))
			print(f'\n\n\n\n{Tentativas:_^66}\n\n\n\n'% int(maxtentativas-len(nums)))
			print("Try a "+guess["result"]+" number")
		
		elif guess["result"] == "equals":
			print("\n\n\n\t\tGood job! You guessed the number in only",len(nums),"attempts\n\n\n")
			envStop = sendrecv_dict(client_sock,{"op":"STOP","number":n,"attempts":len(nums)})
			exit(0)
		
		else:
			print("\n\n\n\n\t\tYou Lost! Try again if you think you can do better.\n\n\n\n")
			envStop = sendrecv_dict(client_sock,{"op":"STOP","number":n,"attempts":len(nums)})
			exit(0)
			
		
	# QUIT
	##q = sendrecv_dict(client_sock,{"op":"QUIT"})
	quit_action (client_sock, maxtentativas-len(nums))
	

def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error
	if len(sys.argv)!=3 and len(sys.argv)!=4:
		print("U must have 3 arguments")
		exit(1)

	port = int(sys.argv[2])
	
	if len(sys.argv)==4:
		hostname = sys.argv[3]
	else:
		hostname = "127.0.0.1"

	client_sock = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	client_sock.connect ((hostname, port))

	run_client (client_sock, sys.argv[1])

	client_sock.close ()
	sys.exit (0)

if __name__ == "__main__":
    main()
