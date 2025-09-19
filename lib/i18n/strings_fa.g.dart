///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsFa = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fa>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// fa: 'Veezo AI'
	String get veezoAI => 'Veezo AI';

	/// fa: 'ایمیل'
	String get email => 'ایمیل';

	/// fa: 'پسوورد'
	String get password => 'پسوورد';

	late final TranslationsAuthFa auth = TranslationsAuthFa._(_root);
	late final TranslationsChatFa chat = TranslationsChatFa._(_root);
	late final TranslationsCreditsPlansFa creditsPlans = TranslationsCreditsPlansFa._(_root);
}

// Path: auth
class TranslationsAuthFa {
	TranslationsAuthFa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// fa: 'ایمیل نامعتبر'
	String get invalidEmail => 'ایمیل نامعتبر';

	late final TranslationsAuthLoginFa login = TranslationsAuthLoginFa._(_root);
	late final TranslationsAuthSignUpFa signUp = TranslationsAuthSignUpFa._(_root);
}

// Path: chat
class TranslationsChatFa {
	TranslationsChatFa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// fa: 'اعتبار'
	String get credit => 'اعتبار';

	/// fa: 'چت جدید'
	String get newChat => 'چت جدید';

	/// fa: 'پیام‌های گذشته'
	String get previousChats => 'پیام‌های گذشته';

	/// fa: 'پیام کپی شد'
	String get messageIsCopied => 'پیام کپی شد';

	/// fa: 'یه سناریو بنویس راجب ...'
	String get writeAScenarioAbout => 'یه سناریو بنویس راجب ...';

	/// fa: 'تقویم محتوایی'
	String get contentCalendar => 'تقویم محتوایی';

	/// fa: 'موضوع کاریت رو برامون بنویس و در چند ثانیه یه سناریو ریلز تحویل بگیر'
	String get emptyIntro => 'موضوع کاریت رو برامون بنویس و در\nچند ثانیه یه سناریو ریلز تحویل\nبگیر';
}

// Path: creditsPlans
class TranslationsCreditsPlansFa {
	TranslationsCreditsPlansFa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// fa: 'اعتبار'
	String get credits => 'اعتبار';

	/// fa: 'پلن ها'
	String get plans => 'پلن ها';

	/// fa: 'اعتبار و پلن‌ها'
	String get creditsAndPlans => 'اعتبار و پلن‌ها';

	/// fa: 'خرید'
	String get purchase => 'خرید';
}

// Path: auth.login
class TranslationsAuthLoginFa {
	TranslationsAuthLoginFa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// fa: 'ورود'
	String get login => 'ورود';

	/// fa: 'ورود به اکانت'
	String get loginToYourAccount => 'ورود به اکانت';

	/// fa: 'برای ورود ایمیل خود را وارد کنید'
	String get enterYourEmailBelowToLoginToYourAccount => 'برای ورود ایمیل خود را وارد کنید';

	/// fa: 'اکانت ندارید؟'
	String get dontHaveAccount => 'اکانت ندارید؟';

	/// fa: 'ثبت نام'
	String get signUp => 'ثبت نام';
}

// Path: auth.signUp
class TranslationsAuthSignUpFa {
	TranslationsAuthSignUpFa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// fa: 'اکانت بسازید'
	String get createAnAccount => 'اکانت بسازید';

	/// fa: 'برای ایجاد اکانت ایمیل خود را وارد کنید'
	String get enterYourEmailBelowToCreateYourAccount => 'برای ایجاد اکانت ایمیل خود را وارد کنید';

	/// fa: 'تأیید پسوورد'
	String get confirmPassword => 'تأیید پسوورد';

	/// fa: 'رمز‌های وارد شده یکسان نیستند'
	String get passwordsDontMatch => 'رمز‌های وارد شده یکسان نیستند';

	/// fa: 'ایجاد اکانت'
	String get createAccount => 'ایجاد اکانت';

	/// fa: 'اکانت دارید؟'
	String get alreadyHaveAnAccount => 'اکانت دارید؟';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'veezoAI': return 'Veezo AI';
			case 'email': return 'ایمیل';
			case 'password': return 'پسوورد';
			case 'auth.invalidEmail': return 'ایمیل نامعتبر';
			case 'auth.login.login': return 'ورود';
			case 'auth.login.loginToYourAccount': return 'ورود به اکانت';
			case 'auth.login.enterYourEmailBelowToLoginToYourAccount': return 'برای ورود ایمیل خود را وارد کنید';
			case 'auth.login.dontHaveAccount': return 'اکانت ندارید؟';
			case 'auth.login.signUp': return 'ثبت نام';
			case 'auth.signUp.createAnAccount': return 'اکانت بسازید';
			case 'auth.signUp.enterYourEmailBelowToCreateYourAccount': return 'برای ایجاد اکانت ایمیل خود را وارد کنید';
			case 'auth.signUp.confirmPassword': return 'تأیید پسوورد';
			case 'auth.signUp.passwordsDontMatch': return 'رمز‌های وارد شده یکسان نیستند';
			case 'auth.signUp.createAccount': return 'ایجاد اکانت';
			case 'auth.signUp.alreadyHaveAnAccount': return 'اکانت دارید؟';
			case 'chat.credit': return 'اعتبار';
			case 'chat.newChat': return 'چت جدید';
			case 'chat.previousChats': return 'پیام‌های گذشته';
			case 'chat.messageIsCopied': return 'پیام کپی شد';
			case 'chat.writeAScenarioAbout': return 'یه سناریو بنویس راجب ...';
			case 'chat.contentCalendar': return 'تقویم محتوایی';
			case 'chat.emptyIntro': return 'موضوع کاریت رو برامون بنویس و در\nچند ثانیه یه سناریو ریلز تحویل\nبگیر';
			case 'creditsPlans.credits': return 'اعتبار';
			case 'creditsPlans.plans': return 'پلن ها';
			case 'creditsPlans.creditsAndPlans': return 'اعتبار و پلن‌ها';
			case 'creditsPlans.purchase': return 'خرید';
			default: return null;
		}
	}
}

