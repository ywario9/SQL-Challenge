create table employees (
emp_no int not null,
	birth_date date not null,
	first_name varchar(20) not null,
	last_name varchar (20) not null,
	gender varchar (1) not null,
	hire_date date not null,
	
primary key (emp_no)	

);

create table departments (
dept_no	varchar not null,
	dept_name varchar not null,

primary key (dept_no)
);

create table dept_emp(
emp_no int not null, 
	dept_no varchar not null,
	from_date date not null,
	to_date date not null,
	
primary key(emp_no, dept_no), 
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)

);

select * from departments;

create table dept_manager(
dept_no varchar not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	
primary key(dept_no, emp_no),
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments(dept_no)

);

create table titles(
emp_no int not null,
	title varchar not null,
	from_date date not null,
	to_date date not null,
primary key (emp_no, title),
	foreign key(emp_no) references employees(emp_no)
	

);

create table salaries(
emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null,
	
primary key(emp_no, salary),
	foreign key(emp_no) references employees(emp_no)

);
