set @rep = 0;
select repeat("* ", @rep := @rep + 1)
from information_schema.tables
where @rep < 20;