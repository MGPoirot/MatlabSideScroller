function [layer] = glStars(emptyness,cutoffStrenght,Xpix,Ypix)
    layer = rand(Ypix+1,Xpix) - emptyness;
    for a = 1:Ypix; 
        factor = cutoffStrenght * a/Ypix ;
        for b = 1:Xpix;
            layer(a,b) = layer(a,b) - factor;
            if layer(a,b) <= 0
                layer(a,b) = 0;
            elseif layer(a,b) <= 0.03
                layer(a,b) = 0.82;
            else
                layer(a,b) = 1000000;
            end
        end;
    end;
    %METADATA
        layer(109,1)=1;
        layer(109,2)=Xpix;
        layer(109,3)=1;
        layer(109,4)=round(Ypix/2);
end