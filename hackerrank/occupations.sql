set @d = 0, @a = 0, @p = 0, @s = 0;
select min(Doctor), min(Professor), min(Singer), min(Actor)
from (
    select
        if (occupation = 'Actor', name, null) as Actor,
        if (occupation = 'Doctor', name, null) as Doctor,
        if (occupation = 'Professor', name, null) as Professor,
        if (occupation = 'Singer', name, null) as Singer,
        case occupation
            when 'Actor' then @a := @a+1
            when 'Doctor' then @d := @d+1
            when 'Professor' then @p := @p+1
            when 'Singer' then @s := @s+1
        END
    AS idn
    from occupations 
    order by name
)
as temp
group by temp.idn;