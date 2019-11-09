import re
import socket
import operator
import sys

def ipValidator(ip):
    try:
        socket.inet_pton(socket.AF_INET, ip)
        return True
    except socket.error:
        return False

def dataFormatter(file):
    try:
        f = open(file, 'r')
        data = f.read()
        f.close()
        return re.sub('(:\d+)|[^\w\s.]', '', data).split()
    except:
        return None

def main():
    if(len(sys.argv)!=2):
        print("Ejecucion programa: python3 ips.py nombre_archivo")
        return
    fileName = sys.argv[1]
    ipDictionary = {}
    data = dataFormatter(fileName)
    if data is None:
        print("archivo ingresado no encontrado")
        return
    for w in dataFormatter(fileName):
        if(ipValidator(w)):
            if(w in ipDictionary):
                ipDictionary[w] = ipDictionary[w] + 1
            else:
                ipDictionary[w] = 1
    sorted_ips = sorted(ipDictionary, key=ipDictionary.get, reverse=True)
    print(sorted_ips[:10])

main()




