from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

# In-memory storage (simple demo DB)
messages = []

# Health check for ALB
@app.route('/health')
def health():
    return "OK", 200

# Main UI route (ALB hits this)
@app.route('/')
def home():
    return render_template('index.html', messages=messages)

# API endpoint for submitting messages
@app.route('/submit', methods=['POST'])
def submit():
    new_message = request.form.get('new_message')

    if not new_message:
        return jsonify({"error": "Message cannot be empty"}), 400

    messages.append(new_message)

    return jsonify({"message": new_message}), 200


if __name__ == '__main__':
    # Important for Docker/ECS
    app.run(host='0.0.0.0', port=5000)