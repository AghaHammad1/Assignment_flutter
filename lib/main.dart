import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: PortFolio());
  }
}

class PortFolio extends StatelessWidget {
  const PortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Center(
            child: Column(
              children: [
                Text(
                  'Agha Hammad Khan',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'I AM MOBILE APP DEVELOPER AND DESIGNER',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.blue),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.photo, color: Colors.purple),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.linked_camera, color: Colors.blueAccent),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.telegram, color: Colors.lightBlue),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 40),
          Image.asset('assets/images/4.png'),
         
          const SizedBox(height: 40),
         
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Agha Hammad Khan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Passionate developer adept at crafting elegant and efficient '
                'solutions to complex problems. Dedicated to continuous learning '
                'and staying abreast of emerging technologies.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Skills()));
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Skills:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const SkillProgressBar(skill: "Flutter", progress: 0.9),
            const SkillProgressBar(skill: "Dart", progress: 0.85),
            const SkillProgressBar(skill: "UI/UX Design", progress: 0.8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Education()));
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SkillProgressBar extends StatelessWidget {
  final String skill;
  final double progress;

  const SkillProgressBar({
    super.key,
    required this.skill,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 6,
                  backgroundColor: Colors.grey[300],
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '${(progress * 100).toInt()}%',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildListItem('Profession', 'Software Developer'),
          _buildListItem('Date Of Birth', '25-05-2004'),
          _buildListItem('Education', 'Higher Education'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              
            },
            child: const Text('CHECK RESUME'),
          ),
          const SizedBox(height: 20), 
          const Text(
            'Education',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 10),
          _buildEducationItem('Graduation', 'The University Of Lahore',
              'Bachelor of Science in Information Engineering Technology, BSIET (Continue).'),
          const SizedBox(height: 10),
          _buildEducationItem('Intermediate', 'Shalimar Collage',
              'Fsc. Pre-engineering. (2020-2022)'),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Project(
                                
                                )));
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget _buildListItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }

  Widget _buildEducationItem(String level, String institution, String details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          level,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(institution),
        const SizedBox(height: 5),
        Text(details),
      ],
    );
  }
}

class Project extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Todo App',
      'description': 'A simple todo list app built with Flutter and Firebase.',
    },
    {
      'title': 'Weather App',
      'description':
          'A weather app built with Flutter that fetches data from a REST API.',
    },
    {
      'title': 'Expense Tracker App',
      'description':
          'The app enables users to efficiently manage their expenses on-the-go by providing a user-friendly interface to track their spending habits.',
    },
  ];

  Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects and Experience'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          projects[index]['title']!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(height: 8.0),
                        Text(projects[index]['description']!),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Interests(
                                
                                )));
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
             const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

class Interests extends StatelessWidget {
  final List<Map<String, String>> interests = [
    {
      'title': 'Mobile App Development',
      'description': 'Creating innovative and user-friendly mobile applications.',
    },
    {
      'title': 'Web Development',
      'description': 'Building responsive and scalable web applications.',
    },
    {
      'title': 'Machine Learning',
      'description': 'Exploring algorithms and models to extract insights from data.',
    },
    {
      'title': 'UI/UX Design',
      'description': 'Designing intuitive and visually appealing user interfaces.',
    },
    {
      'title': 'Cloud Computing',
      'description': 'Leveraging cloud platforms for efficient and scalable solutions.',
    },
    {
      'title': 'Open Source Contribution',
      'description': 'Contributing to open source projects and communities.',
    },
  ];

  Interests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio Interest Section'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: interests.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        interests[index]['title']!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      const SizedBox(height: 8.0),
                      Text(interests[index]['description']!),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyWidget(
                                
                                )));
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Container Inside Scrollbar Example'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey), 
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Here 3 experience Minimum inside the Container',
                  style: TextStyle(fontSize: 12.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Front-End Web Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text('Code Alpha'),
                Text('Remote Intern'),
                SizedBox(height: 16.0),
                Text(
                  'Successfully completed internship at Code Alpha Software House, gaining valuable hands-on experience in software development and contributing to real-world projects. Engaged in collaborative teamwork, honed technical skills, and gained insights into the professional software development environment.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
  