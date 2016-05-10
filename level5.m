
%% Clearing data
clc
clear;
close all;
h=figure
set(h,'color','y')
%%Defining axis

H=500
W=800
axis([0 W 0 H]);
axis off
% axis image
hold on

%loading background image
bg=imread('background.png');
% 
image(bg); hold on;
% 

%Left Hand Side Text of Life
lifeCount = 3;
lifes = text(100,450,num2str(lifeCount),'Color',[0 1 0],'Fontsize',25);

%Right hand side Text of Score
scoreCount= 0;

score = text(700,450,num2str(scoreCount),'Color',[0 1 0],'Fontsize',25);

%Registering for Mouse Clicked
a = [];
c=[];
% [np, ba] = wavread('SureShot.wav');
%       sound(np, ba);

set(h, 'WindowButtonMotionfcn', 'a = get(gca, ''CurrentPoint'')');
set(h, 'WindowButtonDownfcn', 'c = get(gca, ''CurrentPoint'')');


%%Initiating the main loop
for i=1:1000
    
    
    %Defining variables
    xLoc=300.*rand;
    yLoc=0;
    
    dx=9+14.*rand;
    dy=5+9.*rand;
    
    %Loading fruits at random
    selectRand = randi(4);
    selectRand=randi(4)
    if(selectRand==1)
        [imhr map alphacar] = imread('banana.png');
    elseif(selectRand==2)
        [imhr map alphacar] = imread('apple.png');
    elseif(selectRand==3)
        [imhr map alphacar] = imread('melon.png');
    else
        [imhr map alphacar] = imread('newBomb.png');
        
    end
    
    hr = imagesc(imhr);
    %%Initiating the loop for projectile
    while 1
        %Launching the fruits
        xLoc=xLoc+dx;
        yLoc=yLoc+dy;
        dy=dy-0.05;
        
        
        set(hr,'XData',[xLoc xLoc],'YData',[yLoc yLoc],'alphadata',alphacar);
        pause(0.0000000001);
        
        %Setting up boundary conditions
        
        if selectRand~=4
            if xLoc > W
                
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(hr)
                break
                
                
            elseif yLoc < 0
                
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(hr)
                break
                
            elseif yLoc > 900
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(hr)
                break
            end
        end %End of IF Condition
        
        if selectRand==4
            if xLoc > W
                
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(hr)
                break
                
                
            elseif yLoc < 0
                
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(hr)
                break
                
            elseif yLoc > 900
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(hr)
                break
            end
        end %End of IF Condition
        %Checking for mouse clicks
        if ~isempty(a) %isempty(a) is true if a is empty
            disp(['Click X : ',num2str(a(1)),', Click Y :',num2str(a(3)),' , xLoc : ',num2str(xLoc),' , yLoc : ',num2str(yLoc)]);
            
            if a(1)>xLoc && a(1)<xLoc+100
                if a(3)>yLoc && a(3)<yLoc+100
                    
                    %Loading condition for bomb
                    if selectRand==4
                                        [n, b] = wavread('bigbomb.wav');
                                         wavplay(n, b,'async');
                         
%                       sound(n,b)
                        lifeCount = decreaseLife(lifeCount,lifes);
                        delete(hr);
                        %Creating explosion
                        k=xLoc;s=xLoc+30;d=xLoc-10;f=xLoc-20;g=xLoc-30;h=xLoc-80;j=xLoc-30;
                        z=yLoc;x=yLoc+40;c=yLoc+20;v=yLoc+60;b=yLoc+20;n=yLoc+40;m=yLoc;
                        xcor=[k s d f g h j];
                        ycor=[z x c v b n m];
                        t=fill(xcor,ycor, 'y')
                        for i=1:10
                            v=v+5+10.*rand;
                            s=s+5+10.*rand;
                            h=h-10.*rand;
                            set(t,'xData',[k s d f g h j],'yData',[z x c v b n m])
                            pause(0.1)
                        end
                        
                        delete(t)
                    end
                    
                    %Condition for score-up
                    if selectRand ~= 4
                                        [y, fs] = wavread('scoreup.wav');
                                         wavplay(y, fs,'async');
                        scoreCount=scoreCount+1;
                        set(score,'String',num2str(scoreCount));
                        
                        delete(hr)


    if selectRand==2
        [imlr map alphacar] = imread('appleCut1.png');
        [imer kap balacar] = imread('appleCut2.png');
    elseif selectRand==1
        [imlr map alphacar] = imread('bananaCut1.png');
        [imer kap balacar] = imread('bananaCut2.png');

    elseif selectRand==3
        [imlr map alphacar] = imread('melonCut1.png');
         [imer kap balacar] = imread('melonCut2.png');
        
    end
          tr = imagesc(imlr);
           er = imagesc(imer);
           xLocc=xLoc;
           yLocc=yLoc;
           dxx=dx;
           dyy=dy;           
           
          while 1
        
    xLoc=xLoc-dx./5;
    yLoc=yLoc-dy;
    
    dy=dy-.005;
    xLocc=xLocc+dxx./5;
    yLocc=yLocc-dyy;
    
    dyy=dyy-.005;
 set(tr,'XData',[xLoc xLoc],'YData',[yLoc yLoc],'alphadata',alphacar);
 set(er,'XData',[xLocc xLocc],'YData',[yLocc yLocc],'alphadata',balacar);
         pause(.00001);
    
    if yLoc<=0
        delete(tr)
        delete(er)
        break
    end


                     
                        
                    end
                    end                 
                    %Winning condition
                    if scoreCount==20
                        
                        endgame();
c=[]
                        while 1
 

    if ~isempty(c)
         
            if c(1)>340 && c(1)<340+200
                if c(3)>300 && c(3)<300+200
         run('runme')
         close all force;
         close all hidden;
  end; 
            end
    end
    pause(0.1);
end

                        
                        
                    end
                    break
                end
                
            end
        end
    end
    
    % Inserting Mouse-Click location in the condition
    
    pause(0.001) %Pause and execute for loop again
end





