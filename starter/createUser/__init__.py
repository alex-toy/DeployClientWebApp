from ast import dump
import logging
import pymongo
import os
import azure.functions as func
from bson.json_util import dumps
from bson.objectid import ObjectId

import azure.functions as func


def main(req: func.HttpRequest) -> func.HttpResponse:
    request = req.get_json()
    if request:
        try:
            url = os.environ["MyDbConnection"] 
            client = pymongo.MongoClient(url)
            database = client['alexeidb'] 
            collection = database['users'] 

            # replace the insert_one variable with what you think should be in the bracket
            # body = func.HttpResponse(req.get_body())
            # dump(body)
            # collection.insert_one(req.get_body())
            # we are returnign the request body so you can take a look at the results
            return func.HttpResponse(req.get_body())
        except ValueError:
            return func.HttpResponse('Database connection error.', status_code=500)
    else:
        return func.HttpResponse(
            "Please pass the correct JSON format in the body of the request object",
            status_code=400
        )

