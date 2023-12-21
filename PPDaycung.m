function[c,n]= PPDaycung(fx, a, b, ss)
%fx là phýõng tr?nh ban ð?u 
%a, b là kho?ng phân li nghi?m 
%ss là sai s?
fx= str2func(['@(x)', fx]);
n=0; %ð?m s? l?n l?p
while(1)   
    c=(a*fx(b) - b*fx(a))/(fx(b)-fx(a));
    n= n+1;
    
    if abs(fx(c)) < ss
        a=c;
        break;
    end
    if (fx(c) * fx(a) < 0 && fx(b) ~= fx(a))
        b=c;
    else
        a = c;
    end    
     e= abs(b - a); %e là sai s?
     if(e < ss)
        break;
     end
end
end
