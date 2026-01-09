	--[[

	Dex Created By Viktor188834 (RU)
	(GitHub: https://github.com/Viktor188834)
	(Discord: 12gaft)
	
	2026.01.03
		Starting Create
	
]]
local _self = {}
local self = setmetatable(_self, {})
local mouse = game.Players.LocalPlayer:GetMouse()

self.Colors = {}

self.Colors.Black = {
	Main = Color3.fromRGB(15, 15, 15),
	Secondary = Color3.fromRGB(30, 30, 30),
	Thirty = Color3.fromRGB(50, 50, 50),
	Conversely = Color3.fromRGB(185, 185, 185)
}

self.Colors.Red = {
	Main = Color3.fromRGB(190, 42, 42),
	Secondary = Color3.fromRGB(145, 32, 32),
	Thirty = Color3.fromRGB(98, 22, 22);
	Conversely = Color3.fromRGB(185, 141, 141);
}

self.Colors.Blue = {
	Main = Color3.fromRGB(14, 79, 177),
	Secondary = Color3.fromRGB(18, 67, 156),
	Thirty = Color3.fromRGB(25, 48, 150),
	Conversely = Color3.fromRGB(162, 169, 226)
}

self.Colors.White = {
	Main = Color3.fromRGB(235, 235, 235),
	Secondary = Color3.fromRGB(236, 236, 236),
	Thirty = Color3.fromRGB(182, 182, 182),
	Conversely = Color3.fromRGB(45, 45, 45),
}

self.Row = 0
self.Settings = {}

self.Settings.Dex_color = self.Colors.Black

local ImageLibrary = {
	Accessory = "rbxassetid://86663019679941",
	Workspace = "rbxassetid://109233242318285",
	Actor = "rbxassetid://111921897175221",
	AdGui = "rbxassetid://77161466247024",
	AdPortal = "rbxassetid://111019082544827",
	AirController = "rbxassetid://116231071446634",
	AlignOrientation = "rbxassetid://126116192945351",
	AlignPosition = "rbxassetid://131751955366183",
	AngularVelocity = "rbxassetid://104306767001790",
	Animation = "rbxassetid://128487163256353",
	AnimationConstraint = "rbxassetid://132244751146559",
	AnimationController = "rbxassetid://112077587099523",
	AnimationFromVideoCreatorService = "rbxassetid://127738894709692",
	Animator = "rbxassetid://97618172678048",
	ArcHandles = "rbxassetid://127898030497768",
	Atmosphere = "rbxassetid://74987875332374",
	Attachment = "rbxassetid://98370863378067",
	AudioAnalyzer = "rbxassetid://94021660525135",
	AudioChannelMixel = "rbxassetid://92320765016998",
	AudioChannelSplitter = "rbxassetid://98728720738087",
	AudioChorus = "rbxassetid://72256326392698",
	AudioCompressor = "rbxassetid://74889171617807",
	AudioDeviceInput = "rbxassetid://112100565755653",
	AudioDeviceOutput = "rbxassetid://91971522145839",
	AudioDistortion = "rbxassetid://79319267939207",
	AudioEcho = "rbxassetid://86620261776038",
	AudioEmitter = "rbxassetid://87364675235777",
	AudioEqualizer = "rbxassetid://94289844849491",
	AudioFader = "rbxassetid://106231223032740",
	AudioFilter = "rbxassetid://97607323388583",
	AudioFlanger = "rbxassetid://108305031151765",
	AudioGate = "rbxassetid://137034067514046",
	AudioLimiter = "rbxassetid://99342664622185",
	AudioListener = "rbxassetid://71750627986827",
	AudioPitchShifter = "rbxassetid://105080259830659",
	AudioPlayer = "rbxassetid://133340531978814",
	AudioRecorder = "rbxassetid://108343267330150",
	AudioReverb = "rbxassetid://123807685411227",
	AudioTremolo = "rbxassetid://137503202013848",
	AvatarEditorService = "rbxassetid://79891791696712",
	Backpack = "rbxassetid://78067857211328",
	BallSocketConstraint = "rbxassetid://88745684614413",
	BasePlate = "rbxassetid://85861891406575",
	Beam = "rbxassetid://84397549624929",
	BillboardGui = "rbxassetid://81697864008399",
	BindableEvent = "rbxassetid://120325859358982",
	BindableFunction = "rbxassetid://108503820961872",
	BlockMesh = "rbxassetid://136591189774102",
	BloomEffect = "rbxassetid://91466301438464",
	BlurEffect = "rbxassetid://97886251738911",
	BodyAngularVelocity = "rbxassetid://94601654267860",
	BodyColors = "rbxassetid://131795318906766",
	BodyForce = "rbxassetid://101459153152208",
	BodyGyro = "rbxassetid://89019499592883",
	BodyPosition = "rbxassetid://82461933867252",
	BodyThrust = "rbxassetid://85197872113646",
	BodyVelocity = "rbxassetid://127330192587329",
	Bone = "rbxassetid://89208887414290",
	BoolValue = "rbxassetid://137385673468417",
	BoxHandleAdornment = "rbxassetid://115146873778523",
	BrickColorValue = "rbxassetid://86533073091264",
	BubbleChatConfiguration = "rbxassetid://133642750601065",
	Camera = "rbxassetid://100239331400458",
	CurrentCamera = "rbxassetid://100239331400458",
	CanvasGroup = "rbxassetid://116959421555566",
	CFrameValue = "rbxassetid://139432464734792",
	ChannelTabsConfiguration = "rbxassetid://71833277498237",
	CharacterControllerManager = "rbxassetid://140510585512867",
	CharacterMesh = "rbxassetid://87908953240260",
	Chat = "rbxassetid://112392869500482",
	ChatInputBarConfiguration = "rbxassetid://132715887114368",
	ChatWindowConfiguration = "rbxassetid://90160132503176",
	ChorusSoundEffect = "rbxassetid://125900401223117",
	ClickDetector = "rbxassetid://120528645107423",
	ClientReplicator = "rbxassetid://134231710486853",
	ClimbController = "rbxassetid://109244036189401",
	Clouds = "rbxassetid://76828009863610",
	Color = "rbxassetid://120660740193598",
	ColorCorrectionEffect = "rbxassetid://109875542065064",
	CompressorSoundEffect = "rbxassetid://111834290145306",
	ConeHandleAdornment = "rbxassetid://91126711614444",
	Configuration = "rbxassetid://112630223329701",
	Constant = "rbxassetid://133119412782704",
	Constructor = "rbxassetid://128388078903232",
	Controller = "rbxassetid://112788257076882",
	CoreGui = "rbxassetid://79972658793913",
	CornerWedgePart = "rbxassetid://132927870065840",
	CylinderHandleAdornment = "rbxassetid://73567396379252",
	CylindricalConstraint = "rbxassetid://119804795365550",
	Decal = "rbxassetid://107742366229360",
	DepthOfFieldEffect = "rbxassetid://72084965562667",
	Dialog = "rbxassetid://118807309379689",
	DialogChoice = "rbxassetid://132331964596789",
	DistortionSoundEffect = "rbxassetid://140185789325481",
	DragDetector = "rbxassetid://138571976781812",
	EchoSoundEffect = "rbxassetid://140003719458502",
	EditableImage = "rbxassetid://99397473883209",
	EditableMesh = "rbxassetid://137212291237577",
	EqualizerSoundEffect = "rbxassetid://105869287371966",
	Event = "rbxassetid://118735911535721",
	Explosion = "rbxassetid://119300395017272",
	File = "rbxassetid://138876352358092",
	Fire = "rbxassetid://110372820177756",
	["nil"] = "rbxassetid://122526709138741",
	FlangeSoundEffect = "rbxassetid://125660734460013",
	Folder = "rbxassetid://115791518905168",
	ForceField = "rbxassetid://121707624024054",
	Frame = "rbxassetid://137411145814402",
	Function = "rbxassetid://126157739516028",
	GameSettings = "rbxassetid://112317171223268",
	GroundController = "rbxassetid://75150775976209",
	Handles = "rbxassetid://93159379281874",
	HapticEffect = "rbxassetid://121922012551208",
	HapticService = "rbxassetid://92931443324322",
	HeightmapImporterService = "rbxassetid://124426432946946",
	Highlight = "rbxassetid://103093677900230",
	HingeConstraint = "rbxassetid://132380007453554",
	Humanoid = "rbxassetid://83054484711498",
	HumanoidDescription = "rbxassetid://98351981427690",
	IKControl = "rbxassetid://76098027413814",
	ImageButton = "rbxassetid://115616372277602",
	ImageHandleAdornment = "rbxassetid://99980525472272",
	ImageLabel = "rbxassetid://123778225492772",
	InputAction = "rbxassetid://89495308319907",
	InputBinding = "rbxassetid://126294706348709",
	InputContext = "rbxassetid://125534629554468",
	Interface = "rbxassetid://108461207916997",
	IntersectOperation = "rbxassetid://75798304416665",
	Keyword = "rbxassetid://118982743555628",
	Lighting = "rbxassetid://97300441123774",
	LinearVelocity = "rbxassetid://114271810829485",
	LineForce = "rbxassetid://84149509017329",
	LineHandleAdornment = "rbxassetid://135717225801119",
	LocalFile = "rbxassetid://116745573560765",
	LocalizationService = "rbxassetid://106735425010273",
	LocalizationTable = "rbxassetid://90145162934628",
	LocalScript = "rbxassetid://73043565231988",
	MaterialService = "rbxassetid://86492665379833",
	MaterialVariant = "rbxassetid://135732415323157",
	MemoryStoreService = "rbxassetid://75182381230878",
	MeshPart = "rbxassetid://77565815412728",
	Meshparts = "rbxassetid://92130880489337",
	MessagingService = "rbxassetid://137413400697866",
	Method = "rbxassetid://98409417072319",
	Model = "rbxassetid://135480635138319",
	Modelgroups = "rbxassetid://110162691345801",
	Module = "rbxassetid://101909755198258",
	ModuleScript = "rbxassetid://77680458618429",
	Motor6D = "rbxassetid://84390781098240",
	NegateOperation = "rbxassetid://80209423543772",
	NetworkClient = "rbxassetid://125763584613190",
	NoCollisionConstraint = "rbxassetid://134985805213373",
	Operator = "rbxassetid://87055981314037",
	PackageLink = "rbxassetid://136937547884647",
	Pants = "rbxassetid://122404670551788",
	Part = "rbxassetid://114137551747827",
	ParticleEmitter = "rbxassetid://87645864218311",
	Path2D = "rbxassetid://125077927545312",
	PathfindingLink = "rbxassetid://132761299386419",
	PathfindingModifier = "rbxassetid://89960133393053",
	PathfindingService = "rbxassetid://113389483373684",
	PitchShiftSoundEffect = "rbxassetid://78645377157915",
	Close = "rbxassetid://8511577140",
	Place = "rbxassetid://70804699850720",
	Plane = "rbxassetid://120878883531020",
	PlaneConstraint = "rbxassetid://120452660295677";
	Player = "rbxassetid://138537316382287";
	Players = "rbxassetid://136006421001272";
	PluginGuiService = "rbxassetid://79774991312784";
	PointLight = "rbxassetid://85215948993232";
	PrismaticConstraint = "rbxassetid://73649874857654";
	Property = "rbxassetid://80310817045439";
	ProximityPrompt = "rbxassetid://98343976273193";
	PublishService = "rbxassetid://140615146818238";
	Reference = "rbxassetid://82447859422767";
	RemoteEvent = "rbxassetid://105198825793982";
	RemoteFunction = "rbxassetid://115518515599336";
	RenderingTest = "rbxassetid://78956759805362";
	ReplicatedFirst = "rbxassetid://131839678314178";
	ReplicatedScriptService = "rbxassetid://119209088704060";
	ReplicatedStorage = "rbxassetid://93248073464869";
	ReverbSoundEffect = "rbxassetid://76952676047082";
	RigidConstraint = "rbxassetid://130185206478569";
	RobloxPluginGuiService = "rbxassetid://129987031314912";
	RocketPropulsion = "rbxassetid://126485241388286";
	RodConstraint = "rbxassetid://80641836858766";
	ArrowDown = "rbxassetid://11552476728";
	ArrowUp = "rbxassetid://92023845052369";
	ArrowLeft = "rbxassetid://2418687610";
	ArrowRight = "rbxassetid://2418686949";
	Delete = "rbxassetid://137545231543168";
	Rename = "rbxassetid://134915203345550";
	RopeConstraint = "rbxassetid://79506694019599";
	Rotate = "rbxassetid://116183422196237";
	ScreenGui = "rbxassetid://104407388474419";
	Script = "rbxassetid://97646743214279";
	ScrollingFrame = "rbxassetid://76001121884005";
	Seat = "rbxassetid://118261625233039";
	Selected_Workspace = "rbxassetid://79599900127192";
	SelectionBox = "rbxassetid://80485103822999";
	SelectionSphere = "rbxassetid://87245861333971";
	ServerScriptService = "rbxassetid://93923575599527";
	ServerStorage = "rbxassetid://88382997234610";
	Service = "rbxassetid://86337897676372";
	Shirt = "rbxassetid://98963784370675";
	ShirtGraphic = "rbxassetid://80086093350805";
	SkinnedMeshPart = "rbxassetid://135548312517843";
	Sky = "rbxassetid://129483687246891";
	Smoke = "rbxassetid://108844065047870";
	Snap = "rbxassetid://127106324117643";
	Snippet = "rbxassetid://92412900140610";
	SocialService = "rbxassetid://123058152002086";
	Sound = "rbxassetid://112293863996143";
	SoundEffect = "rbxassetid://84364937923478";
	SoundGroup = "rbxassetid://89803615746590";
	SoundService = "rbxassetid://135297837607696";
	Sparkles = "rbxassetid://93868610580554";
	SpawnLocation = "rbxassetid://129527392089140";
	SpecialMesh = "rbxassetid://89841591196356";
	SphereHandleAdornment = "rbxassetid://117671698843639";
	SpotLight = "rbxassetid://94716822910651";
	SpringConstraint = "rbxassetid://121436821430549";
	StandalonePluginScripts = "rbxassetid://131186310886296";
	StarterCharacterScripts = "rbxassetid://92884874605250";
	StarterGui = "rbxassetid://117885553513161";
	StarterPack = "rbxassetid://111773582507353";
	StarterPlayer = "rbxassetid://138014267818591";
	StarterPlayerScripts = "rbxassetid://115187686945705";
	Struct = "rbxassetid://87843862917550";
	StyleDerive = "rbxassetid://70374268663761";
	StyleLink = "rbxassetid://124941879336199";
	StyleRule = "rbxassetid://130644326208881";
	StyleSheet = "rbxassetid://110373345762552";
	SunRaysEffect = "rbxassetid://114465676973853";
	SurfaceAppearance = "rbxassetid://76727641665684";
	SurfaceGui = "rbxassetid://78300623663244";
	SurfaceLight = "rbxassetid://75390919635553";
	SurfaceSelection = "rbxassetid://104804142240684";
	SwimController = "rbxassetid://90796683329595";
	TaskScheduler = "rbxassetid://121294087638007";
	Team = "rbxassetid://99059447543396";
	Teams = "rbxassetid://84973470445703";
	Terrain = "rbxassetid://122243257824387";
	TerrainDetail = "rbxassetid://115025785535476";
	TestService = "rbxassetid://136337236350601";
	TextBox = "rbxassetid://138325079699004";
	TextBoxService = "rbxassetid://72736969255665";
	TextButton = "rbxassetid://112753722090032";
	TextChannel = "rbxassetid://86885249621465";
	TextChatCommand = "rbxassetid://77482357154212";
	TextChatService = "rbxassetid://113173272310502";
	TextLabel = "rbxassetid://139371450046191";
	TextString = "rbxassetid://120390967665999";
	Texture = "rbxassetid://79673050770962";
	Tool = "rbxassetid://84896714678066";
	Torque = "rbxassetid://72933571862052";
	TorsionSpringConstraint = "rbxassetid://111898942319315";
	Trail = "rbxassetid://134840947001856";
	TremoloSoundEffect = "rbxassetid://83955501495031";
	TrussPart = "rbxassetid://86849013866219";
	TypeParameter = "rbxassetid://96834020317910";
	UGCValidationService = "rbxassetid://81252143204286";
	UIAspectRatioConstraint = "rbxassetid://139943880106762";
	UICorner = "rbxassetid://108181029722211";
	UIDragDetector = "rbxassetid://77551879204341";
	UIFlexItem = "rbxassetid://136738553218481";
	UIGradient = "rbxassetid://103935083209763";
	UIGridLayout = "rbxassetid://70767739038378";
	UIListLayout = "rbxassetid://139414348856226";
	UIPadding = "rbxassetid://117676186895658";
	UIPageLayout = "rbxassetid://115087278570717";
	UIScale = "rbxassetid://140040081142947";
	UISizeConstraint = "rbxassetid://117551380174797";
	UIStroke = "rbxassetid://111245568274046";
	UITableLayout = "rbxassetid://113335706218121";
	UITextSizeConstraint = "rbxassetid://92044708182353";
	UnionOperation = "rbxassetid://72216350888595";
	Unit = "rbxassetid://87970541611723";
	UniversalConstraint = "rbxassetid://129573241995307";
	UnreliableRemoteEvent = "rbxassetid://111322868818418";
	UpdateAvailable = "rbxassetid://106700495971951";
	UserService = "rbxassetid://102191574120444";
	Value = "rbxassetid://103636604024817";
	Variable = "rbxassetid://106314307687800";
	VectorForce = "rbxassetid://102257789937517";
	VehicleSeat = "rbxassetid://107365847225458";
	VideoDisplay = "rbxassetid://101437002832611";
	VideoFrame = "rbxassetid://89817201255917";
	VideoPlayer = "rbxassetid://86460169590395";
	ViewportFrame = "rbxassetid://70464329447709";
	VirtualUser = "rbxassetid://79561066338945";
	VoiceChannel = "rbxassetid://73804678310187";
	Voicechat = "rbxassetid://137557495770591";
	VoiceChatService = "rbxassetid://70577654660960";
	VRService = "rbxassetid://115558532092821";
	WedgePart = "rbxassetid://86704056326943";
	Weld = "rbxassetid://134842317772770";
	WeldConstraint = "rbxassetid://79557083463326";
	Wire = "rbxassetid://84888425198155";
	WireframeHandleAdornment = "rbxassetid://92914402046012";
	WorldModel = "rbxassetid://70670619960862";
	WrapDeformer = "rbxassetid://90277037525080";
	WrapLayer = "rbxassetid://135403930287738";
	WrapTarget = "rbxassetid://116586960118839";
	Boolean_false = "rbxassetid://99906727546633";
	Boolean_true = "rbxassetid://107014486396330";
	Refresh = "rbxassetid://95912023001037";
	textures = {
		AssetManager = {
			explorer = "rbxassetid://138117814446758"
		};
		AvatarEditorImages = {
			Sliders = {
				body_type_slider_background = "rbxassetid://111205094579005";
				gr_slide_bar_empty = "rbxassetid://121572084774214";
				gr_slide_bar_fill = "rbxassetid://130774857108632";
				gr_slider = "rbxassetid://122503465246266";
			};
			Stretch = {
				bar_empty_mid = "rbxassetid://114261276673870";
				bar_full_mid = "rbxassetid://114180745305911";
				gr_tail = "rbxassetid://95334729947677";
			};
			AvatarImporter = {
				button_avatarType = "rbxassetid://87158183288967";
				button_avatarType_border = "rbxassetid://72488240207617";
				button_close = "rbxassetid://102697202611335";
				fbximportlogo = "rbxassetid://127984701737459";
				icon_AvatarImporter = "rbxassetid://83827946076489";
				icon_error = "rbxassetid://99940933179982";
				img_dark_custom = "rbxassetid://103162788462240";
				img_dark_R15 = "rbxassetid://130736696783220";
				img_dark_Rthro = "rbxassetid://102257817675034";
				img_dark_RthroNarrow = "rbxassetid://128301045443664";
				img_light_custom = "rbxassetid://81929044397533";

			};
			AvatarEditor = "rbxassetid://138117814446758";
			AvatarEditor_LightTheme = "rbxassetid://122621002805434";
			Catalog = "rbxassetid://122621002805434";
			Catalog_LightTheme = "rbxassetid://83367748599805";
			circle_blue = "rbxassetid://128387567445790";
			circle_gray4 = "rbxassetid://105192227619097";
			CircleCutoutLarge = "rbxassetid://113008688103796";
			DarkPixel = "rbxassetid://77175116243676";
			gr_selection_border = "rbxassetid://130206210038800";
			LightPixel = "rbxassetid://74934458153809";
			Sheet = "rbxassetid://118760289310604";
		};
		advancedMove = "rbxassetid://110338347334948";
		advancedMove_joint = "rbxassetid://127848926107019";
		advancedMove_keysOnly = "rbxassetid://132285719286119";
		advancedMove_noJoint = "rbxassetid://111905939733251";
		advancedMoveResize = "rbxassetid://73512704970808";
		advClosed_hand = "rbxassetid://87015218770919";
		advClosed_hand_anchored = "rbxassetid://82252163824815";
		advClosed_hand_no_weld = "rbxassetid://132346958852886";
		ClassImages = "rbxassetid://108138579629269";
		advClosed_hand_weld = "rbxasset://textures/advClosed-hand-weld.png";
		advCursor_default = "rbxasset://textures/advCursor-default.png";
		advCursor_openedHand = "rbxassetid://80578793921294";
		advCursor_white = "rbxassetid://95169767748834";
		AnchorCursor = "rbxassetid://130162492471637";
		ArrowCursor = "rbxassetid://124084404558373";
		ArrowCursorDecalDrag = "rbxassetid://70887886049572";
		ArrowFarCursor = "rbxassetid://130269691870071";
		blackBkg_round = "rbxassetid://80447868502910";
		blackBkg_square = "rbxassetid://91612636819694";
		Blank = "rbxassetid://140522715584090";
		blockUpperLeft = "rbxassetid://80593504029608";
		chatBubble_bot_notifyGray_dotDotDot = "rbxassetid://84212631056789";
		collapsibleArrowDown = "rbxassetid://74096496570466";
		collapsibleArrowRight = "rbxassetid://104939950722688";
		ConstraintCursor = "rbxassetid://82425332253844";
		DarkThemeLoadingCircle = "rbxassetid://96425977178121";
		explosion = "rbxassetid://126011318735490";
		face = "rbxassetid://133153747223395";
		FillCursor = "rbxassetid://77843498193903";
		FlatCursor = "rbxassetid://104280931372074";
		glow = "rbxassetid://136880122671370";
		GlueCursor = "rbxassetid://111395030423045";
		gradient = "rbxassetid://117184455123008";
		grid2 = "rbxassetid://111910782637745";
		grid4 = "rbxassetid://125064161833772";
		grid16 = "rbxassetid://82757796713310";
		HingeCursor = "rbxassetid://86594719643325";
		IBeamCursor = "rbxassetid://125145904128712";
		icon_ROBUX = "rbxassetid://115068103742680";
		Icon_Stream_Off = "rbxassetid://137230925393634";
		LightThemeLoadingCircle = "rbxassetid://92540671390619";
		localizationExport = "rbxassetid://130664969567567";
		localizationImport = "rbxassetid://137072956410647";
		localizationTargetEnglish = "rbxassetid://112630162363885";
		localizationTargetSpanish = "rbxassetid://95998766451945";
		localizationTestingIcon = "rbxassetid://73502385718786";
		localizationUIScrapingOff = "rbxassetid://121783371637545";
		localizationUIScrapingOn = "rbxassetid://120384147601834";
		LockCursor = "rbxassetid://136176306431202";
		MaterialCursor = "rbxassetid://114802522792903";
		menuDownArrow = "rbxassetid://109166146686939";
		meshPartFallback = "rbxassetid://110818521964753";
		MotorCursor = "rbxassetid://130465001936443";
		MouseLockedCursor = "rbxassetid://84443656647580";
		rotationArrow = "rbxassetid://137914875620281";
		shadowblurmask = "rbxassetid://98711564731617";
		smallTriangle = "rbxassetid://109802618405714";
		smallWhiteCircle = "rbxassetid://80362342716169";
		sparkle = "rbxassetid://98351516089109";
		SurfacesDefault = "rbxassetid://131797392337251";
		transformFiveDegrees = "rbxassetid://106341864427088";
		transformNinetyDegrees = "rbxassetid://109079020463444";
		transformOneDegree = "rbxassetid://104029434707292";
		transformTwentyTwoDegrees = "rbxassetid://127358633854135";
		translateIcon = "rbxassetid://134287271458690";
		translateIconDark = "rbxassetid://77061034565386";
		triangle = "rbxassetid://87486808968265";
		UnanchorCursor = "rbxassetid://98350158585937";
		UnlockCursor = "rbxassetid://99896013409860";
		WeldCursor = "rbxassetid://83247330582182";
		whiteCircle = "rbxassetid://93074841541120";
	};
	SuperMegaIcons = "rbxassetid://130563383277540"
}

local f = {}
local ActivedFunctions = {}

self.CTRL_Active = false
game.UserInputService.InputBegan:Connect(function(i, g)
	if g then return end
	if i.KeyCode == Enum.KeyCode.LeftControl then
		self.CTRL_Active = true
	end
end)
game.UserInputService.InputEnded:Connect(function(i, g)
	if i.KeyCode == Enum.KeyCode.LeftControl then
		self.CTRL_Active = false
	end
end)

local function create(name, prop)
	local new = Instance.new(name)
	for i,v in pairs(prop) do
		new[i] = v
	end
	return new
end

local serv = {}
for _,v in game:GetChildren() do
	local name = ""
	for _, v in string.split(v.Name, " ") do
		name = name..v
	end
	serv[name] = v
end

local Events_Folder = create("Folder", {
	Parent = serv.ReplicatedStorage;
	Name = "Events"
})
local events = {
	UpdateTree = create("BindableEvent", {
		Parent = create("Folder", {
			Parent = Events_Folder;
			Name = "UpdateTree";
		});
	});
	ChangedColor = create("BindableEvent", {
		Parent = create("Folder", {
			Parent = Events_Folder;
			Name = "ChangedColor"
		})
	});
}

local Dex1 = create("ScreenGui", {
	Parent = serv.CoreGui or serv.Players.LocalPlayer.PlayerGui, 
	ResetOnSpawn = false, 
	Name = "Dex___Viktor188834", 
	DisplayOrder = 52,
})

local DexTree: ScrollingFrame = create("ScrollingFrame", {
	Parent = Dex1, 
	Name = "DexTree", 
	Size = UDim2.new(0.2, 0, 0.5, 0), 
	Position = UDim2.new(1, 0, 0.5, 0), 
	AnchorPoint = Vector2.new(1, 1),
	BackgroundColor3 = self.Settings.Dex_color.Secondary,
	ScrollBarThickness = 3,
	BorderSizePixel = 0,
})
table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
	DexTree.BackgroundColor3 = self.Settings.Dex_color.Secondary
end))

