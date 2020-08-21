kit_set_cost = {
	"kit" : 6899,
	"case for cooling" : 387,
	"memory_card" : 1210,
	"camera": 1000
}

tot = 0

for item,cost in kit_set_cost.items(): tot += cost
print(tot)

