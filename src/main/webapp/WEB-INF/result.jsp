<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Spring MVC Form Handling</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/dojo/1.9.3/dojo/dojo.js"
	djConfig="parseOnLoad:true"></script>
<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/dojo/1.4/dojo/resources/dojo.css">
<link rel="stylesheet" type="text/css"
	href="https://ajax.googleapis.com/ajax/libs/dojo/1.11.2/dijit/themes/claro/claro.css">
<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/dojo/1.8/dijit/themes/claro/document.css">
<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/dojo/1.8/dojox/grid/enhanced/resources/claro/EnhancedGrid.css">
<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/dojo/1.8/dojox/grid/enhanced/resources/EnhancedGrid_rtl.css">
<link rel="stylesheet" type="text/css"
	href="C:/Users/user/Desktop/claroGrid.css">

<script type="text/javascript">
	dojo.require("dijit/dijit");
	dojo.require("dojo/parser");
	dojo.require("dijit/Dialog");
	dojo.require("dojox/grid/DataGrid");
	dojo.require("dojox/grid/EnhancedGrid");
	dojo.require("dojox/data/JsonRestStore");
	dojo.require("dojo/data/ItemFileWriteStore");
	dojo.require("dojo/data/ItemFileReadStore");
	dojo.require("dojox.grid.enhanced.plugins.Pagination");
	dojo.require("dojox.grid.enhanced.plugins.IndirectSelection");
	function check(){
		var check=false;
		for(var i=0;i<2;i++)
			{
		check = dijit.byId('data_grid').selection.selected[i];
		alert(check);
			}
		
		}
	
	
	
	dojo.ready(function() {
		alert('in ready');
		dojo.connect(dojo.byId('DiagLnk'), 'click', function() {
			alert('here');
			dijit.byId('diagBox').show();
			gridCrt();
		});

		function gridCrt() {
			alert('In grid');
	
			mydata = [ {
				"col1" : "fish",
				"col2" : "dead",
				"col3" : "aquatic",
				"col4" : "10"
						
			},
			{
				"col1" : "Lion",
				"col2" : "dead",
				"col3" : "animal",
				"col4" : "20"
						
			} 
			];

			var layout = [ {
				'name' : 'Name',
				'field' : 'col1'
			}, {
				'name' : 'Status',
				'field' : 'col2'
			}, {
				'name' : 'Catagory',
				'field' : 'col3'
			},
			{
				'name' : 'Price',
				'field' : 'col4'
			}
			];

			var store = new dojo.data.ItemFileWriteStore({
				data : {
					items : mydata
				}
			});
			
			var a = {};
			a[0] = mydata[0];
			alert("data-1-" + a[0].col1);
			var dialgrid = new dojox.grid.EnhancedGrid({
				id : 'data_grid',
				store : store,
				structure : layout,
				rowSelector : '0px',
				onRowClick: function(e){
			           this.edit.rowClick(e);
			           this.selection.clickSelectEvent(e);
			        },
				plugins: {indirectSelection:{name:'selection'}}
			},
			document.createElement('gridDiv'));
			 dojo.byId("diaGrid").appendChild(dialgrid.domNode);
			//dialgrid.placeAt("diaGrid");
			dialgrid.startup();
		}
	});
</script>
<body>


	<DIV style="margin: 6px">
		<H3 style="margin-bottom: 3px">Welcome!</H3>
		<div>
			<a href="javascript:void(0);" id="DiagLnk">Shopping Cart</a>
		</div>
		<div data-dojo-type="dijit.Dialog" id="diagBox" data-dojo-id="diagBox"
			title="My Shopping Cart" style="width: 800px; display: none">
			<form method="POST"  commandName="cart" action="${pageContext.servletContext.contextPath}/cart">
			<div id="diaGrid" class="claro"
				style="height: 250px; overflow-y: auto;">here</div>
				<button id="btn"  value="click" onclick="check();">Click</button>
		   </form>
		</div>
	</DIV>
	
</body>
</head>
<%-- <body class="claro">
<div id="diaGrid" class="claro" style="height:250px;overflow-y:auto;"> here</div>

<div id="gridDiv"></div>
<h2>Submitted Student Information</h2>
   <table>
    <tr>
        <td>Name</td>
        <td>${name}</td>
    </tr>
    <tr>
        <td>Age</td>
        <td>${age}</td>
    </tr>
    <tr>
        <td>ID</td>
        <td>${id}</td>
    </tr>
</table>  
</body> --%>
</html>