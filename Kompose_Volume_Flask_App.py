from flask import Flask
from flask_restful import Resource, Api
import pandas as pd

app = Flask(__name__)
api = Api(app)


class ReadFile(Resource):
    def get(self):
        data = pd.read_excel(r'TestFile.xlsx')
        return {'Last Element': str(data.tail(1))}


api.add_resource(ReadFile, '/')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
