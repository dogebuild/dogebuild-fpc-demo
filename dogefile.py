#import class
from dogebuild.Doge import Doge

d = Doge()
fpc = d.use_plugin("fpc")
fpc.main_file = "./src/main.pas"
fpc.main_test_file = "./test/test.pas"

d.build()