function f:get_image(imageName: string)
	if ImageLibrary[imageName] then
		return ImageLibrary[imageName]
	else
		return ImageLibrary["nil"] 
	end
end

function f:math_(but)
	return (#DexTree:GetChildren()*but.AbsoluteSize.Y)
end

function f:tabIsA(tab: {}, IsA: string)
	for i,v in tab do
		if v:IsA(IsA) then
		else
			return false
		end
	end
	return true
end

local DexProp = create("ScrollingFrame", {
	Parent = Dex1,
	Name = "DexProperties",
	Size = UDim2.new(0.2, 0, 0.5, 0),
	Position = UDim2.new(1, 0, 0.5, 0),
	AnchorPoint = Vector2.new(1, 0),
	BorderSizePixel = 0,
	ScrollBarImageTransparency = 1,
	BackgroundColor3 = self.Settings.Dex_color.Secondary
})

table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
	DexProp.BackgroundColor3 = self.Settings.Dex_color.Secondary
end))

local Dex2: TextLabel = create("TextLabel", {
	Parent = Dex1,
	Name = "TopBar",
	Size = UDim2.new(0.2, 0, 0, 15),
	Position = UDim2.new(1, 0, 0, 0),
	BorderSizePixel = 0,
	AnchorPoint = Vector2.new(1, 1),
	BackgroundColor3 = self.Settings.Dex_color.Thirty;
	TextColor3 = self.Settings.Dex_color.Conversely;
	Text = "Dex";
	Draggable = true;
	Active = true;
})
table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
	Dex2.BackgroundColor3 = self.Settings.Dex_color.Main
	Dex2.TextColor3 = self.Settings.Dex_color.Main
