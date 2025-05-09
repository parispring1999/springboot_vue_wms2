import pygambit as gbt
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
game_file_path = os.path.join(script_dir, "gambit", "game_2.efg")

g = gbt.Game.read_game(game_file_path)
# print(g.write(format='native'))
# result3 = gbt.nash.enumpure_solve(game=g, use_strategic=False)
# result = gbt.nash.enummixed_solve(game=g)
# result2 = gbt.nash.lcp_solve(game=g, use_strategic=False)
qre=gbt.nash.logit_solve(game=g)
print(qre.equilibria)
# print(g.nodes()[3].outcome["red"],g.nodes()[3].outcome["blue"])
# print(g.root.children[0].children[0])
