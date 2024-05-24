import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_fa.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('fa')
  ];

  /// No description provided for @app_name.
  ///
  /// In fa, this message translates to:
  /// **'کوماکس'**
  String get app_name;

  /// No description provided for @confirm.
  ///
  /// In fa, this message translates to:
  /// **'تایید'**
  String get confirm;

  /// No description provided for @show_password_page.
  ///
  /// In fa, this message translates to:
  /// **'نمایش صفحه رمز'**
  String get show_password_page;

  /// No description provided for @turkey_language.
  ///
  /// In fa, this message translates to:
  /// **'زبان ترکی'**
  String get turkey_language;

  /// No description provided for @change_password_app.
  ///
  /// In fa, this message translates to:
  /// **'تغییر رمز عبور نرم افزار اندروید'**
  String get change_password_app;

  /// No description provided for @customize_main_page.
  ///
  /// In fa, this message translates to:
  /// **'شخصی سازی صفحه اصلی'**
  String get customize_main_page;

  /// No description provided for @change_app_theme.
  ///
  /// In fa, this message translates to:
  /// **'تغییر تم نرم افزار'**
  String get change_app_theme;

  /// No description provided for @set_time_of_trigger.
  ///
  /// In fa, this message translates to:
  /// **'تنظیم زمان تریگر رله {triggerNumber}'**
  String set_time_of_trigger(Object triggerNumber);

  /// No description provided for @set_relays_name.
  ///
  /// In fa, this message translates to:
  /// **'نام گذاری رله ها'**
  String get set_relays_name;

  /// No description provided for @set_charge_capsule_range.
  ///
  /// In fa, this message translates to:
  /// **'تنظیم بازه کپسول شارژ'**
  String get set_charge_capsule_range;

  /// No description provided for @irancell.
  ///
  /// In fa, this message translates to:
  /// **'ایرانسل'**
  String get irancell;

  /// No description provided for @refuse.
  ///
  /// In fa, this message translates to:
  /// **'انصراف'**
  String get refuse;

  /// No description provided for @add_device.
  ///
  /// In fa, this message translates to:
  /// **'افزودن دستگاه'**
  String get add_device;

  /// No description provided for @charge_device.
  ///
  /// In fa, this message translates to:
  /// **'شارژ دستگاه'**
  String get charge_device;

  /// No description provided for @edit_device_settings.
  ///
  /// In fa, this message translates to:
  /// **'ویرایش اطلاعات دستگاه'**
  String get edit_device_settings;

  /// No description provided for @change_device_password.
  ///
  /// In fa, this message translates to:
  /// **'تغییر رمز دستگاه'**
  String get change_device_password;

  /// No description provided for @delete_remote.
  ///
  /// In fa, this message translates to:
  /// **'حذف ریموت'**
  String get delete_remote;

  /// No description provided for @delete_zone.
  ///
  /// In fa, this message translates to:
  /// **'حذف زون'**
  String get delete_zone;

  /// No description provided for @save_zones.
  ///
  /// In fa, this message translates to:
  /// **'ذخیره زونها'**
  String get save_zones;

  /// No description provided for @zones_status.
  ///
  /// In fa, this message translates to:
  /// **'استعلام زونها'**
  String get zones_status;

  /// No description provided for @remote_number.
  ///
  /// In fa, this message translates to:
  /// **'شماره ریموت'**
  String get remote_number;

  /// No description provided for @previous_pass.
  ///
  /// In fa, this message translates to:
  /// **'رمز قبلی'**
  String get previous_pass;

  /// No description provided for @zone_name.
  ///
  /// In fa, this message translates to:
  /// **'نام زون'**
  String get zone_name;

  /// No description provided for @new_pass.
  ///
  /// In fa, this message translates to:
  /// **'رمز جدید'**
  String get new_pass;

  /// No description provided for @device_settings.
  ///
  /// In fa, this message translates to:
  /// **'تنظیمات دستگاه'**
  String get device_settings;

  /// No description provided for @repeat_new_pass.
  ///
  /// In fa, this message translates to:
  /// **'تکرار رمز جدید'**
  String get repeat_new_pass;

  /// No description provided for @delete_remote_description.
  ///
  /// In fa, this message translates to:
  /// **'شماره ریموت را جهت حذف از دستگاه وارد نمایید'**
  String get delete_remote_description;

  /// No description provided for @device_reset_factory.
  ///
  /// In fa, this message translates to:
  /// **'ریست تنظیمات دستگاه'**
  String get device_reset_factory;

  /// No description provided for @device_reset_factory_description.
  ///
  /// In fa, this message translates to:
  /// **'تمامی اطلاعات دستگاه اعم از :\n رمز دستگاه ، شماره تلفن دستگاه ، اطلاعات رله ها ، اطلاعات زونها ، مخاطبین و دیگر اطلاعات حذف و به حالت کارخانه باز خواهد گشت. آیا مطمئن هستید؟'**
  String get device_reset_factory_description;

  /// No description provided for @settings_device.
  ///
  /// In fa, this message translates to:
  /// **'تنظیمات دستگاه'**
  String get settings_device;

  /// No description provided for @advance_tools.
  ///
  /// In fa, this message translates to:
  /// **'ابزار پیشرفته'**
  String get advance_tools;

  /// No description provided for @hoco_max.
  ///
  /// In fa, this message translates to:
  /// **'هوکومکس'**
  String get hoco_max;

  /// No description provided for @charge_code.
  ///
  /// In fa, this message translates to:
  /// **'کد شارژ'**
  String get charge_code;

  /// No description provided for @charging.
  ///
  /// In fa, this message translates to:
  /// **'انجام شارژ'**
  String get charging;

  /// No description provided for @check_charge.
  ///
  /// In fa, this message translates to:
  /// **'استعلام شارژ'**
  String get check_charge;

  /// No description provided for @lastest_charge.
  ///
  /// In fa, this message translates to:
  /// **'آخرین شارژ دستگاه'**
  String get lastest_charge;

  /// No description provided for @contacts.
  ///
  /// In fa, this message translates to:
  /// **'مخاطبین'**
  String get contacts;

  /// No description provided for @zones.
  ///
  /// In fa, this message translates to:
  /// **'زون ها'**
  String get zones;

  /// No description provided for @guide.
  ///
  /// In fa, this message translates to:
  /// **'راهنما'**
  String get guide;

  /// No description provided for @logout.
  ///
  /// In fa, this message translates to:
  /// **'خروج'**
  String get logout;

  /// No description provided for @about_us.
  ///
  /// In fa, this message translates to:
  /// **'درباره ما'**
  String get about_us;

  /// No description provided for @android_app_settings.
  ///
  /// In fa, this message translates to:
  /// **'تنظیمات نرم افزار اندروید'**
  String get android_app_settings;

  /// No description provided for @choose.
  ///
  /// In fa, this message translates to:
  /// **'انتخاب کنید'**
  String get choose;

  /// No description provided for @device_type.
  ///
  /// In fa, this message translates to:
  /// **'مدل دستگاه'**
  String get device_type;

  /// No description provided for @device_phone_number.
  ///
  /// In fa, this message translates to:
  /// **'شماره سیمکارت دستگاه'**
  String get device_phone_number;

  /// No description provided for @device_name.
  ///
  /// In fa, this message translates to:
  /// **'نام دستگاه'**
  String get device_name;

  /// No description provided for @device_operator.
  ///
  /// In fa, this message translates to:
  /// **'اپراتور دستگاه'**
  String get device_operator;

  /// No description provided for @add.
  ///
  /// In fa, this message translates to:
  /// **'افزودن'**
  String get add;

  /// No description provided for @cancel.
  ///
  /// In fa, this message translates to:
  /// **'لغو'**
  String get cancel;

  /// No description provided for @accept.
  ///
  /// In fa, this message translates to:
  /// **'تایید'**
  String get accept;

  /// No description provided for @delete.
  ///
  /// In fa, this message translates to:
  /// **'حذف'**
  String get delete;

  /// No description provided for @phone_number_sample.
  ///
  /// In fa, this message translates to:
  /// **'مثال 09121234567'**
  String get phone_number_sample;

  /// No description provided for @device.
  ///
  /// In fa, this message translates to:
  /// **'دستگاه'**
  String get device;

  /// No description provided for @ast.
  ///
  /// In fa, this message translates to:
  /// **'است'**
  String get ast;

  /// No description provided for @toman.
  ///
  /// In fa, this message translates to:
  /// **'تومان'**
  String get toman;

  /// No description provided for @active.
  ///
  /// In fa, this message translates to:
  /// **'فعال'**
  String get active;

  /// No description provided for @deactive.
  ///
  /// In fa, this message translates to:
  /// **'غیرفعال'**
  String get deactive;

  /// No description provided for @semi_active.
  ///
  /// In fa, this message translates to:
  /// **'نیمه فعال'**
  String get semi_active;

  /// No description provided for @silent.
  ///
  /// In fa, this message translates to:
  /// **'بی صدا'**
  String get silent;

  /// No description provided for @relay.
  ///
  /// In fa, this message translates to:
  /// **'رله {relayNumber}'**
  String relay(Object relayNumber);

  /// No description provided for @relay_customize.
  ///
  /// In fa, this message translates to:
  /// **'شخصی سازی بخش رله ها'**
  String get relay_customize;

  /// No description provided for @section_relay_view.
  ///
  /// In fa, this message translates to:
  /// **'نمایش بخش رله {sectionNumber}'**
  String section_relay_view(Object sectionNumber);

  /// No description provided for @show_relay_status.
  ///
  /// In fa, this message translates to:
  /// **'نمایش فعال غیر فعال رله {relayNumber}'**
  String show_relay_status(Object relayNumber);

  /// No description provided for @show_relay_trigger_button.
  ///
  /// In fa, this message translates to:
  /// **'نمایش دکمه تریگر رله {triggerNumber}'**
  String show_relay_trigger_button(Object triggerNumber);

  /// No description provided for @main_page_settings.
  ///
  /// In fa, this message translates to:
  /// **'تنظیمات صفحه اصلی'**
  String get main_page_settings;

  /// No description provided for @customize_main_page_button.
  ///
  /// In fa, this message translates to:
  /// **'شخصی سازی دکمه های صفحه اصلی'**
  String get customize_main_page_button;

  /// No description provided for @customize_menu_button.
  ///
  /// In fa, this message translates to:
  /// **'شخصی سازی دکمه منو'**
  String get customize_menu_button;

  /// No description provided for @show_half_on_device_button.
  ///
  /// In fa, this message translates to:
  /// **'نمایش دکمه نیمه فعال دستگاه'**
  String get show_half_on_device_button;

  /// No description provided for @show_hear_button_device.
  ///
  /// In fa, this message translates to:
  /// **'نمایش دکمه شنود دستگاه'**
  String get show_hear_button_device;

  /// No description provided for @show_device_silent_button.
  ///
  /// In fa, this message translates to:
  /// **'نمایش دکمه سایلنت دستگاه'**
  String get show_device_silent_button;

  /// No description provided for @customize_info_section.
  ///
  /// In fa, this message translates to:
  /// **'شخصی سازی بخش نمایش اطلاعات'**
  String get customize_info_section;

  /// No description provided for @show_network_status.
  ///
  /// In fa, this message translates to:
  /// **'نمایش وضعیت شبکه'**
  String get show_network_status;

  /// No description provided for @show_Antenna_status.
  ///
  /// In fa, this message translates to:
  /// **'نمایش وضعیت آنتن'**
  String get show_Antenna_status;

  /// No description provided for @show_battery_status.
  ///
  /// In fa, this message translates to:
  /// **'نمایش وضعیت باتری (شکل)'**
  String get show_battery_status;

  /// No description provided for @show_phone_case.
  ///
  /// In fa, this message translates to:
  /// **'نمایش تلفن ثابت'**
  String get show_phone_case;

  /// No description provided for @show_remote_count.
  ///
  /// In fa, this message translates to:
  /// **'نمایش تعداد ریموت'**
  String get show_remote_count;

  /// No description provided for @show_contacts_count.
  ///
  /// In fa, this message translates to:
  /// **'نمایش تعداد مخاطبین'**
  String get show_contacts_count;

  /// No description provided for @show_zone_status.
  ///
  /// In fa, this message translates to:
  /// **'نمایش وضعیت زون\' {zoneNumber}'**
  String show_zone_status(Object zoneNumber);

  /// No description provided for @show_relay_details.
  ///
  /// In fa, this message translates to:
  /// **'نمایش وضعیت رله {relayNumber}'**
  String show_relay_details(Object relayNumber);

  /// No description provided for @main_page.
  ///
  /// In fa, this message translates to:
  /// **'صفحه اصلی'**
  String get main_page;

  /// No description provided for @guide1.
  ///
  /// In fa, this message translates to:
  /// **'در صفحه اصلی برنامه می توانید وضعیت کلی دستگاه را مشاهده نمایید.\nبا زدن دکمه استعلام دستگاه، اطلاعات دستگاه از طریق پیامک دریافت و در بخش نمایش اطلاعات دیده خواهد شد. کپسول آبی در این صفحه میزان نسبی شارژ دستگاه را نمایش میدهد. برای دریافت شارژ دستگاه روی کپسول بزنید.\nاگر تعداد دستگاه های افزوده شده بیشتر از یک باشید در اینصورت در صفحه اصلی دستگاه ها به صورت تب نمایش داده می شود.'**
  String get guide1;

  /// No description provided for @guide2.
  ///
  /// In fa, this message translates to:
  /// **'در صفحه افزودن دستگاه می توانید مشخصات دستگاه جدید از جمله نام دستگاه و شماره دستگاه را وارد نمایید.\nپس از ثبت ، دستگاه جدید در صفحه اصلی اضافه و نشان داده خواهد شد.'**
  String get guide2;

  /// No description provided for @guide3.
  ///
  /// In fa, this message translates to:
  /// **'در صفحه شارژ ، با وارد نمودن کد شارژ و انتخاب اپراتور مربوطه و زدن دکمه انجام شارژ ، سیم کارت دستگاه شارژ خواهد شد.\nهمچنین با زدن دکمه استعلام شارژ میتوانید میزان شارژ فعلی دستگاه را مشاهده کنید.\nدر انتهای این صفحه نیز تاریخچه شارژهای انجام شده را مشاهده میکنید.'**
  String get guide3;

  /// No description provided for @guide4.
  ///
  /// In fa, this message translates to:
  /// **'در بخش تنظیمات دستگاه موارد زیر قابل تنظیم است:\n1- تغییر رمز دستگاه\n2- ویرایش اطلاعات دستگاه جاری (در این بخش می توانید دستگاه جاری را نیز حذف کنید)\n3- حذف ریموت های متصل به دستگاه\n4- ریست تنظیمات دستگاه به حالت کارخانه'**
  String get guide4;

  /// No description provided for @guide5.
  ///
  /// In fa, this message translates to:
  /// **'این بخش شامل تنظیمات پیشرفته ای است که می توانید روی دستگاه خود اعمال کنید.\n\nدر این صفحه گزینه \'مدیریت دستگاه با مخاطبین\' وجود دارد که با فعال کردن آن میتوان به دستگاه اعلام کرد که فقط تماس های ورودی از مخاطبین را قبول کند و بقیه شماره ها رد تماس شوند.'**
  String get guide5;

  /// No description provided for @guide6.
  ///
  /// In fa, this message translates to:
  /// **'در این صفحه میتوانید مخاطبین مورد نظر که دستگاه اطلاعات را به آنها ارسال میکند وارد نمایید. همچنین می توانید برای هر مخاطب تنظیمات خاص خود را اعمال کنید.\nمخاطب اول مدیر می باشد.\nهمچنین با زدن دکمه استعلام مخاطبین می توانید اطلاعات مخاطبین را از دستگاه دریافت نمایید.\n\nدر منوی تنظیمات پیشرفته میتوانید تعیین کنید که دستگاه شما تماس های ورودی را فقط از مخاطبین دریافت نماید.'**
  String get guide6;

  /// No description provided for @guide7.
  ///
  /// In fa, this message translates to:
  /// **'در این صفحه با انتخاب نوع هر زون از منوی کشویی ، تغییر روی دستگاه اعمال خواهد شد.\nهمچنین می توانید دستور حذف زون را برای هر زون جداگانه به دستگاه ارسال کنید.\nدر انتهای صفحه با زدن دکمه استعلام زونها میتوانید نوع هر زون را از دستگاه دریافت نمایید. همچنین با زدن دکمه ذخیره زونها ، نام زونها در حافظه ذخیره خواهد شد.'**
  String get guide7;

  /// No description provided for @guide8.
  ///
  /// In fa, this message translates to:
  /// **'این صفحه شامل کلیه تنظیمات مربوط به اپلیکیشن اندروید می باشد.\nبا فعال کردن نمایش صفحه رمز ، بعد از هربار باز کردن نرم افزار از شما رمز ورود درخواست می شود. رمز ورود به صورت پیشفرض 111111 می باشد. همچنین می توانید با اثر انگشت و یا الگوی تعیین شده برای گوشی خود نیز وارد نرم افزار شوید.\nدر بخش تغییر رمز عبور نرم افزار می توانید رمز ورود به نرم افزار را تغییر دهید.\nدر بخش شخصی سازی صفحه اصلی می توانید تعیین کنید که چه آیتم هایی در صفحه اصلی نمایش داده شود. برخی از آیتم های صفحه اصلی قابلیت مخفی شدن را ندارند و باید نمایش داده شوند.\nدر بخش تنظیم زمان تریگر رله ها می توانید تعیین کنید که زمان دکمه تریگر که در بخش رله های صفحه اصلی وجود دارد به چه میزان باشد.\nدر بخش نام گذاری رله ها ، نام هر رله که در صفحه اصلی نمایش داده می شود را تغییر دهید.\nدر بخش تنظیم بازه کپسول نیز میتوانید تعیین کنید که به طور مثال اگر شارژ سیمکارت دستگاه به عدد ۲۰۰۰ تومان رسید ، کپسول صفحه اصلی خالی نمایش داده شود و اگر شارژ به عدد 50000 تومان رسید ، کپسول صفحه اصلی کاملا پر نمایش داده شود.\nبه صورت پیشفرض حداقل شارژ دو هزار تومان و حداکثر شارژ ۲۰۰۰۰ تومان می باشد.\nبا انتخاب ریست تنظیمات برنامه ، کلیه تنظیمات مربوط به برنامه حذف و به حالت پیشفرض بر خواهد گشت.'**
  String get guide8;

  /// No description provided for @guide9.
  ///
  /// In fa, this message translates to:
  /// **'فناوری نوین هوکومکس ابزاری است برای آسان تر کردن تعامل شما با اپلیکیشن کوماکس.\nاین ویژگی دستورات مختلف شما را ارزیابی کرده و عملی متناسب با آن را انجام می دهد. در بخش تنظیمات اولیه که برای بار نخست پس از نصب دستگاه به شما نشان داده می شود، در صورت انتخاب سری 400 ویژگی هوکومکس فعال می گردد. در اولین مرحله می بایست زبان موردنظر را به دستگاه اعلام کنید. در حال حاضر زبان های فارسی و ترکی برای هوکومکس منتشر شده است. در صورت تمایل به ادامه با زبان فارسی پس از پرسش زبان می بایست کلمه ی \"فارسی\" را ادا کنید و در صورت تمایل به ادامه با زبان ترکی کلمه ی \"ترکی\" رابیان بفرمایید. بعد از آن نیز می توانید با گفتن یکسره ی شماره موبایل خود، آن را ثبت بفرمایید.\nدر صفحه ی وارد کردن مخاطبین نیز به همین شکل پاسخ سوالات هوکومکس را بیان کنید. کلمات کلیدی ای نیز برای راحتی بیشتر شما در نظر گرفته شده است که از این قرار می باشند:\n-قبلی: به جایگاه قبلی باز می گردد( مثلا اگر در قسمت امکانات مخاطب سوم باشید و کلمه ی قبلی را بفرمایید، قسمت شماره تلفن مخاطب سوم را می توانید مجددا به صورت صوتی پر بفرمایید)\n-استعلام(یا استعلام مخاطبین): عملکرد دکمه ی استعلام مخاطبین را انجام می دهد.\n-خارج شو: تنظیمات ذخیره نخواهد شد\n-ثبت(ثبت مخاطبین یا تمام): تمامی اطلاعات وارد شده ذخیره و پیامک مربوطه ارسال خواهد شد.\nدر صفحه ی اصلی نیز میتوانید تمامی دستورات و دکمه ها را بعد از زدن دکمه ی میکروفون، به صورت صوتی انجام دهید. دستوراتی نظیر:\n-فعال، نمایش اطلاعات، فعال یا روشن یا آرم، غیر فعال یا خاموش یا دیس آرم، اعتبار، نیمه فعال، سایلنت، شنود، استعلام وضعیت، رله یک فعال، رله یک تریگر، رله یک غیر فعال، رله دو فعال، رله دو تریگر، رله دو غیر فعال، منو، افزودن دستگاه، شارژ دستگاه، تنظیمات دستگاه، ابزار پیشرفته، مخاطبین، زون ها، تنظیمات نرم افزار، راهنما، درباره ما، خروج و...'**
  String get guide9;

  /// No description provided for @select_operator.
  ///
  /// In fa, this message translates to:
  /// **'انتخاب اپراتور'**
  String get select_operator;

  /// No description provided for @device_language.
  ///
  /// In fa, this message translates to:
  /// **'زبان دستگاه'**
  String get device_language;

  /// No description provided for @sim_card_language.
  ///
  /// In fa, this message translates to:
  /// **'زبان سیمکارت دستگاه'**
  String get sim_card_language;

  /// No description provided for @silent_on_siren.
  ///
  /// In fa, this message translates to:
  /// **'سایلنت روی سیرن'**
  String get silent_on_siren;

  /// No description provided for @ding_dong_relay.
  ///
  /// In fa, this message translates to:
  /// **'رله روی دینگ دانگ'**
  String get ding_dong_relay;

  /// No description provided for @call_on_power_outage.
  ///
  /// In fa, this message translates to:
  /// **'تماس در قطع برق'**
  String get call_on_power_outage;

  /// No description provided for @device_manage_by_contacts.
  ///
  /// In fa, this message translates to:
  /// **'مدیریت دستگاه با مخاطبین'**
  String get device_manage_by_contacts;

  /// No description provided for @silent_mode_for_remote.
  ///
  /// In fa, this message translates to:
  /// **'مود کلید سایلنت ریموت'**
  String get silent_mode_for_remote;

  /// No description provided for @mci.
  ///
  /// In fa, this message translates to:
  /// **'همراه اول'**
  String get mci;

  /// No description provided for @rightel.
  ///
  /// In fa, this message translates to:
  /// **'رایتل'**
  String get rightel;

  /// No description provided for @english.
  ///
  /// In fa, this message translates to:
  /// **'انگلیسی'**
  String get english;

  /// No description provided for @persian.
  ///
  /// In fa, this message translates to:
  /// **'فارسی'**
  String get persian;

  /// No description provided for @edit.
  ///
  /// In fa, this message translates to:
  /// **'ویرایش'**
  String get edit;

  /// No description provided for @minute.
  ///
  /// In fa, this message translates to:
  /// **'دقیقه'**
  String get minute;

  /// No description provided for @current_value.
  ///
  /// In fa, this message translates to:
  /// **'مقدار فعلی'**
  String get current_value;

  /// No description provided for @alarm_duration.
  ///
  /// In fa, this message translates to:
  /// **'زمان آژیر'**
  String get alarm_duration;

  /// No description provided for @listening.
  ///
  /// In fa, this message translates to:
  /// **'شنود'**
  String get listening;

  /// No description provided for @sms.
  ///
  /// In fa, this message translates to:
  /// **'پیامک'**
  String get sms;

  /// No description provided for @sim_card_call.
  ///
  /// In fa, this message translates to:
  /// **'تماس سیم کارت'**
  String get sim_card_call;

  /// No description provided for @stable_line.
  ///
  /// In fa, this message translates to:
  /// **'خط ثابت'**
  String get stable_line;

  /// No description provided for @assets_period_report.
  ///
  /// In fa, this message translates to:
  /// **'گزارش دوره ای موجودی'**
  String get assets_period_report;

  /// No description provided for @battery_period_report.
  ///
  /// In fa, this message translates to:
  /// **'گزارش دوره ای باطری'**
  String get battery_period_report;

  /// No description provided for @device_call_performance.
  ///
  /// In fa, this message translates to:
  /// **'عملکرد تماس دستگاه'**
  String get device_call_performance;

  /// No description provided for @change_current_device.
  ///
  /// In fa, this message translates to:
  /// **'تغییر دستگاه کنونی'**
  String get change_current_device;

  /// No description provided for @phoneNumber.
  ///
  /// In fa, this message translates to:
  /// **'شماره همراه'**
  String get phoneNumber;

  /// No description provided for @new_contact.
  ///
  /// In fa, this message translates to:
  /// **'مخاطب جدید'**
  String get new_contact;

  /// No description provided for @call.
  ///
  /// In fa, this message translates to:
  /// **'تماس'**
  String get call;

  /// No description provided for @power.
  ///
  /// In fa, this message translates to:
  /// **'برق'**
  String get power;

  /// No description provided for @speaker.
  ///
  /// In fa, this message translates to:
  /// **'بلندگو'**
  String get speaker;

  /// No description provided for @secret_report.
  ///
  /// In fa, this message translates to:
  /// **'گزارش محرمانه'**
  String get secret_report;

  /// No description provided for @contact_name.
  ///
  /// In fa, this message translates to:
  /// **'نام مخاطب'**
  String get contact_name;

  /// No description provided for @contact.
  ///
  /// In fa, this message translates to:
  /// **'مخاطب'**
  String get contact;

  /// No description provided for @change_app_password.
  ///
  /// In fa, this message translates to:
  /// **'تغییر رمز نرم افزار'**
  String get change_app_password;

  /// No description provided for @editRelaysName.
  ///
  /// In fa, this message translates to:
  /// **'ویرایش نام رله'**
  String get editRelaysName;

  /// No description provided for @current_name.
  ///
  /// In fa, this message translates to:
  /// **'نام فعلی : '**
  String get current_name;

  /// No description provided for @save.
  ///
  /// In fa, this message translates to:
  /// **'ذخیره'**
  String get save;

  /// No description provided for @hour.
  ///
  /// In fa, this message translates to:
  /// **'ساعت'**
  String get hour;

  /// No description provided for @second.
  ///
  /// In fa, this message translates to:
  /// **'ثانیه'**
  String get second;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['fa'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'fa': return AppLocalizationsFa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
