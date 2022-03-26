import flask
from flask import request, jsonify

app = flask.Flask(__name__)
app.config["DEBUG"] = True

books = [ ## title, review, summary, year_published, category, image
    {'id': 0,
     'title': 'A Fire Upon the Deep',
     'review': 5,
     'summary': 'A very very deep fire of passion for someone the protagonists hate. A story about revenge, heartbreak and misery',
     'category': 'Suspence',
     'author': 'Vernor Vinge',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '1992'},
    {'id': 1,
     'title': 'The Ones Who Walk Away From Omelas',
     'author': 'Ursula K. Le Guin',
     'year_published': '1973'},
    {'id': 2,
     'title': 'Dhalgren',
     'author': 'Samuel R. Delany',
     'year_published': '1975'}
]

fav = []

@app.route('/', methods=['GET'])
def home():
    return '''<h1>Distant Reading Archive</h1>
<p>A prototype API for crypto</p>'''

@app.route('/api/v1/resources/books/all', methods=['GET'])
def api_all():
    return jsonify(books)

@app.route('/api/v1/resources/fav/add', methods=['GET'])
def api_add_fav():
    if 'id' in request.args:
        id = int(request.args['id'])
    else:
        return jsonify([{'Status': 'failed1'}])
    for book in books:
        if book['id'] == id:
            fav.append(book)
            return jsonify([{'Status': 'success'}])
    return jsonify([{'Status': 'failed2'}])

@app.route('/api/v1/resources/favs', methods=['GET'])
def api_favs():
    return jsonify(fav)

@app.route('/api/v1/resources/fav/del', methods=['GET'])
def api_del_fav():
    if 'id' in request.args:
        id = int(request.args['id'])
    else:
        return jsonify([{'Status': 'failed1'}])

    counter = -1
    for book in fav:
        counter += 1
        if book['id'] == id:
            fav.pop(counter)
            return jsonify([{'Status': 'success'}])
    return jsonify([{'Status': 'failed2'}])
app.run()
