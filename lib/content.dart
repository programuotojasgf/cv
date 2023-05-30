import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  build(context) => Accordion(
        maxOpenSections: 1,
        headerBackgroundColorOpened: Colors.amber,
        scaleWhenAnimating: true,
        openAndCloseAnimation: true,
        sectionOpeningHapticFeedback: SectionHapticFeedback.light,
        children: [
          _profile(),
          _techSkills(),
          _softSkills(),
          _employmentHistory(),
          _recommendations(),
        ],
      );

  AccordionSection _recommendations() => AccordionSection(
        leftIcon: const Icon(Icons.add_reaction, color: Colors.white),
        header: Text('Recommendations', style: _headerStyle),
        contentBorderColor: const Color(0xffffffff),
        content: Accordion(
          maxOpenSections: 1,
          headerBackgroundColor: Colors.black38,
          headerBackgroundColorOpened: Colors.black54,
          contentBorderColor: Colors.black54,
          children: [
            _recommendationSection(
                'Domantas Jovaišas',
                'Full Stack Engineer at FitSkin Inc.',
                'https://media.licdn.com/dms/image/C5603AQGGm_cuHfd_Qw/profile-displayphoto-shrink_100_100/0/1582522814880?e=1691020800&v=beta&t=8rOJCe-MYS27Esm8x1XMYoG0Xd_0SulnVd3JTf8BAeA',
                'I highly recommend Gediminas for any future opportunities. As his former boss at Present Connection, I was impressed by his accuracy, willingness to learn, and ability to take on responsibilities. Gediminas consistently delivered precise work, embraced new challenges, and demonstrated a proactive attitude. He is a valuable team player with excellent communication skills. I do not doubt that he will excel in any role he takes on.'),
            _recommendationSection(
                'Julius Degutis',
                'Team Lead / Senior .NET Developer at PVcase',
                'https://media.licdn.com/dms/image/D4E03AQG0I9yfBjNcSA/profile-displayphoto-shrink_100_100/0/1675255338235?e=1691020800&v=beta&t=nxjlYJjSsQjcPHt-x9IUGRQ14gA29yPt59rxQJpaM7Y',
                'I highly recommend Gediminas as an exceptional team lead in software development. He possesses outstanding skills in C# and .NET Core, consistently delivering high-quality results. Gediminas effectively led our team, fostering collaboration and achieving successful project deliveries. His technical expertise, attention to detail, and strong communication skills make him an invaluable asset in any development or leadership role.'),
            _recommendationSection(
                'Vytenis Urba',
                'Senior Software Engineer',
                'https://media.licdn.com/dms/image/C5603AQELxNgnwmJA7Q/profile-displayphoto-shrink_100_100/0/1517589264691?e=1691020800&v=beta&t=p5EZS8z9k5wNpsXZ7FDhxao3wyAT1MiHMr2Oe0I8Pl8',
                'Gediminas has very well structured and complete approach when it comes producing well written and tested code. His C# skills are exceptional and over the years he collected a lot of know-how. Be it simple UnitTest, API or full suite of Functional tests Gediminas will always deliver clean, efficient and maintainable code.\n\n'
                    'What sets Gediminas apart from everyone else - is his ability and willingness to teach others the craft of coding/engineering. Very few engineers are capable and willing to do that. Combined with his organizational skills and preparedness to collaborate with the rest of team, he is invaluable asset in any team he is working'),
            _recommendationSection(
                'Žygimantas Matusevičius',
                'Software Engineer',
                'https://media.licdn.com/dms/image/C5603AQF0b6CU1zcFXQ/profile-displayphoto-shrink_100_100/0/1628583083237?e=1691020800&v=beta&t=r_Tnp-Cxxk8vDE0Z_nLIEEivG-8YQExCLrDNyi8ji20',
                'I am happy to recommend Gediminas for his exceptional skills in C#. He is a highly skilled developer who has a deep understanding of the language and its various frameworks. His ability to write clean, efficient, and maintainable code is truly impressive.\n\n'
                    'Gediminas is a dedicated and hardworking individual who is always willing to go the extra mile to ensure that his work is of the highest quality. He is a great team player and is always willing to collaborate with others to achieve the best possible results.\n\n'
                    'I have had the pleasure of working with Gediminas, and I have always been impressed with his professionalism, attention to detail, and ability to deliver on time. He is a valuable asset to any team, and I would highly recommend him to anyone looking for a skilled C# developer.'),
            _recommendationSection(
                'Justas Tamošaitis',
                'Senior Software Engineer at Komponent',
                'https://media.licdn.com/dms/image/D5603AQGg4JqBh7jI2Q/profile-displayphoto-shrink_100_100/0/1682316771627?e=1691020800&v=beta&t=3LziiqrxT_J7lOBJWNhwktL5jrxs8NFNje-4fO_56x4',
                'I highly recommend Gediminas for his exceptional software engineering skills - design, implementation, and approaches and practices. He is a colleague and software craftsman I would be lucky to work with at any time.\n\n'
                    'The code he writes is clean, easily maintainable, and based on good design practices.\n\n'
                    'On multiple occasions, he created suggestions for architecture and approach improvements and got the direction agreed upon by stakeholders. (This is not a small feat in this organization!)\n\n'
                    'He helped colleagues to learn and improve their skills.\n\n'
                    'At some point, I worked as a manager for Gediminas, and the last time as a peer in the Engineering department.\n\n'),
            _recommendationSection(
                'Darius Orvidas',
                'Web Developer at Present Connection',
                'https://media.licdn.com/dms/image/C4E03AQFqQGY3c16yqA/profile-displayphoto-shrink_100_100/0/1517716733134?e=1691020800&v=beta&t=LTNj_c8rsIXP2w0x_wHxvyxxRynSGDRLYcl5EIXdHUM',
                'I highly recommend Gediminas Fridricas as a results-oriented and quality-driven team player. Gediminas consistently focuses on achieving exceptional outcomes and delivering high-quality results. His dedication, strong work ethic, and goal-oriented mindset drive him to surpass expectations. He actively collaborates with others, fosters a positive work environment, and contributes to the collective success of the team. Gediminas\'s attention to detail, meticulousness, and adherence to best practices ensure that every task and deliverable meets the highest standards. His unwavering commitment to quality and exceptional results make him an invaluable asset to any project or organization.'),
          ],
        ),
      );

  AccordionSection _recommendationSection(String person, String position,
          String imageUrl, String description) =>
      AccordionSection(
        leftIcon:
            CircleAvatar(radius: 48, backgroundImage: NetworkImage(imageUrl)),
        header: Text('$person\n$position', style: _headerStyle),
        content: Text(description, style: _contentStyle),
      );

  AccordionSection _employmentHistory() => AccordionSection(
        leftIcon: const Icon(Icons.desk, color: Colors.white),
        header: Text('Employment history', style: _headerStyle),
        contentBorderColor: const Color(0xffffffff),
        content: Accordion(
          maxOpenSections: 1,
          headerBackgroundColor: Colors.black38,
          headerBackgroundColorOpened: Colors.black54,
          contentBorderColor: Colors.black54,
          children: [
            _employmentSection(
                'Lead Senior Software Engineer, TransUnion, Oct 2021',
                'Leading the team to migrate a Consumer Credit Verification monolith to microservices.',
                '.NET Core · Microsoft SQL Server · C# · .NET Framework'),
            _employmentSection(
                'Senior Software Engineer, Omnisend, May 2021 — Sep 2021',
                'Enhancing the capabilities of automated marketing in a microservices oriented '
                    'architecture to squeeze out better conversion rates.',
                'Golang, MongoDB, CI/CD, Microservices, Kubernetes, Docker, Grafana, Graylog'),
            _employmentSection(
                'Senior Software Engineer, Xplicity, Oct 2019 — Apr 2021',
                'First project - outsourced to TransUnion, Deliver a new gen credit score analysis tool, '
                    'that shows a consumers credit score over time.\n\n'
                    'Second project - Agiboo. Maintained and improved an enterprise level commodities '
                    'trading platform.',
                'C#, .NET Core, .NET Framework, MSSQL, MongoDB, Azure DevOps, Octopus '
                    'Deploy, DockerC#, .NET Core, .NET Framework, MSSQL, MongoDB, Azure DevOps '
                    'Octopus Deploy, Docker'),
            _employmentSection(
                'Lead Senior Software Engineer, Bentley Systems, Dec 2018 — Oct 2019',
                'Led the team to successfully deliver a new gen heavy industry tool for planning road '
                    'construction.',
                'C# · .NET Core · Microsoft SQL Server · Azure'),
            _employmentSection(
                'Senior Software Engineer, Bentley Systems, Jul 2018 — Dec 2018',
                'Maintained and improved a critical enterprise system for managing documents.',
                'C++ · JavaScript'),
            _employmentSection(
                'Lead Senior Software Developer, Present Connection, Jul 2016 — Jun 2018',
                'Led the team to deliver a ERP for ThyssenKrupp Marine Systems.',
                '.NET Framework · Microsoft SQL Server · C# · C++ · Python'),
            _employmentSection(
                'Senior Software Engineer, Present Connection, Oct 2015 — Jul 2016',
                'Added new planning capabilities to an existing ERP for ThyssenKrupp Marine Systems.',
                'C++ · Qt'),
          ],
        ),
      );

  AccordionSection _employmentSection(
          String headerText, String summary, String skills) =>
      AccordionSection(
        leftIcon: const Icon(Icons.work, color: Colors.white),
        header: Text(headerText, style: _headerStyle),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(summary, style: _contentStyle),
            const SizedBox(height: 8.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Skills:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Flexible(fit: FlexFit.loose, child: Text(skills)),
              ],
            ),
          ],
        ),
      );

  AccordionSection _softSkills() => AccordionSection(
        leftIcon: const Icon(Icons.emoji_objects, color: Colors.white),
        header: Text('Soft skills', style: _headerStyle),
        contentBorderColor: const Color(0xffffffff),
        content: Accordion(
          maxOpenSections: 1,
          headerBackgroundColor: Colors.black38,
          headerBackgroundColorOpened: Colors.black54,
          contentBorderColor: Colors.black54,
          children: [
            AccordionSection(
              leftIcon: const Icon(Icons.book, color: Colors.white),
              header: Text('Software development books', style: _headerStyle),
              content: Text(
                'This is one thing I emphasise to all my mentees - reading software development '
                'books is like a legal cheat code. Never stop learning.\n\n'
                'My starter pack is:\n'
                '• The Pragmatic Programmer: From Journeyman to Master - a good, light-ish read to start with\n'
                '• Code Complete - if it would have to be one and only one book, this is it.\n'
                '• Clean Code - more of a fundamentals book.',
                style: _contentStyle,
              ),
            ),
            AccordionSection(
              leftIcon: const Icon(Icons.people, color: Colors.white),
              header: Text('Teamwork', style: _headerStyle),
              content: Text(
                'I trully believe software development is a team effort. I strive to instill a \'We\' mentality.\n'
                'We had more success when we went the democratic way, voting on choices and supporting each other '
                'rather than going solo at problems head on.',
                style: _contentStyle,
              ),
            ),
          ],
        ),
      );

  AccordionSection _techSkills() => AccordionSection(
        leftIcon: const Icon(Icons.stars, color: Colors.white),
        header: Text('Tech Skills', style: _headerStyle),
        content: DataTable(
          showBottomBorder: false,
          headingRowHeight: 0,
          dataTextStyle: const TextStyle(
              color: Colors.black,
              fontFamily: "Montserrat",
              fontSize: 20,
              fontWeight: FontWeight.bold),
          columns: const [
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('C#')),
              DataCell(Text('•••••', style: TextStyle(fontSize: 40))),
            ]),
            DataRow(cells: [
              DataCell(Text('C# .NET')),
              DataCell(Text('•••••', style: TextStyle(fontSize: 40))),
            ]),
            DataRow(cells: [
              DataCell(Text('Microsoft Azure')),
              DataCell(Text('••••', style: TextStyle(fontSize: 40))),
            ]),
            DataRow(cells: [
              DataCell(Text('Automated Testing')),
              DataCell(Text('•••••', style: TextStyle(fontSize: 40))),
            ]),
            DataRow(cells: [
              DataCell(Text('SQL')),
              DataCell(Text('••••', style: TextStyle(fontSize: 40))),
            ]),
          ],
        ),
      );

  AccordionSection _profile() => AccordionSection(
        isOpen: true,
        leftIcon: const Icon(Icons.person, color: Colors.white),
        header: Text('Profile', style: _headerStyle),
        content: Text(
            'Senior Software Engineer with proven experience of leading teams to success.\n'
            'The main goal is always to deliver actual value. Keeping iterations short, delivering often through CI/CD.\n'
            'My core strenghs are in backend development. Microservices, REST APIs, Messaging, C#, .NET, MSSQL, NoSQL, Azure.',
            style: _contentStyle),
      );
} //__
