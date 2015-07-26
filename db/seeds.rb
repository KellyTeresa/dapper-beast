link_list = [
  ["GitHub", "https://github.com/KellyTeresa", false],
  ["Programming Blog", "http://kellyraila.tumblr.com/", false],
  ["Gender Friendly Adventures", "https://genderfriendlyadventures.herokuapp.com/", true],
  ["DollarDrain", "http://dollardrain.herokuapp.com/", true],
  ["ChocoWeb 2.0", "http://chocoweb.herokuapp.com/", true],
  ["LinkedIn", "https://www.linkedin.com/in/kraila", false]
]

link_list.each do |link|
  Link.create_with(
    name: link[0], project: link[2]
  ).find_or_create_by(url: link[1])
end
