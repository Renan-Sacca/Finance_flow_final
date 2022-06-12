import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'pt'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // loginPage
  {
    'pkcknghj': {
      'en': 'Get Started',
      'pt': 'Iniciar',
    },
    'wq6r3c1v': {
      'en': 'Create your account below.',
      'pt': 'Crie sua conta abaixo.',
    },
    'suajgcyt': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'phd6l6wn': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'ji2045ye': {
      'en': 'Password',
      'pt': 'Senha',
    },
    '94ytbali': {
      'en': 'Enter your password...',
      'pt': 'Coloque sua senha...',
    },
    'ixhlza9f': {
      'en': 'Forgot Password?',
      'pt': 'Esqueceu a senha?',
    },
    '1ziai62t': {
      'en': 'Login',
      'pt': 'Conecte-se',
    },
    'kajz9c3o': {
      'en': 'Don\'t have an account?',
      'pt': 'Não tem uma conta?',
    },
    '5kctavw9': {
      'en': 'Create',
      'pt': 'Crie',
    },
    '2dixf19j': {
      'en': 'Sign in with Google',
      'pt': 'Faça login no Google',
    },
    'dmpkz6e2': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // registerAccount
  {
    '1mb83vom': {
      'en': 'Get Started',
      'pt': 'Iniciar',
    },
    'p8fp72lc': {
      'en': 'Create your account below.',
      'pt': 'Crie sua conta abaixo.',
    },
    '6jk9i0f8': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'l8icibmm': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'k41ypakv': {
      'en': 'Password',
      'pt': 'Senha',
    },
    'sbffmamw': {
      'en': 'Enter your password...',
      'pt': 'Coloque sua senha...',
    },
    'dqshtx69': {
      'en': 'Confirm Password',
      'pt': 'Confirme a Senha',
    },
    'rlm49h1d': {
      'en': 'Enter your password...',
      'pt': 'Coloque sua senha...',
    },
    'eowyvx5x': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    'g6hpvzib': {
      'en': 'Login',
      'pt': 'Conecte-se',
    },
    '86x2r1x3': {
      'en': 'Already have an account?',
      'pt': 'já tem uma conta?',
    },
    '44w39htv': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // forgotPassword
  {
    '4xopy8h9': {
      'en': 'Forgot Password',
      'pt': 'Esqueceu a senha',
    },
    'uhzmpd8k': {
      'en':
          'Enter the email associated with your account and we will send you a verification code.',
      'pt':
          'Digite o e-mail associado à sua conta e nós lhe enviaremos um código de verificação.',
    },
    'v2wvnktc': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'j6bnyajs': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'k5nxzdnd': {
      'en': 'Send Reset Link',
      'pt': 'Enviar link de redefinição',
    },
    'arkdyf4a': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // completeProfile
  {
    'z97geq8x': {
      'en': 'Complete Profile',
      'pt': 'Perfil completo',
    },
    'jwm59qww': {
      'en': 'Upload a photo for us to easily identify you.',
      'pt': 'Carregue uma foto para que possamos identificá-lo facilmente.',
    },
    'aim06whf': {
      'en': 'Your Name',
      'pt': 'Seu nome',
    },
    'vwhsnypn': {
      'en': 'Name',
      'pt': 'Nome',
    },
    'o86131dz': {
      'en': 'Your Age',
      'pt': 'Sua idade',
    },
    'kb78vg2h': {
      'en': 'i.e. 34',
      'pt': 'ou seja, 34',
    },
    '87q6ml6c': {
      'en': 'Your Telephone\n',
      'pt': 'Seu telefone',
    },
    '7lz28mp9': {
      'en': 'Phone',
      'pt': 'Telefone',
    },
    'xybfjnp2': {
      'en': 'Complete Profile',
      'pt': 'Perfil completo',
    },
    'anntl4ht': {
      'en': 'Skip for Now',
      'pt': 'Pular por enquanto',
    },
    'r093popr': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // onboarding
  {
    'gjq1u8hd': {
      'en': 'Create Budgets',
      'pt': 'Criar orçamentos',
    },
    'wgsq3fit': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'pt':
          'Crie orçamentos que você também possa vincular transações para facilitar o rastreamento.',
    },
    '2y2k1tjr': {
      'en': 'Keep Track of Spending',
      'pt': 'Acompanhe os gastos',
    },
    'ekg4fvlh': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'pt':
          'Adicione transações facilmente e associe-as aos orçamentos que foram criados.',
    },
    'kge83zfe': {
      'en': 'Budget Analysis',
      'pt': 'Análise de orçamento',
    },
    'c0a62crv': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'pt': 'Saiba onde estão seus orçamentos e como eles podem ser ajustados.',
    },
    'mn2mkyxq': {
      'en': 'Create Your Budget',
      'pt': 'Crie seu orçamento',
    },
    'kuyvgn4c': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // Detalhesdepagamentos
  {
    'f2vsqhko': {
      'en': 'Details',
      'pt': 'Detalhes',
    },
    '7mtt4qnk': {
      'en': 'Category / Type',
      'pt': 'Categoria / Tipo',
    },
    's6llehyv': {
      'en': '/',
      'pt': '/',
    },
    'xlj6p6nk': {
      'en': 'When',
      'pt': 'Quando',
    },
    'agugs5ut': {
      'en': 'Has already been paid',
      'pt': 'Já foi pago',
    },
    '9mv8g2h1': {
      'en': 'Do you want to pay?',
      'pt': 'Você quer pagar?',
    },
    'ejj4xxxn': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // MY_profilePage
  {
    'wf799idi': {
      'en': 'My Account',
      'pt': 'Minha conta',
    },
    '1gv0193x': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'r4t09fdy': {
      'en': 'Change Password',
      'pt': 'Mudar senha',
    },
    '251fruz6': {
      'en': 'Tutorial',
      'pt': 'Tutorial',
    },
    '6nkmqyx4': {
      'en': 'Privacy Policy',
      'pt': 'Política de Privacidade',
    },
    '0dukn0kr': {
      'en': 'Create News',
      'pt': 'Criar notícias',
    },
    'i68kj7z9': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // criartransacao
  {
    '5evb9zeh': {
      'en': 'Create Transaction',
      'pt': 'Criar transação',
    },
    '4d7572q5': {
      'en': 'Create Bank',
      'pt': 'Criar banco',
    },
    '3t68luks': {
      'en': 'Create Type',
      'pt': 'Criar tipo',
    },
    'h6ybfmsz': {
      'en': 'Name Transaction ',
      'pt': 'Transação de nome',
    },
    '62dy882q': {
      'en': '',
      'pt': '',
    },
    '61lszlp2': {
      'en': 'Debito',
      'pt': 'Débito',
    },
    'nryuvd1v': {
      'en': 'Credito',
      'pt': 'Crédito',
    },
    'jybdvzzc': {
      'en': 'Amount',
      'pt': 'Quantia',
    },
    'vmoc9hyj': {
      'en': 'Transaction Date\n',
      'pt': 'Data da transação',
    },
    '899mb66a': {
      'en': 'Choose Date',
      'pt': 'Escolha a data',
    },
    '17xey9l1': {
      'en': 'x Times',
      'pt': 'x vezes',
    },
    '74n4zuju': {
      'en': 'Deduct value from bank balance?',
      'pt': 'Deduzir valor do saldo bancário?',
    },
    'xarost2s': {
      'en': 'Yes',
      'pt': 'Sim',
    },
    '9641jt1q': {
      'en': 'No',
      'pt': 'Não',
    },
    '1wrjgea7': {
      'en': 'Send Transfer',
      'pt': 'Enviar transferência',
    },
    'xhxc63gy': {
      'en': 'Tap above to complete transfer',
      'pt': 'Toque acima para concluir a transferência',
    },
    '62uee6ic': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // transaction_EDIT
  {
    'zkeymbgb': {
      'en': 'Edit transaction amount',
      'pt': 'Editar valor da transação',
    },
    'lihs9vqy': {
      'en': 'Amount',
      'pt': 'Quantia',
    },
    '60zqpng2': {
      'en': 'Update Transaction',
      'pt': 'Atualizar transação',
    },
    '2afy0igl': {
      'en': 'Tap above to save your changes.',
      'pt': 'Toque acima para salvar suas alterações.',
    },
    'kjgl7war': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    'xdibjn6s': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // transferComplete
  {
    'c7yb5tdl': {
      'en': 'Transfer Complete',
      'pt': 'Transferência Completa',
    },
    'pdukcj72': {
      'en':
          'Great work, you successfully transferred funds. It may take a few days for the funds to leave your account.',
      'pt':
          'Ótimo trabalho, você transferiu fundos com sucesso. Pode levar alguns dias para que os fundos saiam de sua conta.',
    },
    'kscp585y': {
      'en': 'Okay',
      'pt': 'Ok',
    },
    'sgmqeu84': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // editProfile
  {
    'u3gq0okn': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'k18grjcv': {
      'en': 'Change Photo',
      'pt': 'Mudar foto',
    },
    'yhx5r7jc': {
      'en': 'Your Name',
      'pt': 'Seu nome',
    },
    'ej4oueue': {
      'en': 'Please enter a valid number...',
      'pt': 'Por favor insira um número válido...',
    },
    'pqhwmxto': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    '9tjvm7zq': {
      'en': 'Your email',
      'pt': 'Seu email',
    },
    'rxehmgv0': {
      'en': 'Your Age',
      'pt': 'Sua idade',
    },
    'sybqhzpi': {
      'en': 'i.e. 34',
      'pt': 'ou seja, 34',
    },
    'ny23f7yh': {
      'en': 'Your Telephone',
      'pt': 'Seu telefone',
    },
    'xbofq77e': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
    'mafd7ssc': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // changePassword
  {
    '95brmmsc': {
      'en': 'Change Password',
      'pt': 'Mudar senha',
    },
    'rdpmy83a': {
      'en':
          'Enter the email associated with your account and we will send you link to reset your password.',
      'pt':
          'Digite o e-mail associado à sua conta e enviaremos um link para redefinir sua senha.',
    },
    'ls63rtcg': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    '6rpnpca5': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'pvb9swew': {
      'en': 'Send Reset Link',
      'pt': 'Enviar link de redefinição',
    },
    '2zop5txa': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // notificationsSettings
  {
    'wph935gq': {
      'en': 'Notifications',
      'pt': 'Notificações',
    },
    'dt7xz94y': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'pt':
          'Escolha abaixo quais notificações você deseja receber e atualizaremos as configurações.',
    },
    '0tp263qz': {
      'en': 'Push Notifications',
      'pt': 'Notificações via push',
    },
    '70greml2': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'pt':
          'Receba notificações Push do nosso aplicativo de forma semi-regular.',
    },
    'bvqbjigw': {
      'en': 'Email Notifications',
      'pt': 'Notificações por e-mail',
    },
    'qwz5c4hk': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'pt':
          'Receba notificações por e-mail de nossa equipe de marketing sobre novos recursos.',
    },
    '637klodz': {
      'en': 'Location Services',
      'pt': 'Serviços de localização',
    },
    '80r3vg9s': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'pt':
          'Permita-nos rastrear sua localização, isso ajuda a acompanhar os gastos e mantém você seguro.',
    },
    'hgq823gj': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
    'd8w44fb6': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // privacyPolicy
  {
    'eroz60bg': {
      'en': 'Privacy Policy',
      'pt': 'Política de Privacidade',
    },
    'dw2x8ds8': {
      'en': 'How we use your data',
      'pt': 'Como usamos seus dados',
    },
    'jjtj9qdy': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis at erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla.\n\nEuismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia at quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit.\n\nEt malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis em erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia em quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam mecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia em quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et maleuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus em hac habitasse. Sente-se amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
    },
    'q1ntw159': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // homePage
  {
    '6yccspli': {
      'en': 'Welcome,',
      'pt': 'Bem-vindo,',
    },
    'je4ep0kz': {
      'en': 'Your latest updates are below.',
      'pt': 'Suas atualizações mais recentes estão abaixo.',
    },
    '8xnbokk6': {
      'en': 'Balance',
      'pt': 'Equilíbrio',
    },
    '7eyj8lzq': {
      'en': 'Quick Service',
      'pt': 'Serviço rápido',
    },
    '4dv6sqhw': {
      'en': 'Payment',
      'pt': 'Pagamento',
    },
    'a66tzs1i': {
      'en': 'Bank',
      'pt': 'Atividade',
    },
    'vukrw2o6': {
      'en': 'News',
      'pt': 'Notícia',
    },
    'p2kcwc1k': {
      'en': 'Transaction',
      'pt': 'Transação',
    },
    '250a7zum': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // budget_DELETE
  {
    'kky2mbbx': {
      'en': 'Delete Budget',
      'pt': 'Excluir orçamento',
    },
    'l1o8egeu': {
      'en':
          'If you delete this budget, your transactions will no longer be associated with it.',
      'pt':
          'Se você excluir este orçamento, suas transações não serão mais associadas a ele.',
    },
    'g7yf2jmy': {
      'en': 'Delete Budget',
      'pt': 'Excluir orçamento',
    },
    'v298fzjc': {
      'en': 'Tap above to remove this bude',
      'pt': 'Toque acima para remover este bude',
    },
    'stng9noo': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // list_news
  {
    'uvddt08m': {
      'en': 'News',
      'pt': 'Notícia',
    },
    'l6pdltlr': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // Createbanco
  {
    'pslmclkj': {
      'en': 'Create Bank',
      'pt': 'Criar banco',
    },
    'pg1yyndg': {
      'en': 'Bank Name',
      'pt': 'Nome do banco',
    },
    'x29ydjmt': {
      'en': 'Money',
      'pt': 'Dinheiro',
    },
    '7cx4g340': {
      'en': 'Limit credit',
      'pt': 'Limite de  crédito',
    },
    'irfs58k3': {
      'en': 'Pay Day',
      'pt': 'Dia do pagamento',
    },
    'qq09rpdw': {
      'en': 'Choose Date',
      'pt': 'Escolha a data',
    },
    'e5w3hhzi': {
      'en': 'Do you have a Nubank bank? Use our API',
      'pt': 'Você tem um banco Nubank? Use nossa API',
    },
    'ftkqbtk5': {
      'en': 'Click here to use',
      'pt': 'Clique aqui para usar',
    },
    '3yyiwks8': {
      'en': 'Create Bank',
      'pt': 'Criar banco',
    },
    'vqspfhjb': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'j5qzjt0l': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    '3mirvfrl': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // createnubank
  {
    'zhfi4m0c': {
      'en': 'Enter CPF:',
      'pt': 'Digite CPF:',
    },
    'v77cf84g': {
      'en': 'CPF',
      'pt': 'CPF',
    },
    'emff8xw1': {
      'en': 'Send email',
      'pt': 'Enviar email',
    },
    'gs43n14g': {
      'en': 'Code sent to email:',
      'pt': 'Código enviado para o e-mail:',
    },
    '0oi16v89': {
      'en': 'Code',
      'pt': 'Código',
    },
    '97koyhix': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'dn5qaogh': {
      'en': 'Complete',
      'pt': 'Completo',
    },
    'yawavlfk': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'srkz7qnz': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    '0onn8imw': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // criartransacaofixa
  {
    'gri6be2q': {
      'en': 'Fixed Monthly Fee',
      'pt': 'Taxa mensal fixa',
    },
    '76vga3ev': {
      'en': 'Name Transaction:',
      'pt': 'Transação do nome:',
    },
    'lws0486o': {
      'en': 'Choose the bank to cash:',
      'pt': 'Escolha o banco para sacar:',
    },
    'zu3akhe9': {
      'en': 'Amount',
      'pt': 'Quantia',
    },
    'l7al6tlo': {
      'en': 'Send Transfer',
      'pt': 'Enviar transferência',
    },
    'glwhjbxn': {
      'en': 'Tap above to complete transfer',
      'pt': 'Toque acima para concluir a transferência',
    },
    'k4m1quur': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // editarfaturafixa
  {
    'swpfw89m': {
      'en': 'Edit transaction amount',
      'pt': 'Editar valor da transação',
    },
    '2rngj6c9': {
      'en': '[Some hint text...]',
      'pt': '[Algum texto de dica...]',
    },
    'yg75wegf': {
      'en': '[Some hint text...]',
      'pt': '[Algum texto de dica...]',
    },
    'tokmgbkf': {
      'en': 'Discount monthly:\n',
      'pt': 'Desconto mensal:',
    },
    'chwwm3iu': {
      'en': 'Deduct bank amount:\n',
      'pt': 'Deduzir o valor do banco:',
    },
    '0kwxh2jl': {
      'en': 'discount',
      'pt': 'desconto',
    },
    '1pklpaq8': {
      'en': 'Update Transaction',
      'pt': 'Atualizar transação',
    },
    'es4vvou1': {
      'en': 'Tap above to save your changes.',
      'pt': 'Toque acima para salvar suas alterações.',
    },
    '7kynuof9': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    'uqeqax1u': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // my_banks
  {
    'y79h0rgl': {
      'en': 'My Banks',
      'pt': 'Meus Bancos',
    },
    'sp8v6rwy': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // banco_detalhes
  {
    'kwm6nbi8': {
      'en': 'Transactions',
      'pt': 'Transações',
    },
    'oufvsdcc': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // View_news
  {
    '7ixo0v1u': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // historico
  {
    'll15wbla': {
      'en': 'Historic',
      'pt': 'Histórico',
    },
    'p7ejzv72': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // Editar
  {
    'dfloacs3': {
      'en': 'Edit Bank',
      'pt': 'Editar banco',
    },
    'ky7lr3s8': {
      'en': 'Bank Name',
      'pt': 'Nome do banco',
    },
    'kvl2uph8': {
      'en': 'Money',
      'pt': 'Dinheiro',
    },
    'mn3lb7ow': {
      'en': 'Limit credit',
      'pt': 'Limitar crédito',
    },
    'donj26l7': {
      'en': 'Pay Day',
      'pt': 'Dia do pagamento',
    },
    '3fhyh7df': {
      'en': 'Choose Date',
      'pt': 'Escolha a data',
    },
    'jsdqds5p': {
      'en': 'Edit Bank',
      'pt': 'Editar banco',
    },
    'q4ce7ebt': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    '4s7jtsqb': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    '69qf6tu9': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // tutorial_PROFILE
  {
    'wa0ntpvu': {
      'en': 'Tutorial',
      'pt': 'Tutorial',
    },
    'o9v2qy7j': {
      'en': 'Create Budgets',
      'pt': 'Criar orçamentos',
    },
    'b2bk12v9': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'pt':
          'Crie orçamentos que você também possa vincular transações para facilitar o rastreamento.',
    },
    'qz3f8cgg': {
      'en': 'Keep Track of Spending',
      'pt': 'Acompanhe os gastos',
    },
    '2vdx60nz': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'pt':
          'Adicione transações facilmente e associe-as aos orçamentos que foram criados.',
    },
    '08ger52f': {
      'en': 'Budget Analysis',
      'pt': 'Análise de orçamento',
    },
    'mqgr2pzd': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'pt': 'Saiba onde estão seus orçamentos e como eles podem ser ajustados.',
    },
    'z9lqnoz0': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // createnews
  {
    'xnkq7gbx': {
      'en': 'Create News',
      'pt': 'Criar notícias',
    },
    'pt2cv6rf': {
      'en': 'Title',
      'pt': 'Título',
    },
    'nhhcfv8l': {
      'en': 'Content',
      'pt': 'Contente',
    },
    'wic8mont': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    '7sckmet5': {
      'en': 'Create News',
      'pt': 'Criar notícias',
    },
    'wybir9l6': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    '6n4ncsk6': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    'y5e1hp6x': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // listartransacaofixa
  {
    'dhh42l3k': {
      'en': 'Fixed Invoices\n',
      'pt': 'Faturas Fixas',
    },
    'o3ezc8v2': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // createType
  {
    'etlbv6pe': {
      'en': 'Create type',
      'pt': 'Criar tipo',
    },
    'p6nsp1n1': {
      'en': 'Create a transaction type :',
      'pt': 'Crie um tipo de transação:',
    },
    'g20n6uci': {
      'en': 'Name type:',
      'pt': 'Tipo de nome:',
    },
    'h0v1w8rv': {
      'en': 'Name type',
      'pt': 'Tipo de nome',
    },
    'w4g49rb6': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'mwsx0o3d': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
  },
  // pagar
  {
    '9wkc9rfq': {
      'en': 'Pay installment:',
      'pt': 'Parcelamento de pagamento:',
    },
    'ztuerhkk': {
      'en': 'Pay and cash',
      'pt': 'Pague e dinheiro',
    },
    'hm94cpcc': {
      'en': 'Pay',
      'pt': 'Pagar',
    },
  },
  // Miscellaneous
  {
    'yooklewr': {
      'en': '',
      'pt': '',
    },
    'cx8r006h': {
      'en': '',
      'pt': '',
    },
    'xus3l7pp': {
      'en': 'Error:[error]',
      'pt': 'Error:[error]',
    },
    '9ujdncge': {
      'en': 'Password reset email sent!',
      'pt': 'Email de redefinição de senha enviado!',
    },
    'foxe69zw': {
      'en': 'Email required!',
      'pt': 'Email (obrigatório!',
    },
    '0bhk0592': {
      'en': 'Phone number required and has to start with +.',
      'pt': 'Número de telefone obrigatório e deve começar com +.',
    },
    'rxkwrg6l': {
      'en': 'Passwords don\'t match',
      'pt': 'As senhas não correspondem',
    },
    'yj3u795u': {
      'en': 'Enter SMS verification code',
      'pt': 'Digite o código de verificação por SMS',
    },
    'u7oxsxhy': {
      'en': '',
      'pt': '',
    },
    'r65xuzht': {
      'en': '',
      'pt': '',
    },
    '4sh8svli': {
      'en': '',
      'pt': '',
    },
    'ec13zilv': {
      'en': '',
      'pt': '',
    },
    'ymdtbb0v': {
      'en': '',
      'pt': '',
    },
    'saq7bxcm': {
      'en': '',
      'pt': '',
    },
    'ouv1hqi3': {
      'en': '',
      'pt': '',
    },
    'vxgl87rn': {
      'en': '',
      'pt': '',
    },
    'ugmyw48b': {
      'en': '',
      'pt': '',
    },
    'dqkaii5i': {
      'en': '',
      'pt': '',
    },
    'bv6402pp': {
      'en': '',
      'pt': '',
    },
    'eodijetg': {
      'en': '',
      'pt': '',
    },
    '7ufayvzh': {
      'en': '',
      'pt': '',
    },
    '26qsp1t7': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
