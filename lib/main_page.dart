import 'package:egyptian_history/models/page_model.dart';
import 'package:egyptian_history/widgets/history_page.dart';
import 'package:flutter/material.dart';


class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  List<PageModel> listOfPages = [
    PageModel(pageTitle: 'عصر الدوله القدية', pageImage: 'images/oldkingdom.jpg', pageContent: 'تطورت الحضارة المصرية وظهرت مبادئ "حكومة مركزية" حوالي العام 3200 ق.م. حيث قام الملك مينا بتوحيد مملكتي الشمال والجنوب المصريتين. وشهد عصر هذه الدولة نهضة شاملة في شتى نواحي الحياة، حيـث توصـل المصريـون إلى الكتابة الهيروغليفية أي النقش المقدس، وتأسست ممفيس كأول عاصمة للبلاد واهتم الملوك بتأمين حدود البلاد ونشطت حركة التجارة بين مصر والسودان· واستقبلت مصر عصرا مزدهرا في تاريخها عرف باسم عصر بناة الأهرامات، وشهد هذا العصر بناء أول هرم في مصر والعالم وهو هرم زوسر المدرج المعروف بهرم سقارة والذي يعد أول بنيان حجري في العالم وأقيم العام 2861 ق.م·، ومع تطور الفن والزراعة والصناعة استخدم المصريون أول أسطول نهري بري لنقل منتجاتهم· وبلغت الملاحة البحرية شأنا عظيما وأصبحت حرفة منظمة كغيرها من الحرف الراسخة التي اشتهرت بها مصر القديمة، وفي هذا العصر حكمت الأسر من الأسرة الثالثة إلي الأسرة السادسة.',),

    PageModel(pageTitle: 'عصر الدوله الوسطى', pageImage: 'images/middlekingdom.JPG', pageContent: 'يسبق الدولة الوسطى (2040 - 1640 ق.م.) العصر المتوسط الأول والذي حكمت فيه الأسرات بدأ من السابعة وحتى العاشرة والذي انتهى بتقسيم البلاد، ليأتي عصر الدولة الوسطى بدأ من الفرعون منتوحتب الثاني في 2065 ق.م والذي كان أميرا لطيبة وأعاد توحيد البلاد وفرض النظام، واهتم ملوك الدولة الوسطى بالمشروعات الأكثر نفعا للشعب فازدهرت الزراعة وتطورت المصنوعات اليدوية، وأنتج الفنانون المصريون والمهندسون تراثا إلى رائعا انتشر في الأقصر والفيوم وعين شمس· كذلك ازدهر الفن والأدب في هذا العصر، ومن ملوك هذا العصر أمنمحات الأول، أمنمحات الثالث وتلى هذه الدولة العصر المتوسط الثاني والذي حكمت فيه الأسرات من 13 إلي 17 والذي ضعفت فيه الدولة الوسطى فأدى ذلك لإغارة قبائل تسكن منطقة شرق المتوسط عرفوا باسم الهكسوس لمصر وغزوهم مناطق في شمال ووسط البلاد.',),

    PageModel(pageTitle: 'عصر الدوله الحديثه', pageImage: 'images/newkingdom.jpg', pageContent: 'بعد أن تم للملك أحمس الأول القضاء على الهكسوس وطردهم خارج حدود دولة مصر الشرقية عاد الأمن والاستقرار إلى ربوع البلاد· وبدأت مصر عهداً جديداً هو عهد الدولة الحديثة، وأدركت مصر أهمية القوة العسكرية لحماية البلاد، فتم إنشاء جيش قوى لتكوين إمبراطورية عظيمة امتدت من نهر الفرات شرقاً إلى الشلال الرابع على نهر النيل جنوباً· لتصبح مصر بذلك أول قوة عظمى في تاريخ البشرية ، وصارت بذلك إمبراطورية عظيمة مترامية الأطراف وأقدم إمبراطورية في التاريخ· لقد حاز ملوك وملكات الأسرة الثامنة عشرة شهرة عالمية في ميادين السياسة والحرب والثقافة والحضارة والدين· أحمس بطل التحرير، أمنحوتب الأول العادل الذي أصدر قانونا بمنع السخرة وبوضع المعايير العادلة للأجور والحوافز ·· تحتمس الأول المحارب الذي وسع الحدود المصرية شمالا وجنوبا ونشر التعليم وتوسع في فتح المناجم وصناعة التعدين ·· تحتمس الثاني المتأنق وتحتمس الثالث الإمبراطور صاحب العبقرية العسكرية الفذة وأول فاتح عظيم في تاريخ العالم ·· وتحتمس الرابع الدبلوماسي الذي كان أول من اهتم بتدوين وتسجيل المعاهدات الدولية·· وامنحوتب الثالث أغنى ملك في العالم القديم والذي فتح المدارس "بيوت الحياة" لنشر التعليم والفنون التشكيلية والتطبيقية',),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Egyptian History'),

        ),
        body: ListView.builder(
            itemCount: listOfPages.length,
            itemBuilder: (context,index){
          return HistoryPage(pageModel: listOfPages[index],);
        }),
      ),
    );
  }
}