CKEDITOR.editorConfig = function( config )
{
    config.toolbar_MyToolbar =
	[
            { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-','RemoveFormat' ] },
            { name: 'clipboard', items : [ 'Cut','Copy','Paste','-','Undo','Redo','Find'  ] },
            { name: 'editing', items : [ 'Scayt'] },
            { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote' ] },
            { name: 'insert', items : [ 'Image','Table' ] },             
            { name: 'styles', items : [ 'Format' ] },   
            { name: 'links', items : [ 'Link','Anchor' ] }
	];
}
