import cherrypy
import requests
import wave
import pyaudio
import os.path

baseDir = os.path.dirname(os.path.abspath(__file__))

class Root(object):
    
    def __init__(self):
        self.actions = Actions()

    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Root (Root.index)"

    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Root (Root.page)"
    
    @cherrypy.expose
    def form(self):
        cherrypy.response.headers["Content-Type"] = "text/html"
        #return open("form.html", "r").read().replace("USERNAME","jack")
        return open("form.html")
    
    @cherrypy.expose
    def doLogin(self, username=None, password=None):
        if(username == "telmo" and password == "123"):
            return "ola " + username
        else: 
            return "login em "+ username + " falhou"

if __name__ == "__main__":
    cherrypy.quickstart(Root(), "/")
