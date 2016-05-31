function mediaerror()
  n=1022;
  global add_percT=0;
  global add_percDRV=0;
  #typ=0;
  #Llamar los valores teoricos y practicos
  Teorico=load("/media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/TXTVerification/FLMvsTeorico.txt")
  Exp=load("/media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/TXTVerification/FLMvsDRV.txt")
  add_percT=0;
      for i=1:n
        add_percT=add_percT+Teorico(i);
        add_percDRV=add_percDRV+Exp(i);
       endfor
  errorT=add_percT/n;
  errorDRV=add_percDRV/n;
  disp(errorT);  
  disp(errorDRV);
 fclose("all");
end
 
