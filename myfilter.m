function img = myfilter(I, w)
    J = I;
    for i=1:size(I, 1)
        for j=1:size(I, 2)
            if I(i,j) == 255 || I(i,j) == 0
                for x=1:w    
                    top=0;down=0;left=0;right=0;
                    if(i-x<1)
                       down = I(i+x,j);
                       top = down;                       
                    elseif(i+x>size(I,1))
                        top = I(i-x,j);
                        down = top;
                    else
                        top = I(i-x,j);
                        down = I(i+x,j);
                    end 
                   
                    if(j-x<1)
                        right = I(i,j+x);
                        left = right;
                    elseif(j+x>size(I,2))
                        left = I(i,j-x);
                        right = left;
                    else
                        right = I(i,j+x);
                        left = I(i,j-x);
                    end

                   if(right~=0 && right~=255) 
                       J(i,j) = right;
                        break;
                   elseif(left~=0 && left~=255) 
                       J(i,j) = left; 
                       break;
                   elseif(top~=0 && top~=255) 
                       J(i,j) = top;
                       break;
                   elseif(down~=0 && down~=255) 
                       J(i,j) = down;
                       break;
                   end
                end
            end       
        end
    end    
    
  
    img = J;
end