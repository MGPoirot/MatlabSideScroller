function [layer] = glSun(Xpix,Ypix,Xpos)
    layer = zeros(Xpix,Ypix+1);
    
    posx = round(0.4*Ypix*sin(Xpos/10+0.5*pi)+0.5*Ypix);
    posy = round(0.4*Xpix*cos(Xpos/10+0.5*pi)+0.5*Xpix);
    
    diameter = 5;
    
    for x = 1:round(diameter*Ypix/Xpix)
        for y = 1:diameter
          layer(posy+y,posx+x) = 0.13;
        end
    end
    %METADATA
        layer(109,1)=posx+1;
        layer(109,2)=posx+round(diameter*Ypix/Xpix);
        layer(109,3)=posy+1;
        layer(109,4)=posy+round(diameter*Ypix/Xpix);
end