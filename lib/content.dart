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
        headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
        sectionOpeningHapticFeedback: SectionHapticFeedback.light,
        children: [
          _profile(),
          _techSkills(),
          AccordionSection(
            isOpen: false,
            leftIcon: const Icon(Icons.emoji_objects, color: Colors.white),
            header: Text('Soft skills', style: _headerStyle),
            content: const Icon(Icons.people, size: 200),
          ),
          AccordionSection(
            leftIcon: const Icon(Icons.desk, color: Colors.white),
            header: Text('Employment history', style: _headerStyle),
            contentBorderColor: const Color(0xffffffff),
            content: Accordion(
              maxOpenSections: 1,
              headerBackgroundColorOpened: Colors.black54,
              headerPadding:
                  const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              children: [
                AccordionSection(
                  isOpen: true,
                  leftIcon:
                      const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black38,
                  headerBackgroundColorOpened: Colors.black54,
                  header: Text('Nested Section #1', style: _headerStyle),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentHorizontalPadding: 20,
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
          AccordionSection(
            leftIcon: const Icon(Icons.add_reaction, color: Colors.white),
            header: Text('Recommendations', style: _headerStyle),
            contentBorderColor: const Color(0xffffffff),
            content: Accordion(
              maxOpenSections: 1,
              headerBackgroundColorOpened: Colors.black54,
              headerPadding:
                  const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              children: [
                AccordionSection(
                  isOpen: true,
                  leftIcon:
                      const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black38,
                  headerBackgroundColorOpened: Colors.black54,
                  header: Text('Nested Section #1', style: _headerStyle),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentHorizontalPadding: 20,
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

  AccordionSection _techSkills() {
    return AccordionSection(
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
            DataCell(Text('••••◦', style: TextStyle(fontSize: 40))),
          ]),
          DataRow(cells: [
            DataCell(Text('Automated Testing')),
            DataCell(Text('•••••', style: TextStyle(fontSize: 40))),
          ]),
          DataRow(cells: [
            DataCell(Text('SQL')),
            DataCell(Text('••••◦', style: TextStyle(fontSize: 40))),
          ]),
        ],
      ),
    );
  }

  AccordionSection _profile() {
    return AccordionSection(
      isOpen: true,
      leftIcon: const Icon(Icons.person, color: Colors.white),
      header: Text('Profile', style: _headerStyle),
      content: Text(
          'Senior Software Engineer with proven experience of leading teams to success.\r\nThe main goal is always to deliver actual value. Keeping iterations short, delivering often through CI/CD.\r\nMy core strenghs are in backend development. Microservices, REST APIs, Messaging, C#, .NET, MSSQL, NoSQL, Azure.',
          style: _contentStyle),
    );
  }
} //__