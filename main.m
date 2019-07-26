set(0,'DefaultFigureWindowStyle','docked')
% close all
% clear all
% clc

global Xpix Ypix Xpos;
Xpix = 192;
Ypix = 108;
Xpos = 50;

stars = glStars(0.94,0.18,Xpix,Ypix);
colormap(colorcube)
xlabel('tweede vectorcomponent');
ylabel('eerste vectorcomponent');
    
%%
fps = 30


disp('Exit with <Ctrl> + <C>')
while 1
    light = round(4*sin(Xpos/10))/100;
    
    if light < -0.03;       starsmult = 2;
    elseif light < -0.01;   starsmult = 1;
    else                    starsmult = 0;
    end
    
    bg     = ones(Ypix,Xpix)* 0.83 + light;
    layerSun = glSun(Ypix,Xpix,Xpos);
    layer0 = sineLayer(0.1,0.7,1,0.94 + 2*light/3,Xpix,Ypix,Xpos,0.5);
    layer1 = sineLayer(0.3,0.4,2,0.71+ light/2,Xpix,Ypix,Xpos,3);
    layer2 = sineLayer(0.1,0.3,2,0.73+ light/2,Xpix,Ypix,Xpos,4);
    
    frame = merge(bg,stars * starsmult,layerSun,layer0,layer1,layer2);
    
    imagesc(frame,[0,1]);
    axis off
    
    Xpos = Xpos + 0.1;
    %if(jutter)
        pause(1/fps);
    %else
        drawnow;
    %end
end

%%
exist fps