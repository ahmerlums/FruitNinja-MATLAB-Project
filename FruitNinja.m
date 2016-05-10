
%% Clearing data
clc
clear;
close all;

%%Defining axis
h=figure
H=500
W=800
axis([0 W 0 H]);

axis on
hold on

%loading background image
bg=imread('background.png');
image(bg); hold on;

%Left Hand Side Text of Life
lifeCount = 10;
lifes = text(100,450,num2str(lifeCount),'Color',[0 1 0],'Fontsize',25);

%Right hand side Text of Score
scoreCount= 0;

score = text(700,450,num2str(scoreCount),'Color',[0 1 0],'Fontsize',25);

%Registering for Mouse Clicked
a = [];
set(h, 'WindowButtonMotionfcn', 'a = get(gca, ''CurrentPoint'')');

%%Initiating the main loop
while 1
    
    
    %Defining variables
    xLoc=300.*rand;
    yLoc=0;
    xLocc=300.*rand;
    yLocc=0;
    dx=9+14.*rand;
    dy=5+9.*rand;
    dxx=5+10.*rand;
    dyy=5+9.*rand;
    
    %Loading fruits at random
    selectRand = randi(4);
    selectrand=randi(4);
    
    if(selectRand==1)
        [imhr map alphacar] = imread('banana.png');
    elseif(selectRand==2)
        [imhr map alphacar] = imread('apple.png');
    elseif(selectRand==3)
        [imhr map alphacar] = imread('melon.png');
    else
        [imhr map alphacar] = imread('newBomb.png');
    end
    
    if(selectrand==1)
        [imdr mapp alphacarr] = imread('banana.png');
    elseif(selectrand==2)
        [imdr mapp alphacarr] = imread('apple.png');
    elseif(selectrand==3)
        [imdr mapp alphacarr] = imread('melon.png');
    else
        [imdr mapp alphacarr] = imread('newBomb.png');
    end
    
    hr = imagesc(imhr);
    dr = imagesc(imdr);
    
    %%Initiating the loop for projectile
    while 1
        
        %Launching the fruits
        xLoc=xLoc+dx;
        yLoc=yLoc+dy;
        dy=dy-0.05;
        
        xLocc=xLocc+dxx;
        yLocc=yLocc+dyy;
        dyy=dyy-0.05;
        
        set(hr,'XData',[xLoc xLoc],'YData',[yLoc yLoc],'alphadata',alphacar);
        set(dr,'XData',[xLocc xLocc],'YData',[yLocc yLocc],'alphadata',alphacarr);
        pause(0.0000000001);
        
        %Setting up boundary conditions
      
        if selectrand~=4
            
            if xLocc > W
                if selectRand~=4
                    lifeCount = decreaseLife(lifeCount,lifes);
                end
                
%                 if selectrand==4
%                 end
                
                lifeCount = decreaseLife(lifeCount,lifes);
                
                delete(dr);
                delete(hr)
                break;
                
            elseif yLocc < 0
                if selectRand~4
                    lifeCount = decreaseLife(lifeCount,lifes);
                end
                if selectrand==4
                end
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(dr);
                delete(hr)
                break;
                
            elseif yLocc > 900
                if selectRand~4
                    lifeCount = decreaseLife(lifeCount,lifes);
                end
                if selectrand==4
                end
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(dr);
                delete(hr)
                break;
                
            end %End of IF Condition
        end
        if selectrand==4
            if xLocc > W
                if selectRand~4
                    lifeCount = decreaseLife(lifeCount,lifes);
                end
                if selectrand==4
                end
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(dr);
                delete(hr)
                break;
                
            elseif yLocc < 0
                if selectRand~4
                    lifeCount = decreaseLife(lifeCount,lifes);
                end
                if selectrand==4
                end
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(dr);
                delete(hr)
                break;
                
            elseif yLocc > 900
                if selectRand~4
                    lifeCount = decreaseLife(lifeCount,lifes);
                end
                if selectrand==4
                end
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(dr);
                delete(hr);
                break;
                
            end %End of IF Condition
        end
        
        
        
        
        %Checking for mouse clicks
        if ~isempty(a) %isempty(a) is true if a is empty
            disp(['Click X : ',num2str(a(1)),', Click Y :',num2str(a(3)),' , XLoc : ',num2str(xLoc),' , YLoc : ',num2str(yLoc)]);
            
            if a(1)>xLoc && a(1)<xLoc+100
                if a(3)>yLoc && a(3)<yLoc+100
                    
                    %Loading condition for bomb
                    if selectRand==4
                        %                  [n, b] = wavread('explode.wav');
                        %                  wavplay(n, b);
                        
                        lifeCount = decreaseLife(lifeCount,lifes);
                        delete(hr);
                while 1
    
    
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
                        
                        