end))

local Dex3 = create("ImageButton", {
	Parent = Dex2,
	Name = "Close",
	Size = UDim2.new(0, 10, 0, 10),
	Position = UDim2.new(0, 2, 1, -2),
	AnchorPoint = Vector2.new(0, 1),
	Image = ImageLibrary.Close,
	BorderSizePixel = 0,
	BackgroundColor3 = self.Settings.Dex_color.Thirty
})

table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
	Dex3.BackgroundColor3 = self.Settings.Dex_color.Thirty
end))

local Dex4: TextLabel = create("TextLabel", {
	Parent = Dex1;
	Size = UDim2.new(0.2, 0, 0, 15);
	Position = UDim2.new(1, 0, 0.5, 0);
	AnchorPoint = Vector2.new(1, 0);
	BorderSizePixel = 0;
	TextColor3 = self.Settings.Dex_color.Conversely;
	BackgroundColor3 = self.Settings.Dex_color.Thirty;
	Text = "Properties";
	Draggable = true;
	Active = true;
})

events.ChangedColor.Event:Connect(function()
	Dex4.BackgroundColor3 = self.Settings.Dex_color.Thirty
	Dex4.TextColor3 = self.Settings.Dex_color.Conversely
end)

table.insert(ActivedFunctions, game:GetService("RunService").Heartbeat:Connect(function()
	DexProp.Position = UDim2.new(0.2, Dex4.AbsolutePosition.X, 0, Dex4.AbsolutePosition.Y+15)
	DexTree.Position = UDim2.new(0.2, Dex2.AbsolutePosition.X, 0.5, Dex2.AbsolutePosition.Y+15)
end))

