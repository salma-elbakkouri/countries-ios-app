
import UIKit

/// Custom UITableViewCell for displaying country information
class CountryTableViewCell: UITableViewCell {
    let continentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let countryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let countryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
  
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(continentImageView)
        contentView.addSubview(countryImageView)
        contentView.addSubview(countryLabel)
        
        NSLayoutConstraint.activate([
            continentImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            continentImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            continentImageView.widthAnchor.constraint(equalToConstant: 30),
            continentImageView.heightAnchor.constraint(equalToConstant: 30),
            
            countryImageView.leadingAnchor.constraint(equalTo: continentImageView.trailingAnchor, constant: 10),
            countryImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            countryImageView.widthAnchor.constraint(equalToConstant: 30),
            countryImageView.heightAnchor.constraint(equalToConstant: 30),
            
            countryLabel.leadingAnchor.constraint(equalTo: countryImageView.trailingAnchor, constant: 10),
            countryLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            countryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

import UIKit

class CountryDetailsViewController: UIViewController {
    
    var countryName: String = ""
    var countryDescription: String = ""
    var countryImageName: String?
    var flagImageName: String?
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let countryLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let flagImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
  let countryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
      //  label.backgroundColor = UIColor(white: 1, alpha: 0.5)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
        populateData()
    }
    
    func setupUI() {
        view.addSubview(backgroundImageView)
        view.addSubview(countryLabel)
        view.addSubview(flagImageView)
        view.addSubview(countryImageView)
        view.addSubview(descriptionLabel)
        
        
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
             flagImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
             flagImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
             flagImageView.widthAnchor.constraint(equalToConstant: 40),
             flagImageView.heightAnchor.constraint(equalToConstant: 40),
             
             countryLabel.topAnchor.constraint(equalTo: flagImageView.bottomAnchor, constant: 10), // Align below flag image view
             countryLabel.centerXAnchor.constraint(equalTo: flagImageView.centerXAnchor), // Center horizontally
            
            countryImageView.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 20),
            countryImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            countryImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            countryImageView.heightAnchor.constraint(equalToConstant: 200),
            
                
             descriptionLabel.topAnchor.constraint(equalTo: countryImageView.bottomAnchor, constant: 20),
             descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
             descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
 
        ])
        
    }


    
 func populateData() {
     // Set country name
    countryLabel.text = countryName;
    
    descriptionLabel.layer.cornerRadius = 10 // Adjust the value as needed
    descriptionLabel.layer.masksToBounds = true
    
    
    var backgroundImage: UIImage?
     switch countryName {
     case "Algeria":
         // Set description for Algeria
         descriptionLabel.text = "Algeria is a beautiful country known for its vast desert landscapes and rich cultural heritage."
         flagImageName = "algeria"
         countryImageName = "alg"
         // Set background image for Algeria
         backgroundImage = UIImage(named: "alg")
     case "Morocco":
         // Set description for Morocco
         descriptionLabel.text = "Morocco is a diverse country offering stunning coastlines, bustling cities, and majestic mountains."
         // Set background image for Morocco
         flagImageName = "morocco"
         countryImageName = "mar"
         backgroundImage = UIImage(named: "mar")
     case "Angola":
         // Set description for Angola
         descriptionLabel.text = "Angola is a country in southern Africa known for its rich cultural heritage and diverse wildlife."
         countryImageName = "ang"         // Set background image for Angola
         flagImageName = "angola"
         backgroundImage = UIImage(named: "ang")
     case "Cabo Verde":
         // Set description for Cabo Verde
         descriptionLabel.text = "Cabo Verde is an island nation in the Atlantic Ocean known for its stunning beaches and vibrant culture."
         // Set background image for Cabo Verde
         countryImageName = "cap"
         flagImageName = "cabo_verde"
         backgroundImage = UIImage(named: "cap")
     case "Comoros":
         // Set description for Comoros
         descriptionLabel.text = "Comoros is a volcanic archipelago known for its lush greenery, pristine beaches, and unique biodiversity."
         countryImageName = "com"         // Set background image for Comoros
         backgroundImage = UIImage(named: "com")
        flagImageName = "comoros"
     case "Egypt":
         // Set description for Egypt
         descriptionLabel.text = "Egypt is a country in northeastern Africa known for its ancient civilization, including the iconic pyramids and sphinx."
         // Set background image for Egypt
         backgroundImage = UIImage(named: "egy")
         countryImageName = "egy"
         // Set flag image for Egypt
         flagImageName = "egypt"
     case "Ethiopia":
         // Set description for Ethiopia
         descriptionLabel.text = "Ethiopia is a landlocked country in the Horn of Africa known for its rich history, diverse culture, and stunning landscapes."
         // Set background image for Ethiopia
         backgroundImage = UIImage(named: "eth")
         countryImageName = "eth"
         flagImageName = "ethiopia"
     case "Gabon":
         // Set description for Gabon
         descriptionLabel.text = "Gabon is a country in Central Africa known for its dense rainforests, diverse wildlife, and beautiful beaches."
         // Set background image for Gabon
         backgroundImage = UIImage(named: "gab")
         countryImageName = "eth"          // Set flag image for Gabon
         flagImageName = "gabon"
     case "Ivory Coast":
         // Set description for Ivory Coast
         descriptionLabel.text = "Ivory Coast is a West African country known for its vibrant culture, diverse landscapes, and bustling markets."
         // Set background image for Ivory Coast
         backgroundImage = UIImage(named: "cot")
         countryImageName = "cot"
         // Set flag image for Ivory Coast
         flagImageName = "ivory_coast"
     case "Mauritania":
         // Set description for Mauritania
         descriptionLabel.text = "Mauritania is a country in Northwest Africa known for its vast deserts, ancient cities, and rich history."
         // Set background image for Mauritania
         backgroundImage = UIImage(named: "mau")
         countryImageName = "mau"          // Set flag image for Mauritania
         flagImageName = "mauritania"
     case "Senegal":
         // Set description for Senegal
         descriptionLabel.text = "Senegal is a country in West Africa known for its vibrant music, rich culture, and beautiful coastline."
         // Set background image for Senegal
         backgroundImage = UIImage(named: "sen")
         countryImageName = "sen"
         // Set flag image for Senegal
         flagImageName = "senegal"
     case "Tunisia":
         // Set description for Tunisia
         descriptionLabel.text = "Tunisia is a North African country known for its ancient ruins, beautiful beaches, and rich history."
         // Set background image for Tunisia
         backgroundImage = UIImage(named: "tun")
         countryImageName = "tun"
         // Set flag image for Tunisia
         flagImageName = "tunisia"
     case "Albania":
         // Set description for Albania
         descriptionLabel.text = "Albania is a country in Southeast Europe known for its stunning coastline along the Adriatic and Ionian seas, as well as its vibrant cultural heritage."
         // Set background image for Albania
         backgroundImage = UIImage(named: "alb")
         countryImageName = "alb"
         // Set flag image for Albania
         flagImageName = "albania"
     case "Austria":
         // Set description for Austria
         descriptionLabel.text = "Austria is a Central European country famous for its picturesque Alpine landscapes, historic cities like Vienna and Salzburg, and classical music heritage."
         // Set background image for Austria
         backgroundImage = UIImage(named: "aus")
         countryImageName = "aus"          // Set flag image for Austria
         flagImageName = "austria"
     case "Bulgaria":
         // Set description for Bulgaria
         descriptionLabel.text = "Bulgaria is a country in Southeast Europe known for its diverse landscapes, including mountains, rivers, and beaches, as well as its rich history and cultural traditions."
         // Set background image for Bulgaria
         backgroundImage = UIImage(named: "bul")
         countryImageName = "bul"          // Set flag image for Bulgaria
         flagImageName = "bulgaria"
     case "Croatia":
         // Set description for Croatia
         descriptionLabel.text = "Croatia is a European country known for its stunning Adriatic coastline, medieval cities, and beautiful national parks, making it a popular tourist destination."
         // Set background image for Croatia
         backgroundImage = UIImage(named: "cro")
         countryImageName = "cro"          // Set flag image for Croatia
         flagImageName = "croatia"
     case "Denmark":
         // Set description for Denmark
         descriptionLabel.text = "Denmark is a Scandinavian country known for its fairy-tale-like castles, colorful harbor towns, and progressive society, as well as being the birthplace of the Lego."
         // Set background image for Denmark
         backgroundImage = UIImage(named: "den")
         countryImageName = "den"          // Set flag image for Denmark
         flagImageName = "denmark"
     case "Finland":
         // Set description for Finland
         descriptionLabel.text = "Finland, the land of a thousand lakes, is a Nordic country known for its stunning natural beauty, saunas, and Northern Lights, as well as its strong design and technology sectors."
         // Set background image for Finland
         backgroundImage = UIImage(named: "fin")
         countryImageName = "fin"          // Set flag image for Finland
         flagImageName = "finland"
     case "Germany":
         // Set description for Germany
         descriptionLabel.text = "Germany is a Central European country known for its rich history, vibrant cities like Berlin and Munich, cultural landmarks, and contributions to science and the arts."
         // Set background image for Germany
         backgroundImage = UIImage(named: "ger")
         countryImageName = "ger"          // Set flag image for Germany
         flagImageName = "germany"
     case "Italy":
         // Set description for Italy
         descriptionLabel.text = "Italy is a Southern European country known for its ancient ruins, Renaissance art and architecture, delicious cuisine, and scenic landscapes, including the iconic canals of Venice and the rolling hills of Tuscany."
         // Set background image for Italy
         backgroundImage = UIImage(named: "ita")
         countryImageName = "ita"          // Set flag image for Italy
         flagImageName = "italy"
     case "Netherlands":
         // Set description for Netherlands
         descriptionLabel.text = "The Netherlands, often referred to as Holland, is a European country known for its flat landscape, extensive canal systems, tulip fields, windmills, and vibrant cities like Amsterdam."
         // Set background image for Netherlands
         backgroundImage = UIImage(named: "net")
         countryImageName = "net"          // Set flag image for Netherlands
         flagImageName = "netherlands"
     case "Spain":
         // Set description for Spain
         descriptionLabel.text = "Spain is a European country known for its diverse culture, stunning beaches, historic landmarks, vibrant festivals, and delicious cuisine, including paella and tapas."
         // Set background image for Spain
         backgroundImage = UIImage(named: "spa")
         countryImageName = "spa"          // Set flag image for Spain
         flagImageName = "spain"
     case "Sweden":
         // Set description for Sweden
         descriptionLabel.text = "Sweden is a Scandinavian country known for its beautiful landscapes, including forests, lakes, and islands, as well as its commitment to sustainability, innovation, and social welfare."
         // Set background image for Sweden
         backgroundImage = UIImage(named: "swe")
         countryImageName = "swe"          // Set flag image for Sweden
         flagImageName = "sweden"
     case "Switzerland":
         // Set description for Switzerland
         descriptionLabel.text = "Switzerland, a land of mountains and lakes, is a Central European country known for its breathtaking Alpine scenery, chocolate, cheese, precision watches, and efficient public transportation."
         // Set background image for Switzerland
         backgroundImage = UIImage(named: "swi")
         countryImageName = "swi"            // Set flag image for Switzerland
         flagImageName = "switzerland"
     case "Armenia":
         // Set description for Armenia
         descriptionLabel.text = "Armenia, located in the South Caucasus region of Eurasia, is known for its rich history, ancient Christian heritage, and stunning landscapes including the scenic Lake Sevan and Mount Ararat."
         // Set background image for Armenia
         backgroundImage = UIImage(named: "arm")
         countryImageName = "arm"            // Set flag image for Armenia
         flagImageName = "armenia"
     case "China":
         // Set description for China
         descriptionLabel.text = "China, the world's most populous country, is a vast land of diverse cultures, ancient landmarks such as the Great Wall and the Terracotta Army, bustling modern cities, and delicious cuisine."
         // Set background image for China
         backgroundImage = UIImage(named: "chi")
         countryImageName = "chi"            // Set flag image for China
         flagImageName = "china"
     case "India":
         // Set description for India
         descriptionLabel.text = "India, known for its vibrant culture, diverse landscapes, and rich history, is home to iconic landmarks such as the Taj Mahal, bustling cities like Mumbai and Delhi, and a myriad of languages and traditions."
         // Set background image for India
         backgroundImage = UIImage(named: "ind")
         countryImageName = "ind"            // Set flag image for India
         flagImageName = "india"
     case "Iran":
         // Set description for Iran
         descriptionLabel.text = "Iran, situated in the Middle East, boasts a rich cultural heritage, stunning architecture such as the ancient city of Persepolis, and a diverse landscape that includes deserts, mountains, and lush forests."
         // Set background image for Iran
         backgroundImage = UIImage(named: "ira")
         countryImageName = "ira"            // Set flag image for Iran
         flagImageName = "iran"
     case "Iraq":
         // Set description for Iraq
         descriptionLabel.text = "Iraq, with its ancient Mesopotamian history, is a land of fertile plains, historic cities like Baghdad and Babylon, and significant cultural sites such as the Ziggurat of Ur and the Citadel of Erbil."
         // Set background image for Iraq
         backgroundImage = UIImage(named: "iraq")
         countryImageName = "iraq"            // Set flag image for Iraq
         flagImageName = "iraq"
     case "Japan":
         // Set description for Japan
         descriptionLabel.text = "Japan, an island nation in East Asia, is renowned for its unique blend of traditional culture and modernity, stunning natural scenery, delicious cuisine including sushi and ramen, and cutting-edge technology."
         countryImageName = "jap"            // Set background image for Japan
         backgroundImage = UIImage(named: "jap")
         
         // Set flag image for Japan
         flagImageName = "japan"
     case "Jordan":
         // Set description for Jordan
         descriptionLabel.text = "Jordan, located in the Middle East, is famed for its ancient archaeological sites such as Petra and Jerash, picturesque desert landscapes, and the tranquil waters of the Dead Sea."
         // Set background image for Jordan
         backgroundImage = UIImage(named: "jor")
         countryImageName = "jor"            // Set flag image for Jordan
         flagImageName = "jordan"
     case "Kuwait":
         // Set description for Kuwait
         descriptionLabel.text = "Kuwait, a small but wealthy country in the Arabian Gulf, is known for its modern skyline dominated by sleek towers, rich oil reserves, and a vibrant cultural scene."
         // Set background image for Kuwait
         backgroundImage = UIImage(named: "kuw")
         countryImageName = "kuw"            // Set flag image for Kuwait
         flagImageName = "kuwait"
     case "Palestine":
         // Set description for Palestine
         descriptionLabel.text = "Palestine, a region in the Middle East, is known for its longstanding political conflict, historic landmarks such as the Dome of the Rock, and vibrant cultural heritage."
         // Set background image for Palestine
         backgroundImage = UIImage(named: "pal")
         countryImageName = "pal"            // Set flag image for Palestine
         flagImageName = "palestine"
     case "Qatar":
         // Set description for Qatar
         descriptionLabel.text = "Qatar, a wealthy peninsula nation in the Arabian Gulf, is renowned for its futuristic skyline, luxury shopping, modern architecture, and hosting major international sporting events such as the FIFA World Cup."
         // Set background image for Qatar
         backgroundImage = UIImage(named: "qat")
         // Set flag image for Qatar
         countryImageName = "qat"
         flagImageName = "qatar"
     case "Bahamas":
         // Set description for Bahamas
         descriptionLabel.text = "The Bahamas, an archipelago in the Caribbean, is famous for its stunning white-sand beaches, crystal-clear turquoise waters, vibrant coral reefs, and laid-back island atmosphere."
         // Set background image for Bahamas
         backgroundImage = UIImage(named: "bah")
         countryImageName = "bah"            // Set flag image for Bahamas
         flagImageName = "bahamas"
     case "Belize":
         // Set description for Belize
         descriptionLabel.text = "Belize, located on the eastern coast of Central America, is known for its lush jungles, ancient Mayan ruins such as Caracol and Xunantunich, and the stunning Belize Barrier Reef."
         // Set background image for Belize
         backgroundImage = UIImage(named: "bel")
         countryImageName = "bel"            // Set flag image for Belize
         flagImageName = "belize"
     case "Canada":
         // Set description for Canada
         descriptionLabel.text = "Canada, the second-largest country in the world, is renowned for its breathtaking natural landscapes, multicultural cities like Toronto and Vancouver, and friendly people."
         // Set background image for Canada
         backgroundImage = UIImage(named: "can")
         countryImageName = "can"            // Set flag image for Canada
         flagImageName = "canada"
     case "Costa Rica":
         // Set description for Costa Rica
         descriptionLabel.text = "Costa Rica, located in Central America, is celebrated for its incredible biodiversity, lush rainforests, pristine beaches, and adventure activities such as zip-lining and surfing."
         // Set background image for Costa Rica
         backgroundImage = UIImage(named: "cos")
         countryImageName = "cos"            // Set flag image for Costa Rica
         flagImageName = "costa_rica"
     case "Cuba":
         // Set description for Cuba
         descriptionLabel.text = "Cuba, an island nation in the Caribbean, is famous for its vintage cars, colorful architecture in Havana, lively music and dance scenes, and pristine beaches."
         // Set background image for Cuba
         backgroundImage = UIImage(named: "cub")
         countryImageName = "cub"            // Set flag image for Cuba
         flagImageName = "cuba"
     case "Dominica":
         // Set description for Dominica
         descriptionLabel.text = "Dominica, known as the 'Nature Island' of the Caribbean, is celebrated for its lush rainforests, pristine rivers and waterfalls, and vibrant marine life."
         // Set background image for Dominica
         backgroundImage = UIImage(named: "dom")
         countryImageName = "dom"            // Set flag image for Dominica
         flagImageName = "dominica"
     case "El Salvador":
         // Set description for El Salvador
         descriptionLabel.text = "El Salvador, the smallest and most densely populated country in Central America, is renowned for its Pacific Ocean beaches, volcanic landscapes, and vibrant cultural heritage."
         // Set background image for El Salvador
         backgroundImage = UIImage(named: "els")
         countryImageName = "els"            // Set flag image for El Salvador
         flagImageName = "el_salvador"
     case "Grenada":
         // Set description for Grenada
         descriptionLabel.text = "Grenada, located in the Caribbean, is known for its stunning beaches, lush rainforests, and flavorful spices such as nutmeg, earning it the nickname 'Spice Isle'."
         // Set background image for Grenada
         backgroundImage = UIImage(named: "gre")
         countryImageName = "gre"            // Set flag image for Grenada
         flagImageName = "grenada"
     case "Guatemala":
         // Set description for Guatemala
         descriptionLabel.text = "Guatemala, located in Central America, is famous for its ancient Mayan ruins such as Tikal, colorful indigenous markets, volcanic landscapes, and rich cultural heritage."
         // Set background image for Guatemala
         backgroundImage = UIImage(named: "gua")
         countryImageName = "gua"            // Set flag image for Guatemala
         flagImageName = "guatemala"
     case "Haiti":
         // Set description for Haiti
         descriptionLabel.text = "Haiti, located on the island of Hispaniola in the Caribbean, is known for its vibrant art scene, historic landmarks such as the Citadelle Laferrière, and stunning beaches."
         // Set background image for Haiti
         backgroundImage = UIImage(named: "hai")
         countryImageName = "hai"            // Set flag image for Haiti
         flagImageName = "haiti"
     case "Mexico":
         // Set description for Mexico
         descriptionLabel.text = "Mexico, a country in North America, is famed for its ancient ruins such as Chichen Itza and Teotihuacan, vibrant culture, delicious cuisine, and diverse landscapes ranging from deserts to tropical beaches."
         // Set background image for Mexico
         backgroundImage = UIImage(named: "mex")
         countryImageName = "mex"            // Set flag image for Mexico
         flagImageName = "mexico"
     case "Panama":
         // Set description for Panama
         descriptionLabel.text = "Panama, known for its eponymous canal linking the Atlantic and Pacific oceans, is celebrated for its biodiversity in places like the Darien Gap, vibrant cities such as Panama City, and stunning beaches."
         // Set background image for Panama
         backgroundImage = UIImage(named: "pan")
         countryImageName = "pan"            // Set flag image for Panama
         flagImageName = "panama"
     case "United States":
         // Set description for United States
         descriptionLabel.text = "The United States, a vast country in North America, is known for its diverse landscapes, iconic landmarks such as the Statue of Liberty and the Grand Canyon, vibrant cities, and cultural influence."
         // Set background image for United States
         backgroundImage = UIImage(named: "uni")
         countryImageName = "uni"            // Set flag image for United States
         flagImageName = "united_states"
        
        case "Argentina":
            descriptionLabel.text = "Argentina, located in South America, is famous for its tango dance, beef, and gauchos. It is also home to stunning natural wonders like the Andes Mountains, Iguazu Falls, and Patagonia."
            backgroundImage = UIImage(named: "arg")
            countryImageName = "arg"
            flagImageName = "argentina"
        case "Bolivia":
            descriptionLabel.text = "Bolivia, a landlocked country in South America, boasts diverse landscapes ranging from the Andes Mountains to the Amazon Basin. It is known for its rich indigenous culture and the world's largest salt flat, Salar de Uyuni."
            backgroundImage = UIImage(named: "bol")
            countryImageName = "bol"
            flagImageName = "bolivia"
        case "Brazil":
            descriptionLabel.text = "Brazil, the largest country in South America, is famed for its vibrant carnival celebrations, samba music, and Amazon rainforest. It also features iconic landmarks like Christ the Redeemer statue and Copacabana Beach."
            backgroundImage = UIImage(named: "bra")
            countryImageName = "bra"
            flagImageName = "brazil"
        case "Chile":
            descriptionLabel.text = "Chile, a long, narrow country stretching along South America's western edge, is known for its diverse landscapes, including the Atacama Desert, the Andes Mountains, and the Patagonia region. It's also famous for its wine production."
            backgroundImage = UIImage(named: "chil")
            countryImageName = "chil"
            flagImageName = "chile"
        case "Colombia":
            descriptionLabel.text = "Colombia, located in South America, is renowned for its diverse culture, coffee production, and biodiversity. It features attractions like the historic city of Cartagena, the Amazon rainforest, and the Andean mountains."
            backgroundImage = UIImage(named: "col")
            countryImageName = "col"
            flagImageName = "colombia"
        case "Ecuador":
            descriptionLabel.text = "Ecuador, straddling the equator on South America's west coast, is known for its diverse landscapes, including the Galapagos Islands, the Andes Mountains, and the Amazon rainforest. It's also famous for its indigenous cultures."
            backgroundImage = UIImage(named: "ecu")
            countryImageName = "ecu"
            flagImageName = "ecuador"
        case "Guyana":
            descriptionLabel.text = "Guyana, located on the northern mainland of South America, is known for its lush rainforests, diverse wildlife, and cultural heritage. It's home to Kaieteur Falls, one of the world's largest single-drop waterfalls, and offers opportunities for eco-tourism and exploration of its pristine natural landscapes."
            backgroundImage = UIImage(named: "guy")
            countryImageName = "guy"
            flagImageName = "guyana"
        case "Paraguay":
            descriptionLabel.text = "Paraguay, a landlocked country in South America, is known for its Guarani culture, Jesuit missions, and the Pantanal, one of the world's largest tropical wetland areas. It offers a mix of urban centers and rural landscapes."
            backgroundImage = UIImage(named: "par")
            countryImageName = "par"
            flagImageName = "paraguay"
        case "Peru":
            descriptionLabel.text = "Peru, located in South America, is renowned for its ancient Incan city of Machu Picchu, the Amazon rainforest, and the Nazca Lines. It boasts diverse geography, rich history, and vibrant indigenous cultures."
            backgroundImage = UIImage(named: "per")
            countryImageName = "per"
            flagImageName = "peru"
        case "Suriname":
            descriptionLabel.text = "Suriname, located on the northeastern coast of South America, is known for its dense rainforests, diverse wildlife, and multicultural society. It offers opportunities for eco-tourism and exploration of its natural wonders."
            backgroundImage = UIImage(named: "sur")
            countryImageName = "sur"
            flagImageName = "suriname"
        case "Uruguay":
            descriptionLabel.text = "Uruguay, a small country in South America, is known for its laid-back lifestyle, beautiful beaches, and historic colonial towns. It's also famous for its mate tea culture and vibrant cultural scene."
            backgroundImage = UIImage(named: "uru")
            countryImageName = "uru"
            flagImageName = "uruguay"
        case "Venezuela":
            descriptionLabel.text = "Venezuela, located on the northern coast of South America, is known for its stunning landscapes, including the Andes Mountains, the Amazon rainforest, and Angel Falls, the world's highest waterfall. It has a rich cultural heritage and diverse cuisine."
            backgroundImage = UIImage(named: "ven")
            countryImageName = "ven"
            flagImageName = "venezuela"

            // Adding cases for Australia and Pacific countries...
            case "Australia":
                descriptionLabel.text = "Australia, the largest country in Oceania, is known for its vast Outback, iconic landmarks such as the Sydney Opera House and the Great Barrier Reef, and diverse wildlife including kangaroos and koalas."
                backgroundImage = UIImage(named: "aust")
                countryImageName = "aust"
                flagImageName = "australia"
            case "Fiji":
                descriptionLabel.text = "Fiji, an island country in the South Pacific, is renowned for its stunning beaches, clear waters, and vibrant coral reefs. It offers opportunities for diving, snorkeling, and relaxation in a tropical paradise."
                backgroundImage = UIImage(named: "fij")
                countryImageName = "fij"
                flagImageName = "fiji"
            case "Kiribati":
                descriptionLabel.text = "Kiribati, a Pacific island nation, is known for its low-lying coral atolls, pristine beaches, and rich marine life. It faces challenges due to climate change and rising sea levels."
                backgroundImage = UIImage(named: "kir")
                countryImageName = "kir"
                flagImageName = "kiribati"
            case "Marshall Islands":
                descriptionLabel.text = "The Marshall Islands, located in the Pacific Ocean, is known for its beautiful coral reefs, World War II history, and traditional Marshallese culture. It is also facing threats from climate change."
                backgroundImage = UIImage(named: "mars")
                countryImageName = "mars"
                flagImageName = "marshall_islands"
            case "Micronesia":
                descriptionLabel.text = "Micronesia, a region in the western Pacific Ocean, is famous for its stunning natural beauty, diverse cultures, and World War II relics. It consists of thousands of small islands and atolls."
                backgroundImage = UIImage(named: "mic")
                countryImageName = "mic"
                flagImageName = "micronesia"
            case "Nauru":
                descriptionLabel.text = "Nauru, one of the world's smallest countries, is known for its phosphate mining industry and unique natural landscapes. It faces challenges related to environmental degradation and sustainability."
                backgroundImage = UIImage(named: "nau")
                countryImageName = "nau"
                flagImageName = "nauru"
            case "New Zealand":
                descriptionLabel.text = "New Zealand, a country in the southwestern Pacific Ocean, is famous for its stunning landscapes, Maori culture, and adventure sports. It offers opportunities for hiking, skiing, and exploring pristine nature."
                backgroundImage = UIImage(named: "new")
                countryImageName = "new"
                flagImageName = "new_zealand"
            case "Palau":
                descriptionLabel.text = "Palau, an island country in the western Pacific Ocean, is known for its pristine dive sites, lush forests, and vibrant marine life. It offers opportunities for eco-tourism and adventure in a tropical paradise."
                backgroundImage = UIImage(named: "pala")
                countryImageName = "pala"
                flagImageName = "palau"
            case "Samoa":
                descriptionLabel.text = "Samoa, located in the South Pacific Ocean, is renowned for its lush rainforests, stunning waterfalls, and vibrant Polynesian culture. It offers a mix of natural beauty and cultural experiences."
                backgroundImage = UIImage(named: "sam")
                countryImageName = "sam"
                flagImageName = "samoa"
            case "Solomon Islands":
                descriptionLabel.text = "The Solomon Islands, a sovereign country consisting of a large number of islands in the South Pacific Ocean, is known for its World War II history, diverse cultures, and pristine natural beauty."
                backgroundImage = UIImage(named: "sol")
                countryImageName = "sol"
                flagImageName = "solomon_islands"
            case "Tonga":
                descriptionLabel.text = "Tonga, a Polynesian kingdom in the South Pacific Ocean, is known for its stunning beaches, coral reefs, and ancient Polynesian culture. It offers opportunities for snorkeling, diving, and cultural immersion."
                backgroundImage = UIImage(named: "ton")
                countryImageName = "ton"
                flagImageName = "tonga"
            case "Tuvalu":
                descriptionLabel.text = "Tuvalu, a small island nation in the Pacific Ocean, is known for its low-lying atolls, stunning lagoons, and friendly locals. It faces challenges related to climate change and rising sea levels."
                backgroundImage = UIImage(named: "tuv")
                countryImageName = "tuv"
                flagImageName = "tuvalu"
            case "Vanuatu":
                descriptionLabel.text = "Vanuatu, an island nation in the South Pacific Ocean, is known for its volcanic landscapes, pristine beaches, and vibrant Melanesian culture. It offers opportunities for adventure and relaxation in a tropical paradise."
                backgroundImage = UIImage(named: "van")
                countryImageName = "van"
                flagImageName = "vanuatu"

            case "Antarctica":
            descriptionLabel.text = "Antarctica, the southernmost continent, is characterized by its vast ice shelves, extreme cold, and unique wildlife such as penguins and seals. It is primarily governed by international treaties and is a hub for scientific research."
            backgroundImage = UIImage(named: "ant")
            countryImageName = "ant"   
            flagImageName = "antarctica"
         default:
               // Set a default description and background image if the country is not found
               descriptionLabel.text = "Description for \(countryName) is not available."     }
     // Set flag image
     if let flagImageName = flagImageName {
         flagImageView.image = UIImage(named: flagImageName)
     } else {
         // Set a default flag image if the image name is not available
         flagImageView.image = UIImage(named: "defaultFlagImage")
     }
    
    if let countryImageName = countryImageName {
        countryImageView.image = UIImage(named: countryImageName)
    } else {
        // Set a default country image if the image name is not available
        countryImageView.image = UIImage(named: "defaultCountryImage")
    }

     if let backgroundImage = backgroundImage {
         let backgroundImageView = UIImageView(image: backgroundImage)
         backgroundImageView.contentMode = .scaleAspectFill
         backgroundImageView.frame = UIScreen.main.bounds
         backgroundImageView.clipsToBounds = true
         view.addSubview(backgroundImageView)
         view.sendSubviewToBack(backgroundImageView)
        backgroundImageView.alpha=0.6
     } else {
         // Set a default background color if the image is not available
         view.backgroundColor = .white
     }
 }

           
       }


