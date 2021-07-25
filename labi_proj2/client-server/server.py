#!/usr/bin/python3

import sys
import socket
import select
import json
import base64
import csv
import random
from common_comm import send_dict, recv_dict, sendrecv_dict

from Crypto.Cipher import AES

# Dicionário com a informação relativa aos clientes
gamers = {}
			
# return the client_id of a socket or None
def find_client_id (client_sock):
	for id in gamers:
		if gamers[id]["socket"]==client_sock:
			return id
	

# Função para encriptar valores a enviar em formato json com codificação base64
# return int data encrypted in a 16 bytes binary string and coded base64
def encrypt_intvalue (client_id, data):
	key = gamers[client_id]['cipher']
	data = cipher.encrypt(bytes("%16d" % (data),'utf8'))
	data = str(base64.b64encode(encrypted),'utf8')
	return data


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary string and coded base64
def decrypt_intvalue (client_id, data):
	key = gamers[client_id]['cipher']
	data = base64.b64decode(data)
	data = key.decrypt(data)
	data = int(str (data, 'utf-8'))
	return data


##Funcao que recebe Key
def rec_key(request ,client_id):
	key = base64.b64decode (request['cipher'])
	key = AES.new(key, AES.MODE_ECB)
	gamers[client_id]["cipher"]= key

#
# Incomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "GUESS", number }
# { op = "STOP", number, attempts }
#
# Outcomming message structure:
# { op = "START", status, max_attempts }
# { op = "QUIT" , status }
# { op = "GUESS", status, result }
# { op = "STOP", status, guess }


#
# Suporte de descodificação da operação pretendida pelo cliente
#
def new_msg (client_sock):
	# 1
	req = recv_dict(client_sock)

	resp = None
	# 2 e 3
	if req["op"]=="START":
		resp = new_client(client_sock, req)
		
	elif req["op"]=="QUIT":
		resp = quit_client(client_sock, req)
		
	elif req["op"]=="GUESS":
		resp = guess_client(client_sock, req)
		
	elif req["op"]=="STOP": 
		resp = stop_client(client_sock, req)
	# Caso nenhum dos pedidos execute
	else:
		resp = {"op":req["op"],"status":False,"error":"It isn't a operation"}
	
	# 4
	send_dict(client_sock, resp)
	
#1 read the client request
#2 detect the operation requested by the client
#3 execute the operation and obtain the response (consider also operations not available)
#4 send the response to the client


#
# Suporte da criação de um novo jogador - operação START
#
def new_client (client_sock, req):
	# 1
	cliente = req["client_id"]

	# 2
	if cliente in gamers:
			return {"op":"START","status":False,"error":"Client doesn't exist"}

	# 3
	guessNum = random.randint(0,100)
	maxtentativas = random.randint(10,30)
	# 4
	gamers[cliente] = {"socket":client_sock,"cipher":None,"guess":guessNum,"max_attempts":maxtentativas,"attempts":0}
	
	
	#Adicionar chave ao gamer########################Nao consegui acabar a encriptacao####################################################
	# if req["cipher"]!=None:
		# print(req["cipher"])
		# rec_key(req ,cliente)
	######################################################################################################################################
		

	# 5
	return {"op":"START","status":True,"max_attempts":maxtentativas}
	
#1 detect the client in the request
#2 verify the appropriate conditions for executing this operation
#3 obtain the secret number and number of attempts
#4 process the client in the dictionary
#5 return response message with results or error message


#
# Suporte da eliminação de um cliente
#
def clean_client (client_sock):
	# 1
	client_id = find_client_id(client_sock)
	
	if client_id:
		del gamers[client_id]
		return True
		
	return False
	
#1 obtain the client_id from his socket and delete from the dictionary


#
# Suporte do pedido de desistência de um cliente - operação QUIT
#
def quit_client (client_sock, req):
	# 1
	gamer = find_client_id(client_sock)

	# 2
	if gamer:
		# 3
		update_file(gamer, "QUIT")

		# 4
		clean_client(client_sock)

		# 5
		return {"op":"QUIT","status":True}
	else:
		# 5
		return {"op":"QUIT","status":False,"error":"Client doesn't exist"}

