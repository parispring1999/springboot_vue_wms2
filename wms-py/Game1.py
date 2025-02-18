import pygambit as gbt

g = gbt.Game.read_game("game1.gbt")
print(g.write(format='native'))
result = gbt.nash.enumpure_solve(game=g, use_strategic=False)
result2 = gbt.nash.lcp_solve(game=g, use_strategic=False)
qre=gbt.nash.logit_principal_branch(game=g)
print(result2.equilibria)
print(g.nodes()[3].outcome["red"],g.nodes()[3].outcome["blue"])
print(g.root.children[0].children[0])

g2 = gbt.Game.new_tree(players=["red", "blue"],title="game2")
g2.append_move(g2.root, g2.players.chance, ["1","2"])
g2.set_chance_probs(g2.root.infoset,[gbt.Rational(1, 2), gbt.Rational(1, 2)])
# g2.set_chance_probs(g2.root.infoset,[gbt.Decimal(".25"), gbt.Decimal(".75")])
for node in g2.root.children:
    g2.append_move(node, "blue", ["11", "12"])
# print(g2.write(format='native'))