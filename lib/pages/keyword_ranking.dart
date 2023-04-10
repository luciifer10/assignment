import 'package:dotphi_seo/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class KeywordRanking extends StatefulWidget {
  final String username;
  final String email;
  const KeywordRanking({required this.username, required this.email, Key? key})
      : super(key: key);

  @override
  State<KeywordRanking> createState() => _KeywordRankingState();
}

class _KeywordRankingState extends State<KeywordRanking> {
  // String _selectedMonth = 'January';
  // int _selectedYear = DateTime.now().year;
  // String _selectedWeek = 'Week 1';
  DateTime? _startDate;
  DateTime? _endDate;

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _startDate ?? DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 365 * 10)),
        lastDate:
            _endDate ?? DateTime.now().add(const Duration(days: 365 * 10)),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: Colors.blue,
              buttonTheme:
                  const ButtonThemeData(textTheme: ButtonTextTheme.primary),
              colorScheme: const ColorScheme.light(primary: Colors.blue)
                  .copyWith(secondary: Colors.blue),
            ),
            child: child!,
          );
        });
    if (picked != null &&
        picked != _startDate &&
        _endDate != null &&
        picked.isAfter(_endDate!)) {
      // Selected start date is after end date, so swap the dates
      setState(() {
        _startDate = _endDate;
        _endDate = picked;
      });
    } else {
      setState(() {
        _startDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: _endDate ?? DateTime.now(),
      firstDate: _startDate ?? DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (selectedDate != null &&
        _startDate != null &&
        selectedDate.isBefore(_startDate!)) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('End date cannot be before start date')),
      );
    } else {
      setState(() {
        _endDate = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(
        username: widget.username,
        email: widget.email,
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 20,
        actions: [
          PopupMenuButton(
            onSelected: (result) {},
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                child: Text("Settings"),
              ),
            ],
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Dotphi SEO',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'Dates Between',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    _startDate != null
                        ? "Start Date: ${DateFormat('dd/MM/yyyy').format(_startDate!)}"
                        : "Start Date",
                    style: const TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.calendar_today),
                onPressed: () => _selectStartDate(context),
                color: Colors.black,
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    _endDate != null
                        ? "End Date: ${DateFormat('dd/MM/yyyy').format(_endDate!)}"
                        : "End Date",
                    style: const TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.calendar_today),
                onPressed: () => _selectEndDate(context),
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(18),
                child: Table(
                  border: TableBorder.all(),
                  columnWidths: const {
                    // 0: FractionColumnWidth(0.4),
                    // 1: FractionColumnWidth(0.3),
                    // 2: FractionColumnWidth(0.3),
                  },
                  children: const [
                    TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'SEO KEYWORD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'RANKING',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'PAGE NO',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                          // color: Colors.grey[200],
                          ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('Keyword no 1')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('5')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('1st page')),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('Keyword no 2')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('15')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('2nd page')),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                          // color: Colors.grey[200],
                          ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('Keyword no 3')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('25')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('3rd page')),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('Keyword no 4')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('35')),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('4th page')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
