import 'dart:io';

void main(List<String> args){
  Ogrenci ogrenci = Ogrenci();
  print("Adinizi giriniz: ");
  ogrenci.ad = stdin.readLineSync()!;

  print("Soyadinizi giriniz: ");
  ogrenci.soyAd = stdin.readLineSync()!;

  print("Notlarinizi giriniz: (Notlarinizi girdikten sonra -1 yazarsaniz ortalamayi hesaplayacak)");
  while(true){
    int? not = int.parse(stdin.readLineSync()!);
    if(not == -1){
      break;
    }
    ogrenci.notEkle(not);
  }
  print("${ogrenci.ad} ${ogrenci.soyAd} adli ogrencinin notlarinin ortalamsi : ${ogrenci.ortalamaHesapla()}");
}

class Ogrenci{
  String ad = "";
  String soyAd = "";
  var notlar = <int>[];

  void notEkle(int not){
    this.notlar.add(not);
  }

  double ortalamaHesapla(){
    double toplam = 0;
    int devir = 0;
    for(int element in this.notlar){
      toplam += element;
      devir++;
    }
    return (toplam / devir);
  }
}