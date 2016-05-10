clc
clear
h=figure;
whitebg([1 1 1])

axis on
hold on
g=imread('FruitninjaEasyHard.png');
imshow(g); hold on
set(h, 'WindowButtonDownfcn', 'c = get(gca, ''CurrentPoint'')');
    c=[]
    
   
        
              
    l=385;
    i=385+230;
    q=365;
    t=365+100;
    
    b=385;
    n=385+230;
    v=485;
    w=485+100;
    
   while 1
        if ~isempty(c)

                if c(1)>l && c(1)<i
                    if c(3)>q && c(3)<t
             run('easygame')
                 
                    
                    end
                end
                
                    
                
                if c(2)>b && c(2)<n
                    if c(4)>v && c(4)<w
                   run('hardgame')
      end; 
                          end
        end
                     pause(0.01)
   end
        