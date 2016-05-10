clc
clear
h=figure;
whitebg([1 1 1])

axis on
hold on
g=imread('FruitninjaCampaign.png');
imshow(g); hold on
set(h, 'WindowButtonDownfcn', 'c = get(gca, ''CurrentPoint'')');
    c=[]
    
    rectangle('Position',[310 490 375 110]);
        rectangle('Position',[310 615 375 110]);
        
    l=310;
    i=310+375;
    q=490;
    t=490+110;
    
    b=310;
    n=310+375;
    v=615;
    w=615+110;
    
   while 1
        if ~isempty(c)

                if c(1)>l && c(1)<i
                    if c(3)>q && c(3)<t
             run('Campaignlevels')
                 
                    
                    end
                end
                
                    
                
                if c(2)>b && c(2)<n
                    if c(4)>v && c(4)<w
                   run('Difficulty')
      end; 
                          end
        end
                     pause(0.01)
   end
   
        