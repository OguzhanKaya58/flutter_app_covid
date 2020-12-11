import 'package:flutter/material.dart';

Color primaryBlack = Color(0xff202c3b);

class DataSource {
  static String quote =
      "Hayatta hiçbir seyden korkulmamalı, sadece anlasılmalıdır. Simdi daha çok anlama zamanı, böylece daha az korkabilelim.";

  static List questionAnswers = [
    {
      "question": "Koronavirüs nedir?",
      "answer":
          "Koronavirüsler, hayvanlarda veya insanlarda hastalığa neden olabilen geniş bir virüs ailesidir. İnsanlarda, birkaç koronavirüsün, soğuk algınlığından Orta Doğu Solunum Sendromu (MERS) ve Şiddetli Akut Solunum Sendromu (SARS) gibi daha şiddetli hastalıklara kadar değişen solunum yolu enfeksiyonlarına neden olduğu bilinmektedir. En son keşfedilen koronavirüs, koronavirüs hastalığına COVID-19'a neden oluyor."
    },
    {
      "question": "COVID-19 nedir?",
      "answer":
          "COVID-19, en son keşfedilen koronavirüsün neden olduğu bulaşıcı hastalıktır. Bu yeni virüs ve hastalık, Aralık 2019'da Çin'in Wuhan kentinde salgın başlamadan önce bilinmiyordu."
    },
    {
      "question": "COVID-19'un belirtileri nelerdir?",
      "answer":
          "OVID-19'un en yaygın semptomları ateş, yorgunluk ve kuru öksürüktür. Bazı hastalarda ağrı ve sızı, burun tıkanıklığı, burun akıntısı, boğaz ağrısı veya ishal olabilir. Bu semptomlar genellikle hafiftir ve yavaş yavaş başlar. Bazı insanlar enfekte olur ancak herhangi bir belirti geliştirmez ve kendilerini iyi hissetmezler. Çoğu kişi (yaklaşık% 80) özel bir tedaviye ihtiyaç duymadan hastalıktan iyileşir. COVID-19 alan her 6 kişiden yaklaşık 1'i ciddi şekilde hastalanır ve nefes almada güçlük çeker. Yaşlı insanlar ve yüksek tansiyon, kalp sorunları veya diyabet gibi altta yatan tıbbi sorunları olanların ciddi hastalık geliştirme olasılığı daha yüksektir. Ateş, öksürük ve nefes almada güçlük çeken kişiler tıbbi yardım almalıdır."
    },
    {
      "question": "COVID-19 nasıl yayılır?",
      "answer":
          "İnsanlar, virüsün bulunduğu diğer kişilerden COVID-19 kapabilir. Hastalık, COVID-19'lu bir kişi öksürdüğünde veya nefes verdiğinde yayılan burun veya ağızdan küçük damlacıklar yoluyla kişiden kişiye yayılabilir. Bu damlacıklar, kişinin etrafındaki nesnelere ve yüzeylere düşer. Diğer insanlar daha sonra bu nesnelere veya yüzeylere dokunarak, ardından gözlerine, burunlarına veya ağızlarına dokunarak COVID-19'u yakalarlar. İnsanlar, damlacıkları öksüren veya dışarı atan COVID-19'lu bir kişiden damlacıkları soluduklarında da COVID-19'u yakalayabilirler. Bu nedenle hasta bir kişiden 1 metreden (3 fit) uzak durmak önemlidir. \ nWHO, COVID-19'un yayılma yolları hakkında devam eden araştırmaları değerlendiriyor ve güncellenmiş bulguları paylaşmaya devam edecek."
    },
    {
      "question":
          "COVID-19'a neden olan virüs hava yoluyla bulasabilir mi?",
      "answer":
          "Bugüne kadar yapılan araştırmalar, COVID-19'a neden olan virüsün esas olarak hava yoluyla değil, solunum damlacıklarıyla temas yoluyla bulaştığını göstermektedir."
    },
    {
      "question": "CoVID-19 semptomu olmayan bir kisiden yakalanabilir mi?",
      "answer":
          "Hastalığın yayılmasının ana yolu, öksüren biri tarafından dışarı atılan solunum damlacıklarıdır. Hiç semptomu olmayan birinden COVID-19 kapma riski çok düşüktür. Bununla birlikte, COVID-19'lu birçok kişi yalnızca hafif semptomlar yaşar. Bu, özellikle hastalığın erken aşamalarında geçerlidir. Bu nedenle, örneğin hafif bir öksürüğü olan ve kendini hasta hissetmeyen birinden COVID-19 kapmak mümkündür. DSÖ, COVID-19'un bulaşma dönemiyle ilgili devam eden araştırmaları değerlendiriyor ve güncellenmiş bulguları paylaşmaya devam edecek."
    },
    {
      "question":
          "COVID-19'u hastalıgı olan birinin dıskısından yakalayabilir miyim?",
      "answer":
          "Enfekte bir kişinin dışkısından COVID-19 kapma riski düşük görünmektedir. İlk araştırmalar virüsün bazı durumlarda dışkıda bulunabileceğini öne sürse de, bu yolla yayılma salgının ana özelliği değildir. DSÖ, COVID-19'un yayılma yolları konusunda devam eden araştırmaları değerlendiriyor ve yeni bulguları paylaşmaya devam edecek. Ancak bu bir risk olduğu için, banyoyu kullandıktan sonra ve yemekten önce düzenli olarak ellerin temizlenmesinin başka bir nedenidir."
    },
    {
      "question": "COVID-19'u yakalama olasılıgım nedir?",
      "answer":
          "Risk, nerede olduğunuza ve daha spesifik olarak, orada bir COVID-19 salgını olup olmadığına bağlıdır. \nÇoğu yerde çoğu insan için COVID-19'u yakalama riski hala düşüktür. Bununla birlikte, artık dünyanın dört bir yanında (şehirler veya bölgeler) hastalığın yayıldığı yerler var. Bu bölgelerde yaşayan veya ziyaret eden insanlar için COVID-19'a yakalanma riski daha yüksektir. Hükümetler ve sağlık yetkilileri, yeni bir COVID-19 vakası tespit edildiğinde her seferinde güçlü adımlar atıyor. Seyahat, hareket veya büyük toplantılarla ilgili yerel kısıtlamalara uyduğunuzdan emin olun. Hastalık kontrol çabalarıyla işbirliği yapmak, COVID-19'u yakalama veya yayma riskinizi azaltacaktır. \nCOVID-19 salgınları kontrol altına alınabilir ve Çin ve diğer bazı ülkelerde gösterildiği gibi bulaşma durdurulabilir. Ne yazık ki, yeni salgınlar hızla ortaya çıkabilir. Bulunduğunuz veya gitmeyi düşündüğünüz durumun farkında olmak önemlidir. DSÖ, dünya çapında COVID-19 durumu hakkında günlük güncellemeler yayınlar."
    },
    {
      "question": "Kim agır hastalıga yakalanma riski altındadır?",
      "answer":
          "COVID-2019'un insanları, yaşlıları ve önceden var olan tıbbi rahatsızlıkları (yüksek tansiyon, kalp hastalığı, akciğer hastalığı, kanser veya diyabet gibi) nasıl etkilediğini öğrenmeye devam ederken, diğerlerinden daha sık ciddi hastalıklar geliştiriyor gibi görünüyor."
    },
    {
      "question": "Kendimi korumak için maske takmalı mıyım?",
      "answer":
          "Yalnızca COVID-19 semptomları (özellikle öksürük) hastasıysanız veya COVID-19 olabilecek birine bakıyorsanız maske takın. Tek kullanımlık yüz maskesi yalnızca bir kez kullanılabilir. Hasta değilseniz veya hasta olan birine bakmıyorsanız, o zaman maskeyi boşa harcarsınız. Dünya çapında maske sıkıntısı var, bu nedenle DSÖ insanları maskeleri akıllıca kullanmaya teşvik ediyor. \nDSÖ, değerli kaynakların gereksiz yere israf edilmesini ve maskelerin yanlış kullanılmasını önlemek için tıbbi maskelerin akılcı kullanımını tavsiye eder \nKendinizi ve başkalarını COVID-19'a karşı korumanın en etkili yolları, ellerinizi sık sık temizlemek, öksürüğünüzü dirseğinizi bükerek kapatmak veya doku ve öksüren veya hapşıran insanlardan en az 1 metre (3 fit) uzak durun"
    },
    {
      "question":
          "Antibiyotikler COVID-19'u önlemede veya tedavi etmede etkili midir?",
      "answer":
          "Hayır. Antibiyotikler virüslere karşı etkili değildir, sadece bakteriyel enfeksiyonlar üzerinde etkilidirler. COVID-19'a bir virüs neden olur, bu nedenle antibiyotikler işe yaramaz. Antibiyotikler, COVID-19'un önlenmesi veya tedavisi için kullanılmamalıdır. Bakteriyel bir enfeksiyonu tedavi etmek için yalnızca bir doktorun belirttiği şekilde kullanılmalıdır."
    }
  ];
}
