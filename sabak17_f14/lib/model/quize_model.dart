class Quize {
  const Quize(this.question, this.answer);
  final String question;
  final bool answer;
}

const q1 = Quize('Кыргызстан Борбор Азия мамлекеттерине киреби?', true); 
const q2 = Quize('Ысык-Көл Швейцарияда жайганканбы?', false);
const q3 = Quize('Нарын дарыясы Тынч Океанга куябы?', false);
const q4 = Quize('Баткенде Крокадиль жашайбы? ', false);
const q5 = Quize('Кыргызстанда 50 000000 адам жашабайбы?', true);
const q6 = Quize('Ноудбук менен Вебсайтка кирсе болобу?', true);

const quizess = <Quize>[q1, q2, q3, q4, q5, q6];
