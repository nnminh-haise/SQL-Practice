set @rep = 21;
select repeat("* " @rep := @rep - 1)
from information_schema.tables;