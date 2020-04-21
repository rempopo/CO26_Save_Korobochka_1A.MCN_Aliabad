/*
 *	Configuration of Conversation Actions:
 *		[ @ConversationName (STRING), @UnitToApply (OBJECT), @ConversationEvent1 (ARRAY), ... , @ConversationEventN (ARRAY)  ]
 *		0: @ConversationName	- (string) name of the conversation
 *		1: @UnitToApply		- (object or array of objects) unit/s to attach conversation action. Unit name is used in dialog screen, to specify the name you can use "tSF_Conversation_Title" unit variable (e.g. Policeman instead of John Doe)
 *		2: @ConversationEvent	- (array) see @ConversationEvent
 *
 *	@ConversationEvent (ARRAY):	
 *		[ @ID, @TextLines, @Answers ]
 *		0: @ID			- (number) ID of conversation event
 *		1: @TextLines		- (array of string or code) text lines of event. Code can be used to compile STRING as output (in that case last element of @TextLines array will be used as argument for code, refered by _this).
 *		2: @Answers		- (array) of @Answer ( [@Answer1, @Answer2, ... , @AnswerN ] )
 *
 *	@Answer (ARRAY):
 *		[ @Label, @CodeToExecute, @Argument, @GoTo ]
 *		0: @Label or [@Code, @Argument]	- (string) text of the answer button or [(code), (any)] code that returns string (argument is available as _this in code)
 *		1: @CodeToExecute	- (code) code to execute on answer selection. Will be spawned after closeDialog 2 command. Variable _this contains [ 0@Object, 1@ConversationName, 2@GoToID, 3@EventID ]
 *		2: @Argument		- (any) argument to use in @CodeToExecute as _this select 4
 *		3: @GoToID		- (number) ID to next @ConversationEvent. -1 to close dialog without transition.
 *
 */
#define	CONVERSATION_TABLE		tSF_Conversations_List = [
#define	CONVERSATION_TABLE_END	];

CONVERSATION_TABLE

	[
		"Civ Info 1"
		, CIV
		, [
			0
			, ["Здравствуй, шурави", "Что хотеть?"]
			, [
				[
					"Где наши солдаты, куда их увели?"
					, { }
					, "Argument"
					, 1
				]
				, [
					"Сука ты афганская"
					, {}
					, "Argument"
					, -1
				]
			]
		]
		, [
			1, ["Муджахеддин их уводить в кишлак, я показать на карте"], [ ["Давай быстрее", { _marker_tgt = createMarker ["Пленные", position TGT], _marker_tgt setMarkerType "hd_objective",_marker_tgt setMarkerText "Пленные"; }, "Argument", 2] ]
		]
		, [ 
			2
			, ["Отметил, не убивай только"]
			, [ 
				[ 
					"Хороший ты, афганец, только лучше съебись отсюда"
					, {}
					, "Argument"
					, -1
				]
				, [
				    "Пиздец тебе! ГАСИ ПИДОРАСА"
					, { hint "Гаси ублюдка" }
					, "Argument"
					, -1
				]
		]	]
	]



CONVERSATION_TABLE_END



