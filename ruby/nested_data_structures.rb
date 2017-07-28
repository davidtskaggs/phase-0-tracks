# DBC Week 5
# David Skaggs
# 5.4 Nested Data Structures
# Release 2: Design and Build a Nested Data Structure

bronx_zoo = {
  exhibits: {
    bears: ["black bear", "brown bear", "polar bear", "grizzly bear"],
    birds: ["bali mynah", "turaco", "bee eater"],
    sea_lion: ["california sea lion"],
    reptiles: ["anaconda", "blue iguana", "poison dart frog"]
  },
  admission_price: {
    adult: 36.95,
    child: 26.95,
    senior: 31.95,
    annual_membership: 129.95
  },
  concession_stand_items: {
    food: ["chips", "candy", "sandwiches", "ice cream", "hot dogs"],
    drinks: ["water", "soda", "beer", "wine", "juice"]
  }
}

# Driver Code
p bronx_zoo
p bronx_zoo[:exhibits]
p bronx_zoo[:admission_price]
p bronx_zoo[:concession_stand_items]