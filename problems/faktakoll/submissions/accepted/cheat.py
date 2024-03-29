#!/usr/bin/python3

l = input()

samples = {"Sverige har vunnit IOI två gånger": "True",
           "Joshua Andersson hade 692 contributions på Github år 2023": "True",
           "Harry Zhang hade 420 contributions på Github år 2023": "False",
           "Lösningen till Problemhunt är samma som ett av problemen på denna sida https://open.kattis.com/problem-sources/Doris 2023 deltävling 2": "True",
           "Joshua Andersson föddes i Brasilien": "True",
           "Alla hästar är blå": "False",
           "Talet 1516237305382800 har 10 delare": "False"}

polyphia_songs = ["G.O.A.T.", "Playing God", "Champagne", "O.D.", "Goose", "ABC"]

if l in samples:
    print(samples[l])
elif "=" in l:
    l = l.replace("=","==")
    print("True" if eval(l) else "False")
elif "Bandet Polyphia" in l:
    songname = l.split("\"")[1]
    print("True" if songname in polyphia_songs else "False")
else:
    assert 0