local Dex5 = create("ImageButton", {
	Parent = Dex4,
	Name = "Close",
	Size = UDim2.new(0, 10, 0, 10),
	Position = UDim2.new(0, 2, 1, -2),
	AnchorPoint = Vector2.new(0, 1),
	Image = ImageLibrary.Close,
	BorderSizePixel = 0,
	BackgroundColor3 = self.Settings.Dex_color.Thirty
})

table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
	Dex5.BackgroundColor3 = self.Settings.Dex_color.Thirty
end))

;(function()
	local function OnActive()
		if Dex5 then
			DexProp:Destroy()
			Dex4:Destroy()
			game:GetService("TweenService"):Create(DexTree, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
				Size = UDim2.new(0.2,0,1,0), Position = UDim2.new(1, 0, 1, 0)}):Play()
		else
			Dex1:Destroy()
			Events_Folder:Destroy()
			for i,v in ActivedFunctions do
				v:Disconnect()
			end
		end
	end
	Dex5.MouseButton1Down:Connect(OnActive)
	Dex5.TouchTap:Connect(OnActive)
end)()

;(function()
	local function OnActive()
		if Dex3 then
			DexTree:Destroy()
			Dex2:Destroy()
			game:GetService("TweenService"):Create(DexProp, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
				Size = UDim2.new(0.2,0,1,0), Position = UDim2.new(1, 0, 0, 0)}):Play()
			game:GetService("TweenService"):Create(Dex4, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
				Position = UDim2.new(1, 0, 0, -15)}):Play()
		else
			Dex1:Destroy()
			Events_Folder:Destroy()
			for i,v in ActivedFunctions do
				v:Disconnect()
			end
		end
	end
	Dex3.MouseButton1Down:Connect(OnActive)
	Dex3.TouchTap:Connect(OnActive)
