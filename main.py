import streamlit as st
import subprocess

st.title("ML API")

if st.button("Start Training"):
    subprocess.Popen(["python", "train.py"])
    st.success("Training started!")

if st.button("Generate Image"):
    subprocess.Popen(["python", "generate.py"])
    st.success("Image generation initiated!")
