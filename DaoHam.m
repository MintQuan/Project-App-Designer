function dx = DaoHam(fx, x, h, pp, ss)
    fx = str2func(['@(x)', fx]);
    if pp == "Forward"
        if ss == "O(h)"
            dx = (fx(x + h) - fx(x)) / h;
        elseif ss == "O(h^2)"
            dx = (4 * fx(x + h) - 3 * fx(x) - fx(x + 2 * h)) / (2 * h);
        end
    elseif pp == "Center"
        dx = (fx(x + h) - fx(x - h)) / (2 * h);
    elseif pp == "Backward"
        if ss == "O(h)"
            dx = (fx(x) - fx(x - h)) / h;
        elseif ss == "O(h^2)"
            dx = (3 * fx(x) - 4 * fx(x - h) + fx(x - 2 * h)) / (2 * h);
        end
    end
end