#1 obtain the client_id from his socket
#2 verify the appropriate conditions for executing this operation
#3 process the report file with the QUIT result
#4 eliminate client from dictionary
#5 return response message with result or error message


#
# Suporte da criação de um ficheiro csv com o respectivo cabeçalho
#
def create_file ():
	# 1
	with open("report.csv", "w") as file:
		writer = csv.writer(file)
		writer.writerow(["Gamer","Secret Number","Attempts","Attemps used","Result"])
        


#1 create report csv file with header


#
# Suporte da actualização de um ficheiro csv com a informação do cliente e resultado
#
def update_file (client_id, result):
	cliente = gamers[client_id]
	# 1
	with open("report.csv", "a") as file:
		writer = csv.writer(file)
		writer.writerow([client_id,cliente["guess"],cliente["max_attempts"],cliente["attempts"],result])
		
#1 update report csv file with the result from the client


#
# Suporte da jogada de um cliente - operação GUESS
#
def guess_client (client_sock, request):
	# 1
	gamer = find_client_id(client_sock)

	# 2
	if not gamer:
		return {"op":"GUESS","status":False,"error":"Client doesn't exist"}
	
	gamers[gamer]["attempts"] += 1
	
	num = request["number"]
	
	###########################Nao consegui acabar a encriptacao#############################################################
	# if gamers[gamer]["cipher"]!=None:
		# num = decrypt_intvalue(gamer,request["number"])
	#########################################################################################################################	
	
	adv = gamers[gamer]["guess"]
	if num == adv:
		result = "equals"
	
	if num > adv:
		result = "smaller"
		
	elif num < adv:
		result = "larger"

	# 3
	return {"op":"GUESS","status":True,"result":result}
	
#1 obtain the client_id from his socket
#2 verify the appropriate conditions for executing this operation
#3 return response message with result or error message


#
# Suporte do pedido de terminação de um cliente - operação STOP
#
def stop_client (client_sock, request):
	# 1
	cliente = find_client_id(client_sock)

	# 2
	if not cliente in gamers:
		return {"op":"STOP","status":False,"error":"Client doesn't exist"}
	
	if gamers[cliente]["attempts"] != request["attempts"]:
		return {"op":"STOP","status":False,"error":"Número de jogadas inconsistente"}
	
	# 3
	if gamers[cliente]["attempts"] <= gamers[cliente]["max_attempts"] and gamers[cliente]["guess"] == request["number"]:
		update_file(cliente, "SUCCESS")
	else:
		update_file(cliente, "FAILURE")
	
	# 4
	clean_client(client_sock)

	# 5
	return {"op":"STOP","status":True,"guess":request["number"]}
	
#1 obtain the client_id from his socket
#2 verify the appropriate conditions for executing this operation
#3 process the report file with the SUCCESS/FAILURE result
#4 eliminate client from dictionary
#5 return response message with result or error message


def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error
	if (len(sys.argv) != 2):
		print("Necessita de apenas 2 argumentos")
		exit(1)
		
	port = int(sys.argv[1])

	server_socket = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	server_socket.bind (("127.0.0.1", port))
	server_socket.listen (10)

	clients = []
	create_file ()
	

	while True:
		try:
			available = select.select ([server_socket] + clients, [], [])[0]
		except ValueError:
			# Sockets may have been closed, check for that
			for client_sock in clients:
				if client_sock.fileno () == -1: client_sock.remove (client) # closed
			continue # Reiterate select

		for client_sock in available:
			# New client?
			if client_sock is server_socket:
				newclient, addr = server_socket.accept ()
				clients.append (newclient)
			# Or an existing client
			else:
				# See if client sent a message
				if len (client_sock.recv (1, socket.MSG_PEEK)) != 0:
					# client socket has a message
					##print ("server" + str (client_sock))
					new_msg (client_sock)
				else: # Or just disconnected
					clients.remove (client_sock)
					clean_client (client_sock)
					client_sock.close ()
					break # Reiterate select
					

if __name__ == "__main__":
	main()