end)()

local Dex6 = create("ImageButton", {
	Parent = Dex1;
	AnchorPoint = Vector2.new(0, 0.5);
	Position = UDim2.new(0, 0, 0.5, 0);
	Size = UDim2.new(0, 25, 0, 25);
	Image = f:get_image("ArrowRight");
	BorderSizePixel = 0;
	BackgroundColor3 = self.Settings.Dex_color.Secondary
})

table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
	Dex6.BackgroundColor3 = self.Settings.Dex_color.Secondary
end))

local Dex7 = create("Frame", {
	Parent = Dex6;
	AnchorPoint = Vector2.new(0, 0.5);
	Position = UDim2.new(1, 5, 0.5, 0);
	Size = UDim2.new(0, 0, 3, 0);
	BackgroundColor3 = self.Settings.Dex_color.Secondary;
	BorderSizePixel = 0;
	Visible = false;
})

table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
	Dex7.BackgroundColor3 = self.Settings.Dex_color.Secondary
end))

local Dex8 = create("UIListLayout", {
	Parent = Dex7;
	Wraps = true;
	HorizontalAlignment = Enum.HorizontalAlignment.Center;
	VerticalAlignment = Enum.VerticalAlignment.Center;
	FillDirection = Enum.FillDirection.Horizontal;
	Padding = UDim.new(0, 3);
})

