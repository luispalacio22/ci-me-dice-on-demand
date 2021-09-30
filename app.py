from flask import Flask, render_template
#Only for FLASK
import os
app = Flask(__name__)

#Dice Main page
@app.route('/')
def dice_page():
	return render_template('dice_page.html')

#Testing to check if it works
@app.route('/test')
def test():
    return "Works!"

if __name__ == '__main__':
    #PORT= int(os.environ.get('PORT', 5000))
    #host='0.0.0.0', port=PORT
    app.run()