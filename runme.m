clc
clear
h=figure;
whitebg([1 1 1])

axis on
hold on
g=imread('FruitninjaStartgame.png');
imshow(g); hold on
set(h, 'WindowButtonDownfcn', 'c = get(gca, ''CurrentPoint'')');
    c=[]
    xLocd=350;yLocd=350;r=330;
    while 1
        if ~isempty(c)

                if c(1)>xLocd && c(1)<xLocd+r
                    if c(3)>yLocd && c(3)<yLocd+r
             run('gamemode')
      end; 
                end
        end
    pause(0.1)
            
end
   
