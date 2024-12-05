import 'package:flutter/material.dart';
import './models/category.dart';
import './models/trip.dart';

const Categories_data = const [
  Category(
    id: 'c1',
    title: 'الرياض',
    sup_title: "نبذه تعريفيه عن الرياض",
    detail: "الرياض، عاصمة المملكة العربية السعودية، أصبحت في عام 2024 واحدة من أبرز وجهات السياحة في المنطقة، حيث تجمع بين الأصالة والحداثة. السياحة في الرياض 2024 تزدهر بفضل المشاريع الطموحة والفعاليات العالمية التي تستهدف جذب الزوار من مختلف أنحاء العالم.",
    imageUrl:
    'https://i.pinimg.com/736x/ca/d7/42/cad742624b366de6dbca080a0aa65f1e.jpg',
  ),
  Category(
    id: 'c2',
    title: 'عسير',
    sup_title: "",
    detail: "",
    imageUrl:
    'https://www.aljawharamag.com/aljawhara/uploads/2023/10/bfe0e87a-85cc-4e85-89c5-5837aab95446_16x9_1200x676.webp',
  ),
  Category(
    id: 'c3',
    title: 'جدة',
    sup_title: "",
    detail: "",
    imageUrl:
    'https://www.lenobadir.org/wp-content/uploads/2022/07/jeddah-fountain.jpg',
  ),
  Category(
    id: 'c4',
    title: 'الأحساء',
    sup_title: "",
    detail: "",
    imageUrl:
    'https://www.nawa3em.com/UserFiles/002-%D8%A7%D9%84%D8%A7%D8%AD%D8%B3%D8%A7%D8%A1.jpg',
  ),
  Category(
    id: 'c5',
    title: 'الشرقية',
    sup_title: "",
    detail: "",
    imageUrl:
    'https://pbs.twimg.com/media/EYbBNxuWAAAehiN?format=jpg&name=large',
  ),
  Category(
    id: 'c6',
    title: 'العلا',
    sup_title: "",
    detail: "",
    imageUrl:
    'https://media.assettype.com/sabq%2Fimport%2Fuploads%2Fmaterial-file%2F5e15a10b544a69dff28b4585%2F5e15a10804b91.jpg?w=1024&auto=format%2Ccompress&fit=max',
  ),
  Category(
    id: 'c7',
    title: 'مكة المكرمة',
    sup_title: "",
    detail: "",
    imageUrl:
    'https://i.pinimg.com/736x/a5/06/59/a5065961f1bc853d63fa3ba531d15b48.jpg',
  ),
];

const Categories_data_active = const [
  Category(
    id: 'c8',
    title: 'الشواطئ',
    sup_title: "",
    detail: "",
    imageUrl:
    'https://i.pinimg.com/736x/ca/d7/42/cad742624b366de6dbca080a0aa65f1e.jpg',
  ),

];

const Trips_data = const [
 
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'مطاعم الرياض 2024',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
    'https://images.unsplash.com/photo-1611523658822-385aa008324c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bW91bmF0aW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 20,
    activities: [
      'مطعم لامير : مطبخ فرنسي فاخر يقدم أطباقاً كلاسيكية مع لمسة عصرية.أجواء رومانسية مثالية للعشاء الفاخر.مطعم سبازيو',
'يقع في الطابق 77 من برج المملكة، ويوفر تجربة تناول طعام مع إطلالة بانورامية.يقدم مأكولات إيطالية وعالمية راقية. مطعم ذا غلوب (The Globe)',
'أحد أكثر المطاعم شهرة، يقع داخل كرة زجاجية في برج الفيصلية. يقدم أطباقاً عالمية فاخرة مع تجربة تناول طعام استثنائية. مطعم زعفران الهندي',
    ],
    program: [
      '',
      
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
   Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'معالم السياحة في الرياض',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
    'https://images.unsplash.com/photo-1611523658822-385aa008324c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bW91bmF0aW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 20,
    activities: [
      'بوليفارد رياض سيتي: وجهة متكاملة تضم العديد من الفعاليات الترفيهية، المطاعم الفاخرة، والعروض الحية.',
      'العلا التاريخية: وجهة قريبة تقدم تجربة ثقافية فريدة تتضمن استكشاف التاريخ القديم للجزيرة العربية.',
      'واحة الدرعية: منطقة تاريخية مدرجة في قائمة التراث العالمي لليونسكو وتضم أسواقاً تقليدية ومتاحف تعكس الثقافة السعودية.',
      'برج المملكة وبرج الفيصلية: معالم معمارية مميزة توفر إطلالات خلابة على المدينة وتجارب تسوق فاخرة.',
    ],
    program: [
     '',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),

  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'بحيرة الزمرد',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
    'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 240,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),

  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'شاطئ الأول',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
    'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 20,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),

  Trip(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'الصحراء الكبرى',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),

  Trip(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'المدينة الأولى',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),

  Trip(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'رياضة التثلج',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
    'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
];
