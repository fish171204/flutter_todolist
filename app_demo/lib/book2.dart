class Book{
  // có thể dùng final để set giá trị lần đầu tiên ko cho set lại lần thứ 2,3...n
  // _name khác với name , vì _name là private !!!! chỉ dùng được trong book2.dart !!!!, name là public
  late String _name;  
  late int year;
  static int age = 2; // static là cấp độ thuộc class cho phép truy cập bên ngoài VD: Book.age thì truy cập đc chứ Book._name và Book.year thì không

  // C1: Dạng phổ biến
  Book(this._name, this.year);

  // C2 : Rõ ràng hơn bằng cách đặt tên
  Book.bookNew(String name){
    _name = name;
    year = 2022;
  }

  void showHello(){   // Khai báo các phương thức
    print('Xin chào $_name');
  }
  
  
  String get getName => _name; // Hàm getter
  
  // Hàm setter
  set  setName(String name){
    _name = name;
  }

}