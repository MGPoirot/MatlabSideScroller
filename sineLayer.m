function [layer] = sineLayer(ymin,ymax,peaks,colour,Xpix,Ypix,Xpos,speed)
    t = speed*Xpos:peaks*pi/Xpix:peaks*pi+Xpos*speed;
    v = round(Ypix*(0.5*(ymax-ymin)*sin(t)+0.5*(ymax-ymin)+ymin));

    layer = zeros(Ypix+1,Xpix);
    for x = 1:Xpix;
        for y = (Ypix-v(x)+1):Ypix
            layer(y,x) = colour;
        end
    end
    %METADATA
        layer(109,1)=1;
        layer(109,2)=Xpix;
        layer(109,3)=Ypix-ymax*Ypix;
        layer(109,4)=Ypix;
end
