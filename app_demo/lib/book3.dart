class Book {
  // Khai báo thuộc itnhs
  String name;
  int year;

  // Khai báo hàm khởi tạo
  Book({
    required this.name,
    required this.year
  });
}

class BookFunny extends Book {
  String type;
  
  BookFunny(String name, int year, {this.type = 'Truyện hề Saclo'}) 
    : super(name: name, year : year);
    


  void ShowBookFunny (){
    print('Tên sách là -> $name') ;
    print('Năm sản xuất là -> $year') ;
    print('Thể loại là -> $type') ;
  }
}