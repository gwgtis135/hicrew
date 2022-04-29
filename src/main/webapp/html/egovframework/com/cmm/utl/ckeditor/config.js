/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.filebrowserUploadMethod = 'form';
	// endter / shiftEnter Mode
	//config.enterMode = CKEDITOR.ENTER_BR;
	//config.shiftEnterMode = CKEDITOR.ENTER_P;
	config.autoGrow_minHeight=300;
	config.autoGrow_maxHeight=300;
	config.allowedContent = true;
	config.enterMode = CKEDITOR.ENTER_BR;
	config.toolbar = [
        ['Font', 'FontSize'],
        ['BGColor', 'TextColor' ],
        ['Bold', 'Italic', 'Strike', 'Superscript', 'Subscript', 'Underline', 'RemoveFormat'],   
        ['BidiLtr', 'BidiRtl'],
        ['SpecialChar', 'Smiley'],
        ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
        ['Blockquote', 'NumberedList', 'BulletedList'],
        ['Link', 'Unlink'],
        ['Undo', 'Redo']
	];
};
