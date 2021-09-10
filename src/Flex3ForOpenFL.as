package
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import mx.controls.Button;
	import mx.managers.SystemManager;
	import flash.events.Event;
	import mx.core.Application;
	import mx.core.mx_internal;
	import mx.styles.StyleManagerImpl;
	import mx.managers.LayoutManager;
	import mx.managers.CursorManagerImpl;
	import mx.managers.DragManagerImpl;
	import mx.managers.PopUpManagerImpl;
	import mx.managers.ToolTipManagerImpl;
	import mx.controls.Alert;
	import org.apache.royale.reflection.getQualifiedClassName;
	import org.apache.royale.reflection.getQualifiedSuperclassName;
	import org.apache.royale.reflection.getDefinitionByName;

	public class Flex3ForOpenFL extends Sprite
	{
		public function Flex3ForOpenFL()
		{
			super();
			MyApp;
			CursorManagerImpl;
			DragManagerImpl;
			LayoutManager;
			PopUpManagerImpl;
			StyleManagerImpl;
			ToolTipManagerImpl;
            getQualifiedClassName;
            getQualifiedSuperclassName;
            getDefinitionByName;

            Alert.okLabel = "OK";

			this.addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler)
		}

		private function addedToStageHandler(event:Event):void
		{
            // trace("creating system manager");
			var systemManager:OpenFLSystemManager = new OpenFLSystemManager(stage);
			stage.addChild(systemManager);
		}
	}
}

import mx.managers.SystemManager;
import flash.display.LoaderInfo;
import mx.styles.StyleManager;
import mx.styles.CSSStyleDeclaration;
import mx.skins.Border;
import mx.core.mx_internal;
import mx.skins.halo.HaloFocusRect;
import mx.skins.halo.ButtonSkin;
import flash.display.Stage;
import openfl.Lib;
import flash.events.Event;
import org.apache.royale.reflection.getDefinitionByName;

class OpenFLSystemManager extends SystemManager {
	public function OpenFLSystemManager(stage:Stage)
	{
        if(!this.stage)
        {
            this["stage"] = stage;
        }
        var self:OpenFLSystemManager = this;
        Lib["get_current"] = function():OpenFLSystemManager
        {
            return self;
        }
        trace(Lib.current == this);
		var loaderInfo:LoaderInfo = LoaderInfo["create"]();
		this["__loaderInfo"] = loaderInfo;

		super();

		Lib.setTimeout(function():void
		{
			root.loaderInfo.dispatchEvent(new Event(Event.INIT));
		}, 1000);
	}

    override mx_internal function initialize():void
    {
        // trace("initialize system manager");
        scaleX = scaleY = this.stage["window"].scale;
        super.mx_internal::initialize();
    }