while 1
    xLoc=xLoc-dx./5;
    yLoc=yLoc-dy;
    
    dy=dy-.005;
    set(hr,'XData',[xLoc xLoc],'YData',[yLoc yLoc]);
    pause(.00001)
    
    if yLoc<=0
        delete(hr)
        break
    end
end

                     
                        
                    end
                    
                    %Winning condition
                    if scoreCount==10
                        
                        endgame();
                        pause;
                        
                        
                    end
                    break
                end
                
            end
        end
    end
    
    % Inserting Mouse-Click location in the condition
    
    pause(0.001) %Pause and execute for loop again
end




                        
                    end
                    
                    %Condition for score-up
                    if selectRand ~= 4
                        %                 [y, fs] = wavread('scoreup.wav');
                        %                  wavplay(y, fs,'async');
                        scoreCount=scoreCount+1;
                        set(score,'String',num2str(scoreCount));
                        delete(hr);
                                    while 1
    
    
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
                        
                        

while 1
    xLoc=xLoc-dx./5;
    yLoc=yLoc-dy;
    
    dy=dy-.005;
    set(hr,'XData',[xLoc xLoc],'YData',[yLoc yLoc]);
    pause(.00001)
    
    if yLoc<=0
        delete(hr)
        
    end
end

                     
                        
                    end
                    
                    %Winning condition
                    if scoreCount==10
                        
                        endgame();
                        pause;
                        
                        
                    end
                    
                end
                
            end
        end
    end
    
    % Inserting Mouse-Click location in the condition
    
    pause(0.001) %Pause and execute for loop again
end



                        
                    end
                    
                    %Winning condition
                    if scoreCount==10
                        
                        endgame();
                        pause;
                        
                        
                    end
                    
                end
            end
            
            
            if a(1)>xLocc && a(1)<xLocc+100
                if a(3)>yLocc && a(3)<yLocc+100
                    
                    %Loading condition for bomb
                    if selectrand==4
                        
                        
                        lifeCount = decreaseLife(lifeCount,lifes);
                        delete(dr);
                        while 1
    
    
    %Defining variables
    xLocc=300.*rand;
    yLoccc=0;
    
    dxx=9+14.*rand;
    dyy=5+9.*rand;
    
    %Loading fruits at random
    selectrand = randi(4);
    selectrand=randi(4)
    if(selectrand==1)
        [imdr map alphacar] = imread('banana.png');
    elseif(selectrand==2)
        [imdr map alphacar] = imread('apple.png');
    elseif(selectrand==3)
        [imdr map alphacar] = imread('melon.png');
    else
        [imdr map alphacar] = imread('newBomb.png');
        
    end
    
    dr = imagesc(imdr);
    %%Initiating the loop for projectile
    while 1
        %Launching the fruits
        xLocc=xLocc+dxx;
        yLoccc=yLoccc+dyy;
        dyy=dyy-0.05;
        
        
        set(dr,'XData',[xLocc xLocc],'YData',[yLoccc yLoccc],'alphadata',alphacar);
        pause(0.0000000001);
        
        %Setting up boundary conditions
        
        if selectrand~=4
            if xLocc > W
                
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(dr)
                break
                
                
            elseif yLoccc < 0
                
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(dr)
                break
                
            elseif yLoccc > 900
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(dr)
                break
            end
        end %End of IF Condition
        
        if selectrand==4
            if xLocc > W
                
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(dr)
                break
                
                
            elseif yLoccc < 0
                
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(dr)
                break
                
            elseif yLoccc > 900
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(dr)
                break
            end
        end %End of IF Condition
        %Checking for mouse clicks
        if ~isempty(a) %isempty(a) is true if a is empty
            disp(['Click X : ',num2str(a(1)),', Click Y :',num2str(a(3)),' , xLocc : ',num2str(xLocc),' , yLoccc : ',num2str(yLoccc)]);
            
            if a(1)>xLocc && a(1)<xLocc+100
                if a(3)>yLoccc && a(3)<yLoccc+100
                    
                    %Loading condition for bomb
                    if selectrand==4
                                        [n, b] = wavread('bigbomb.wav');
                                         wavplay(n, b,'async');
                         
%                       sound(n,b)
                        lifeCount = decreaseLife(lifeCount,lifes);
                        delete(dr);
                        %Creating explosion
                        k=xLocc;s=xLocc+30;d=xLocc-10;f=xLocc-20;g=xLocc-30;h=xLocc-80;j=xLocc-30;
                        z=yLoccc;x=yLoccc+40;c=yLoccc+20;v=yLoccc+60;b=yLoccc+20;n=yLoccc+40;m=yLoccc;
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
                    if selectrand ~= 4
                                        [y, fs] = wavread('scoreup.wav');
                                         wavplay(y, fs,'async');
                        scoreCount=scoreCount+1;
                        set(score,'String',num2str(scoreCount));
                        
                        

