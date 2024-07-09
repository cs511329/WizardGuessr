public class Map {
  String name;
  PImage img;
  ArrayList<Button> buttons;
  Game g;
  
  public Map(String name, PImage img, Game g) {
    this.name = name;
    this.img = img;
    img.resize(804,618);
    this.g = g;
  }
  
  public void createButtons() { /* sets up clickable buttons to go between maps */
    ArrayList<Button> buttons = new ArrayList<Button>();
    if (name.equals("Commons")) {
      buttons.add(new Button(285, 108, 422, 141, g.maps.get(10)));  // ravenwood
      buttons.add(new Button(474, 178, 581, 228, g.maps.get(13)));  // unicorn_way
      buttons.add(new Button(361, 253, 476, 285, g.maps.get(7)));   // nightside
      buttons.add(new Button(128, 266, 208, 318, g.maps.get(5)));   // golem_court
      buttons.add(new Button(352, 505, 461, 555, g.maps.get(11)));  // shopping_district
      buttons.add(new Button(617, 430, 721, 480, g.maps.get(9)));   // pet_pavillion
    } else if (name.equals("Ravenwood")) {
      buttons.add(new Button(340, 505, 448, 555, g.maps.get(1)));   // commons
    } else if (name.equals("Unicorn Way")) {
      buttons.add(new Button(59, 293, 168, 344, g.maps.get(1)));    // commons
    } else if (name.equals("Golem Court")) {
      buttons.add(new Button(584, 344, 685, 395, g.maps.get(1)));   // commons
    } else if (name.equals("Pet Pavillion")) {
      buttons.add(new Button(185, 53, 292, 103, g.maps.get(1)));    // commons
    } else if (name.equals("Nightside")) {
      buttons.add(new Button(447, 483, 563, 538, g.maps.get(1)));   // commons
    } else if (name.equals("Shopping District")) {
      buttons.add(new Button(342, 100, 452, 151, g.maps.get(1)));   // commons
      buttons.add(new Button(102, 360, 179, 409, g.maps.get(8)));   // olde_town
      buttons.add(new Button(264, 477, 383, 527, g.maps.get(0)));   // colossus_boulevard
    } else if (name.equals("Colossus Boulevard")) {
      buttons.add(new Button(98, 315, 216, 367, g.maps.get(11)));   // shopping_district
    } else if (name.equals("Olde Town")) {
      buttons.add(new Button(248, 148, 338, 199, g.maps.get(2)));   // cyclops_lane
      buttons.add(new Button(202, 270, 297, 320, g.maps.get(12)));  // triton_avenue
      buttons.add(new Button(107, 348, 199, 396, g.maps.get(4)));   // firecat_alley
      buttons.add(new Button(609, 110, 717, 162, g.maps.get(11)));  // shopping_district
    } else if (name.equals("Cyclops Lane")) {
      buttons.add(new Button(615, 326, 708, 376, g.maps.get(8)));   // olde_town
      buttons.add(new Button(520, 249, 596, 301, g.maps.get(3)));   // dark_cave
    } else if (name.equals("Triton Avenue")) {
      buttons.add(new Button(432, 81, 503, 132, g.maps.get(8)));    // olde_town
      buttons.add(new Button(64, 333, 173, 382, g.maps.get(6)));    // haunted_cave
    } else if (name.equals("Firecat Alley")) {
      buttons.add(new Button(621, 124, 702, 179, g.maps.get(8)));   // olde_town
      buttons.add(new Button(383, 123, 496, 157, g.maps.get(3)));   // dark_cave
    } else if (name.equals("Haunted Cave")) {
      buttons.add(new Button(217,232, 386, 266, g.maps.get(12)));   // triton_avenue
    } else if (name.equals("Dark Cave")) {
      buttons.add(new Button(230, 248, 319, 301, g.maps.get(4)));   // firecat_alley
      buttons.add(new Button(553, 161, 646, 212, g.maps.get(2)));   // cyclops_lane
    }
    this.buttons = buttons;
  }
}