;(function()
	local function OnActive()
		Dex7.Visible = not Dex7.Visible
	end
	Dex6.MouseButton1Down:Connect(OnActive)
	Dex6.TouchTap:Connect(OnActive)
end)()

local Left_Frame = {}

Left_Frame.AddButton = function(text: string, callback, Icon: string)
	local image = create("ImageButton", {
		Name = text;
		Image = Icon;
		Size = UDim2.new(0, 50, 0, 50);
		Position = UDim2.new(0, 0, 0, #Dex7:GetChildren()*30);
		Parent = Dex7;
		BackgroundTransparency = 1;
	})
	local TextLabel = create("TextLabel", {
		Parent = image;
		Text = text;
		TextColor3 = self.Settings.Dex_color.Conversely;
		BackgroundTransparency = 1;
		TextStrokeTransparency = 0;
		TextStrokeColor3 = self.Settings.Dex_color.Main;
		Size = UDim2.new(1, 0, 0,1, 0);
		Position = UDim2.new(0, 0, 1, 0);
	})
	table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
		TextLabel.TextStrokeColor3 = self.Settings.Dex_color.Main
		TextLabel.TextColor3 = self.Settings.Dex_color.Conversely
	end))
	image.MouseButton1Down:Connect(callback);
	image.TouchTap:Connect(callback)
	Dex7.Size = UDim2.new(0, 50, 0, (#Dex7:GetChildren()-1)*50)
end

local Properties_Storage_Class = {
	["Basic"] = {
		["Archivable"] = "Data";
		["ClassName"] = "Data";
		["Name"] = "Data";
		["Parent"] = "Data";
	};
	["BasePart"] = {
		["Color"] = "Appearance";
		["CastShadow"] = "Appearance";
		["Material"] = "Appearance";
		["Transparency"] = "Appearance";
		["Reflectance"] = "Appearance";
		["Size"] = "Transform";
		["CFrame"] = "Transform";
		["PivotOffset"] = "Pivot";
		["EnableFluidForces"] = "Behavior";
		["CanCollide"] = "Collision";
		["CanTouch"] = "Collision";
		["CollisionGroup"] = "Collision";
		["Anchored"] = "Collision";
		["Mass"] = "Collision";
		["Shape"] = "Collision"
	};
}

local function Properties_Text(buttons,ins: Instance,i,v,isprop)
	if type(buttons[v]) == "nil" then
		buttons[v] = create("TextLabel", {
			Size = UDim2.new(1, 0, 0, 25);
			Position = UDim2.new(0, 0, 0, #DexProp:GetChildren()*25+15);
			Parent = DexProp;
			BorderSizePixel = 0;
			BackgroundColor3 = self.Settings.Dex_color.Secondary;
			RichText = true;
			TextSize = 10;
			TextColor3 = self.Settings.Dex_color.Conversely;
			Text = v
		})
		events.ChangedColor.Event:Connect(function()
			buttons[v].TextColor3 = self.Settings.Dex_color.Conversely
			buttons[v].BackgroundColor3 = self.Settings.Dex_color.Secondary
		end)
	end
	local t = create("TextLabel", {
		Position = UDim2.new(0, 0, 0, #DexProp:GetChildren()*25+15);
		Parent = DexProp;
		Size = UDim2.new(0.5, 0, 0, 25);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		RichText = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextSize = 10;
		TextColor3 = self.Settings.Dex_color.Conversely;
		Text = tostring(i)
	});
	table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
		t.TextColor3 = self.Settings.Dex_color.Conversely
	end))
	local readonly = false
	if isprop then
		local old = ins[i];
		local e,a = pcall(function()
			ins[i] = "lol===========3254rtsdgxfhtru6yducyjhv"
		end)
		if e == false then
			readonly = true
		else
			ins[i] = old
		end
	end
	if isprop and type(ins[i]) == "boolean" or type(ins:GetAttribute(i)) == "boolean" then
		local image: ImageButton = create("ImageButton", {
			Parent = t;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			Position = UDim2.new(1.5, 0, 0, 0);
			Size = UDim2.new(0, 25, 0, 25);
			AnchorPoint = Vector2.new(0.5, 0);
		})
		if isprop then
			image.Image = f:get_image("Boolean_"..tostring(ins[i]));
			ins:GetPropertyChangedSignal(i):Connect(function()
				image.Image = f:get_image("Boolean_"..tostring(ins[i]))
			end)
		else
			image.Image = f:get_image("Boolean_"..tostring(ins:GetAttribute(i)))
			ins:GetAttributeChangedSignal(i):Connect(function()
				image.Image = f:get_image("Boolean_"..tostring(ins:GetAttribute(i)))
			end)
		end
		local function OnActive()
			ins[i] = not ins[i]
		end
		image.MouseButton1Down:Connect(OnActive);
		image.TouchTap:Connect(OnActive);
	elseif isprop and type(ins[i]) == "string" or type(ins:GetAttribute(i)) == "string" then
		local textbox: TextBox = create("TextBox", {
			Parent = t;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			Position = UDim2.new(1, 0, 0, 0);
			Size = UDim2.new(1, 0, 0, 25);
			AnchorPoint = Vector2.new(0, 0);
			ClearTextOnFocus = false;
			TextColor3 = self.Settings.Dex_color.Conversely
		})
		table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
			textbox.TextColor3 = self.Settings.Dex_color.Conversely
		end))
		if isprop then
			textbox.Text = ins[i]
		else
			textbox.Text = ins:GetAttribute(i)
		end
		ins:GetAttributeChangedSignal(i):Connect(function()
			textbox.Text = ins[i]
		end)
		local function OnActive()
			if not readonly and isprop then
				ins[i] = textbox.Text
			elseif not isprop then
				ins:SetAttribute(i, textbox.Text)
			end
		end
		textbox.InputEnded:Connect(OnActive);
	elseif isprop and type(ins[i]) == "number" or type(ins:GetAttribute(i)) == "number" then
		local textbox: TextBox = create("TextBox", {
			Parent = t;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			Position = UDim2.new(1, 0, 0, 0);
			Size = UDim2.new(1, 0, 0, 25);
			AnchorPoint = Vector2.new(0, 0);
			ClearTextOnFocus = false;
			TextColor3 = self.Settings.Dex_color.Conversely
		})
		table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
			textbox.TextColor3 = self.Settings.Dex_color.Conversely
		end))
		if isprop then
			textbox.Text = ins[i]
		else
			textbox.Text = ins:GetAttribute(i)
		end
		ins:GetAttributeChangedSignal(i):Connect(function()
			textbox.Text = ins[i]
		end)
		local function OnActive()
			if tonumber(textbox.Text) then
				if (not readonly) and isprop then
					ins[i] = tonumber(textbox.Text)
				elseif not isprop then
					ins:SetAttribute(i, tonumber(textbox.Text))
				end
			end
		end
		textbox.InputEnded:Connect(OnActive);
	end
