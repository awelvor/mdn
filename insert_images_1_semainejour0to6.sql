/* insertion des images dans les umm: 1 jiur, 7 langues */
/* ed 01 du 2017-06-07    */


/*  attention: ligne 11, il faut preciser la date */
/* ce script fonctionne pour une date particulière, qu'il faut ajuster chaque fois */
/* attention au critere tt_content.deleted=0, à prendre en compte (2017-07-17) */


set @tstamp = Unix_Timestamp();
set @crdate = Unix_Timestamp();
set @jour0 = '2020-06-28';
set @sorting=1;
set @tablenames = 'tt_content';
set @sorting_foreign = 1;
set @fieldname:= 'image';
set @table_local = 'sys_file';
set sql_mode ='';

/* ----------------------------------------------------------*/
set @title = @jour0 + interval 0 day;
select @uid_local:=uid 
from sys_file
where substring(name from 1 for 10)=@title;
/* sys_language_uid=0  */
select @pid:=pages.uid, @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=0 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference
(pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local)
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=1  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=1 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=2  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=2  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=3  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=3  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=4  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=4 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=5  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=5 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=7  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=7 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* ------------------------------------------------- */

/* ----------------------------------------------------------*/
set @title = @jour0 + interval 1 day;
select @uid_local:=uid 
from sys_file
where substring(name from 1 for 10)=@title;
/* sys_language_uid=0  */
select @pid:=pages.uid, @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=0 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference
(pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local)
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=1  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=1 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=2  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=2  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=3  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=3  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=4  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=4 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=5  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=5 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=7  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=7 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* ------------------------------------------------- */

set @title = @jour0 + interval 2 day;
select @uid_local:=uid 
from sys_file
where substring(name from 1 for 10)=@title;
/* sys_language_uid=0  */
select @pid:=pages.uid, @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=0 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference
(pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local)
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=1  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=1 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=2  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=2  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=3  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=3  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=4  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=4 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=5  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=5 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=7  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=7 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);

set @title = @jour0 + interval 3 day;
select @uid_local:=uid 
from sys_file
where substring(name from 1 for 10)=@title;
/* sys_language_uid=0  */
select @pid:=pages.uid, @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=0 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference
(pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local)
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=1  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=1 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=2  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=2  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=3  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=3  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=4  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=4 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=5  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=5 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=7  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=7 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);

set @title = @jour0 + interval 4 day;
select @uid_local:=uid 
from sys_file
where substring(name from 1 for 10)=@title;
/* sys_language_uid=0  */
select @pid:=pages.uid, @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=0 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference
(pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local)
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=1  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=1 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=2  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=2  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=3  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=3  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=4  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=4 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=5  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=5 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=7  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=7 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);

set @title = @jour0 + interval 5 day;
select @uid_local:=uid 
from sys_file
where substring(name from 1 for 10)=@title;
/* sys_language_uid=0  */
select @pid:=pages.uid, @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=0 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference
(pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local)
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=1  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=1 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=2  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=2  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=3  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=3  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=4  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=4 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=5  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=5 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=7  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=7 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);

set @title = @jour0 + interval 6 day;
select @uid_local:=uid 
from sys_file
where substring(name from 1 for 10)=@title;
select @pid:=pages.uid, @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=0 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference
(pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local)
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=1  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=1 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=2  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=2  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=3  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=3  and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=4  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=4 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=5  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=5 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);
/* sys_language_uid=7  */
select @uid_foreign:=tt_content.uid
from pages inner join tt_content on pages.uid=tt_content.pid
where title=@title and sys_language_uid=7 and tt_content.deleted=0 and tt_content.CType='mask_ummnl';
update tt_content set hidden=0, image=1 where uid=@uid_foreign;
insert into sys_file_reference 
( pid,  tstamp,  crdate,  sorting,  uid_local,  uid_foreign,  tablenames, sorting_foreign, fieldname,  table_local) 
values
(@pid, @tstamp, @crdate, @sorting, @uid_local, @uid_foreign, @tablenames, @sorting_foreign, @fieldname, @table_local);







/*                     end of file                                    */
