select
    n,
    case
        when isnull(p) then "Root"
        when n in (select p from bst) then "Inner"
        else "Leaf"
    end as meanning
from bst
order by n;