end

local function Properties(ins: Instance, frame: TextButton)
	local buttons = {}
	for i,v in DexProp:GetChildren() do
		v:Destroy()
	end
	for i,v in Properties_Storage_Class.Basic do
		Properties_Text(buttons,ins,i,v,true)
	end
	for i,v in Properties_Storage_Class do
		if ins:IsA(i) then
			for i,v in v do
				Properties_Text(buttons,ins,i,v,true)
			end
		end
	end
	for i,v in ins:GetAttributes() do
		Properties_Text(buttons,ins,i,"Attributes",false)
	end
end

self.ID = 0
self.Selections = {}

function f:On_Double_Click(ins: Instance, mainframe: TextButton)
	
end

local function Path_Doing(parents: Instance, MainFrameParents: TextButton)
	local any = {
		Childrens_Did = false;
		Childrens_Buttons = {};
		Row = self.Row;
		Row_Buttons = self.Row_Buttons;
		id = self.ID;
		selected = false
	}
	self.ID += 1
	local MainFrame: TextButton = create("TextButton", {
		Parent = DexTree;
		Size = UDim2.new(1, -(16*(self.Row+1)), 0, 20),
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Name = parents.Name;
		AnchorPoint = Vector2.new(1, 0);
		Text = "";
		AutoButtonColor = false
	})
	local UICorner_MainFrame = create("UICorner", {
		Parent = MainFrame;
		CornerRadius = UDim.new(0, 3)
	})
	MainFrame.Position = UDim2.new(1, 0, 0, f:math_(MainFrame))
	if self.Row >= 1 then
		if not self.Row_Buttons then
			self.Row_Buttons = 1
		else
			self.Row_Buttons += 1
		end
		MainFrame.Position = UDim2.new(1, 0, 0, (MainFrameParents.Position.Y.Offset+20*self.Row_Buttons))
	end
	MainFrame:SetAttribute("Dopolnitelno", MainFrame.Position.Y.Offset//20)
	MainFrame:SetAttribute("row", any.Row)
	table.insert(ActivedFunctions, game:GetService("RunService").Heartbeat:Connect(function()
		local a = false
		for i,v in self.Selections do
			if v.Parent == parents then
				any.selected = true
				a = true
			end
		end
		if not a then
			any.selected = false
		end
		for i,v in any do
			if type(v) ~= "table" and type(v) ~= "nil" then
				MainFrame:SetAttribute(i,v)
				parents:SetAttribute(i,v)
			end
		end
	end))
	local Icon = create("ImageLabel", {
		Parent = MainFrame;
		Size = UDim2.new(0, 15, 0, 15);
		Position = UDim2.new(0, 2, 0.1, 2);
		Image = f:get_image(parents.ClassName);
		BackgroundTransparency = 1;
	})
	local Text = create("TextLabel", {
		Parent = MainFrame;
		Size = UDim2.new(0.5, 0, 0.5, 0);
		Position = UDim2.new(0, 17, 0.5, 0);
		AnchorPoint = Vector2.new(0, 0.5);
		Text = parents.Name;
		TextSize = 8;
		TextXAlignment = Enum.TextXAlignment.Left;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		RichText = true;
		TextColor3 = self.Settings.Dex_color.Conversely;
	})
	local Show = create("ImageButton", {
		Parent = MainFrame;
		Name = "Show\/";
		Size = UDim2.new(0, 14, 0, 14);
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.new(0, -1, 0, 1);
		BackgroundTransparency = 1;
		Image = ImageLibrary.ArrowDown;
	})
	table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
		Text.TextColor3 = self.Settings.Dex_color.Conversely
	end))
	parents.Destroying:Connect(function()
		MainFrame:Destroy()
		events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), -1, any.Row)
		DexTree.CanvasSize = UDim2.new(0, 0, 0, (f:math_(MainFrame)+MainFrame.AbsoluteSize.Y))
	end)
	if #parents:GetChildren() <= 0 then
		Show.Visible = false
	else
		Show.Visible = true
	end
	parents.ChildRemoved:Connect(function(v)
		if #parents:GetChildren() <= 0 then
			Show.Visible = false
		else
			Show.Visible = true
		end
		DexTree.CanvasSize = UDim2.new(0, 0, 0, (f:math_(MainFrame)+MainFrame.AbsoluteSize.Y))
	end)
	parents.ChildAdded:Connect(function(v)
		if #parents:GetChildren() <= 0 then
			Show.Visible = false
		else
			Show.Visible = true
		end
		if any.Childrens_Did == true then
			self.Row = 0
			local function do_(v)
				if v.Parent then
					self.Row += 1
					do_(v.Parent)
				else
					return false
				end
				return true
			end
			events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), #parents:GetChildren(), any.Row)
			do_(parents)
			table.insert(any.Childrens_Buttons, Path_Doing(v, MainFrame))
			self.Row_Buttons = false
			self.Row = 0
		end
	end)
	MainFrame.MouseEnter:Connect(function()
		if any.selected == true then
			MainFrame.BackgroundColor3 = Color3.fromRGB(14, 123, 190)
		else
			MainFrame.BackgroundColor3 = self.Settings.Dex_color.Thirty
		end
	end)
	MainFrame.MouseLeave:Connect(function()
		if any.selected == true then
			MainFrame.BackgroundColor3 = Color3.fromRGB(14, 123, 190)
		else
			MainFrame.BackgroundColor3 = self.Settings.Dex_color.Secondary
		end
	end)
	MainFrame.MouseButton1Down:Connect(function(x,y)
		if #self.Selections >= 1 and self.Selections[1].Parent == parents then
			f:On_Double_Click(parents,MainFrame)
		end
		if self.CTRL_Active == true then
			table.insert(self.Selections, {Parent = parents, Frame = MainFrame})
			MainFrame.BackgroundColor3 = Color3.fromRGB(14, 123, 190)
		else
			for i,v in self.Selections do
				v.Frame.BackgroundColor3 = self.Settings.Dex_color.Secondary
			end
			self.Selections = {{Parent = parents, Frame = MainFrame}}
			MainFrame.BackgroundColor3 = Color3.fromRGB(14, 123, 190)
		end
		Properties(parents, MainFrame)
	end)
	Show.MouseButton1Down:Connect(function()
		any.Childrens_Did = not any.Childrens_Did
		if any.Childrens_Did == false then
			Show.Image = ImageLibrary.ArrowDown
			local function cont(p,ischildren)
				if ischildren then
					for i,v in DexTree:GetChildren() do
						if v:GetAttribute("id") == p:GetAttribute("id") then
							v:Destroy()
						end
					end
				end
				if p:GetAttribute("Childrens_Did") == true then
					for i,v in p:GetChildren() do
						cont(v,true)
						events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), -1, any.Row)
					end
				end
			end
			cont(parents,false)
			for _, v in any.Childrens_Buttons do
				v:Destroy()
			end
			DexTree.CanvasSize = UDim2.new(0, 0, 0, (f:math_(MainFrame)+MainFrame.AbsoluteSize.Y))
		else
			Show.Image = ImageLibrary.ArrowUp
			self.Row = 0
			local function do_(v)
				if v.Parent then
					self.Row += 1
					do_(v.Parent)
				else
					return false
				end
				return true
			end
			events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), #parents:GetChildren(), any.Row)
			do_(parents)
			for _,v in parents:GetChildren() do
				table.insert(any.Childrens_Buttons, Path_Doing(v, MainFrame))
			end
			self.Row_Buttons = false
			self.Row = 0
		end
	end)
	MainFrame.MouseButton2Down:Connect(function()
		local Frame_Right_Mouse: Frame = create("Frame", {
			Parent = Dex1;
			Position = UDim2.new(0, mouse.X, 0, mouse.Y);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Size = UDim2.new(0, 70, 0, 0);
			BackgroundColor3 = self.Settings.Dex_color.Thirty;
			BorderSizePixel = 0;
		})
		local corner = create("UICorner", {
			Parent = Frame_Right_Mouse;
			CornerRadius = UDim.new(0, 5)
		})
		local UIListLayout = create("UIListLayout", {
			Parent = Frame_Right_Mouse;
			Padding = UDim.new(0, 3);
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		})
		table.insert(ActivedFunctions, events.ChangedColor.Event:Connect(function()
			Frame_Right_Mouse.TextColor3 = self.Settings.Dex_color.Thirty
		end))
		local Mini_Frame = {}
		Mini_Frame.In = {}
		Mini_Frame.Add = function(text: string, image: string, response)
			local b = create("TextButton", {
				AnchorPoint = Vector2.new(1, 0);
				Parent = Frame_Right_Mouse;
				Position = UDim2.new(1, 0, 0, #Mini_Frame.In*19);
				Size = UDim2.new(0, 50, 0, 18);
				BackgroundTransparency = 1;
				Text = text;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextColor3 = self.Settings.Dex_color.Conversely;
				RichText = true;
				BorderSizePixel = 0;
			})
			local corner = create("UICorner", {
				Parent = b;
				CornerRadius = UDim.new(0, 5)
			})
			local image = create("ImageLabel", {
				Parent = b;
				BackgroundTransparency = 1;
				Image = image;
				Position = UDim2.new(0, 0, 0, 0);
				Size = UDim2.new(0, 20, 0, 20);
				AnchorPoint = Vector2.new(1, 0);
			})
			table.insert(Mini_Frame.In, b)
			b.MouseButton1Down:Connect(response)
			Frame_Right_Mouse.Size = UDim2.new(0, 70, 0, 18*#Mini_Frame.In+10)
		end
		
		Mini_Frame.Add("Delete", f:get_image("Delete"), function()
			events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), -#self.Selections)
			for i,v in self.Selections do
				v.Parent:Destroy()
			end
		end)
		
		Mini_Frame.Add("Rename", f:get_image("Rename"), function()
			
		end)
		
		game:GetService("Debris"):AddItem(Frame_Right_Mouse, 3)
	end)
	events.UpdateTree.Event:Connect(function(d, childrens: number, row)
		if d < MainFrame:GetAttribute("Dopolnitelno") or any.Row < row and d < MainFrame:GetAttribute("Dopolnitelno") then
			MainFrame:SetAttribute("Dopolnitelno", (MainFrame:GetAttribute("Dopolnitelno")+childrens))
			MainFrame.Position = UDim2.new(1, 0, 0, MainFrame:GetAttribute("Dopolnitelno")*20)
		end
	end)
	DexTree.CanvasSize = UDim2.new(0, 0, 0, (f:math_(MainFrame)+MainFrame.AbsoluteSize.Y))
	return MainFrame
end

for _,v in {
		game.Workspace;game.Players;game.CoreGui or game.VoiceChatService;
		game.Lighting;game.MaterialService;game.NetworkClient;game.ReplicatedFirst;
		game.ReplicatedStorage;
		game.StarterGui;game.StarterPack;game.StarterPlayer;
		game.Teams;game.SoundService;game.TextChatService
	} do
	Path_Doing(v)
end

Left_Frame.AddButton("Refresh Dex", function()
	for i,v in DexTree:GetChildren() do
		v:Destroy()
	end
	for _,v in {
		game.Workspace;game.Players;game.CoreGui or game.VoiceChatService;
		game.Lighting;game.MaterialService;game.NetworkClient;game.ReplicatedFirst;
		game.ReplicatedStorage;
		game.StarterGui;game.StarterPack;game.StarterPlayer;
		game.Teams;game.SoundService;game.TextChatService
		} do
		Path_Doing(v)
	end
end, f:get_image("Refresh"))

Left_Frame.AddButton("Settings", function()
	
end, f:get_image("GameSettings"))

return nil
