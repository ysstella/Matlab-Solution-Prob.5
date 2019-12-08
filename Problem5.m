 function x= Problem5(n)
    x=sin(3*pi/100*n)
end
function result=y(n)
    result = []
    disp(length(n))
    for i = 1:length(n)
        disp(n(i))
        z1 = x(n(i))
        z2 = x(n(i)+1)
        z3 = x(n(i)+2)
        z4 = x(n(i)-1)
        z5 = x(n(i)-2)
    if n(i)==0
        result=[result, -1.5.*z1+2.*z2-0.5.*z3]
    elseif n(i)>0 && n(i) <= 198
        disp(result)
        disp(z2)
        result=[result, 0.5.*z2-0.5.*z4]
        disp(result)
    elseif n(i) == 199
        result=[result,1.5.*z1-2.*z4+0.5.*z5]
    end
    end
end
u=linspace(0,99,100)
stem(u, y(u))