array = [64,25,12,22];
len = length(array);

for i=1:len-1
    
        for j=i+1:len
        
            if(array(i)<array(j))
            
                disp(array(i));
              
            
            else
                
                   
                    temp = array(i);
                    array(i)=array(j);
                    array(j)=temp;

                
            end   
           

        
        end
        disp(array(j));
    
       
end