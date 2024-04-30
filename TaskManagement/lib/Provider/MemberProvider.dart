import 'package:flutter/cupertino.dart';
import 'package:project/views/memberList.dart';

class MembersProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _membersList = [
    {
      'id': 1,
      'memberName': 'John',
      'profilePic': 'assets/images/No1.jpg',
      'isSelected': false
    },
    {
      'id': 2,
      'memberName': 'Alice',
      'profilePic': 'assets/images/No2.jpg',
      'isSelected': false
    },
    {
      'id': 3,
      'memberName': 'Bob',
      'profilePic': 'assets/images/No3.jpg',
      'isSelected': false
    },
    {
      'id': 4,
      'memberName': 'Emma',
      'profilePic': 'assets/images/No1.jpg',
      'isSelected': false
    },
    {
      'id': 5,
      'memberName': 'Michael',
      'profilePic': 'assets/images/No2.jpg',
      'isSelected': false
    },
    {
      'id': 6,
      'memberName': 'Sophia',
      'profilePic': 'assets/images/No3.jpg',
      'isSelected': false
    },
    // Add more members here...
  ];

  // String _memberName = "";
  // List get memberList => _membersList;
  // String _ProfilePic = "";
  // String get profilePic => _ProfilePic;
  List get MembersList => _membersList;
  List _selectedMembers = [];
  List get selectedMembers => _selectedMembers;

  // List get selecte => _selected;
  // List set _selected;
  void toggleSelectionById(int id) {
    final index = _membersList.indexWhere((member) => member['id'] == id);
    if (index != -1) {
      final isSelected = _membersList[index]['isSelected'];
      _membersList[index]['isSelected'] = !isSelected;
      if (isSelected) {
        selectedMembers.removeWhere((member) => member['id'] == id);
      } else {
        selectedMembers.add(MembersList[index]);
      }
    }
    notifyListeners();
  }

  void clearSelectedMembers() {
    _selectedMembers = [];
    notifyListeners(); // Notify listeners that the state has changed
  }

  getSelected(index, String memberName, String profilePic) {
    selectedMembers.add({
      'memberName': memberName,
      'profilePic': profilePic,
    });
  }

  getRemove(index, String memberName, String profilePic) {
    selectedMembers.remove({
      'memberName': memberName,
      'profilePic': profilePic,
    });

    notifyListeners();
  }
}
