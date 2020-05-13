clear;
type compact; 

v = [3 1 5];
i = 1;
for j = v
    i = i + 1;
    if i == 3
        i = i + 2;
        m = i + j;
    end
    disp(i);
end

v = [3 1 5];
i = 1;
for j = v
    i = i + 1;
    if i == 3
        i = i + 2;
        m = i + j;
    end
    disp(j);
end

v = [3 1 5];
i = 1;
for j = v
    i = i + 1;
    if i == 3
        i = i + 2;
        m = i + j;
    end
    disp(m);
end

