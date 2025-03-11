# Import Required Modules
from flask import Flask, render_template
import pandas as pd
import json
import plotly
import plotly.express as px
 
# Create Home Page Route
app = Flask(__name__)
 
 
@app.route('/')
def bar_with_plotly():
   
    df = pd.read_csv('employees.csv')
     
    # Create Bar chart
    fig = px.bar(df, x='Name', y='Age', color='Gender')
     
    # Create graphJSON
    graphJSON = json.dumps(fig, cls=plotly.utils.PlotlyJSONEncoder)
     
    # Use render_template to pass graphJSON to html
    return render_template('bar.html', graphJSON=graphJSON)
 
 
if __name__ == '__main__':
    app.run(debug=True)