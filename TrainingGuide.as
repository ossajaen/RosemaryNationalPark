package {

	import flash.display.*;
	import flash.events.*;
	import flash.geom.ColorTransform;
	import flash.utils.*;
	import flash.media.*;
	import flash.net.*;
	import flash.ui.Keyboard;
	import flash.text.*;

	public class TrainingGuide extends MovieClip {

		//SOUND DESIGN
		//beep
		public var beep: Sound = new Sound();
		public var beepURL: URLRequest = new URLRequest("beep.mp3");
		public var channel1: SoundChannel = new SoundChannel();
		public var beepVol: SoundTransform = new SoundTransform();
		//beat
		public var beat: Sound = new Sound();
		public var beatURL: URLRequest = new URLRequest("beat.mp3");
		public var beatVol: SoundTransform = new SoundTransform();
		//story
		public var story: Sound = new Sound();
		public var storyURL: URLRequest = new URLRequest("story.mp3");
		public var storyVol: SoundTransform = new SoundTransform();

		public var glitch: Array;
		public var colorG: ColorTransform;
		public var timer: Timer;

		public var home: Home; //welcome screen
		public var homebtn: Home_Btn; //start button
		public var homeinst: HomeInst; //direction screen
		public var yesibtn: Yes_Btn; //direction screen button for yes
		public var noibtn: No_Btn; //direction screen button for no
		public var rusure: RUSure; //are you sure screen
		public var tryagain: TryAgain; //try again screen
		public var yesrusbtn: Yes_Btn; //are you sure yes button
		public var norusbtn: No_Btn; //are you sure no button
		public var q1: Q1; //first game, the card memory game
		public var yesgmbtn: Yes_Btn; //good memory yes button
		public var nogmbtn: No_Btn; //good memory no button
		public var showus: ShowUs; //show us screen
		public var game1inst: Game1Inst; //game 1 instruction screen

		//GAME ONE
		public var cmtbtn: Cmt_Btn; //t
		public var cmt2btn: Cmt_Btn; //t
		public var cmrbtn: Cmr_Btn; //r
		public var cmobtn: Cmo_Btn; //o
		public var cmo2btn: Cmo_Btn; //o
		public var cmo3btn: Cmo_Btn; //o
		public var cmnbtn: Cmn_Btn; //n
		public var cmgbtn: Cmg_Btn; //g
		public var cmfbtn: Cmf_Btn; //f
		public var cmebtn: Cme_Btn; //e
		public var cmdbtn: Cmd_Btn; //d
		public var cmbtn: Cm_Btn; //blank
		public var cm6btn: Cm6_Btn;
		public var cm5btn: Cm5_Btn;
		public var cm4btn: Cm4_Btn;
		public var cm3btn: Cm3_Btn;
		public var cm2btn: Cm2_Btn;
		public var cm1btn: Cm1_Btn;
		public var cm62btn: Cm6_Btn;
		public var cm52btn: Cm5_Btn;
		public var cm42btn: Cm4_Btn;
		public var cm32btn: Cm3_Btn;
		public var cm22btn: Cm2_Btn;
		public var cm12btn: Cm1_Btn;

		//GAME TWO
		public var goodjob: GoodJob; //good job screen
		public var game2inst: Game2Inst; //good job screen
		public var game2btn: Game2Buttons;
		public var glitch1: Glitch1;
		public var glitch2: Glitch2;
		public var glitch3: Glitch3;
		public var glitch4: Glitch4;
		public var glitch5: Glitch5;
		public var glitch6: Glitch6;
		public var glitch7: Glitch7;

		//GAME THREE
		public var game3home: Game3Home;
		public var game3inst: Game3Inst;
		public var wrong: WrongBtn;
		public var g3a1: Game3A1;
		public var g3q1: Game3Q1;
		public var q1btn1: Game3Q1Btn1;
		public var q1btn2: Game3Q1Btn2;
		public var g3a2: Game3A2;
		public var g3q2: Game3Q2;
		public var q2btn1: Game3Q2Btn1;
		public var q2btn2: Game3Q2Btn2;
		public var g3a3: Game3A3;
		public var g3q3: Game3Q3;
		public var q3btn1: Game3Q3Btn1;
		public var q3btn2: Game3Q3Btn2;
		public var g3a4: Game3A4;
		public var g3q4: Game3Q4;
		public var q4btn1: Game3Q4Btn1;
		public var q4btn2: Game3Q4Btn2;
		public var g3a5: Game3A5;
		public var g3q5: Game3Q5;
		public var q5btn1: Game3Q5Btn1;
		public var q5btn2: Game3Q5Btn2;
		public var g3a6: Game3A6;
		public var g3q6: Game3Q6;
		public var q6btn1: Game3Q6Btn1;
		public var q6btn2: Game3Q6Btn2;
		public var g3a7: Game3A7;
		public var g3q7: Game3Q7;
		public var q7btn1: Game3Q7Btn1;
		public var q7btn2: Game3Q7Btn2;
		public var g3a8: Game3A8;
		public var g3q8: Game3Q8;
		public var q8btn1: Game3Q8Btn1;
		public var q8btn2: Game3Q8Btn2;
		public var g3a9: Game3A9;
		public var g3q9: Game3Q9;
		public var q9btn1: Game3Q9Btn1;
		public var q9btn2: Game3Q9Btn2;
		public var g3a10: Game3A10;
		public var g3q10: Game3Q10;
		public var q10btn1: Game3Q10Btn1;
		public var q10btn2: Game3Q10Btn2;

		//GAME FOUR
		public var game4inst: Game4Inst;
		public var g4q1: G4Q1;
		public var g4q2: G4Q2;
		public var g4q3: G4Q3;
		public var g4q4: G4Q4;
		public var g4q5: G4Q5;
		public var g4q6: G4Q6;
		public var g4q7: G4Q7;
		public var g4q9: G4Q9;
		public var g4q10: G4Q10;
		public var g4q11: G4Q11;
		public var g4q12: G4Q12;
		public var ans1: TextField = new TextField();
		public var ans2: TextField = new TextField();
		public var ans3: TextField = new TextField();
		public var ans4: TextField = new TextField();
		public var ans5: TextField = new TextField();
		public var ans6: TextField = new TextField();
		public var ans7: TextField = new TextField();
		public var ans9: TextField = new TextField();
		public var ans10: TextField = new TextField();
		public var ans11: TextField = new TextField();
		public var ans12: TextField = new TextField();

		public var q: int = 0;
		public var ansg4: int = 0;
		
		public var goodend: GoodEnd;
		public var badend: BadEnd;

		public var myTimer: Timer = new Timer(100, 4);

		public function TrainingGuide() {
			beepVol.volume = .5;
			beatVol.volume = .3;
			storyVol.volume = .3;
			beep.load(beepURL);
			beat.load(beatURL);
			story.load(storyURL);

			glitch = new Array();
			colorG = new ColorTransform();

			home = new Home(stage.stageWidth / 2, stage.stageHeight / 2);
			homebtn = new Home_Btn(stage.stageWidth / 2, 407);
			homeinst = new HomeInst(stage.stageWidth / 2, stage.stageHeight / 2);
			yesibtn = new Yes_Btn(stage.stageWidth / 4, 350);
			noibtn = new No_Btn(3 * stage.stageWidth / 4, 350);
			rusure = new RUSure(stage.stageWidth / 2, stage.stageHeight / 2);
			tryagain = new TryAgain(stage.stageWidth / 2, stage.stageHeight / 2);
			yesrusbtn = new Yes_Btn(stage.stageWidth / 4, 350);
			norusbtn = new No_Btn(3 * stage.stageWidth / 4, 350);
			q1 = new Q1(stage.stageWidth / 2, stage.stageHeight / 2);
			yesgmbtn = new Yes_Btn(stage.stageWidth / 4, 350);
			nogmbtn = new No_Btn(3 * stage.stageWidth / 4, 350);
			showus = new ShowUs(stage.stageWidth / 2, stage.stageHeight / 2);
			game1inst = new Game1Inst(stage.stageWidth / 2, stage.stageHeight / 2);

			cmdbtn = new Cmd_Btn(300, 100);
			cmobtn = new Cmo_Btn(stage.stageWidth / 2, 100);
			cmbtn = new Cm_Btn(660, 100);
			cmnbtn = new Cmn_Btn(300, 210);
			cmo2btn = new Cmo_Btn(stage.stageWidth / 2, 210);
			cmtbtn = new Cmt_Btn(660, 210);
			cmfbtn = new Cmf_Btn(300, 320);
			cmo3btn = new Cmo_Btn(stage.stageWidth / 2, 320);
			cmrbtn = new Cmr_Btn(660, 320);
			cmgbtn = new Cmg_Btn(300, 430);
			cmebtn = new Cme_Btn(stage.stageWidth / 2, 430);
			cmt2btn = new Cmt_Btn(660, 430);

			cm6btn = new Cm6_Btn(stage.stageWidth / 2, 100);
			cm5btn = new Cm5_Btn(660, 320);
			cm4btn = new Cm4_Btn(660, 430);
			cm3btn = new Cm3_Btn(660, 210);
			cm2btn = new Cm2_Btn(300, 210);
			cm1btn = new Cm1_Btn(stage.stageWidth / 2, 210);
			cm62btn = new Cm6_Btn(stage.stageWidth / 2, 320);
			cm52btn = new Cm5_Btn(stage.stageWidth / 2, 430);
			cm42btn = new Cm4_Btn(300, 320);
			cm32btn = new Cm3_Btn(300, 430);
			cm22btn = new Cm2_Btn(660, 100);
			cm12btn = new Cm1_Btn(300, 100);

			goodjob = new GoodJob(stage.stageWidth / 2, stage.stageHeight / 2);
			game2inst = new Game2Inst(stage.stageWidth / 2, stage.stageHeight / 2);
			game2btn = new Game2Buttons(stage.stageWidth / 2, stage.stageHeight / 2);
			glitch1 = new Glitch1(stage.stageWidth / 2, stage.stageHeight / 2);
			glitch2 = new Glitch2(stage.stageWidth / 2, stage.stageHeight / 2);
			glitch3 = new Glitch3(stage.stageWidth / 2, stage.stageHeight / 2);
			glitch4 = new Glitch4(stage.stageWidth / 2, stage.stageHeight / 2);
			glitch5 = new Glitch5(stage.stageWidth / 2, stage.stageHeight / 2);
			glitch6 = new Glitch6(stage.stageWidth / 2, stage.stageHeight / 2);
			glitch7 = new Glitch7(stage.stageWidth / 2, stage.stageHeight / 2);

			game3home = new Game3Home(stage.stageWidth / 2, stage.stageHeight / 2);
			game3inst = new Game3Inst(stage.stageWidth / 2, stage.stageHeight / 2);
			wrong = new WrongBtn(stage.stageWidth / 2, stage.stageHeight / 2);
			g3a1 = new Game3A1(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q1 = new Game3Q1(stage.stageWidth / 2, stage.stageHeight / 2);
			q1btn1 = new Game3Q1Btn1(stage.stageWidth / 4, 440);
			q1btn2 = new Game3Q1Btn2(3 * stage.stageWidth / 4, 440);
			g3a2 = new Game3A2(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q2 = new Game3Q2(stage.stageWidth / 2, stage.stageHeight / 2);
			q2btn1 = new Game3Q2Btn1(stage.stageWidth / 4, 440);
			q2btn2 = new Game3Q2Btn2(3 * stage.stageWidth / 4, 440);
			g3a3 = new Game3A3(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q3 = new Game3Q3(stage.stageWidth / 2, stage.stageHeight / 2);
			q3btn1 = new Game3Q3Btn1(stage.stageWidth / 4, 440);
			q3btn2 = new Game3Q3Btn2(3 * stage.stageWidth / 4, 440);
			g3a4 = new Game3A4(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q4 = new Game3Q4(stage.stageWidth / 2, stage.stageHeight / 2);
			q4btn1 = new Game3Q4Btn1(stage.stageWidth / 4, 440);
			q4btn2 = new Game3Q4Btn2(3 * stage.stageWidth / 4, 440);
			g3a5 = new Game3A5(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q5 = new Game3Q5(stage.stageWidth / 2, stage.stageHeight / 2);
			q5btn1 = new Game3Q5Btn1(stage.stageWidth / 4, 440);
			q5btn2 = new Game3Q5Btn2(3 * stage.stageWidth / 4, 440);
			g3a6 = new Game3A6(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q6 = new Game3Q6(stage.stageWidth / 2, stage.stageHeight / 2);
			q6btn1 = new Game3Q6Btn1(stage.stageWidth / 4, 440);
			q6btn2 = new Game3Q6Btn2(3 * stage.stageWidth / 4, 440);
			g3a7 = new Game3A7(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q7 = new Game3Q7(stage.stageWidth / 2, stage.stageHeight / 2);
			q7btn1 = new Game3Q7Btn1(stage.stageWidth / 4, 440);
			q7btn2 = new Game3Q7Btn2(3 * stage.stageWidth / 4, 440);
			g3a8 = new Game3A8(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q8 = new Game3Q8(stage.stageWidth / 2, stage.stageHeight / 2);
			q8btn1 = new Game3Q8Btn1(stage.stageWidth / 4, 440);
			q8btn2 = new Game3Q8Btn2(3 * stage.stageWidth / 4, 440);
			g3a9 = new Game3A9(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q9 = new Game3Q9(stage.stageWidth / 2, stage.stageHeight / 2);
			q9btn1 = new Game3Q9Btn1(stage.stageWidth / 4, 440);
			q9btn2 = new Game3Q9Btn2(3 * stage.stageWidth / 4, 440);
			g3a10 = new Game3A10(stage.stageWidth / 2, stage.stageHeight / 2);
			g3q10 = new Game3Q10(stage.stageWidth / 2, stage.stageHeight / 2);
			q10btn1 = new Game3Q10Btn1(stage.stageWidth / 4, 440);
			q10btn2 = new Game3Q10Btn2(3 * stage.stageWidth / 4, 440);

			game4inst = new Game4Inst(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q1 = new G4Q1(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q2 = new G4Q2(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q3 = new G4Q3(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q4 = new G4Q4(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q5 = new G4Q5(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q6 = new G4Q6(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q7 = new G4Q7(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q9 = new G4Q9(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q10 = new G4Q10(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q11 = new G4Q11(stage.stageWidth / 2, stage.stageHeight / 2);
			g4q12 = new G4Q12(stage.stageWidth / 2, stage.stageHeight / 2);

			ans1.type = TextFieldType.INPUT;
			ans1.border = true;
			ans1.x = stage.stageWidth / 2 - 100;
			ans1.y = stage.stageHeight / 2;
			ans1.width = 200;
			ans1.height = 30;
			ans1.restrict = "^A-Z";

			ans2.type = TextFieldType.INPUT;
			ans2.border = true;
			ans2.x = stage.stageWidth / 2 - 100;
			ans2.y = stage.stageHeight / 2;
			ans2.width = 200;
			ans2.height = 30;

			ans3.type = TextFieldType.INPUT;
			ans1.restrict = "^A-Z";
			ans3.border = true;
			ans3.x = stage.stageWidth / 2 - 100;
			ans3.y = stage.stageHeight / 2;
			ans3.width = 200;
			ans3.height = 30;

			ans4.type = TextFieldType.INPUT;
			ans1.restrict = "^A-Z";
			ans4.border = true;
			ans4.x = stage.stageWidth / 2 - 100;
			ans4.y = stage.stageHeight / 2;
			ans4.width = 200;
			ans4.height = 30;

			ans5.type = TextFieldType.INPUT;
			ans1.restrict = "^A-Z";
			ans5.border = true;
			ans5.x = stage.stageWidth / 2 - 100;
			ans5.y = stage.stageHeight / 2;
			ans5.width = 200;
			ans5.height = 30;

			ans6.type = TextFieldType.INPUT;
			ans1.restrict = "^A-Z";
			ans6.border = true;
			ans6.x = stage.stageWidth / 2 - 100;
			ans6.y = stage.stageHeight / 2;
			ans6.width = 200;
			ans6.height = 30;

			ans7.type = TextFieldType.INPUT;
			ans1.restrict = "^A-Z";
			ans7.border = true;
			ans7.x = stage.stageWidth / 2 - 100;
			ans7.y = stage.stageHeight / 2;
			ans7.width = 200;
			ans7.height = 30;

			ans9.type = TextFieldType.INPUT;
			ans1.restrict = "^A-Z";
			ans9.border = true;
			ans9.x = stage.stageWidth / 2 - 100;
			ans9.y = stage.stageHeight / 2;
			ans9.width = 200;
			ans9.height = 30;

			ans10.type = TextFieldType.INPUT;
			ans1.restrict = "^A-Z";
			ans10.border = true;
			ans10.x = stage.stageWidth / 2 - 100;
			ans10.y = stage.stageHeight / 2;
			ans10.width = 200;
			ans10.height = 30;

			ans11.type = TextFieldType.INPUT;
			ans1.restrict = "^A-Z";
			ans11.border = true;
			ans11.x = stage.stageWidth / 2 - 100;
			ans11.y = stage.stageHeight / 2;
			ans11.width = 200;
			ans11.height = 30;

			ans12.type = TextFieldType.INPUT;
			ans1.restrict = "^A-Z";
			ans12.border = true;
			ans12.x = stage.stageWidth / 2 - 100;
			ans12.y = stage.stageHeight / 2;
			ans12.width = 200;
			ans12.height = 30;
			
			goodend = new GoodEnd(stage.stageWidth / 2, stage.stageHeight / 2);
			badend = new BadEnd(stage.stageWidth / 2, stage.stageHeight / 2);

			addChild(home);
			addChild(homebtn);

			homebtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(homeinst);
					addChild(yesibtn);
					addChild(noibtn);
				});

			yesibtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(rusure);
					addChild(yesrusbtn);
					addChild(norusbtn);
				});

			noibtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(tryagain);
				});

			yesrusbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					var d1: int = 0;
					createGlitch();
					myTimer.addEventListener(TimerEvent.TIMER_COMPLETE,
						function (event: TimerEvent): void {
							d1 += 1;
							if (d1 == 1) {
								while (numChildren > 0) {
									removeChildAt(0);
								}
								addChild(q1);
								addChild(yesgmbtn);
								addChild(nogmbtn);
							}
						});
				});

			norusbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(tryagain);
				});

			yesgmbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(showus)
					setTimeout(function (): void {
						addChild(game1inst);
					}, 1500);
					setTimeout(function (): void {
						gameOne();
					}, 3000);
				});

			nogmbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(showus);
					setTimeout(function (): void {
						addChild(game1inst);
					}, 1500);
					setTimeout(function (): void {
						gameOne();
					}, 3000);
				});
		}

		public function createGlitch(): void {
			myTimer.addEventListener(TimerEvent.TIMER, runMany)
			myTimer.start();
		}

		public function runMany(event: TimerEvent) {
			while (numChildren > 0) {
				removeChildAt(0);
			}
			for (var i: int = 0; i <= 50; i++) {
				for (var j: int = 0; j <= 50; j++) {
					var currentG: Glitch = new Glitch(i * 20, j * 20);
					// randomize color
					var colornum = Math.random();
					if (percent >= 0.66) {
						colorG.color = 0x606060;
						currentG.transform.colorTransform = colorG;
					} else if (percent <= 0.33) {
						colorG.color = 0x808080;
						currentG.transform.colorTransform = colorG;
					} else {
						colorG.color = 0x111111;
						currentG.transform.colorTransform = colorG;
					}
					//randomize location
					var percent = Math.random();
					if (percent <= 0.25) {
						currentG.alpha = getRandomNum(0.3, 1);
						glitch.push(currentG);
						addChild(currentG);
					}
				}
			}
		}

		public function getRandomNum(min, max) {
			return Math.random() * (max - min) + min;
		}

		public function gameOne() {
			var sec: int = 2000;
			var check: int = 0;
			var check1: int = 0;
			var check2: int = 0;
			var check3: int = 0;
			var check4: int = 0;
			var check5: int = 0;

			while (numChildren > 0) {
				removeChildAt(0);
			}

			addChild(cm6btn);
			addChild(cm5btn);
			addChild(cm4btn);
			addChild(cm3btn);
			addChild(cm2btn);
			addChild(cm1btn);
			addChild(cm62btn);
			addChild(cm52btn);
			addChild(cm42btn);
			addChild(cm32btn);
			addChild(cm22btn);
			addChild(cm12btn);

			setTimeout(function (): void {
				addChild(cmdbtn);
				addChild(cmobtn);
				addChild(cmbtn);
				addChild(cmnbtn);
				addChild(cmo2btn);
				addChild(cmtbtn);
				addChild(cmfbtn);
				addChild(cmo3btn);
				addChild(cmrbtn);
				addChild(cmgbtn);
				addChild(cmebtn);
				addChild(cmt2btn);
			}, 3000);

			cmdbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmdbtn);
					check += 1;
					setTimeout(function (): void {
						if (check % 2 == 0) {
							trace("one");
						} else {
							addChild(cmdbtn);
							addChild(cmo2btn);
							check += -1;
						}
					}, sec);
				});

			cmobtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmobtn);
					check1 += 1;
					setTimeout(function (): void {
						if (check1 % 2 == 0) {
							trace("two");
						} else {
							addChild(cmobtn);
							addChild(cmo3btn);
							check1 += -1;
						}
					}, sec);
				});

			cmbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmbtn);
					check2 += 1;
					setTimeout(function (): void {
						if (check2 % 2 == 0) {
							trace("three");
						} else {
							addChild(cmbtn);
							addChild(cmnbtn);
							check2 += -1;
						}
					}, sec);
				});

			cmnbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmnbtn);
					check2 += 1;
					setTimeout(function (): void {
						if (check2 % 2 == 0) {
							trace("three");
						} else {
							addChild(cmbtn);
							addChild(cmnbtn);
							check2 += -1;
						}
					}, sec);
				});

			cmo2btn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmo2btn);
					check += 1;
					setTimeout(function (): void {
						if (check % 2 == 0) {
							trace("one");
						} else {
							addChild(cmdbtn);
							addChild(cmo2btn);
							check += -1;
						}
					}, sec);
				});

			cmtbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmtbtn);
					check3 += 1;
					setTimeout(function (): void {
						if (check3 % 2 == 0) {
							trace("four");
						} else {
							addChild(cmtbtn);
							addChild(cmgbtn);
							check3 += -1;
						}
					}, sec);
				});

			cmfbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmfbtn);
					check4 += 1;
					setTimeout(function (): void {
						if (check4 % 2 == 0) {
							trace("five");
						} else {
							addChild(cmfbtn);
							addChild(cmt2btn);
							check4 += -1;
						}
					}, sec);
				});

			cmo3btn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmo3btn);
					check1 += 1;
					setTimeout(function (): void {
						if (check1 % 2 == 0) {
							trace("two");
						} else {
							addChild(cmobtn);
							addChild(cmo3btn);
							check1 += -1;
						}
					}, sec);
				});

			cmrbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmrbtn);
					check5 += 1;
					setTimeout(function (): void {
						if (check5 % 2 == 0) {
							trace("six");
						} else {
							addChild(cmrbtn);
							addChild(cmebtn);
							check5 += -1;
						}
					}, sec);
				});

			cmgbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmgbtn);
					check3 += 1;
					setTimeout(function (): void {
						if (check3 % 2 == 0) {
							trace("four");
						} else {
							addChild(cmtbtn);
							addChild(cmgbtn);
							check3 += -1;
						}
					}, sec);
				});

			cmebtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmebtn);
					check5 += 1;
					setTimeout(function (): void {
						if (check5 % 2 == 0) {
							trace("six");
						} else {
							addChild(cmrbtn);
							addChild(cmebtn);
							check5 += -1;
						}
					}, sec);
				});

			cmt2btn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					removeChild(cmt2btn);
					check4 += 1;
					setTimeout(function (): void {
						if (check4 % 2 == 0) {
							trace("five");
						} else {
							addChild(cmfbtn);
							addChild(cmt2btn);
							check4 += -1;
						}
					}, sec);
				});

			var g1Timer: Timer = new Timer(2000, 100);
			g1Timer.addEventListener(TimerEvent.TIMER,
				function (event: TimerEvent) {
					if (check == 2 && check1 == 2 && check2 == 2 && check3 == 2 && check4 == 2 && check5 == 2) {
						check = 0;
						check1 = 0;
						check2 = 0;
						check3 = 0;
						check4 = 0;
						check5 = 0;
						while (numChildren > 0) {
							removeChildAt(0);
						}
						gameTwo();
					}
				});
			g1Timer.start();
		}

		public function gameTwo() {
			addChild(goodjob);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(game2inst);
			}, 2000);
			setTimeout(function (): void {
				beat.play();
			}, 4000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(game2btn);
			}, 4000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(glitch1);
			}, 6150);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(glitch2);
			}, 16000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(glitch3);
			}, 22000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(glitch4);
			}, 28000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(glitch5);
			}, 34000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(glitch6);
			}, 40000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(glitch7);
			}, 46000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(game2btn);
			}, 56000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(goodjob);
			}, 58000);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				gameThree();
			}, 61000);
		}

		public function gameThree() {
			addChild(game3home);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(game3inst);
			}, 3000);

			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(g3a1);
			}, 5000);

			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(g3q1);
				addChild(q1btn1);
				addChild(q1btn2);
			}, 7000);
			q1btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(g3a2);
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q2);
						addChild(q2btn1);
						addChild(q2btn2);
					}, 3000);
				});
			q1btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q1);
						addChild(q1btn1);
						addChild(q1btn2);
					}, 1000);
				});

			q2btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(g3a3);
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q3);
						addChild(q3btn1);
						addChild(q3btn2);
					}, 3000);
				});
			q2btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					beepVol.volume += .1;
					channel1.soundTransform = beepVol;
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q2);
						addChild(q2btn1);
						addChild(q2btn2);
					}, 1000);
				});

			q3btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					beepVol.volume += .1;
					channel1.soundTransform = beepVol;
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q3);
						addChild(q3btn1);
						addChild(q3btn2);
					}, 1000);
				});
			q3btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(g3a4);
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q4);
						addChild(q4btn1);
						addChild(q4btn2);
					}, 3000);
				});

			q4btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					beepVol.volume += .1;
					channel1.soundTransform = beepVol;
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q4);
						addChild(q4btn1);
						addChild(q4btn2);
					}, 1000);
				});
			q4btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(g3a5);
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q5);
						addChild(q5btn1);
						addChild(q5btn2);
					}, 3000);
				});

			q5btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					beepVol.volume += .1;
					channel1.soundTransform = beepVol;
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q5);
						addChild(q5btn1);
						addChild(q5btn2);
					}, 1000);
				});
			q5btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(g3a6);
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q6);
						addChild(q6btn1);
						addChild(q6btn2);
					}, 3000);
				});

			q6btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					beepVol.volume += .1;
					channel1.soundTransform = beepVol;
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q6);
						addChild(q6btn1);
						addChild(q6btn2);
					}, 1000);
				});
			q6btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(g3a7);
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q7);
						addChild(q7btn1);
						addChild(q7btn2);
					}, 3000);
				});

			q7btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(g3a8);
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q8);
						addChild(q8btn1);
						addChild(q8btn2);
					}, 3000);
				});
			q7btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					beepVol.volume += .1;
					channel1.soundTransform = beepVol;
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q7);
						addChild(q7btn1);
						addChild(q7btn2);
					}, 1000);
				});

			q8btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(g3a9);
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q9);
						addChild(q9btn1);
						addChild(q9btn2);
					}, 3000);
				});
			q8btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					beepVol.volume += .1;
					channel1.soundTransform = beepVol;
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q8);
						addChild(q8btn1);
						addChild(q8btn2);
					}, 1000);
				});

			q9btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					beepVol.volume += .1;
					channel1.soundTransform = beepVol;
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q9);
						addChild(q9btn1);
						addChild(q9btn2);
					}, 1000);
				});
			q9btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(g3a10);
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q10);
						addChild(q10btn1);
						addChild(q10btn2);
					}, 3000);
				});

			q10btn1.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					addChild(wrong);
					beepVol.volume += .1;
					channel1.soundTransform = beepVol;
					channel1 = beep.play();
					setTimeout(function (): void {
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g3q10);
						addChild(q10btn1);
						addChild(q10btn2);
					}, 1000);
				});
			q10btn2.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(goodjob);
					setTimeout(function (): void {
						gameFour();
					}, 2000);
				});
		}

		public function gameFour() {
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
			addChild(game4inst);
			setTimeout(function (): void {
				while (numChildren > 0) {
					removeChildAt(0);
				}
				addChild(g4q1);
				addChild(ans1);
				story.play();
			}, 5000);
		}

		public function onKeyPressed(event: KeyboardEvent): void {
			if (event.keyCode == Keyboard.ENTER) {
				if (ans1.text == "firewood") {
					ansg4 += 1;
					trace(ansg4);
				}
				q += 1;
				switch (q) {
					case 1:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q2);
						addChild(ans2);
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 2:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q3);
						addChild(ans3);
						if (ans2.text == "the sun") {
							ansg4 += 1;
							trace(ansg4);
						}
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 3:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q4);
						addChild(ans4);
						if (ans3.text == "a serpents skin" || ans3.text == "serpents skin" || ans3.text == "serpent skin") {
							ansg4 += 1;
							trace(ansg4);
						}
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 4:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q5);
						addChild(ans5);
						if (ans4.text == "a nut" || ans4.text == "nut") {
							ansg4 += 1;
							trace(ansg4);
						}
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 5:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q6);
						addChild(ans6);
						if (ans5.text == "sun, moon, wind") {
							ansg4 += 1;
							trace(ansg4);
						}
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 6:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q7);
						addChild(ans7);
						if (ans6.text == "an almond" || ans4.text == "almond") {
							ansg4 += 1;
							trace(ansg4);
						}
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 7:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q9);
						addChild(ans9);
						if (ans7.text == "a walnut" || ans4.text == "walnut") {
							ansg4 += 1;
							trace(ansg4);
						}
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 8:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q10);
						addChild(ans10);
						if (ans9.text == "a mantle" || ans4.text == "mantle") {
							ansg4 += 1;
							trace(ansg4);
						}
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 9:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q11);
						addChild(ans11);
						if (ans10.text == "petticoats" || ans4.text == "petticoat") {
							ansg4 += 1;
							trace(ansg4);
						}
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 10:
						while (numChildren > 0) {
							removeChildAt(0);
						}
						addChild(g4q12);
						addChild(ans12);
						if (ans11.text == "gold") {
							ansg4 += 1;
							trace(ansg4);
						}
						stage.addEventListener(KeyboardEvent.KEY_UP, onKeyPressed);
						break;
					case 11:
						if (ansg4 >= 15) {
							addChild(goodend);
						} else {
							addChild(badend);
						}
						break;
				}
			}
		}
	}
}