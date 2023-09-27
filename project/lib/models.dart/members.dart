class Members{
  bool isSelected;
  final String memberName;
  final String ProfilePic;
  final bool isDefault;

  Members({required this.isSelected, required this.memberName, required this.ProfilePic, required this.isDefault});

  //List of Cities data
  static List<Members> memberList = [
    Members(
        isSelected: false,
        memberName: 'john',
        ProfilePic: 'assets/images/No1.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Amber',
        ProfilePic: 'assets/images/No2.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Harry',
        ProfilePic: 'assets/images/No3.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Isac',
        ProfilePic: 'assets/images/No1.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Rose',
        ProfilePic: 'assets/images/No2.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Robert',
        ProfilePic: 'assets/images/No3.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Nairobi',
        ProfilePic: 'assets/images/No1.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Amsterdam',
        ProfilePic: 'assets/images/No2.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Barcelona',
        ProfilePic: 'assets/images/No3.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Miami',
        ProfilePic: 'assets/images/No1.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Vienna',
        ProfilePic: 'assets/images/No2.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Berlin',
        ProfilePic: 'assets/images/No3.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Toronto',
        ProfilePic: 'assets/images/No1.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Brussels',
        ProfilePic:'assets/images/No2.jpg',
        isDefault: false),
    Members(
        isSelected: false,
        memberName: 'Mosco',
        ProfilePic: 'assets/images/No3.jpg',
        isDefault: false),
  ];

  //Get the selected cities
  static List<Members> getSelectedMembers(){
    List<Members> selectedMembers = Members.memberList;
    return selectedMembers
        .where((Members) => Members.isSelected == true)
        .toList();
  }
}
