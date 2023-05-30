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
          AccordionSection(
            leftIcon: const Icon(Icons.add_reaction, color: Colors.white),
            header: Text('Recommendations', style: _headerStyle),
            contentBorderColor: const Color(0xffffffff),
            content: Accordion(
              maxOpenSections: 1,
              headerBackgroundColorOpened: Colors.black54,
              children: [
                AccordionSection(
                  isOpen: true,
                  leftIcon:
                      const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black38,
                  headerBackgroundColorOpened: Colors.black54,
                  header: Text('Nested Section #1', style: _headerStyle),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentBorderColor: Colors.black54,
                ),
                AccordionSection(
                  isOpen: true,
                  leftIcon:
                      const Icon(Icons.compare_rounded, color: Colors.white),
                  header: Text('Nested Section #2', style: _headerStyle),
                  headerBackgroundColor: Colors.black38,
                  headerBackgroundColorOpened: Colors.black54,
                  contentBorderColor: Colors.black54,
                  content: Row(
                    children: [
                      const Icon(Icons.compare_rounded,
                          size: 120, color: Colors.orangeAccent),
                      Flexible(
                          flex: 1,
                          child: Text(_loremIpsum, style: _contentStyle)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  AccordionSection _employmentHistory() => AccordionSection(
        isOpen: true,
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
        isOpen: true,
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
        isOpen: false,
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
              isOpen: true,
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
              isOpen: true,
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
        isOpen: false,
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
        isOpen: false,
        leftIcon: const Icon(Icons.person, color: Colors.white),
        header: Text('Profile', style: _headerStyle),
        content: Text(
            'Senior Software Engineer with proven experience of leading teams to success.\n'
            'The main goal is always to deliver actual value. Keeping iterations short, delivering often through CI/CD.\n'
            'My core strenghs are in backend development. Microservices, REST APIs, Messaging, C#, .NET, MSSQL, NoSQL, Azure.',
            style: _contentStyle),
      );
} //__