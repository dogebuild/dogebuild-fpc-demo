#import class
from dogebuild.Doge import Doge

d = Doge()
fpc = d.use_plugin("fpc")
fpc.dir = "./src/main.pas"

d.build()







