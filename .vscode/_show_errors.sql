
--Source: https://gist.github.com/mortenbra/3204a125e3da1008e19b36bf94586950
set pagesize 9999
set linesize 9999
set heading off
set trim on

select lower(attribute) -- error or warning
  || ' '
  || line || '/' || position -- line and column
  || ' '
  || lower(name) -- file name
  || case -- file extension
    when type = 'PACKAGE' then '.pkh'
    when type = 'PACKAGE BODY' then '.pkb'
    else '.sql'
  end
  || ' '
  || replace(text, chr(10), ' ') -- remove line breaks from error text
  as user_errors
from user_errors
where attribute in ('ERROR', 'WARNING')
and UPPER(name) = UPPER('&1')
order by type, name, line, position;
exit