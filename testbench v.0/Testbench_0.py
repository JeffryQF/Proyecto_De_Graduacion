#!/usr/bin/python
# -*- coding: utf-8 -*-


#Instituto tecnológico de Costa Rica
#Testbench para pruebas de la FPU para operaciones aritméticas
#Francis Alexander Lopez Montero
#23/02/2016



import os #Para Windows y Linux
#os.path.join("A", "B", "C"); Build paths
#os.getcwd(); Working directory
#os.chdir (""); Change working directory
#helloFile = open('/Users/your_home_folder/hello.txt');
#HelloContent=helloFile.read();
#baconFile.write("Hello world\n");
#baconFile.close();
from oct2py import Oct2Py #$pip install oct2py
import scipy #sudo apt-get install python-scipy
import struct
import string

#myFiles = ["Data_X" , "Data_Y" , "Final_result"];

#ef func(z):
#oc = Oct2Py();
#y= oc.prueba(z);
#print y;
	

def Call_Values(op,n): #Guarda en un txt numeros aleatorios en punto flotante
	oc = Oct2Py();
	oc.call_values("Data_X.txt", "Data_Y.txt", n, op); #Ejecuta en Octave la funcion Call Values

def float_to_bin (name,typ):#conversion a hexadecimal y binario
	dec_file=open(name+".txt");
	hex_file=open(name+"_hex.txt", 'w')
	bin_file=open(name+"_bin.txt", 'wb')
	i=0;
	for line in dec_file:
		value=float(line);
		if typ==0:#Conversion a formato simple
			value_hex=hex(struct.unpack('<I', struct.pack('<f', value))[0]);
			value_bin=bin(struct.unpack('<I', struct.pack('<f', value))[0]);
			value_hex=value_hex.strip('0x');
			value_bin=value_bin.strip('0b');
			value_bin=value_bin.ljust(32,'0');
		elif typ==1:#Conversion a formato doble
			value_hex=hex(struct.unpack('<Q', struct.pack('<d', value))[0]);
			value_bin=bin(struct.unpack('<Q', struct.pack('<d', value))[0]);
			value_hex=value_hex.strip('0x');
			value_bin=value_bin.strip('0b');
			value_bin=value_bin.ljust(64,'0');
		

		hex_file.write(value_hex);
		hex_file.write("\n");
		bin_file.write(value_bin);
		bin_file.write("\n");
		

	dec_file.close();
	hex_file.close();
	bin_file.close();

def result_error():
	oc =Oct2Py();
	oc.


def main():
	oper=0;#Suma=0;Resta=1
	typ=0#Formato simple=0;Formato doble=1
	n=50;#Cantidad de datos
	Call_Values(oper,n);
	float_to_bin("Data_Y", typ);
	float_to_bin("Data_X", typ);
	########Simulacion en Verilog(vivado o otra herramienta)
	result_error();

main();


