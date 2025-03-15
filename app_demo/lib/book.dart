class Book{
  // C1: Phải có giá trị khởi tạo
  // String name = 'Kinh di';
  // int year = 2024;

  // C2 : Ko cần GT khởi tạo ban đầu thì dùng 'late' ở phía trước
  late String name; 
  late int year;

  // Function trong class phải trùng với tên của class

  // CÁCH 1 : Dạng phổ biến của hàm khởi tạo function
  // CÁCH 1.1 : 
  // Book(String name, int year){
  //   this.name = name;
  //   this.year = year; }

  // CÁCH 1.2
  // Book(this.name, this.year);

  // CÁCH 1.3 : Rõ ràng hơn , yêu cầu ng dùng phải nhập vào
  Book({
    required this.name, 
    required this.year
  });

  // Khai báo các phương thức
  void showHello(){
    print('Xin chào $name');
  }

}

