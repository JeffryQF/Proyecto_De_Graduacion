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
	

def Call_Values(op,n,typ): #Guarda en un txt numeros aleatorios en punto flotante
	oc = Oct2Py();
	oc.call_values("Decimal_A.txt","Decimal_B.txt", n, op, typ); #Ejecuta en Octave la funcion Call Valu0es00

def float_to_hex (name,typ):#conversion a hexadecimal
	dec_file=open("Decimal_"+name+".txt");
	hex_file=open("Hexadecimal_" + name + ".txt", 'w');
	for line in dec_file:
		value=float(line);
		if typ==0:#Conversion a formato simple
			value_hex=hex(struct.unpack('<I', struct.pack('<f', value))[0]).format(8);
			value_hex=value_hex.strip('0x');
			value_hex=value_hex.ljust(8,'0');

		elif typ==1:#Conversion a formato doble
			value_hex=hex(struct.unpack('<Q', struct.pack('<d', value))[0]);
			value_hex=value_hex.strip('0x');
			value_hex=value_hex.strip('L');
			value_hex=value_hex.ljust(16,'0');
		

		hex_file.write(value_hex);
		hex_file.write("\n");
		

	dec_file.close();
	hex_file.close();

def result_error(typ, n):

	oc = Oct2Py();
	oc.finalresult(n,typ)

def simpdob(oper):

	if oper == 1:
		oper = 0;

	else:
		oper =1;

	return oper;

def addsubt(oper):
	selection=raw_input("Please Select(0: add, 1: subt, 2: mult):") 
	if selection == '0':
		oper = 0;

	elif selection == '1':
		oper =1;

	elif selection == '2':
		oper =2;

	return oper;

def main():

	oper=0;#Suma=0;Resta=1
	typ=0#Formato simple=0;Formato doble=1
	n=1024;#Cantidad de datos

	menu = {}
	menu['1']="Cambiar Operacion a realizar" 
	menu['2']="Formato simple/Formato doble"
	menu['3']="Crear valores aleatorios en hexadecimal"
	menu['4']="(Postsimulacion) Calcular y graficar error"
	menu['5']="Exit"
	while True: 
		
		options=menu.keys()
		options.sort()
		print "Operacion %d" %oper;
		print "Formato %d" %typ;
		print "Cantidad %d" %n;
		for entry in options: 
			print entry, menu[entry]

		selection=raw_input("Please Select:") 
		if selection =='1':
			oper=addsubt(oper);

		elif selection == '2':
			typ=simpdob(typ);

		elif selection == '3':
			Call_Values(oper,n,typ);
			float_to_hex("A", typ);
			float_to_hex("B", typ);

		elif selection == '4': 
			result_error(typ, n);

		elif selection == '5': 
			break

		else: 
			print "Unknown Option Selected!" 
		os.system('clear')
		print
  
	########Simulacion en Verilog(vivado o otra herramienta)

main();
