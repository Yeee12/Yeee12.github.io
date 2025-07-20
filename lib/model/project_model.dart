class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  final String googleDrive;
  final List<String> technologiesUsed;

  Project(
      this.name,
      this.description,
      this.image,
      this.link,
      this.googleDrive,
      this.technologiesUsed,
      );
}

List<Project> projectList = [
  Project(
    "Eventii",
    "Users can discover nearby events, check ticket prices, and see what's coming up. Includes profile upload. Built with Flutter and GetX.",
    "assets/images/eventi.jpg",
    "https://github.com/Yeee12/eventii",
    "https://drive.google.com/file/d/1OpL174AlAy7pk9KDUXyfkiVRSFW5agB8/view?usp=drive_link",
    ["Flutter", "Dart", "GetX", "Location API", "Image Upload", "event Api"],
  ),
  Project(
    "Redefi",
    "A flight booking app where users can search for available flights and view prices. Built with Flutter and Riverpod for state management.",
    "assets/images/redfi.jpg",
    "https://github.com/Yeee12/redfi",
    "https://drive.google.com/file/d/1UWL69b4l-1zndPufvz-07OGXp5pL2ptQ/view?usp=drive_link",
    ["Flutter", "Dart", "Riverpod", "mock API", "UI Design"],
  ),
  Project(
    "Notes App",
    "A note app that works offline and syncs online. Built for professionals with GetX and SQLite. Includes auto-sync, testing, and CI/CD pipeline.",
    "assets/images/note app.jpg",
    "https://github.com/Yeee12/sales-force-app",
    "https://drive.google.com/file/d/1ytkkp5MYy22cjciRXPkG3Jv2dJv2YD0-/view?usp=drive_link",
    ["Flutter", "Dart", "GetX", "SQLite", "Offline Storage", "Sync", "Testing", "CI/CD"],
  ),

  Project(
    "Finance App",
    "A clean and modern UI app where users can see a graph of their spending. Includes 2 pages showcasing financial information visually.",
    "assets/images/finance app.jpg",
    "https://github.com/Yeee12/finance_app_michael",
    "https://drive.google.com/file/d/1UTmZIWBHPJo70EF_jI0L0V6rd0J0xx20/view?usp=drive_link",
    ["Flutter", "Dart", "Charts", "UI Design"],
  ),
];
