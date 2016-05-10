clc
clear
h=figure;
whitebg([1 1 1])

axis on
hold on
g=imread('Fruitninjalevels.png');
imshow(g); hold on
set(h, 'WindowButtonDownfcn', 'c = get(gca, ''CurrentPoint'')');
    c=[]
    
 
        
           while 1
        if ~isempty(c)

                if c(1)>80 && c(1)<80+130
                    if c(3)>500 && c(3)<500+130
             run('level1')
                 
                    
                    end
                end
                
                    
                
                if c(2)>260 && c(2)<260+130
                    if c(4)>500 && c(4)<500+130
                   run('level2')
      end; 
                end
                           
                if c(2)>435 && c(2)<435+130
                    if c(4)>500 && c(4)<500+130
                   run('level3')
      end; 
                end
                 
                if c(2)>605 && c(2)<605+130
                    if c(4)>500 && c(4)<500+130
                   run('level4')
      end; 
                          end
                          
           
                if c(2)>765 && c(2)<765+130
                    if c(4)>500 && c(4)<500+130
                   run('level5')
      end; 
                          end
                
        end
                     pause(0.01)
   end
   