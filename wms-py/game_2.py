import pygambit as gbt

g = gbt.Game.new_tree(players=["red", "blue"], title="game_2")
g.append_move(g.root, g.players.chance, ["1", "2"])
g.set_chance_probs(g.root.infoset, [gbt.Rational(1, 2), gbt.Rational(1, 2)])
# g.set_chance_probs(g.root.infoset,[gbt.Decimal(".25"), gbt.Decimal(".75")])
for node in g.root.children:
    g.append_move(node, "blue", ["11", "12"])
# print(g.write(format='native'))
