function grapgresult(typ)
  n=1:1024;
  
  Teorico=load("/media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/TXTVerification/Decimal_R.txt")
  if (typ==0)
    Exp_FLM=load("/media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/TXTVerification/FLMvsTeorico.txt")
    Exp_DRV=load("/media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/TXTVerification/FLMvsDRV.txt")
    h1=figure();
    plot(n,Exp_FLM,'.b',n,Exp_DRV,'r');
    axis ([1, 500 ,0, 0.0005], "normal");
    xlabel ("n");
    ylabel ("Porcentaje error");
    #print(h1, 'Prcentaje error  32.eps', '-portrait');
    print -depsc -portrait Porcentaje_error_mult_doble.eps
    
  else
    Exp_FLM=load("/media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/TXTVerification/Result_Calc_sin_dec_FPGA.txt")
    h2=figure();
    plot(n,Teorico,'-xb',n,Exp_FLM,'or');
    axis ([1, 100, -50, 60], "normal");
    xlabel ("n");
    ylabel ("Axis 1");
    #print(h2, 'dummy2.eps', '-portrait');
    print -depsc -portrait Implementacion_mult_doble.eps
  endif
  
  fclose("all");
end  
      