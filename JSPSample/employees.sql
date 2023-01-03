drop table if exists employees;

create table employees (
       lname_txt       char(50),
       fname_txt       char(50),
       employee_num    integer primary key,
       address1_txt    char(120),
       address2_txt    char(120),
       city	       char(50),
       state	       char(2),
       zip	       char(10),
       phone	       char(14));

insert into employees values
       ('Jones', 'Bob', 1, '27 Mockingbird Lane', NULL,
        'Springfield', 'MA', '11223-4321', '1-617-555-1212');
       
insert into employees values
       ('Smith', 'John', 2, '55 Boring Street Name', 'Apt 1',
        'Roswell', 'NM', '65444-4556', '1-800-AMA-LIEN');
       
