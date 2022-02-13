from flask import Flask, jsonify, render_template, request, redirect, url_for, flash

import psycopg2
import time


#Global instant
PSQL_HOST = "db"
PSQL_PORT = "5432"
PSQL_USER = "postgres"
PSQL_PASS = "example"
PSQL_DB = "xaldigit"
app = Flask(__name__)
app.secret_key = "mysecretkey"

connection_address = """
host=%s port=%s user=%s password=%s dbname=%s
""" % (PSQL_HOST, PSQL_PORT, PSQL_USER, PSQL_PASS, PSQL_DB)
succes_conection = False

#connecting db
while succes_conection is False:
    try:
        connection = psycopg2.connect(connection_address)
        succes_conection = True
        cursor = connection.cursor()
    except:
        time.sleep(5)
        print("RELOAD \n")

# Testing Route
@app.route('/ping', methods=['GET'])
def ping():
    return jsonify({'response': 'xaldigital API IS AVAILABLE'})
    
#CHECKING DATABASE
@app.route("/")
def Index():
    connection = psycopg2.connect(connection_address)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM person;')
    data = cursor.fetchall()
    cursor.close()
    return render_template('index.html', contacts = data)
    
    
# READ
@app.route('/API/READ/<fn>', methods=['GET'])
def readPerson(fn):
    connection = psycopg2.connect(connection_address)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM person WHERE first_name = %s', (fn,))
    all_values = cursor.fetchall()
    return jsonify(all_values)
   
# READ ALL
@app.route('/API/READ/ALL', methods=['GET'])
def readPersonAll():
    connection = psycopg2.connect(connection_address)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM person;')
    all_values = cursor.fetchall()
    return jsonify(all_values)
# CREATE
@app.route('/API/CREATE/<fn>+<ln>+<cn>+<ad>', methods=['POST'])
def create(fn, ln, cn, ad):
    if request.method == 'POST':
        connection = psycopg2.connect(connection_address)
        cursor = connection.cursor()
        cursor.execute('INSERT INTO person (first_name, last_name, company_name, address) VALUES (%s, %s, %s, %s);', (fn, ln, cn, ad) )
        connection.commit()
        return jsonify({'response': 'User Added successfully'})
        
#DELETE
@app.route('/API/DELETE/<fn>', methods = ['POST','GET'])
def delete(fn):
    connection = psycopg2.connect(connection_address)
    cursor = connection.cursor()
    cursor.execute('DELETE FROM person WHERE first_name = %s', (fn,) )
    connection.commit()
    return jsonify({'response': 'User Removed Successfully'})
#CREATE SCHEMA
@app.route('/API/CREATE/SCHEMA/<sn>', methods=['POST'])
def createSchema(sn):
    if request.method == 'POST':
        connection = psycopg2.connect(connection_address)
        cursor = connection.cursor()
        cursor.execute('CREATE SCHEMA ' + str(sn) + ';')
        connection.commit()
        return jsonify({'response': 'Schema Created Successfully'})

#UPDATE SCHEMA
@app.route('/API/RENAME/SCHEMA/<sn>+<nn>', methods=['POST'])
def updateSchemaName(sn, nn):
    if request.method == 'POST':
        connection = psycopg2.connect(connection_address)
        cursor = connection.cursor()
        cursor.execute('ALTER SCHEMA ' + str(sn) + ' RENAME TO ' + str(nn) + ";")
        connection.commit()
        return jsonify({'response': 'Schema Renamed'})

@app.route('/API/REOWNER/SCHEMA/<sn>+<no>', methods=['POST'])
def updateSchemaOwner(sn, no):
    if request.method == 'POST':
        connection = psycopg2.connect(connection_address)
        cursor = connection.cursor()
        cursor.execute('CREATE ROLE ' + str(no) + ' LOGIN;')
        cursor.execute('ALTER SCHEMA ' + str(sn) + ' OWNER TO ' + str(no) + ";")
        connection.commit()
        return jsonify({'response': 'Schema Changed Owner'})

#VIEW API
@app.route('/add_contact', methods=['POST'])
def add_user():
    if request.method == 'POST':
        fullname = request.form['fullname']
        phone = request.form['phone']
        email = request.form['email']
        connection = psycopg2.connect(connection_address)
        cursor = connection.cursor()
        cursor.execute("INSERT INTO person (first_name, phone1, email) VALUES (%s,%s,%s);", (fullname, phone, email))
        connection.commit()
        flash('Contact Added successfully')
        return redirect(url_for('Index'))

@app.route('/edit/<id>', methods = ['POST', 'GET'])
def get_user(id):
    connection = psycopg2.connect(connection_address)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM person WHERE first_name = %s', (id,))
    data = cursor.fetchall()
    cursor.close()
    print(data[0])
    return render_template('edit-contact.html', contact = data[0])

@app.route('/update/<id>', methods=['POST'])
def update_user(id):
    if request.method == 'POST':
        fullname = request.form['fullname']
        phone = request.form['phone']
        email = request.form['email']
        connection = psycopg2.connect(connection_address)
        cursor = connection.cursor()
        cursor.execute("""
            UPDATE person
            SET first_name = %s,
                email = %s,
                phone1 = %s
            WHERE phone1 = %s
        """, (fullname, email, phone, id))
        flash('Contact Updated Successfully')
        connection.commit()
        return redirect(url_for('Index'))

@app.route('/delete/<string:id>', methods = ['POST','GET'])
def delete_user(id):
    connection = psycopg2.connect(connection_address)
    cursor = connection.cursor()
    cursor.execute('DELETE FROM person WHERE first_name = %s', (id,) )
    connection.commit()
    flash('Contact Removed Successfully')
    return redirect(url_for('Index'))
cursor.close()
connection.close()
