import pygambit as gbt
import sys
import os

# blue_opt, red_opt = 2, 3
blue_opt = int(sys.argv[1])
red_opt = int(sys.argv[2])

g = gbt.Game.new_tree(players=["red", "blue"], title="game_2")
moves_1 = [str(i) for i in range(1, blue_opt + 1)]
g.append_move(g.root, g.players.chance, moves_1)

probs = []
index_1 = 3
for i in range(blue_opt):
    num = int(sys.argv[index_1])
    den = int(sys.argv[index_1 + 1])
    prob = gbt.Rational(num, den)
    probs.append(prob)
    index_1 += 2
g.set_chance_probs(g.root.infoset, probs)
# g.set_chance_probs(g.root.infoset,[gbt.Decimal(".25"), gbt.Decimal(".75")])

moves_2 = [f"1{i}" for i in range(1, blue_opt + 1)]
for node in g.root.children:
    g.append_move(node, "blue", moves_2)

moves_3 = [str(i) for i in range(1, red_opt + 1)]
for node in g.root.children[0].children:
    g.append_move(node, "red", moves_3)

for j in range(1, blue_opt):
    for i in range(blue_opt):
        g.append_infoset(g.root.children[j].children[i], g.root.children[0].children[i].infoset)
# g.set_outcome(g.root.children[0].children[0].children[0], g.add_outcome([-12.37, -17.77]))

index_2 = 3 + 2 * blue_opt
for i in range(blue_opt):
    for j in range(blue_opt):
        for k in range(red_opt):
            g.set_outcome(g.root.children[i].children[j].children[k],
                          g.add_outcome([float(sys.argv[index_2]),
                                         float(sys.argv[index_2 + 1])]))
            index_2 += 2

script_dir = os.path.dirname(os.path.abspath(__file__))
game_file_path = os.path.join(script_dir, "gambit", "game_2.efg")
g.to_efg(game_file_path)
# print(g.write(format='native'))

# qre=gbt.nash.logit_principal_branch(game=g)
result = gbt.nash.lcp_solve(game=g, use_strategic=False)
print(result.equilibria)
