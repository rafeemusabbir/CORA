function res = asin(intVal)
% asin - Overloaded 'asin()' operator for intervals
%
% Syntax:  
%    res = asin(intVal)
%
% Inputs:
%    intVal - interval object
%
% Outputs:
%    res - interval object
%
% Example: 
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: mtimes

% Author:       Matthias Althoff
% Written:      05-February-2016
% Last update:  06-February-2016 Matrix case and typos (Dmitry Grebenyuk)
%               20-February-2016 Errors are fixed, the matrix case is rewritten  (Dmitry Grebenyuk)
% Last revision:---

% x_ is x infimum, x-- is x supremum

% [NaN, NaN] if (x_ < -1) and (x-- > 1),
% [NaN, NaN] if (x_ > 1) or (x-- < -1),
% [NaN, asin(x--)] if (x_ < -1) and (x-- in [-1, 1]),
% [asin(x_), NaN] if (x_ in [-1, 1]) and (x-- > 1),
% [asin(x_), asin(x--)] if (x >= -1) and (x <= 1).

%------------- BEGIN CODE --------------

% scalar case
if isnumeric(intVal)
    
        res = interval();

        if ((intVal.inf < -1) && (intVal.sup > 1)) || (intVal.inf > 1) || (intVal.sup < -1)
            res.inf = NaN;
            res.sup = NaN;
        elseif (intVal.inf < -1) && (intVal.sup < 1)
            res.inf = NaN;
            res.sup = asin(intVal.sup);
        elseif (intVal.inf > -1) && (intVal.sup > 1)
            res.inf = asin(intVal.inf);
            res.sup = NaN;
        else
            res.inf = asin(intVal.inf);
            res.sup = asin(intVal.sup);
        end
        
else

% matrix case
% rand(100, 100)
%time_CORA =
%   0.001739975502976
%time_INTLAB =
%   0.103051233357636

    % to preserve the shape    
    res = intVal;
    
    % find indices
    
    ind1 = find(intVal.inf < -1 & intVal.sup > 1 | (intVal.inf > 1) | (intVal.sup < -1));   
    res.inf(ind1) = NaN;
    res.sup(ind1) = NaN;
    
    ind2 = find(intVal.inf < -1 & intVal.sup >= -1 & intVal.sup <= 1);    
    res.inf(ind2) = NaN;
    res.sup(ind2) = asin(intVal.sup(ind2));
    
    ind3 = find(intVal.inf >= -1 & intVal.inf <= 1 & intVal.sup > 1);    
    res.inf(ind3) = asin(intVal.inf(ind3));
    res.sup(ind3) = NaN;
    
    ind4 = find(intVal.inf >= -1 & intVal.sup <= 1);    
    
    res.inf(ind4) = asin(intVal.inf(ind4));
    res.sup(ind4) = asin(intVal.sup(ind4));
       

end

%------------- END OF CODE --------------