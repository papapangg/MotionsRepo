from pywinauto.keyboard import send_keys
from robot.libraries.BuiltIn import BuiltIn

class HH:
    def __init__(self):
        self.seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    def upload_file(self, path):
        print(path)
        BuiltIn().sleep('3s')
        send_keys(path)
        BuiltIn().sleep('5s')
        send_keys('{ENTER}')
