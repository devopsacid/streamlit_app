import streamlit as st

# Create a list to store chat messages
chat_log = []

# Create a text input field for the user to enter a message
message = st.text_input('Enter a message')

# Create a button for the user to send their message
if st.button('Send'):
    # If the button is pressed, add the message to the chat log
    chat_log.append(message)

# Display the chat log
for msg in chat_log:
    st.write(msg)