// Section Model
class Section {
    let countryTitle: String
    let option: [(name: String, imageName: String)]
    var isOpened: Bool = false
    
    init(title: String, option: [(name: String, imageName: String)], isOpened: Bool = false) {
        self.countryTitle = title
        self.option = option
        self.isOpened = isOpened
    }
}

// Main View Controller
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let continentImages: [String: String] = [
        "Africa": "africa",
        "Europe": "europe",
        "Asia": "asia",
        "North America": "northamerica",
        "South America": "South_America",
        "Australia": "australia",
        "Antarctica": "antarctica"
    ]
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CountryTableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 let titleLabel = UILabel()
 titleLabel.text = "Countries Within Continents"
 titleLabel.textAlignment = .center
 titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
 titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textColor = .black
   view.addSubview(titleLabel)
        view.backgroundColor = .white

        sections = [
            Section(title: "Africa", option: [
                ("Algeria", "algeria"),
                ("Angola", "angola"),
                ("Cabo Verde", "cabo_verde"),
                ("Comoros", "comoros"),
                ("Egypt", "egypt"),
                ("Ethiopia", "ethiopia"),
                ("Gabon", "gabon"),
                ("Ivory Coast", "ivory_coast"),
                ("Mauritania", "mauritania"),
                ("Morocco", "morocco"),
                ("Senegal", "senegal"),
                ("Tunisia", "tunisia")
            ]),
            Section(title: "Europe", option: [
                ("Albania", "albania"),
                ("Austria", "austria"),
                ("Bulgaria", "bulgaria"),
                ("Croatia", "croatia"),
                ("Denmark", "denmark"),
                ("Finland", "finland"),
                ("Germany", "germany"),
                ("Italy", "italy"),
                ("Netherlands", "netherlands"),
                ("Spain", "spain"),
                ("Sweden", "sweden"),
                ("Switzerland", "switzerland")
            ]),
            Section(title: "Asia", option: [
                ("Armenia", "armenia"),
                ("China", "china"),
                ("India", "india"),
                ("Iran", "iran"),
                ("Iraq", "iraq"),
                ("Japan", "japan"),
                ("Jordan", "jordan"),
                ("Kuwait", "kuwait"),
                ("Palestine", "palestine"),
                ("Qatar", "qatar")
            ]),

            Section(title: "North America", option: [
                ("Bahamas", "bahamas"),
                ("Belize", "belize"),
                ("Canada", "canada"),
                ("Costa Rica", "costa_rica"),
                ("Cuba", "cuba"),
                ("Dominica", "dominica"),
                ("El Salvador", "el_salvador"),
                ("Grenada", "grenada"),
                ("Guatemala", "guatemala"),
                ("Haiti", "haiti"),
                ("Mexico", "mexico"),
                ("Panama", "panama"),
                ("United States", "united_states")
            ]),

            Section(title: "South America", option: [
                ("Argentina", "argentina"),
                ("Bolivia", "bolivia"),
                ("Brazil", "brazil"),
                ("Chile", "chile"),
                ("Colombia", "colombia"),
                ("Ecuador", "ecuador"),
                ("Guyana", "guyana"),
                ("Paraguay", "paraguay"),
                ("Peru", "peru"),
                ("Suriname", "suriname"),
                ("Uruguay", "uruguay"),
                ("Venezuela", "venezuela")
            ]),
            Section(title: "Australia", option: [
                ("Australia", "australia_"),
                ("Fiji", "fiji"),
                ("Kiribati", "kiribati"),
                ("Marshall Islands", "marshall_islands"),
                ("Micronesia", "micronesia"),
                ("Nauru", "nauru"),
                ("New Zealand", "new_zealand"),
                ("Palau", "palau"),
                ("Samoa", "samoa"),
                ("Solomon Islands", "solomon_islands"),
                ("Tonga", "tonga"),
                ("Tuvalu", "tuvalu"),
                ("Vanuatu", "vanuatu")
            ]),

            Section(title: "Antarctica", option: [("","")])

        
        
        
        
        ]
        
      view.addSubview(tableView)
              tableView.delegate = self
              tableView.dataSource = self
              tableView.frame = view.bounds
              tableView.translatesAutoresizingMaskIntoConstraints = false
              
              NSLayoutConstraint.activate([
                  // Title label constraints
                  titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                  titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                  titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                  
                  // Table view constraints
                  tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
                  tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                  tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                  tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
              ])
          }
          
          func numberOfSections(in tableView: UITableView) -> Int {
              return sections.count
          }
          
          func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              let section = sections[section]
              if section.isOpened {
                  return section.option.count + 1 // Add 1 for the continent title
              } else {
                  return 1 // Only the continent title cell
              }
          }
          
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CountryTableViewCell
            
            let section = sections[indexPath.section]
            if indexPath.row == 0 {
                // Configure the cell for the continent title
                cell.countryLabel.text = section.countryTitle
                if let continentImageName = continentImages[section.countryTitle] {
                    cell.continentImageView.image = UIImage(named: continentImageName)
                } else {
                    // If image for the continent is not found, set a default image or handle it as appropriate
                    cell.continentImageView.image = UIImage(named: "default_continent_image")
                }
                cell.countryImageView.image = nil // Reset country image for continent title cell
                cell.backgroundColor = .white // Set background color to white for continent title cell
            } else {
                // Configure the cell for country
                let country = section.option[indexPath.row - 1]
                cell.countryLabel.text = country.name
                cell.countryLabel.font = UIFont(name: "Verdana", size: 16) // Change the font of the country label
                cell.continentImageView.image = nil // Reset continent image for country cell
                cell.countryImageView.image = UIImage(named: country.imageName)
                cell.backgroundColor = .white // Set background color to white for option cell
            }
            
            return cell
        }



          func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
              let section = sections[indexPath.section]
              if indexPath.row == 0 {
                  // Toggle the isOpened property of the selected section when continent title cell is tapped
                  section.isOpened.toggle()
                  tableView.reloadSections(IndexSet(integer: indexPath.section), with: .automatic)
                  
                  if section.isOpened && section.countryTitle == "Antarctica" {
                      // If the Antarctica section is opened, directly display the description
                      let countryDetailsVC = CountryDetailsViewController()
                      countryDetailsVC.countryName = "Antarctica"
                      countryDetailsVC.countryDescription = "Description for Antarctica" // Set description for Antarctica here

                      // Create UINavigationController if not created already
                      if navigationController == nil {
                          let navController = UINavigationController(rootViewController: countryDetailsVC)
                          present(navController, animated: true, completion: nil)
                      } else {
                          navigationController?.pushViewController(countryDetailsVC, animated: true)
                      }
                  }
              } else {
                  // If a country cell is tapped, push the CountryDetailsViewController
                  let country = section.option[indexPath.row - 1]
                  let countryDetailsVC = CountryDetailsViewController()
                  countryDetailsVC.countryName = country.name
                  countryDetailsVC.countryDescription = "Description for \(country.name)" // Set country description here

                  // Create UINavigationController if not created already
                  if navigationController == nil {
                      let navController = UINavigationController(rootViewController: countryDetailsVC)
                      present(navController, animated: true, completion: nil)
                  } else {
                      navigationController?.pushViewController(countryDetailsVC, animated: true)
                  }
              }
          }


    
    
      }
