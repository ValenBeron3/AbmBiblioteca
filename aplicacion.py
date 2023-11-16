# env\Scripts\activate
# waitress-serve --listen=127.0.0.1:8000 aplicacion:app
from apiwsgi import Wsgiclass
from webob import Request, Response
from jinja2 import Environment, FileSystemLoader
from whitenoise import WhiteNoise

import os
import mysql.connector

def conexion_db():
    conexion1=mysql.connector.connect(host="localhost",user="root",password="123456789",database="biblioteca2")
    return conexion1

app = Wsgiclass()

template_dir = os.path.join(os.path.dirname(__file__),'templates')
env = Environment(loader=FileSystemLoader(template_dir))

#INICIO#

@app.ruta("/")
def home(request, response):
    template = env.get_template('inicio.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response
    
#LIBROS#

@app.ruta("/libros")
def libros(request, response):
    conexion1 = conexion_db()
    cursor1 = conexion1.cursor()
    datos={}
    cursor1.execute("SELECT ISBN, titulo,estado FROM libros;")
    datos['libros']=cursor1.fetchall()

    cursor1.execute("SELECT idusuarios, nombre, apellido FROM usuarios;")
    datos['usuarios']=cursor1.fetchall()
    
    cursor1.close()
    conexion1.close()

    if libros:
        template = env.get_template('libros.html')
        rendered_html = template.render(datos=datos)
        response = Response()
        response.text = rendered_html
        return response
    else:
        template = env.get_template('no_libros.html')
        rendered_html = template.render()
        response = Response()
        response.text = rendered_html
        return response

#RESERVA ¡TERMINAR MAÑANA!#

@app.ruta("/reserva", methods=['GET'])
def reservar(request, response):
    ISBN=request.GET.get('isbn')
    usuario=request.GET.get('usuario')
    
    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta= f"SELECT estado FROM libros WHERE (`ISBN`= {ISBN});"
        cursor1.execute(consulta)

        estado_libros=cursor1.fetchone()

        if estado_libros[0]==1:
            consulta= f"UPDATE `biblioteca2`.`libros` SET `estado` = '0' WHERE (`ISBN` = {ISBN});"
            cursor1.execute(consulta)
            conexion1.commit()
        else:
            consulta=f"UPDATE `biblioteca2`.`libros` SET `estado` = '1' WHERE (`ISBN` = {ISBN});"
            cursor1.execute(consulta)
            # ESTE RESERVA
            consulta=f"INSERT INTO `biblioteca2`.`prestamoss` (`id_usuario`, `id_ISBN`) VALUES ('{usuario}', '{ISBN}');"
            cursor1.execute(consulta)
            conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

#REGISTRO DE USUARIOS#

@app.ruta("/registro")
def registro(request, response):

    template = env.get_template('registro.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response

@app.ruta("/agregarusuario", methods=['GET'])
def agregarusuario(request,response):
    nombre=request.GET.get('nombre')
    apellido=request.GET.get('apellido')
    correo=request.GET.get('correo')
    dni=request.GET.get('dni')
    direccion=request.GET.get('direccion')

    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta=f"INSERT INTO `biblioteca2`.`usuarios` (`nombre`, `apellido`, `direccion`, `dni`, `correo`) VALUES ('{nombre}', '{apellido}', '{direccion}', '{dni}', '{correo}');"
        print(consulta)
        cursor1.execute(consulta)
        conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

#BAJA DE USUARIOS#

@app.ruta("/borrarusuario")
def borrarusuario(request, response):
    template = env.get_template('borrarusuarios.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response

@app.ruta("/borrarusuarios", methods=['GET'])
def borrarusuarios(request,response):
    idusuario=request.GET.get('idusuario')
    
    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta=f"DELETE FROM `biblioteca2`.`usuarios` WHERE (`idusuarios`= {idusuario});"
        print(consulta)
        cursor1.execute(consulta)
        conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

#REGISTRO DE LIBROS#

@app.ruta("/agregarlibro")
def agregarlibro(request, response):

    template = env.get_template('agregarlibros.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response

@app.ruta("/agregarlibros", methods=['GET'])
def agregarlibros(request,response):
    titulo=request.GET.get('titulo')
    idautores=request.GET.get('idautores')
    idgeneros=request.GET.get('idgeneros')
    ideditoriales=request.GET.get('ideditoriales')
    estado=request.GET.get('estado')
    
    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta=f"INSERT INTO `biblioteca2`.`libros` (`titulo`, `idautores`, `idgeneros`, `ideditoriales`, `estado` ) VALUES ('{titulo}', '{idautores}', '{idgeneros}', '{ideditoriales}', '{estado}');"
        print(consulta)
        cursor1.execute(consulta)
        conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

#BAJA DE LIBROS#

@app.ruta("/borrarlibro")
def borrarlibro(request, response):
    template = env.get_template('borrarlibros.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response

@app.ruta("/borrarlibros", methods=['GET'])
def borrarlibros(request,response):
    idlibro=request.GET.get('idlibro')
    
    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta2=f"DELETE FROM `biblioteca2`.`prestamoss` WHERE (`id_ISBN`= {idlibro});"
        cursor1.execute(consulta2)
        consulta=f"DELETE FROM `biblioteca2`.`libros` WHERE (`ISBN`= {idlibro});"
        print(consulta)
        cursor1.execute(consulta)
        conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

#REGISTRO DE AUTORES#

@app.ruta("/agregarautor")
def agregarautor(request, response):

    template = env.get_template('agregarautores.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response

@app.ruta("/agregarautores", methods=['GET'])
def agregarautores(request,response):
    nombre=request.GET.get('nombre')
    apellido=request.GET.get('apellido')
    
    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta=f"INSERT INTO `biblioteca2`.`autores` (`nombre`, `apellido`) VALUES ('{nombre}', '{apellido}');"
        print(consulta)
        cursor1.execute(consulta)
        conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

#BAJA DE AUTORES#

@app.ruta("/borrarautor")
def borrarautor(request, response):
    template = env.get_template('borrarautores.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response

@app.ruta("/borrarautores", methods=['GET'])
def borrarautores(request,response):
    idautor=request.GET.get('idautor')
    
    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta=f"DELETE FROM `biblioteca2`.`autores` WHERE (`idautores`= {idautor});"
        print(consulta)
        cursor1.execute(consulta)
        conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

#REGISTRO DE GENEROS#

@app.ruta("/agregargenero")
def agregargenero(request, response):

    template = env.get_template('agregargeneros.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response

@app.ruta("/agregargeneros", methods=['GET'])
def agregargeneros(request,response):
    nombre=request.GET.get('nombre')
    
    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta=f"INSERT INTO `biblioteca2`.`genero` (`nombre`) VALUES ('{nombre}');"
        print(consulta)
        cursor1.execute(consulta)
        conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

#BAJA DE GENEROS#

@app.ruta("/borrargenero")
def borrargenero(request, response):
    template = env.get_template('borrargeneros.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response

@app.ruta("/borrargeneros", methods=['GET'])
def borrargeneros(request,response):
    idgenero=request.GET.get('idgenero')
    
    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta2=f"UPDATE `biblioteca2`.`libros` SET idgeneros = NULL WHERE (`idgeneros`= {idgenero});"
        cursor1.execute(consulta2)
        consulta=f"DELETE FROM `biblioteca2`.`genero` WHERE (`idgenero`= {idgenero});"
        print(consulta)
        cursor1.execute(consulta)
        conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

#REGISTRO DE EDITORIALES#

@app.ruta("/agregareditorial")
def agregareditorial(request, response):

    template = env.get_template('agregareditoriales.html')
    rendered_html = template.render()
    response=Response()
    response.text = rendered_html
    return response

@app.ruta("/agregareditoriales", methods=['GET'])
def agregareditoriales(request,response):
    nombre=request.GET.get('nombre')
    
    try:
        conexion1 = conexion_db()
        cursor1 = conexion1.cursor()
        consulta=f"INSERT INTO `biblioteca2`.`editoriales` (`nombre`) VALUES ('{nombre}');"
        print(consulta)
        cursor1.execute(consulta)
        conexion1.commit()
    except Exception as e:
        print(e)
    response=Response()
    response.status_code = 302
    response.headers['Location'] = '/libros'
    return response

app = WhiteNoise(app, root='static/')