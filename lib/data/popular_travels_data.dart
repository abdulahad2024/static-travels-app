// ১. পপুলার ট্রাভেল ডামি ডেটা
import 'package:static_travels_app/model/popular_travels_models.dart';

class PopularTravelsData {
  static List<PopularTravelsModels> popularTravels = [
    PopularTravelsModels(
      categoryId: 'beach',
      imageUrl:
      'https://images.unsplash.com/photo-1589998059171-988d887df646?q=80&w=600',
      title: 'কক্সবাজার',
      location: 'চট্টগ্রাম',
      rating: 4.8,
      details:
      'কক্সবাজার বিশ্বের দীর্ঘতম প্রাকৃতিক বালুকাময় সমুদ্রসৈকতের জন্য বিখ্যাত। এখানে সমুদ্রের অপূর্ব দৃশ্য, তাজা সামুদ্রিক খাবার এবং মেরিন ড্রাইভ ভ্রমণের আনন্দ উপভোগ করা যায়।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৩ দিন / ২ রাত',
      price: '৳১২,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'hills',
      imageUrl:
      'https://images.unsplash.com/photo-1628108442297-c88f722956c3?q=80&w=600',
      title: 'সাজেক ভ্যালি',
      location: 'রাঙামাটি',
      rating: 4.9,
      details:
      'সাজেক ভ্যালি পাহাড়ের রানী নামে পরিচিত। মেঘ, সবুজ পাহাড় আর আদিবাসী সংস্কৃতিতে ঘেরা এই জায়গা প্রকৃতিপ্রেমীদের কাছে স্বপ্নের গন্তব্য।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৩ দিন / ২ রাত',
      price: '৳৮,৫০০',
    ),
    PopularTravelsModels(
      categoryId: 'beach',
      imageUrl:
      'https://images.unsplash.com/photo-1589998059171-988d887df646?q=80&w=600',
      title: 'সেন্ট মার্টিন দ্বীপ',
      location: 'কক্সবাজার',
      rating: 4.8,
      details:
      'বঙ্গোপসাগরের বুকে বাংলাদেশের একমাত্র প্রবাল দ্বীপ। স্বচ্ছ নীল পানি, নারকেল বাগান আর শান্ত পরিবেশের জন্য এটি অসাধারণ।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৩ দিন / ২ রাত',
      price: '৳১৪,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'beach',
      imageUrl:
      'https://images.unsplash.com/photo-1589998059171-988d887df646?q=80&w=600',
      title: 'কুয়াকাটা সমুদ্রসৈকত',
      location: 'পটুয়াখালী',
      rating: 4.6,
      details:
      'কুয়াকাটা এমন একটি স্থান যেখান থেকে একই জায়গায় সূর্যোদয় ও সূর্যাস্ত দুটোই দেখা যায়। একে সাগরকন্যাও বলা হয়।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৩ দিন / ২ রাত',
      price: '৳৯,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'hills',
      imageUrl:
      'https://images.unsplash.com/photo-1628108442297-c88f722956c3?q=80&w=600',
      title: 'নীলগিরি',
      location: 'বান্দরবান',
      rating: 4.7,
      details:
      'সমুদ্রপৃষ্ঠ থেকে প্রায় ২,২০০ ফুট উচ্চতায় অবস্থিত নীলগিরি মেঘের রাজ্য নামে পরিচিত। এখানে মেঘ হাতের নাগালে চলে আসে।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৩ দিন / ২ রাত',
      price: '৳১০,৫০০',
    ),
    PopularTravelsModels(
      categoryId: 'nature',
      imageUrl:
      'https://images.unsplash.com/photo-1544735716-392fe2489ffa?q=80&w=600',
      title: 'কাপ্তাই লেক',
      location: 'রাঙামাটি',
      rating: 4.6,
      details:
      'দেশের সবচেয়ে বড় কৃত্রিম হ্রদ। লেকের নীল পানি, ঝুলন্ত সেতু ও চারপাশের সবুজ পাহাড় নৌকা ভ্রমণকে স্মরণীয় করে তোলে।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '২ দিন / ১ রাত',
      price: '৳৭,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'nature',
      imageUrl:
      'https://images.unsplash.com/photo-1544735716-392fe2489ffa?q=80&w=600',
      title: 'জাফলং',
      location: 'সিলেট',
      rating: 4.5,
      details:
      'ভারত সীমান্তঘেঁষা জাফলংয়ে পিয়াইন নদীর স্বচ্ছ পানি, পাথর আর দূরের মেঘালয় পাহাড়ের দৃশ্য মুগ্ধ করে।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '২ দিন / ১ রাত',
      price: '৳৬,৫০০',
    ),
    PopularTravelsModels(
      categoryId: 'nature',
      imageUrl:
      'https://images.unsplash.com/photo-1544735716-392fe2489ffa?q=80&w=600',
      title: 'রাতারগুল জলাবন',
      location: 'সিলেট',
      rating: 4.7,
      details:
      'বাংলাদেশের একমাত্র স্বাদু পানির জলাবন। বর্ষায় গাছের ফাঁক দিয়ে নৌকায় ঘোরার অভিজ্ঞতা অনন্য।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '২ দিন / ১ রাত',
      price: '৳৬,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'nature',
      imageUrl:
      'https://images.unsplash.com/photo-1511497584788-8767611136f6?q=80&w=600',
      title: 'সুন্দরবন',
      location: 'খুলনা',
      rating: 4.9,
      details:
      'বিশ্বের বৃহত্তম ম্যানগ্রোভ বন। রয়েল বেঙ্গল টাইগার, হরিণ ও নানা প্রজাতির পাখির আবাসস্থল।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৪ দিন / ৩ রাত',
      price: '৳১৫,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'beach',
      imageUrl:
      'https://images.unsplash.com/photo-1589998059171-988d887df646?q=80&w=600',
      title: 'নিঝুম দ্বীপ',
      location: 'নোয়াখালী',
      rating: 4.5,
      details:
      'মেঘনার মোহনায় অবস্থিত শান্ত দ্বীপ। হরিণের দল, কেওড়া বন আর নির্জন সৈকত এখানকার প্রধান আকর্ষণ।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৩ দিন / ২ রাত',
      price: '৳৮,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'waterfalls',
      imageUrl:
      'https://images.unsplash.com/photo-1544735716-392fe2489ffa?q=80&w=600',
      title: 'বিছনাকান্দি',
      location: 'সিলেট',
      rating: 4.7,
      details:
      'পাহাড়ি ঝরনার পানিতে পাথর ভেসে আসা এক অপূর্ব জায়গা। নীল পানি ও মেঘালয়ের পাহাড় মিলে দৃশ্যটি মনোমুগ্ধকর।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '২ দিন / ১ রাত',
      price: '৳৬,৮০০',
    ),
    PopularTravelsModels(
      categoryId: 'waterfalls',
      imageUrl:
      'https://images.unsplash.com/photo-1628108442297-c88f722956c3?q=80&w=600',
      title: 'নাফাখুম জলপ্রপাত',
      location: 'বান্দরবান',
      rating: 4.8,
      details:
      'সালং নদীর বুকে অবস্থিত বাংলাদেশের অন্যতম বিস্ময়কর জলপ্রপাত। ট্রেকিং ও অ্যাডভেঞ্চারপ্রেমীদের জন্য আদর্শ।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৩ দিন / ২ রাত',
      price: '৳১১,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'waterfalls',
      imageUrl:
      'https://images.unsplash.com/photo-1544735716-392fe2489ffa?q=80&w=600',
      title: 'মাধবকুণ্ড জলপ্রপাত',
      location: 'মৌলভীবাজার',
      rating: 4.6,
      details:
      'দেশের সবচেয়ে বড় জলপ্রপাত। প্রায় ১৬২ ফুট উঁচু থেকে পানি পড়ার দৃশ্য ও চারপাশের সবুজ বন দর্শনার্থীদের মুগ্ধ করে।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '২ দিন / ১ রাত',
      price: '৳৫,৮০০',
    ),
    PopularTravelsModels(
      categoryId: 'mountains',
      imageUrl:
      'https://images.unsplash.com/photo-1628108442297-c88f722956c3?q=80&w=600',
      title: 'কেওক্রাডং',
      location: 'বান্দরবান',
      rating: 4.8,
      details:
      'বাংলাদেশের দ্বিতীয় সর্বোচ্চ পাহাড়চূড়া। ট্রেকিংয়ের পথ কঠিন হলেও চূড়া থেকে চারপাশের দৃশ্য অসাধারণ।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৩ দিন / ২ রাত',
      price: '৳৯,৫০০',
    ),
    PopularTravelsModels(
      categoryId: 'mountains',
      imageUrl:
      'https://images.unsplash.com/photo-1628108442297-c88f722956c3?q=80&w=600',
      title: 'তাজিংডং',
      location: 'বান্দরবান',
      rating: 4.9,
      details:
      'বিজয় নামেও পরিচিত, বাংলাদেশের সর্বোচ্চ পর্বতচূড়া। দুর্গম পথ পেরিয়ে এখানে পৌঁছানো এক রোমাঞ্চকর অভিজ্ঞতা।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '৪ দিন / ৩ রাত',
      price: '৳১৩,৫০০',
    ),
    PopularTravelsModels(
      categoryId: 'city',
      imageUrl:
      'https://images.unsplash.com/photo-1511497584788-8767611136f6?q=80&w=600',
      title: 'পুরান ঢাকা',
      location: 'ঢাকা',
      rating: 4.4,
      details:
      'ইতিহাস ও ঐতিহ্যে ভরা পুরান ঢাকা। আহসান মঞ্জিল, লালবাগ কেল্লা এবং বাকরখানি ও বিরিয়ানির স্বাদ এখানকার বিশেষত্ব।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '১ দিন',
      price: '৳২,৫০০',
    ),
    PopularTravelsModels(
      categoryId: 'city',
      imageUrl:
      'https://images.unsplash.com/photo-1511497584788-8767611136f6?q=80&w=600',
      title: 'সোনারগাঁও',
      location: 'নারায়ণগঞ্জ',
      rating: 4.3,
      details:
      'বাংলার প্রাচীন রাজধানী। পানাম নগরী, লোকশিল্প জাদুঘর ও ঐতিহাসিক স্থাপনাগুলো ইতিহাসপ্রেমীদের জন্য আদর্শ।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '১ দিন',
      price: '৳৩,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'city',
      imageUrl:
      'https://images.unsplash.com/photo-1511497584788-8767611136f6?q=80&w=600',
      title: 'পাহাড়পুর বৌদ্ধ বিহার',
      location: 'নওগাঁ',
      rating: 4.5,
      details:
      'ইউনেস্কো বিশ্ব ঐতিহ্যের অংশ। উপমহাদেশের বৃহত্তম বৌদ্ধ বিহারগুলোর একটি, যার স্থাপত্য শৈলী অনন্য।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '২ দিন / ১ রাত',
      price: '৳৫,০০০',
    ),
    PopularTravelsModels(
      categoryId: 'city',
      imageUrl:
      'https://images.unsplash.com/photo-1511497584788-8767611136f6?q=80&w=600',
      title: 'ষাটগম্বুজ মসজিদ',
      location: 'বাগেরহাট',
      rating: 4.6,
      details:
      'ইউনেস্কো স্বীকৃত ঐতিহাসিক মসজিদ। সুলতানি আমলের এই স্থাপনা ইটের অপূর্ব কারুকাজের জন্য বিখ্যাত।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '২ দিন / ১ রাত',
      price: '৳৫,৫০০',
    ),
    PopularTravelsModels(
      categoryId: 'hills',
      imageUrl:
      'https://images.unsplash.com/photo-1628108442297-c88f722956c3?q=80&w=600',
      title: 'আলুটিলা গুহা',
      location: 'খাগড়াছড়ি',
      rating: 4.4,
      details:
      'আলুটিলা পাহাড়ের রহস্যময় গুহা, যার ভেতরে অন্ধকার সুড়ঙ্গ ও ঝরনার পানি বয়ে যায়। রোমাঞ্চপ্রেমীদের জন্য দারুণ জায়গা।',
      videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      duration: '২ দিন / ১ রাত',
      price: '৳৬,২০০',
    ),
  ];
}