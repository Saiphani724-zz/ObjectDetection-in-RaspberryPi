ind_cost = {
	"pi_board" : 5699,
	"case" : 387,
	"hdmi_cable" : 320,
	"memory_card" : 1210,
	"charger": 894
}

kit_set_cost = {
	"kit" : 6899,
	"case for cooling" : 387,
	"memory_card" : 1210,
}

tot1 = 0
tot2 = 0

for item,cost in ind_cost.items(): tot1 += cost
for item,cost in kit_set_cost.items(): tot2 += cost
print(tot1,tot2)

