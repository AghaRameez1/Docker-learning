# compose_flask/app.py
from flask import Flask, render_template
from redis import Redis

app = Flask(__name__,static_url_path='',
            static_folder='static/',
            template_folder='templates/')
redis = Redis(host='redis', port=6379)

@app.route('/')
def hello():
    redis.incr('hits')
    return render_template("index.html", times = redis.get('hits'))
#    return 'This Compose/Flask demo has been viewed %s time(s).' % redis.get('hits')


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)