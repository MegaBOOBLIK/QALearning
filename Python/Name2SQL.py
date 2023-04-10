import secrets
import string
import names
import psycopg2
from psycopg2 import OperationalError

tab_name = 'employez_test'

#Подключение
def create_connection(db_name, db_user, db_password, db_host, db_port):
    connection = None
    try:
        connection = psycopg2.connect(
            database=db_name,
            user=db_user,
            password=db_password,
            host=db_host,
            port=db_port,
        )
        print("Подключение к базе данных PostgreSQL прошло успешно")

    except OperationalError as e:
        print(f"Произошла ошибка '{e}'")
    return connection


#Создание таблицы
def execute_query(connection, query):
    connection.autocommit = True
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        print("Запрос выполнен успешно")
    except OperationalError as e:
        print(f"Произошла ошибка '{e}'")


create_table = f"""
CREATE TABLE IF NOT EXISTS {tab_name} (
    id SERIAL PRIMARY KEY,
    uname varchar(32) NOT NULL,
    email varchar(256) NOT NULL,
    password varchar(32) NOT NULL,
    phone varchar(32),
    reg_gata TIMESTAMPTZ DEFAULT Now()
)
"""

connection = create_connection("qa_ddl_32_123", "padawan_user_123", "123", "159.69.151.133", "5056")

execute_query(connection, create_table)

connection.autocommit = True
cursor = connection.cursor()

letters = string.ascii_letters
digits = string.digits
alphabet = letters + digits
pwd_len = 12

for i in range(0,100):
    pwd = ''
    for i in range(pwd_len):
        pwd += ''.join(secrets.choice(alphabet))
    tel ='+'
    for j in range(11):
        tel += ''.join(secrets.choice(digits))

    u_name = names.get_full_name()
    u_mail = u_name.replace(' ', '.').lower() + '@gmail.com'
    u_pass = hash(pwd)
    u_phone = tel

    data_to_base = (u_name, u_mail, u_pass, u_phone)

    insert_query = (
        f"""INSERT INTO {tab_name} (uname, email, password, phone) VALUES (%s,%s,%s,%s)"""
    )
    cursor.execute(insert_query, data_to_base)
    connection.commit()

# cursor.execute('truncate {tab_name}')
# connection.commit()

connection.close()
