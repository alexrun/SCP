function move(tbFrom, tbTo){
	var arrFrom = new Array(); var arrTo = new Array(); 
	var arrLU = new Array();	
	var i;
	
	for (i = 0; i < tbTo.options.length; i++) {
		arrLU[tbTo.options[i].text] = tbTo.options[i].value;
		arrTo[i] = tbTo.options[i].text;
	}
	
	var fLength = 0;
	var tLength = arrTo.length;
	for(i = 0; i < tbFrom.options.length; i++){	
		arrLU[tbFrom.options[i].text] = tbFrom.options[i].value;		
		if (tbFrom.options[i].selected && tbFrom.options[i].value != "") {
			arrTo[tLength] = tbFrom.options[i].text;
			tLength++;
		}else{
			arrFrom[fLength] = tbFrom.options[i].text;
			fLength++;
	    }
	}
	
	tbFrom.length = 0;
	tbTo.length = 0;
	var ii;
	
	for(ii = 0; ii < arrFrom.length; ii++){
		var no = new Option();
		no.value = arrLU[arrFrom[ii]];
		no.text = arrFrom[ii];
		tbFrom[ii] = no;
	}
	
	for(ii = 0; ii < arrTo.length; ii++){
		var no = new Option();
		no.value = arrLU[arrTo[ii]];
		no.text = arrTo[ii];
		
		tbTo[ii] = no;
		tbTo.options[ii].selected=true;
	
	}

}

$(function() {
	$( "#datepicker" ).datepicker();
});

$(function() {
	$( "#datepickerB" ).datepicker();
});

$(function() {
        $( "#accordion" ).accordion({        	
            event: "click hoverintent",
            heightStyle: "content",            	
            header: "> div > h3"
        }).sortable({
                axis: "y",
                handle: "h3",
                stop: function( event, ui ) {
                    // IE doesn't register the blur when sorting
                    // so trigger focusout handlers to remove .ui-state-focus
                    ui.item.children( "h3" ).triggerHandler( "focusout" );
                }
            });        
    });
 
    var cfg = ($.hoverintent = {
        sensitivity: 7,
        interval: 100
    });
 
    $.event.special.hoverintent = {
        setup: function() {
            $( this ).bind( "mouseover", jQuery.event.special.hoverintent.handler );
        },
        teardown: function() {
            $( this ).unbind( "mouseover", jQuery.event.special.hoverintent.handler );
        },
        handler: function( event ) {
            var that = this,
                args = arguments,
                target = $( event.target ),
                cX, cY, pX, pY;
 
            function track( event ) {
                cX = event.pageX;
                cY = event.pageY;
            };
            pX = event.pageX;
            pY = event.pageY;
            function clear() {
                target
                    .unbind( "mousemove", track )
                    .unbind( "mouseout", arguments.callee );
                clearTimeout( timeout );
            }
            function handler() {
                if ( ( Math.abs( pX - cX ) + Math.abs( pY - cY ) ) < cfg.sensitivity ) {
                    clear();
                    event.type = "hoverintent";
                    // prevent accessing the original event since the new event
                    // is fired asynchronously and the old event is no longer
                    // usable (#6028)
                    event.originalEvent = {};
                    jQuery.event.handle.apply( that, args );
                } else {
                    pX = cX;
                    pY = cY;
                    timeout = setTimeout( handler, cfg.interval );
                }
            }
            var timeout = setTimeout( handler, cfg.interval );
            target.mousemove( track ).mouseout( clear );
            return true;
        }
    };
    
	$(function() {
        var icons = {
            header: "ui-icon-circle-arrow-e",
            activeHeader: "ui-icon-circle-arrow-s"
        };
        $( "#accordion" ).accordion({
            icons: icons
        });
        $( "#toggle" ).button().click(function() {
            if ( $( "#accordion" ).accordion( "option", "icons" ) ) {
                $( "#accordion" ).accordion( "option", "icons", null );
            } else {
                $( "#accordion" ).accordion( "option", "icons", icons );
            }
        });
    });
	
	$(function() {
        $( "#accordion" )
            .accordion({
                header: "> div > h3"
            })
            .sortable({
                axis: "y",
                handle: "h3",
                stop: function( event, ui ) {
                    // IE doesn't register the blur when sorting
                    // so trigger focusout handlers to remove .ui-state-focus
                    ui.item.children( "h3" ).triggerHandler( "focusout" );
                }
            });
    });
	
	
	 $(function() {
        // run the currently selected effect
        function runEffect() {
            // get effect type from
            var selectedEffect = $( "#effectTypes" ).val();
 
            // most effect types need no options passed by default
            var options = {};
            // some effects have required parameters
            if ( selectedEffect === "scale" ) {
                options = { percent: 100 };
            } else if ( selectedEffect === "size" ) {
                options = { to: { width: 280, height: 185 } };
            }
 
            // run the effect
            $( "#effect" ).show( selectedEffect, options, 500, callback );
        };
 
        //callback function to bring a hidden box back
        function callback() {
            setTimeout(function() {
                $( "#effect:visible" ).removeAttr( "style" ).fadeOut();
            }, 1000 );
        };
 
        // set effect from select menu value
        $( "#button" ).click(function() {
            runEffect();
            return false;
        });
 
        $( "#effect" ).hide();
    });	

	 
	 