while 1
    xLocc=xLocc-dxx./5;
    yLoccc=yLoccc-dyy;
    
    dyy=dyy-.005;
    set(dr,'XData',[xLocc xLocc],'YData',[yLoccc yLoccc]);
    pause(.00001)
    
    if yLoccc<=0
        delete(dr)
        break
    end
end

                     
                        
                    end
                    
                    %Winning condition
                    if scoreCount==10
                        
                        endgame();
                        pause;
                        
                        
                    end
                    break
                end
                
            end
        end
    end
    
    % Inserting Mouse-Click location in the condition
    
    pause(0.001) %Pause and execute for loop again
end

                        
                    end
                    
                    %Condition for score-up
                    if selectrand ~= 4
                        
                        scoreCount=scoreCount+1;
                        set(score,'String',num2str(scoreCount));
                        delete(dr);
                        while 1
    
    
    %Defining variables
    xLocc=300.*rand;
    yLoccc=0;
    
    dxx=9+14.*rand;
    dyy=5+9.*rand;
    
    %Loading fruits at random
    selectrand = randi(4);
    selectrand=randi(4)
    if(selectrand==1)
        [imdr map alphacar] = imread('banana.png');
    elseif(selectrand==2)
        [imdr map alphacar] = imread('apple.png');
    elseif(selectrand==3)
        [imdr map alphacar] = imread('melon.png');
    else
        [imdr map alphacar] = imread('newBomb.png');
        
    end
    
    dr = imagesc(imdr);
    %%Initiating the loop for projectile
    while 1
        %Launching the fruits
        xLocc=xLocc+dxx;
        yLoccc=yLoccc+dyy;
        dyy=dyy-0.05;
        
        
        set(dr,'XData',[xLocc xLocc],'YData',[yLoccc yLoccc],'alphadata',alphacar);
        pause(0.0000000001);
        
        %Setting up boundary conditions
        
        if selectrand~=4
            if xLocc > W
                
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(dr)
                break
                
                
            elseif yLoccc < 0
                
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(dr)
                break
                
            elseif yLoccc > 900
                lifeCount = decreaseLife(lifeCount,lifes);
                delete(dr)
                break
            end
        end %End of IF Condition
        
        if selectrand==4
            if xLocc > W
                
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(dr)
                break
                
                
            elseif yLoccc < 0
                
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(dr)
                break
                
            elseif yLoccc > 900
                lifeCount = decreaseLifem(lifeCount,lifes);
                delete(dr)
                break
            end
        end %End of IF Condition
        %Checking for mouse clicks
        if ~isempty(a) %isempty(a) is true if a is empty
            disp(['Click X : ',num2str(a(1)),', Click Y :',num2str(a(3)),' , xLocc : ',num2str(xLocc),' , yLoccc : ',num2str(yLoccc)]);
            
            if a(1)>xLocc && a(1)<xLocc+100
                if a(3)>yLoccc && a(3)<yLoccc+100
                    
                    %Loading condition for bomb
                    if selectrand==4
                                        [n, b] = wavread('bigbomb.wav');
                                         wavplay(n, b,'async');
                         
%                       sound(n,b)
                        lifeCount = decreaseLife(lifeCount,lifes);
                        delete(dr);
                        %Creating explosion
                        k=xLocc;s=xLocc+30;d=xLocc-10;f=xLocc-20;g=xLocc-30;h=xLocc-80;j=xLocc-30;
                        z=yLoccc;x=yLoccc+40;c=yLoccc+20;v=yLoccc+60;b=yLoccc+20;n=yLoccc+40;m=yLoccc;
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
                    if selectrand ~= 4
                                        [y, fs] = wavread('scoreup.wav');
                                         wavplay(y, fs,'async');
                        scoreCount=scoreCount+1;
                        set(score,'String',num2str(scoreCount));
                        
                        

while 1
    xLocc=xLocc-dxx./5;
    yLoccc=yLoccc-dyy;
    
    dyy=dyy-.005;
    set(dr,'XData',[xLocc xLocc],'YData',[yLoccc yLoccc]);
    pause(.00001)
    
    if yLoccc<=0
        delete(dr)
        break
    end
end

                     
                        
                    end
                    
                    %Winning condition
                    if scoreCount==10
                        
                        endgame();
                        pause;
                        
                        
                    end
                    break
                end
                
            end
        end
    end
    
    % Inserting Mouse-Click location in the condition
    
    pause(0.001) %Pause and execute for loop again
end

                    end
                    
                    %Winning condition
                    if scoreCount==10
                        
                        endgame();
                        pause;
                        
                        
                    end
                 break   
                end
                
                
            end
            
        end
        
        % Inserting Mouse-Click location in the condition
        
        pause(0.001) %Pause and execute for loop again
    end
    
end






