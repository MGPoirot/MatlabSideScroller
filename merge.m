function frame = merge(bg,stars,sun,layer0,layer1,layer2)
    %dmv metadata kunnen we het aantal layers dat gecheckt moet worden per
    %pixel verminderen!
    frame = bg;
    [width, height] = size(bg());
    for a = 1:width;
        for b = 1:height;;
            if layer2(a,b) ~= 0;
                frame(a,b) = layer2(a,b);
            elseif layer1(a,b) ~= 0;
                frame(a,b) = layer1(a,b);
            elseif layer0(a,b) ~= 0;
                frame(a,b) = layer0(a,b);
            elseif sun(a,b) ~= 0;
                frame(a,b) = sun(a,b);
            elseif stars(a,b) ~= 0;
                frame(a,b) = stars(a,b);
            end;
        end;
    end;
end