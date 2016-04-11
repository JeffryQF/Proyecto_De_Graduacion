function finalresult(n,typ)
  file_id1=fopen("Hexadecimal_R.txt");
  file_id2=fopen("ResultadoSumaXilinx.txt");
  file_id3=fopen("error.txt","w");

  #n=1200;
  #typ=0;
 
  result_t_hex=fgets(file_id1);
  #perc_error=cell(n)
  for i=1:n-1
    result_t_hex=fgets(file_id1);
    result_exp_hex=fgets(file_id2);
    #disp(typeinfo(result_exp_hex));
    result_exp_hex = result_exp_hex(1:end-1);
    result_t_hex= result_t_hex(1:end-1);
    #disp(length(result_exp_hex));
    if typ==0
      result_t_dec=hex2num(result_t_hex, "single");
      result_exp_dec=hex2num(result_exp_hex, "single");
    elseif typ==1
      result_t_dec=hex2num(result_t_hex);
      result_exp_dec=hex2num(result_exp_hex);
    endif  
    #disp(result_exp_dec);
    #disp(result_t_dec);
    A=(abs(abs(result_t_dec)-abs(result_exp_dec)));
    disp(A);
    disp("");
    perc_error{n}=(A/abs(result_t_dec))*100;
    fprintf(file_id3, "%f \n", perc_error{n});
    endfor
    
    
  
  #result_exp_hex=dec2hex(bin2dec(result_exp_bin));
  #disp(result_exp_hex);
  fclose("all");
end
    
