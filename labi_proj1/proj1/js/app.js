


const questionNumber = document.querySelector(".question-number");
const questionText = document.querySelector(".question-text");
const optionContainer = document.querySelector(".option-container");
const answersIndicatorContainer = document.querySelector(".answers-indicator");
const homeBox = document.querySelector(".home-box");
const quizBox = document.querySelector(".quiz-box");
const resultBox = document.querySelector(".result-box");

let questionCounter = 0;
let currentQuestion;
let availableQuestions = [];
let availableOptions = [];
let correctAnswers = 0;
let attempt = 0;

function setAvailableQuestions(){
	const totalQuestion = quiz.length;
	for (let i = 0; i < totalQuestion; i++){
		availableQuestions.push(quiz[i])
	}
} 

function getNewQuestion() {
	//numero da questao
	questionNumber.innerHTML = "Question " + (questionCounter + 1) + " of " + 7;//numero de quetoes totallllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
	//texto da questao
	//random questao
	const questionIndex = availableQuestions[Math.floor(Math.random()* availableQuestions.length)]
	currentQuestion = questionIndex;
	questionText.innerHTML = currentQuestion.q;
	
	const index1 = availableQuestions.indexOf(questionIndex);
	availableQuestions.splice(index1,1);
	
	//opcoes
	//tamanho das opcoes
	const optionlen = currentQuestion.options.length
	for (let i = 0; i < optionlen; i++)
	{
		availableOptions.push(i)
	}
	
	optionContainer.innerHTML = '';
	let animationDelay = 0.15;
	//opcoes no html
	for (i = 0; i < optionlen; i++)
	{
		const optonIndex = availableOptions[Math.floor(Math.random() * availableOptions.length)]
		const index2 = availableOptions.indexOf(optonIndex);
		availableOptions.splice(index2,1);
		const option = document.createElement("div");
		option.innerHTML = currentQuestion.options[i];
		option.id = i ;
		option.style.animationDelay = animationDelay + "s";
		animationDelay = animationDelay+0.15;
		option.className = "option";
		optionContainer.appendChild(option)
		option.setAttribute("onclick","getResult(this)");
		
	}
	
	
	questionCounter++;
}

function getResult(element){
	const id = parseInt(element.id);
	if (id === currentQuestion.answer)
	{
		element.classList.add("correct");
		updateAnswerIndicator("correct");
		correctAnswers++;
		console.log("correct:"+correctAnswers )
		
	}
	else
	{
		element.classList.add("wrong");
		updateAnswerIndicator("wrong");
		// if errado mostrar certo
		const optionLen = optionContainer.children.length;
		for (let i = 0; i < optionLen; i++)
		{
			if (parseInt(optionContainer.children[i].id) === currentQuestion.answer)
			{
				optionContainer.children[i].classList.add("correct")
			}
		}
	}
	attempt++;
	unclickableOptions();
}
// o resto das questoes n podem ser clicadas apos a clickar uma vez
function unclickableOptions(){
	const optionLen = optionContainer.children.length;
	for (let i = 0; i < optionLen; i++)
	{
		optionContainer.children[i].classList.add("already-answered")
	}
}

function answersIndicator(){
		answersIndicatorContainer.innerHTML='';
		const totalQuestion = 7; //num de perguntasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
		for (let i = 0; i < totalQuestion; i++)
		{
			const indicator = document.createElement("div");
			answersIndicatorContainer.appendChild(indicator);
			
			
		}
}

function updateAnswerIndicator(markType){
	answersIndicatorContainer.children[questionCounter-1].classList.add(markType)
}
function next(){
	if(questionCounter === 7){ // quando quiz acabaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
		console.log("quiz over")
		quizOver();
	}
	else
	{
		getNewQuestion();
	}
	
}

function quizOver(){
	quizBox.classList.add("hide");
	resultBox.classList.remove("hide");
	quizResult();	
}

function quizResult(){
	resultBox.querySelector(".total-question").innerHTML = 7 // numero de total questoessssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
	resultBox.querySelector(".total-correct").innerHTML = correctAnswers;
	resultBox.querySelector(".total-wrong").innerHTML = attempt-correctAnswers;
	resultBox.querySelector(".total-missed").innerHTML = 7-attempt;
	resultBox.querySelector(".total-score").innerHTML = correctAnswers+"/" + 7
	
}

function resetQuiz(){
	questionCounter = 0;
	correctAnswers = 0;
	attempt = 0;
}

function tryagainQuiz(){
	resultBox.classList.add("hide");
	quizBox.classList.remove("hide");
	resetQuiz();
	startQuiz();
}

/*function goToHome(){
	resultBox.classList.add("hide");
	homeBox.classList.remove("hide");
	resetQuiz();
}*/
function startQuiz(){
	
	homeBox.classList.add("hide");
	quizBox.classList.remove("hide");
	
	setAvailableQuestions();
	
	getNewQuestion();
	
	answersIndicator();

}
