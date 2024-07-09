public class Game {
  Display d;
  int difficulty;
  Marker marker;
  SolnMarker solnMarker;
  boolean mapOpen; /* true if map is open; false if location img is open */
  ArrayList<Map> maps;
  Map currMap;
  ArrayList<Location> locs;
  Location loc;
  String gameStage;
  int numRounds;
  int roundPoints;
  int[] pointsPerRound;
  int totalPoints;
  
  public Game(int difficulty) { /* Game constructor */
    this.difficulty = difficulty;
    d = new Display(this);
    marker = new Marker();
    mapOpen = false;
    maps = createMaps();
    for (int i = 0; i < maps.size(); i++) {
      maps.get(i).createButtons();
    }
    currMap = maps.get(1);
    locs = createLocs();
    loc = selectLoc();
    solnMarker = new SolnMarker(loc.coords.x, loc.coords.y, loc.map);
    gameStage = "titleScreen";
    numRounds = 1;
    pointsPerRound = new int[5];
    d.displayGame();
  }
  
  public Location selectLoc() { /* selects and removes loc from locs */
    int locIndex = (int) (Math.random() * locs.size());
    Location loc = locs.get(locIndex);
    locs.remove(locIndex);
    return loc;
  }
  
  public void moveMarker(int x, int y) { /* moves marker to (x,y) */
    marker.coords.x = x;
    marker.coords.y = y;
    marker.map = currMap;
    d.displayGame();
  }
  
  public ArrayList<Location> createLocs() { /* makes list of all possible locations */
    ArrayList<Location> locs = new ArrayList<Location>();
    locs.add(new Location(266, 443, 1, loadImage("Locations/loc01.png"), maps.get(1)));
    locs.add(new Location(579, 411, 1, loadImage("Locations/loc02.png"), maps.get(1)));
    locs.add(new Location(500, 460, 1, loadImage("Locations/loc03.png"), maps.get(1)));
    locs.add(new Location(426, 441, 1, loadImage("Locations/loc04.png"), maps.get(1)));
    locs.add(new Location(366, 421, 1, loadImage("Locations/loc05.png"), maps.get(1)));
    locs.add(new Location(267, 351, 1, loadImage("Locations/loc06.png"), maps.get(1)));
    locs.add(new Location(332, 310, 1, loadImage("Locations/loc07.png"), maps.get(10)));
    locs.add(new Location(355, 138, 1, loadImage("Locations/loc08.png"), maps.get(10)));
    locs.add(new Location(545, 240, 1, loadImage("Locations/loc09.png"), maps.get(10)));
    locs.add(new Location(451, 361, 1, loadImage("Locations/loc10.png"), maps.get(10)));
    locs.add(new Location(318, 460, 1, loadImage("Locations/loc11.png"), maps.get(10)));
    locs.add(new Location(596, 310, 1, loadImage("Locations/loc12.png"), maps.get(9)));
    locs.add(new Location(594, 343, 1, loadImage("Locations/loc13.png"), maps.get(9)));
    locs.add(new Location(267, 383, 1, loadImage("Locations/loc14.png"), maps.get(9)));
    locs.add(new Location(582, 289, 1, loadImage("Locations/loc15.png"), maps.get(5)));
    locs.add(new Location(441, 161, 1, loadImage("Locations/loc16.png"), maps.get(5)));
    locs.add(new Location(219, 362, 1, loadImage("Locations/loc17.png"), maps.get(13)));
    locs.add(new Location(261, 390, 1, loadImage("Locations/loc18.png"), maps.get(13)));
    locs.add(new Location(442, 275, 1, loadImage("Locations/loc19.png"), maps.get(13)));
    locs.add(new Location(497, 222, 1, loadImage("Locations/loc20.png"), maps.get(13)));
    locs.add(new Location(602, 172, 1, loadImage("Locations/loc21.png"), maps.get(13)));
    locs.add(new Location(658, 148, 1, loadImage("Locations/loc22.png"), maps.get(13)));
    locs.add(new Location(639, 156, 1, loadImage("Locations/loc23.png"), maps.get(13)));
    locs.add(new Location(635, 283, 1, loadImage("Locations/loc24.png"), maps.get(11)));
    locs.add(new Location(539, 391, 1, loadImage("Locations/loc25.png"), maps.get(11)));
    locs.add(new Location(375, 242, 1, loadImage("Locations/loc26.png"), maps.get(11)));
    locs.add(new Location(510, 192, 1, loadImage("Locations/loc27.png"), maps.get(8)));
    locs.add(new Location(535, 372, 1, loadImage("Locations/loc28.png"), maps.get(8)));
    locs.add(new Location(539, 297, 1, loadImage("Locations/loc29.png"), maps.get(8)));
    locs.add(new Location(427, 318, 1, loadImage("Locations/loc30.png"), maps.get(8)));
    locs.add(new Location(449, 414, 1, loadImage("Locations/loc31.png"), maps.get(8)));
    locs.add(new Location(363, 289, 1, loadImage("Locations/loc32.png"), maps.get(8)));
    locs.add(new Location(555, 328, 1, loadImage("Locations/loc33.png"), maps.get(2)));
    locs.add(new Location(440, 392, 1, loadImage("Locations/loc34.png"), maps.get(2)));
    locs.add(new Location(458, 352, 1, loadImage("Locations/loc35.png"), maps.get(2)));
    locs.add(new Location(388, 223, 1, loadImage("Locations/loc36.png"), maps.get(2)));
    locs.add(new Location(164, 198, 1, loadImage("Locations/loc37.png"), maps.get(2)));
    locs.add(new Location(445, 205, 1, loadImage("Locations/loc38.png"), maps.get(4)));
    locs.add(new Location(560, 359, 1, loadImage("Locations/loc39.png"), maps.get(4)));
    locs.add(new Location(528, 401, 1, loadImage("Locations/loc40.png"), maps.get(4)));
    locs.add(new Location(237, 198, 1, loadImage("Locations/loc41.png"), maps.get(4)));
    locs.add(new Location(237, 356, 1, loadImage("Locations/loc42.png"), maps.get(4)));
    locs.add(new Location(630, 198, 1, loadImage("Locations/loc43.png"), maps.get(12)));
    locs.add(new Location(443, 283, 1, loadImage("Locations/loc44.png"), maps.get(12)));
    locs.add(new Location(379, 285, 1, loadImage("Locations/loc45.png"), maps.get(12)));
    locs.add(new Location(387, 322, 1, loadImage("Locations/loc46.png"), maps.get(12)));
    locs.add(new Location(145, 400, 1, loadImage("Locations/loc47.png"), maps.get(12)));
    locs.add(new Location(517, 256, 1, loadImage("Locations/loc48.png"), maps.get(6)));
    locs.add(new Location(493, 206, 1, loadImage("Locations/loc49.png"), maps.get(6)));
    locs.add(new Location(560, 255, 1, loadImage("Locations/loc50.png"), maps.get(3)));
    locs.add(new Location(321, 427, 1, loadImage("Locations/loc51.png"), maps.get(3)));
    locs.add(new Location(468, 437, 1, loadImage("Locations/loc52.png"), maps.get(7)));
    locs.add(new Location(285, 375, 1, loadImage("Locations/loc53.png"), maps.get(7)));
    locs.add(new Location(361, 454, 1, loadImage("Locations/loc54.png"), maps.get(0)));
    locs.add(new Location(620, 187, 1, loadImage("Locations/loc55.png"), maps.get(0)));
    locs.add(new Location(550, 194, 1, loadImage("Locations/loc56.png"), maps.get(0)));
    locs.add(new Location(422, 326, 1, loadImage("Locations/loc57.png"), maps.get(0)));
    return locs;
  }
  
  public ArrayList<Map> createMaps() { /* makes list of all maps */
    ArrayList<Map> maps = new ArrayList<Map>();
    maps.add(new Map("Colossus Boulevard", loadImage("Maps/colossus_boulevard.png"), this));    // 0
    maps.add(new Map("Commons", loadImage("Maps/commons.png"), this));                          // 1
    maps.add(new Map("Cyclops Lane", loadImage("Maps/cyclops_lane.png"), this));                // 2
    maps.add(new Map("Dark Cave", loadImage("Maps/dark_cave.png"), this));                      // 3
    maps.add(new Map("Firecat Alley", loadImage("Maps/firecat_alley.png"), this));              // 4
    maps.add(new Map("Golem Court", loadImage("Maps/golem_court.png"), this));                  // 5
    maps.add(new Map("Haunted Cave", loadImage("Maps/haunted_cave.png"), this));                // 6
    maps.add(new Map("Nightside", loadImage("Maps/nightside.png"), this));                      // 7
    maps.add(new Map("Olde Town", loadImage("Maps/olde_town.png"), this));                      // 8
    maps.add(new Map("Pet Pavillion", loadImage("Maps/pet_pavillion.png"), this));              // 9
    maps.add(new Map("Ravenwood", loadImage("Maps/ravenwood.png"), this));                      // 10
    maps.add(new Map("Shopping District", loadImage("Maps/shopping_district.png"), this));      // 11
    maps.add(new Map("Triton Avenue", loadImage("Maps/triton_avenue.png"), this));              // 12
    maps.add(new Map("Unicorn Way", loadImage("Maps/unicorn_way.png"), this));                  // 13
    return maps;
  }
  
  public void submitGuess() {
    System.out.println("your guess: (" + marker.coords.x + ", " + marker.coords.y + ")");
    System.out.println("solution: (" + solnMarker.coords.x + ", " + solnMarker.coords.y + ")");
    int dist = distance(marker.coords.x, marker.coords.y, solnMarker.coords.x, solnMarker.coords.y);
    System.out.println("distance: " + dist);
    roundPoints = calculatePoints(dist);
    pointsPerRound[numRounds - 1] = roundPoints;
    totalPoints += roundPoints;
    System.out.println("points: " + roundPoints);
    System.out.println("totalPoints: " + totalPoints);
    gameStage = "roundReview";
    numRounds++;
    d.displayGame();
  }
  
  public void setUpNextRound() {
    mapOpen = false;
    currMap = maps.get(1);
    marker = new Marker();
    loc = selectLoc();
    solnMarker = new SolnMarker(loc.coords.x, loc.coords.y, loc.map);
    gameStage = "round";
    d.displayGame();
  }
  
  public int distance(int x1, int y1, int x2, int y2) {
    return (int) Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
  }
  
  public int calculatePoints(int dist) {
    if (dist > 500 || !marker.map.name.equals(solnMarker.map.name)) {
      return 0;
    } else {
      return (int) (0.02 * dist * dist - 20 * dist + 5000);
    }
  }
}
