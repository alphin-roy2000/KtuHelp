 int a = 0; //for 2d array
  int hhhh = 0; /*hhhh&kkkk for condition of both selected */
  int kkkk = 0;
  int gggg = 0;
  String ssss = "SGPA:0.00";
  List<String> d;
  List<int> valueco;
  int car = 0;
  int i = 0;
  double k = 0, kk;
  double output = 0;
  int fina = 0;
  double finall = 0;
  List<int> gradesel = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> grade2sel = [0, 0, 0, 0, 0, 0, 0, 0, 0];
   List<String> s3cs = [
    "Linear Algebra & Complex analysis (MA201)",
    "Discrete Computatioal Structures (CS201)",
    "Switching Theory and Logic Design (CS203)",
    "Data Structues (CS205)",
    "Electronic Devices& Circuits (CS207)",
    "Life Skills (HS210)/ Business Economics (HS200)",
    "Data Structue Lab (CS231)",
    "Electronics Circuits Lab (CS233)"
  ];
  List<String> s4cs = [
    "Probability Distributions, Transforms and Numerical Methods (MA202)",
    "Computer Organization and Architecture (CS202)",
    "Operating Systems (CS204)",
    "Object Oriented Design and Programming (CS206)",
    "Principles of Database Design (CS208)",
    "Lifeskills (HS210)/ Business Economics (HS200)",
    "FOSS Lab (CS232)",
    "Digital Systems Lab (CS234)"
  ];
  List<String> s5cs = [
    "Theory of Computation (CS301)",
    "System Software (CS303)",
    "Microprocessors and Microcontrollers (CS305)",
    "Data Communication (CS307)",
    "Graph Theory and Combinatorics (CS309)",
    "Elective 1(CS36X)  CS361/CS363/CS365/CS367/CS369",
    "Design Project (CS341)",
    "System Software Lab (CS331)",
    "Application Software Development Lab(CS333)"
  ];
  List<String> s6cs = [
    "Design and Analysis of Algorithms (CS302)",
    "Compiler Design (CS304)",
    "Computer Networks (CS306)",
    "Software Engineering and Project Management (CS308)",
    "Principles of Management (HS300)",
    "Elective 2 (CS36X)CS362/CS364/CS366/CS368/CS72 ",
    "Microprocessor Lab (CS332)",
    "Network Programming Lab (CS334)",
    "Comprehensive Exam (CS352)"
  ];
  List<String> s7cs = [
    "Computer Graphics (CS401)",
    "Programming Paradigms (CS403)",
    "Computer System Architecture (CS405)",
    "Distributed Computing (CS407)",
    "Cryptography and Network Security (CS409)",
    "Elective 3(CS46X) CS461/CS463/CS465/CS467/CS469",
    "Seminar & Project Preliminary (CS451)",
    "Compiler Design Lab (CS431)"
  ];
  List<String> s8cs = [
    "Data Mining and Ware Housing (CS402)",
    "Embedded Systems (CS404)",
    "Elective 4(CS46X) CS462/CS464/CS466/CS468/CS472",
    "Elective 5 (Non Departmental) ",
    "Project (CS492)"
  ];

  List<String> s3me = [
    "Linear Algebra & Complex Analysis (MA201)",
    "Mechanics of Solids (ME201)",
    "Mechanics of Fluids (ME203)",
    "Thermodynamics (ME205)",
    "Metallurgy and Materials Engineering (ME210)",
    "Life Skills (HS210)/ Business Economics (HS200)",
    "Computer Aided Machine Drawing Lab (ME231)",
    "Material Testing Lab (CE230)"
  ];

  List<String> s4me = [
    "Probability Distributions, Transforms and Numerical Methods (MA202)",
    "Advanced Mechanics of Solids (ME202)",
    "Thermal Engineering (ME204)",
    "Fluid Machinery (ME206)",
    "Manufacturing Technology (ME220)",
    "Life Skills (HS210)/ Business Economics (HS200)",
    "Thermal Engineering Lab (ME232)",
    "Fluid Mechanics & Machines Lab (ME230)"
  ];

  List<String> s5me = [
    "Mechanics of Machinery (ME301)",
    "Machine Tools & Digital Manufacturing (ME303)",
    "Computer Programming & Numerical Methods (ME305)",
    "Electrical Drives & Control for Automation (EE311)",
    "Principles of Management (HS300)",
    "Elective 1(ME36X) ME361/ME363/ME365/ME367/ME369/ME371/ME373",
    "Design Project (ME341)",
    "Electrical and Electronics Lab (EE335)",
    "Manufacturing Technology Lab I(ME 331)"
  ];

  List<String> s6me = [
    "Heat & Mass Transfer (ME302)",
    "Dynamics of Machinery (ME304)",
    "Advanced Manufacturing Technology (ME306)",
    "Computer Aided Design and Analysis (ME308)",
    "Metrology and Instrumentation (ME312)",
    "Elective 2(ME36X) ME362/ME364/ME366/ME368/ME372/ME374/ME376",
    "Computer Aided Design & Analysis Lab (ME332)",
    "Manufacturing Technology Lab II (ME334)",
    "Comprehensive Exam (ME352)"
  ];

  List<String> s7me = [
    "Design of Machine Elements I (ME401)",
    "Advanced Energy Engineering (ME403)",
    "Refrigeration and Air Conditioning (ME405)",
    "Mechatronics (ME407)",
    "Compressible Fluid Flow (ME409)",
    "Elective 3(ME46X)",
    "Seminar & Project Preliminary (ME451)",
    "Mechanical Engineering Lab (ME431)"
  ];

  List<String> s8me = [
    "Design of Machine Elements II (ME402)",
    "Industrial Engineering (ME404)",
    "Elective 4 (ME46X) ME462/ME464/ME466/ME468/ME472/ME474/ME476",
    "Elective 5 (Non Departmental) ",
    "Project (ME492)"
  ];

  List<String> s3ce = [
    "Linear Algebra & Complex Analysis (MA201)",
    "Mechanics of Solids (CE201)",
    "Fluid Mechanics I (CE203)",
    "Engineering Geology (CE205)",
    "Surveying (CE207)",
   "Lifeskills (HS210)/ Business Economics (HS200)",
    "Civil Engineering Drafting Lab (CE231)",
    "Surveying Lab (CE233)"
  ];

  List<String> s4ce = [
    "Probability Distributions, Transforms and Numerical Methods (MA202)",
    "Structural Analysis I (CE202)",
    "Construction Technology (CE204)",
    "Fluid Mechanics II (CE206)",
    "Geotechnical Engineering I (CE208)",
    "Lifeskills (HS210)/ Business Economics (HS200)",
    "Materials Testing Lab I (CE232)",
    "Fluid Mechanics Lab (CE234)"
  ];

  List<String> s5ce = [
    "Design of Concrete Structures I (CE301)",
    "Structural Analysis II (CE303)",
    "Geotechnical Engineering II (CE305)",
    "Geomatics (CE307)",
    "Water Resources Engineering (CE309)",
    "Elective 1(CE36X) CE361/CE363/CE365/CE367/CE369/CE371/CE373 ",
    "Design Project (CE341)",
    "Materials Testing Lab II (CE331)",
    "Geotechnical Engineering Lab (CE333 )"
  ];

  List<String> s6ce = [
    "Design of Hydraulic Structures (CE302)",
    "Design of Concrete Structures II (CE304)",
    "Computer Programming and Computational Techniques (CE306)",
    "Transportation Engineering I (CE308)",
    "Principles of Management (HS300)",
    "Elective 2 (CE36X) CE362/CE364/CE366/CE368/CE372/CE374",
    "Transportation Engineering Lab (CE332)",
    "Computer Aided Civil Engineering Lab (CE334)",
    "Comprehensive Exam (CE352)"
  ];

  List<String> s7ce = [
    "Design of Steel Structures (CE401)",
    "Structural Analysis III (CE403)",
    "Environmental Engineering I (CE405)",
    "Transportation Engineering II (CE407)",
    "Quantity Surveying and Valuation (CE409)",
    "Elective 3(CE46X) CE461/CE463/CE465/CE467/CE469/CE471/CE473",
    "Seminar & Project Preliminary (CE451)",
    "Environmental Engineering Lab (CE431)"
  ];

  List<String> s8ce = [
    "Environmental Engineering II (CE402)",
    "Civil Engineering Project Management (CE404)",
    "Elective 4 (CE46X) CE462/CE464/CE466/CE468/CE472/CE474",
    "Elective 5 (Non Departmental) ",
    "Project (CE492)"
  ];

  List<String> s3ec = [
    "Linear Algebra & Complex Analysis (MA201)",
    "Network Theory (EC201)",
    "Solid State Devices (EC203)",
    "Electronic Circuits (EC205)",
    "Logic Circuit Design (EC207)",
    "Lifeskills (HS210)/ Business Economics (HS200)",
    "Electronic Devices & Circuits Lab (EC231)",
    "Electronic Design Automation Lab (EC223)"
  ];

  List<String> s4ec = [
    "Probability Distributions, Transforms and Numerical Methods (MA202)",
    "Signals & Systems (EC202)",
    "Analog Integrated Circuits (EC204)",
    "Computer Organization (EC206)",
    "Analog Communication Engineering (EC208)",
    "Lifeskills (HS210)/ Business Economics (HS200)",
    "Analog Integrated Circuits Lab (EC232)",
    "Logic Circuit Design Lab (EC230)"
  ];

  List<String> s5ec = [
    "Digital Signal Processing (EC301)",
    "Applied Electromagnetic Theory (EC303)",
    "Microprocessors & Microcontrollers (EC305)",
    "Power Electronics & Instrumentation (EC307)",
    "Principles of Management (HS300)",
    "Elective 1(EC36X) EC460/EC461/EC463/EC465",
    "Design Project (EC341)",
    "Digital Signal Processing Lab (EC333)",
    "Power Electronics & Instrumentation Lab (EC335 )"
  ];

  List<String> s6ec = [
    "Digital Communication (EC302)",
    "VLSI (EC304)",
    "Antenna & Wave Propagation (EC306)",
    "Embedded Systems (EC308)",
    "Object Oriented Programming (EC312)",
    "Elective 2 (EC36X) EC362/EC364/EC366/EC368/EC370",
    "Communication Engg Lab (Analog & Digital) (EC332)",
    "Microcontroller Lab (EC334)",
    "Comprehensive Exam (EC352)"
  ];

  List<String> s7ec = [
    "Information Theory & Coding (EC401)",
    "Microwave & Radar Engineering (EC403)",
    "Optical Communication (EC405)",
    "Computer Communication (EC407)",
    "Control Systems (EC409)",
    "Elective 3(EC46X) EC461/EC463/EC465/EC467/EC469",
    "Seminar & Project Preliminary (EC451)",
    "Communication Systems Lab (Optical & Microwave) (EC431)"
  ];

  List<String> s8ec = [
    "Nano electronics (EC402)",
    "Advanced Communication Systems (EC404)",
    "Elective 4 (EC46X) EC462/EC464/EC466/EC468/EC472",
    "Elective 5 (Non Departmental) ",
    "Project (EC492)"
  ];

  List<String> s3ee = [
    "Linear Algebra & Complex Analysis (MA201)",
    "Circuits and Networks (EE201)",
    "Analog Electronic Circuits (EE203)",
    "DC Machines and Transformers (EE205)",
    "Computer Programming (EE207)",
    "Lifeskills (HS210)/ Business Economics (HS200)",
    "Electronic Circuits Lab (EE231)",
    "Programming Lab (EE233)"
  ];

  List<String> s4ee = [
    "Probability Distributions, Transforms and Numerical Methods (MA202)",
    "Synchronous and Induction Machines (EE202)",
    "Digital Electronics and Logic Design(EE204)",
    "Material Science (EE206)",
    "Measurements and Instrumentation(EE208)",
    "Lifeskills (HS210)/ Business Economics (HS200)",
    "Electrical Machines Lab I (EE232)",
    "Circuits and Measurements Lab (EE234)"
  ];

  List<String> s5ee = [
    "Power Generation, Transmission and Protection (EE301)",
    "Linear Control Systems (EE303)",
    "Power Electronics (EE305)",
    "Signals and Systems (EE307)",
    "Microprocessor and Embedded Systems (EE309)",
    "Elective 1(EE36X) EE361/EE363/EE365/EE367/EE369",
    "Design Project (EE341)",
    "Digital Circuits and Embedded Systems Lab (EE331)",
    "Electrical Machines Lab II (EE333)"
  ];

  List<String> s6ee = [
    "Electromagnetics (EE302)",
    "Advanced Control Theory (EE304)",
    "Power System Analysis (EE306)",
    "Electric Drives (EE308)",
    "Principles of Management (HS300)",
    "Elective 2 (EE36X) EE362/EE364/EE366/EE368/EE372",
    "Systems and Control Lab (EE332)",
    "Power Electronics & Drives Lab (EE334)",
    "Comprehensive Exam (EE352)"
  ];

  List<String> s7ee = [
    "Electronic Communication (EE401)",
    "Distributed Generation and Smart Grids (EE403)",
    "Electrical System Design (EE405)",
    "Digital Signal Processing (EE407)",
    "Electrical Machine Design (EE409)",
    "Elective 3(EE46X) EE461/EE463/EE465/EE467/EE469/EE471",
    "Seminar & Project Preliminary (EE451)",
    "Power System Lab (EE431)"
  ];

  List<String> s8ee = [
    "Special Electric Machines (EE402)",
    "Industrial Instrumentation & Automation (EE404)",
    "Elective 4 (EE46X) EE462/EE464/EE466/EE468/EE472/EE474",
    "Elective 5 (Non Departmental) ",
    "Project (EE492)"
  ];

  List<String> s3it = [
    "Linear Algebra & Complex Analysis (MA201)",
    "Discrete Computational Structures (CS201)",
    "Digital System Design (IT201)",
    "Data Structures (CS205)",
    "Data Communication (IT203)",
    "Lifeskills (HS210)/ Business Economics (HS200)",
    "Data Structures Lab (CS231)",
    "Digital Circuits Lab (IT231)"
  ];

  List<String> s4it = [
    "Probability Distributions, Transforms and Numerical Methods (MA202)",
    "Computer Organization and Architecture (CS202)",
    "Algorithm Analysis & Design (IT202)",
    "Object Oriented Techniques (IT204)",
    "Principles of Data Base Design (CS208)",
    "Lifeskills (HS210)/ Business Economics (HS200)",
    "Object Oriented Programming Lab (IT232)",
    "Algorithm Design Lab (IT234)"
  ];

  List<String> s5it = [
    "Software Architecture & Design Patterns (IT301)",
    "Theory of Computation (IT303)",
    "Microprocessors & Microcontrollers (CS305)",
    "Operating Systems (IT305)",
    "Computer Networks (IT307)",
    "Elective 1(IT36X) IT361/IT363/IT365/IT367/MA361",
    "Design Project (IT341)",
    "Microcontroller Lab (IT331)",
    "Database Lab (IT333)"
  ];

  List<String> s6it = [
    "Internet Technology (IT302)",
    "Compiler Design (CS304)",
    "Data Warehousing & Mining (IT304)",
    "Distributed Systems (IT306)",
    "Principles of Management (HS300)",
    "Elective 2 (IT36X) IT362/IT364/IT366/IT368/MA362",
    "Internet Technology Lab (IT332)",
    "Computer Networks Lab (IT334)",
    "Comprehensive Exam (IT352)"
  ];

  List<String> s7it = [
    "Embedded Systems (IT401)",
    "Mobile Computing (IT403)",
    "Internet Working with TCP/IP (IT405)",
    "Knowledge Engineering (IT407)",
    "Web Application Development (IT409)",
    "Elective 3(IT46X) IT461/IT463/IT465/CS467",
    "Seminar & Project Preliminary (IT451)",
    "Web Application Lab (IT431)"
  ];

  List<String> s8it = [
    "Cryptography & Cyber Security (IT402)",
    "Data Analytics (IT404)",
    "Elective 4 (IT46X) IT462/IT464/IT466/IT468/CS468",
    "Elective 5 (Non Departmental) ",
    "Project (IT492)"
  ];
