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
     'title': 'A la recherche de ca liberté',
     'review': 3,
     'summary': 'A women looking for a female freedom in a male dominated world',
     'category': 'Romance',
     'author': 'Sarah duchesse',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '2000'},
    {'id': 2,
     'title': 'Harry potter',
     'review': 4,
     'summary': 'The story of the boy who survived!',
     'category': 'Fantasy',
     'author': 'Robert jhonson',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '2018'},
    {'id': 3,
     'title': 'Hunger Games',
     'review': 4,
     'summary': 'Super archer girl ruins game festival for thousands of people',
     'category': 'Fantasy',
     'author': 'Maxence Vasseur',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '2008'},
    {'id': 4,
     'title': 'Hunger Games II',
     'review': 3,
     'summary': 'After ruining the game for thousands, she starts a civil war by being nice to a black girl',
     'category': 'Fantasy',
     'author': 'Maxence Vasseur',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '2010'},
    {'id': 5,
     'title': 'Hunger Games III',
     'review': 2,
     'summary': 'The conclusion to civil war in all districts',
     'category': 'Fantasy',
     'author': 'Maxence Vasseur',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '2013'},
    {'id': 6,
     'title': 'Fondation',
     'review': 5,
     'summary': 'An existing story of a man that is able to predict the future, sending a colony of scientists to a distant worls, far from the reach of the empire',
     'category': 'Sci-Fi',
     'author': 'Isaac Asimov',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '1989'},
    {'id': 7,
     'title': 'Fondation II',
     'review': 5,
     'summary': 'After the colony settles and becomes a nuclear powered civilization, some people, the traders, feel like they are not getting recognition for their work',
     'category': 'Sci-Fi',
     'author': 'Isaac Asimov',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '1991'},
    {'id': 8,
     'title': 'Fondation III',
     'review': 5,
     'summary': 'The fondation is on their road to becoming the strongest civilization that have ever existed however a mutant threatens their whole existence',
     'category': 'Sci-Fi',
     'author': 'Isaac Asimov',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '1995'},
    {'id': 9,
     'title': 'A story in a ghostland',
     'review': 1,
     'summary': 'A man describes his love life in details, however do not be mistaken, it does not exists.',
     'category': 'Horror',
     'author': 'Fabien bouquet',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '2022'},
    {'id': 10,
     'title': 'The Vegan who nearly ate chicken',
     'review': 2,
     'summary': 'There once was a vegan who after drinking all night, was going to change his whole life!',
     'category': 'Autobiography',
     'author': 'Theo veget',
     'image': 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
     'year_published': '2020'},
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
