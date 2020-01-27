class Destinations {
  final int id;
  final String name;
  final String country;
  final String urlimage;
  final String title;
  final String description;

  Destinations(
      {this.id,
      this.name,
      this.country,
      this.urlimage,
      this.title,
      this.description});
}

List<Destinations> dummyVerticalImage = [
  Destinations(
    id: 1,
    name: "Dubai",
    country: "Uni Emirat Arab",
    urlimage: "images/dubaivertical.jpg",
    title:
        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    description:
        "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto",
  ),
  Destinations(
    id: 2,
    name: "Magelang",
    country: "Indonesia",
    urlimage: "images/indonesiavertical.jpg",
    title: "ea molestias quasi exercitationem repellat qui ipsa sit aut",
    description:
        "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla",
  ),
  Destinations(
    id: 3,
    name: "London",
    country: "England",
    urlimage: "images/londonvertical.jpg",
    title: "ea molestias quasi exercitationem repellat qui ipsa sit au",
    description:
        "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut",
  ),
  Destinations(
    id: 4,
    name: "Long Angeles",
    country: "USA",
    urlimage: "images/losangelesvertical.png",
    title: "eum et est occaecati",
    description:
        "ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit",
  ),
  Destinations(
    id: 5,
    name: "Kuala Lumpur",
    country: "Malaysia",
    urlimage: "images/malaysiavertical.jpg",
    title: "nesciunt quas odio",
    description:
        "repudiandae veniam quaerat sunt sed\nalias aut fugiat sit autem sed est\nvoluptatem omnis possimus esse voluptatibus quis\nest aut tenetur dolor neque",
  ),
];

List<Destinations> dummyPopularDestination = [
  Destinations(
      id: 1,
      name: "London",
      country: "England",
      urlimage: "images/london.jpg",
      description: "eum et est occaecati"),
  Destinations(
      id: 2,
      name: "Manhattan",
      country: "USA",
      urlimage: "images/manhattan.jpg",
      description:
          "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"),
  Destinations(
      id: 3,
      name: "Pontianak",
      country: "Indonesia",
      urlimage: "images/pontianak.png",
      description: "nesciunt quas odio"),
  Destinations(
      id: 4,
      name: "Merlion Park",
      country: "Singapore",
      urlimage: "images/singapore.jpg",
      description: "dolorem eum magni eos aperiam quia"),
  Destinations(
      id: 5,
      name: "Tokyo",
      country: "Japan",
      urlimage: "images/tokyo.jpg",
      description: "magnam facilis autem"),
];
