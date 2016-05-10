function y = decreaseLife(lifeCount,lifes)

        lifeCount=lifeCount-1;
        y = lifeCount;
        set(lifes,'String',num2str(lifeCount));
        if(lifeCount==0)
               
            text(100,250,'Game Over','Color',[0.5 0.5 1],'Fontsize',50);    
            [d, f] = wavread('game over.wav');
             wavplay(d, f,'async');


pause
        end
end
