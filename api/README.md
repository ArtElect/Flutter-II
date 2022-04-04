
# API 

The step by step to using this API




## Deployment

To deploy this project run

```bash
  pip3 install flask
  python3 app.py
```
While running 'app.py', you have a small server on localhost/127.0.0.1:5000 from which you can access the api routes.

## API Reference

#### Get all books

```http
  GET /api/v1/ressources/books/all
```

#### Get favourited books

```http
  GET /api/v1/ressources/favs
```

#### Add to favourites 

```http
  GET /api/v1/ressources/fav/add?id={book_id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of book          |

returns a json with the status of operation

#### Delete from favourites 

```http
  GET /api/v1/ressources/fav/del?id={book_id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of book          |

returns a json with the status of operation
