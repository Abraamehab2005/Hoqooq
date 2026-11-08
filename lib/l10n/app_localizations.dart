import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ar')];

  /// No description provided for @appName.
  ///
  /// In ar, this message translates to:
  /// **'حقوق'**
  String get appName;

  /// No description provided for @splashTitle.
  ///
  /// In ar, this message translates to:
  /// **'حقوق'**
  String get splashTitle;

  /// No description provided for @splashSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'اعرف حقك... بثقة ووضوح'**
  String get splashSubtitle;

  /// No description provided for @getStarted.
  ///
  /// In ar, this message translates to:
  /// **'ابدأ مع حقوق'**
  String get getStarted;

  /// No description provided for @splashAppTitle.
  ///
  /// In ar, this message translates to:
  /// **'القانون المصري، ببساطة'**
  String get splashAppTitle;

  /// No description provided for @splashBody.
  ///
  /// In ar, this message translates to:
  /// **'معرفة أوضح.\nخطوة أَوْعى.'**
  String get splashBody;

  /// No description provided for @splashFooter.
  ///
  /// In ar, this message translates to:
  /// **'مساعدك لفهم حقوقك في مصر'**
  String get splashFooter;

  /// No description provided for @onboardingAppBar.
  ///
  /// In ar, this message translates to:
  /// **'أهلًا بيك في حقوق'**
  String get onboardingAppBar;

  /// No description provided for @onboardingTitle.
  ///
  /// In ar, this message translates to:
  /// **'حقك تفهم،\nقبل ما تاخد خطوة.'**
  String get onboardingTitle;

  /// No description provided for @onboardingDescrption.
  ///
  /// In ar, this message translates to:
  /// **'معلومات قانونية مصرية بلغة واضحة، تساعدك ترتّب أفكارك وتعرف تبدأ منين.'**
  String get onboardingDescrption;

  /// No description provided for @onboardingLawTitle.
  ///
  /// In ar, this message translates to:
  /// **'القانون المصري وبس'**
  String get onboardingLawTitle;

  /// No description provided for @onboardingLawDescription.
  ///
  /// In ar, this message translates to:
  /// **'الشغل، الإيجار، الأسرة، العقود وحقوق المستهلك في مصر.'**
  String get onboardingLawDescription;

  /// No description provided for @onboardingSourceTitle.
  ///
  /// In ar, this message translates to:
  /// **'افهم الإجابة ومصدرها'**
  String get onboardingSourceTitle;

  /// No description provided for @onboardingSourceDescription.
  ///
  /// In ar, this message translates to:
  /// **'شرح بسيط ومراجع قانونية مصرية تقدر ترجع لها.'**
  String get onboardingSourceDescription;

  /// No description provided for @onboardingChatTitle.
  ///
  /// In ar, this message translates to:
  /// **'اسأل بطريقتك'**
  String get onboardingChatTitle;

  /// No description provided for @onboardingChatDescription.
  ///
  /// In ar, this message translates to:
  /// **'احكي الموقف من غير أسماء أو بيانات شخصية حساسة.'**
  String get onboardingChatDescription;

  /// No description provided for @onboardingWarning.
  ///
  /// In ar, this message translates to:
  /// **'حقوق بيقدّم معلومات عامة، مش استشارة قانونية ولا بديل عن محامي مصري يراجع تفاصيل حالتك.'**
  String get onboardingWarning;

  /// No description provided for @onboardingLogin.
  ///
  /// In ar, this message translates to:
  /// **'عندك حساب؟ تسجيل الدخول'**
  String get onboardingLogin;

  /// No description provided for @loginAppBar.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get loginAppBar;

  /// No description provided for @loginTitle.
  ///
  /// In ar, this message translates to:
  /// **'أهلًا برجوعك'**
  String get loginTitle;

  /// No description provided for @loginSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'كمّل أسئلتك وارجع لمحادثاتك، في مكان واحد.'**
  String get loginSubtitle;

  /// No description provided for @emailLabel.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get emailLabel;

  /// No description provided for @passwordLabel.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور'**
  String get passwordLabel;

  /// No description provided for @forgotPassword.
  ///
  /// In ar, this message translates to:
  /// **'نسيت كلمة المرور؟'**
  String get forgotPassword;

  /// No description provided for @loginButton.
  ///
  /// In ar, this message translates to:
  /// **'دخول'**
  String get loginButton;

  /// No description provided for @noAccountRegister.
  ///
  /// In ar, this message translates to:
  /// **'لسه معندكش حساب؟ إنشاء حساب جديد'**
  String get noAccountRegister;

  /// No description provided for @loginPrivacyNotice.
  ///
  /// In ar, this message translates to:
  /// **'حافظ على خصوصيتك: ما تشاركش بيانات حساسة أو مستندات شخصية في أسئلتك.'**
  String get loginPrivacyNotice;

  /// No description provided for @emailRequired.
  ///
  /// In ar, this message translates to:
  /// **'اكتب بريدك الإلكتروني'**
  String get emailRequired;

  /// No description provided for @emailInvalid.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني مش صحيح'**
  String get emailInvalid;

  /// No description provided for @passwordRequired.
  ///
  /// In ar, this message translates to:
  /// **'اكتب كلمة المرور'**
  String get passwordRequired;

  /// No description provided for @passwordTooShort.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور لازم تكون 6 حروف على الأقل'**
  String get passwordTooShort;

  /// No description provided for @errorInvalidCredentials.
  ///
  /// In ar, this message translates to:
  /// **'الإيميل أو كلمة المرور غلط'**
  String get errorInvalidCredentials;

  /// No description provided for @errorNetwork.
  ///
  /// In ar, this message translates to:
  /// **'مفيش اتصال بالإنترنت، جرّب تاني'**
  String get errorNetwork;

  /// No description provided for @errorTooManyRequests.
  ///
  /// In ar, this message translates to:
  /// **'محاولات كتير، استنى شوية وجرّب تاني'**
  String get errorTooManyRequests;

  /// No description provided for @errorUnknown.
  ///
  /// In ar, this message translates to:
  /// **'حصل خطأ غير متوقع، جرّب تاني'**
  String get errorUnknown;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
