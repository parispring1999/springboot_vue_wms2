import pygambit as gbt

'''
EFG 2 R "game_2" { "red" "blue" }
""

c "" 1 "" { "1" 1/2 "2" 1/2 } 0
p "" 2 1 "" { "11" "12" } 0
p "" 1 1 "" { "1" "2" "3" } 0
t "" 1 "" { -12.37, -17.77 }
t "" 2 "" { -56.95, 12.14 }
t "" 9 "" { -11.39, -19.70 }
p "" 1 2 "" { "1" "2" "3" } 0
t "" 3 "" { -12.37, -24.77 }
t "" 4 "" { -56.95, 5.14 }
t "" 11 "" { -11.35, -26.70 }
p "" 2 2 "" { "11" "12" } 0
p "" 1 1 "" { "1" "2" "3" } 0
t "" 5 "" { -59.80, 5.51 }
t "" 6 "" { -29.09, -23.58 }
t "" 10 "" { -59.38, 5.73 }
p "" 1 2 "" { "1" "2" "3" } 0
t "" 7 "" { -59.80, 12.51 }
t "" 8 "" { -29.09, -12.58 }
t "" 12 "" { -59.38, 12.73 }
'''


g = gbt.Game.new_tree(players=["red", "blue"], title="game_2")
g.append_move(g.root, g.players.chance, ["1", "2"])
g.set_chance_probs(g.root.infoset, [gbt.Rational(1, 2), gbt.Rational(1, 2)])
# g.set_chance_probs(g.root.infoset,[gbt.Decimal(".25"), gbt.Decimal(".75")])
for node in g.root.children:
    g.append_move(node, "blue", ["11", "12"])
for node in g.root.children[0].children:
    g.append_move(node, "red", ["1", "2", "3"])
for i in range(len(g.root.children)):
    g.append_infoset(g.root.children[1].children[i], g.root.children[0].children[i].infoset)
g.set_outcome(g.root.children[0].children[0].children[0], g.add_outcome([-12.37, -17.77]))
g.set_outcome(g.root.children[0].children[0].children[1], g.add_outcome([-56.95, 12.14]))
g.set_outcome(g.root.children[0].children[0].children[2], g.add_outcome([-11.39, -19.70]))
print(g.write(format='native'))
