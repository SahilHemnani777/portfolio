import 'package:portfolio/widgets/project.dart';

List<String> techChat = [
  "images/flutter.png",
  "images/dart.png",
  "images/android.png"
];
Project chatting = Project(
    "Chatting Application",
    "a chatting application using"
        " Flutter SDK which's Google's UI toolkit for crafting beautiful, natively compiled"
        " applications for mobile, web, and desktop from a single codebase. Currently the app isn't connected to any of the back-end database so it"
        " uses dummy text models and users, further I think of connecting it "
        "with firebase(or any other database).",
    "images/chatting.gif",
    "https://github.com/SahilHemnani777/chat_bot",
    "https://www.linkedin.com/posts/sahil-hemnani-8084b41a6_flutter-flutterdev"
        "-flutterdeveloper-activity-6778049521151815680-_2Au",
    techChat);

List<String> tachBrain = [
  "images/python.png",
  "images/pygames.png",
];
Project brainalgo = Project(
    "Brain Algo",
    "While exploring path finding algorithms, "
        "I discovered something very interesting- A* Shortest Path Finding Al"
        "gorithm aka Brain Algorithm. Sounds Fascinating right?\nA* Search algorithms,"
        " unlike other traversal techniques, it has “brains”. What it means is that"
        " it is really a smart algorithm which separates it from the other conventio"
        "nal algorithms. It filters the nodes(spots) based on their path and shortest"
        " distance so that all the paths not need to be checked, and finally by backtr"
        "acking comes to a result to find the shortest path.",
    "images/brain.gif",
    "https://github.com/SahilHemnani777/Brain-Algo",
    "https://www.linkedin.com/posts/sahil-hemnani-8084b41a6_pygame-activity-6760624181387386880-3n_t",
    tachBrain);

List<String> techSuduko = ["images/python.png", "images/pygames.png"];

Project sudoku = Project(
    "Sudoku Solving Algorithm",
    "Algorithm Used: BackTracking Algorithm \nSteps : [WORKFLOW] \n1.pick the empty block (0) "
        "\n2.try all numbers \n3.select the final one that works \n4.repeat the same procedure for the row untill you fiind a brake(no solution) "
        "\n5.Backtrack(backtracking algorithm) \n6.solve the row \n7.jump on the next row and apply same method to all the rows",
    "images/sudoku.png",
    "https://github.com/SahilHemnani777/Sudoku_Solving_Algorithm",
    "https://www.linkedin.com/posts/sahil-hemnani-8084b41a6_sudoku-solving-"
        "algorithm-using-backtracking-activity-6680913560224329728-TbAi",
    techSuduko);

List<String> techNight = [
  "images/java.png",
  "images/android.png",
  "images/kotlin.png"
];
Project night = Project(
    "Light Dark Theme",
    "Night -> Morning, Light -> Dark (theme conversions) can be de"
        "veloped using android studio's new animation tool motion layout, and can"
        " be used for lots of mobile applications such containing:\nWeather App"
    "\nCalenders"
    "\nSoil detection"
    "\nNight-Morning themeing",
    "images/night.gif",
    "https://github.com/SahilHemnani777/LightDarkMotion",
    "https://www.linkedin.com/posts/sahil-hemnani-8084b41a6_motionlayout-androiddevchallenge-androiddevelopment-activity-6774664532154490880-bmut",
    techNight);


List<String> techbakda = ["images/android.png", "images/kotlin.png", "images/java.png"];
Project bakda = Project("Bakda Animations", "Here I've tried to implement all the Styles and effects on a basic level which we can create using Motion Layout such as:"
    "\n1. KeyFrames"
    "\n2. Collapsible ToolBar"
    "\n3. Splash Screen Animations"
   "\n4. View Pager 2"
    "\n5. Motion Paths (Keyframes Attributes)"
"\n6. Custom Attributes (ImageFilterView)", "images/bakda.gif", "https://github.com/SahilHemnani777/bakda_animations", "https://www.linkedin.com/posts/sahil-hemnani-8084b41a6_motionlayout-constraintlayout-android-activity-6767345413365358592-iMmK", techbakda);
