import os 
import psycopg2
 
def main(): 
    dbname = os.getenv('POSTGRES_DB') 
    user = os.getenv('POSTGRES_USER') 
    password = os.getenv('POSTGRES_PASSWORD') 
    host = os.getenv('POSTGRES_HOST') 
  
    conn = psycopg2.connect( 
        dbname=dbname, 
        user=user, 
        password=password, 
        host=host 
    ) 
    cursor = conn.cursor() 
 
    query = """ 
    SELECT MAX(age), MIN(age) FROM test_table WHERE length(name) < 6; 
    """ 
    cursor.execute(query) 
    result = cursor.fetchone() 
     
    max_age, min_age = result 
    print(f"Max Age: {max_age}, Min Age: {min_age}") 

    cursor.close() 
    conn.close() 
 
if __name__ == "__main__": 
    main()
