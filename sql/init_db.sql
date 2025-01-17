CREATE TABLE worker (
        ID INT PRIMARY KEY,--сурогатний первинний ключ
        NAME VARCHAR(1000) NOT NULL,--не має бути NULL, довжина має бути від 2 до 1000 символів включно
        BIRTHDAY DATE CHECK (BIRTHDAY  >='1900-01-01'),-- має бути більшим за 1900
        LEVEL VARCHAR(20) NOT NULL ,--не може бути NULL, значення поля може бути одним з - Trainee, Junior, Middle, Senior
        CONSTRAINT Check_Level CHECK (LEVEL IN ('Trainee', 'Junior', 'Middle', 'Senior')),
        SALARY INT CHECK (SALARY >= 100 AND SALARY <= 100000)--не менше 100 і не більше 100 000
);

CREATE TABLE client (
        ID INT PRIMARY KEY, -- ідентифікатор клієнта, ціле число, сурогатний первинний ключ.
        NAME VARCHAR(1000) NOT NULL --ім'я працівника, рядок. Обмеження - не має бути NULL, довжина має бути від 2 до 1000 символів включно.
);

CREATE TABLE project (
    ID INT PRIMARY KEY, -- Surrogate primary key
    NAME VARCHAR(1000) NOT NULL, -- Project name, cannot be NULL
    CLIENT_ID INT NOT NULL, -- Client ID, must be specified
    FOREIGN KEY (CLIENT_ID) REFERENCES client(ID),
    START_DATE DATE NOT NULL, -- Start date, cannot be NULL
    FINISH_DATE DATE, -- Finish date can be NULL for ongoing projects
    CHECK (
        FINISH_DATE IS NULL OR
        (FINISH_DATE >= START_DATE AND DATEDIFF('MONTH', START_DATE, FINISH_DATE) BETWEEN 1 AND 100)
    )
);


CREATE TABLE project_worker (
        PROJECT_ID INT, -- ідентифікатор проєкту. Зовнішній ключ для таблиці project(id)
        WORKER_ID INT, --ідентифікатор клієнту. Зовнішній ключ для таблиці worker(id)
       PRIMARY KEY (PROJECT_ID, WORKER_ID) --первинний ключ для цієї таблиці - складений, пара (PROJECT_ID, WORKER_ID)
);

--DROP TABLE worker;DROP TABLE client;DROP TABLE project;DROP TABLE project_worker;
