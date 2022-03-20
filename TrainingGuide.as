package {

	import flash.display.*;
	import flash.events.*;
	import flash.geom.ColorTransform;
	import flash.utils.*;

	public class TrainingGuide extends MovieClip {

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

		public var myTimer: Timer = new Timer(100, 4);

		public function TrainingGuide() {
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
					setTimeout(function():void { addChild(game1inst); }, 1500);
				});

			nogmbtn.addEventListener(MouseEvent.CLICK,
				function (event: MouseEvent): void {
					while (numChildren > 0) {
						removeChildAt(0);
					}
					addChild(showus);
					setTimeout(function():void { addChild(game1inst); }, 1500);
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
	}
}