	override public function create(... params):Object
	{
        if (params.length > 0 && !(params[0] is String)) {
            return super.create.apply(this, params);
        }
		var globalStyleDecl:CSSStyleDeclaration = new CSSStyleDeclaration();
		globalStyleDecl.defaultFactory = function():void
        {
            this.backgroundAlpha = 1.0; /* this runs the opacity of nearly every square piece of the components */
            /* backgroundDisabledColor = 0xDDDDDD; */
            this.backgroundSize = "auto";
            this.bevel = true;
            this.borderAlpha = 1.0;
            this.borderCapColor = 0x919999;
            this.borderColor = 0xB7BABC;
            this.borderSides = "left top right bottom";
            this.borderSkin = mx.skins.halo.HaloBorder;
            this.borderStyle = "inset";
            this.borderThickness = 1;
            this.buttonColor = 0x6F7777;
            this.closeDuration = 250;
            this.color = 0x0B333C;
            this.cornerRadius = 0;
            this.disabledColor = 0xAAB3B3;
            this.disabledIconColor = 0x999999;
            this.dropShadowColor = 0x000000;
            this.dropShadowEnabled = false;
            this.embedFonts = false;
            this.errorColor = 0xFF0000;
            this.fillAlphas = [0.6, 0.4, 0.75, 0.65]; /* last pair are for OVER state */
            this.fillColor = 0xFFFFFF; /* kill this?? */
            this.fillColors = [0xFFFFFF, 0xCCCCCC, 0xFFFFFF, 0xEEEEEE];
            this.filled = true;
            this.focusAlpha = 0.4;
            this.focusBlendMode = "normal";
            this.focusRoundedCorners = "tl tr bl br";
            this.focusSkin = mx.skins.halo.HaloFocusRect;
            this.focusThickness = 2;
            this.fontAntiAliasType = "advanced";
            this.fontFamily = "Verdana";
            this.fontGridFitType = "pixel";
            this.fontSharpness = 0;
            this.fontSize = 10;
            this.fontStyle = "normal";
            this.fontThickness = 0;
            this.fontWeight = "normal";
            /* footerColors = [0xE7E7E7, 0xC7C7C7]; */
            /* headerColors = [0xE7E7E7, 0xD9D9D9]; */
            /* headerHeight = 28; */
            this.highlightAlphas = [0.3, 0]; /* use this to control the 'light' cast on the components */
            this.horizontalAlign = "left";
            this.horizontalGap = 8;
            this.horizontalGridLineColor = 0xF7F7F7;
            this.horizontalGridLines = false;
            this.iconColor = 0x111111;
            this.indentation = 17;
            this.indicatorGap = 14;
            this.kerning = false;
            this.leading = 2;
            this.letterSpacing = 0;
            this.modalTransparency = 0.5;
            this.modalTransparencyBlur = 3;
            this.modalTransparencyColor = 0xDDDDDD;
            this.modalTransparencyDuration = 100;
            this.openDuration = 250;
            this.paddingBottom = 0;
            this.paddingLeft = 0;
            this.paddingRight = 0;
            this.paddingTop = 0;
            this.roundedBottomCorners = true;
            this.repeatDelay = 500;
            this.repeatInterval = 35;
            this.selectionDisabledColor = 0xDDDDDD;
            this.selectionDuration = 250;
            this.shadowCapColor = 0xD5DDDD;
            this.shadowColor = 0xEEEEEE;
            this.shadowDirection = "center";
            this.shadowDistance = 2;
            this.stroked = false;
            this.strokeWidth = 1;
            this.textAlign = "left";
            this.textDecoration = "none";
            this.textIndent = 0;
            this.textRollOverColor = 0x2B333C;
            this.textSelectedColor = 0x2B333C;

            this.themeColor = 0x009DFF; /* haloBlue */
            /*
            //themeColor = 0x80FF4D; // haloGreen
            //themeColor = 0xFFB600; // haloOrange
            //themeColor = 0xAECAD9; // haloSilver
            */

            this.useRollOver = true;
            this.version = "3.0.0";
            this.verticalAlign = "top";
            this.verticalGap = 6;
            this.verticalGridLineColor = 0xD5DDDD;
            this.verticalGridLines = true;
        };
		StyleManager.setStyleDeclaration("global", globalStyleDecl, false);

		var containerStyleDecl:CSSStyleDeclaration = new CSSStyleDeclaration();
		containerStyleDecl.defaultFactory = function():void
        {
            this.borderStyle = "none";
        };
		StyleManager.setStyleDeclaration("Container", containerStyleDecl, false);

		var appStyleDecl:CSSStyleDeclaration = new CSSStyleDeclaration();
		appStyleDecl.defaultFactory = function():void
        {
            this.backgroundColor = 0x869CA7; 
            this.backgroundImage = mx.skins.halo.ApplicationBackground;
            this.backgroundSize = "100%";
            this.backgoundGradientAlphas = [1, 1];
            /* backgroundGradientColors: #9CB0BA, #68808C; */
            this.horizontalAlign = "center";
            this.paddingBottom = 24;
            this.paddingLeft = 24;
            this.paddingRight = 24;
            this.paddingTop = 24;
        };
		StyleManager.setStyleDeclaration("Application", appStyleDecl, false);

        var buttonStyleDecl:CSSStyleDeclaration = new CSSStyleDeclaration();
        buttonStyleDecl.defaultFactory = function():void
            {
                this.cornerRadius = 4;
                this.fontWeight = "bold";
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.paddingLeft = 10;
                this.paddingRight = 10;
                this.paddingTop = 2;
                this.textAlign = "center";
                this.skin = mx.skins.halo.ButtonSkin;
                this.verticalGap = 2;
            };
		StyleManager.setStyleDeclaration("Button", buttonStyleDecl, false);

        var panelStyleDecl:CSSStyleDeclaration = new CSSStyleDeclaration();
        panelStyleDecl.defaultFactory = function():void
        {
            /* backgroundAlpha = 1.0; controls the alpha of the panel content area. */
            this.backgroundColor = 0xFFFFFF;
            this.borderAlpha = 0.4; /* controls the alpha of the panel top, bottom and sides. */
            this.borderColor = 0xE2E2E2;
            this.borderSkin = mx.skins.halo.PanelSkin;
            this.borderStyle = "default";
            this.borderThickness = 0;
            /* borderThicknessBottom is NaN */
            this.borderThicknessLeft = 10;
            this.borderThicknessRight = 10;
            this.borderThicknessTop = 2;
            this.cornerRadius = 4;
            this.dropShadowEnabled = true;
            this.paddingBottom = 0;
            this.paddingLeft = 0;
            this.paddingRight = 0;
            this.paddingTop = 0;
            this.resizeEndEffect = "Dissolve";
            this.resizeStartEffect = "Dissolve";
            this.roundedBottomCorners = false;
            this.statusStyleName = "windowStatus";
            this.titleBackgroundSkin = mx.skins.halo.TitleBackground;
            this.titleStyleName = "windowStyles";
        };
		StyleManager.setStyleDeclaration("Panel", panelStyleDecl, false);

        var alertStyleDecl:CSSStyleDeclaration = new CSSStyleDeclaration();
        alertStyleDecl.defaultFactory = function():void
        {
            this.backgroundAlpha = 0.90; /* controls the alpha of the panel content area. */
            this.backgroundColor = 0x869CA7;
            this.borderAlpha = 0.90; /* controls the alpha of the panel top, bottom and sides. */
            this.borderColor = 0x869CA7;
            /* borderThicknessBottom is NaN */
            this.buttonStyleName = "alertButtonStyle";
            this.color = 0xFFFFFF;
            this.paddingBottom = 2;
            this.paddingLeft = 10;
            this.paddingRight = 10;
            this.paddingTop = 2;
            this.roundedBottomCorners = true;
        };
		StyleManager.setStyleDeclaration("Alert", alertStyleDecl, false);



        var scrollBarStyleDecl:CSSStyleDeclaration = new CSSStyleDeclaration();
        scrollBarStyleDecl.defaultFactory = function():void
        {
            this.borderColor = 0xB7BABC;
            this.cornerRadius = 4;
            this.downArrowSkin = mx.skins.halo.ScrollArrowSkin;
            this.paddingBottom = 0;
            this.paddingLeft = 0;
            this.paddingRight = 0;
            this.paddingTop = 0;
            this.thumbOffset = 0;
            this.thumbSkin = mx.skins.halo.ScrollThumbSkin;
            this.trackColors = [0x94999b, 0xe7e7e7];	/* 0xd6d7d8; */
            this.trackSkin = mx.skins.halo.ScrollTrackSkin;
            this.upArrowSkin = mx.skins.halo.ScrollArrowSkin;
        };
		StyleManager.setStyleDeclaration("ScrollBar", scrollBarStyleDecl, false);

        var windowStylesStyleDecl:CSSStyleDeclaration = new CSSStyleDeclaration();
        windowStylesStyleDecl.defaultFactory = function():void
        {
            this.fontWeight = "bold";
        };
		StyleManager.setStyleDeclaration(".windowStyles", windowStylesStyleDecl, false);

		StyleManager.mx_internal::initProtoChainRoots();
		return super.create.apply(this, params);
	}

	override public function getDefinitionByName(name:String):Object
	{
		var index:int = name.lastIndexOf("::");
		if(index != -1)
		{
			name = name.substr(0, index) + "." + name.substr(index + 2);
		}
		var def:* = org.apache.royale.reflection.getDefinitionByName(name);
		if(def)
		{
			return def;
		}
		return Lib.getDefinitionByName(name);
    }

	override public function info():Object
	{
		return {
			backgroundAlpha: 1.0,
            backgroundColor: "0x1116",
			backgroundImage: undefined,
			backgroundSize: undefined,
			mainClassName: "MyApp",
            usePreloader: false,
			mixins: [ /*"_HelloFlex_FlexInit", "_HelloFlex_Styles", "mx.styles.StyleManagerImpl"*/ ]
		}
	}
}