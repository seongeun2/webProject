<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>http://www.blueb.co.kr</title>
<style>
.css3-tab {
  list-style: none;
  margin: 0 auto 40px;
  padding: 38px 0 0 0;
  position: relative;
  width: 90%;
}
.css3-tab input[type='radio'] {
  display: none;
}
.css3-tab .css3-tab-nav {
  display: table;
  table-layout: fixed;
  width: 100%;
}
.css3-tab .css3-tab-nav label {
  display: table-cell;
  background-color: #666666;
  color: #FFFFFF;
  padding: 15px;
  text-align: center;
  transition: all .3s ease 0s;
}
.css3-tab .css3-tab-nav label:hover {
  cursor: pointer;
  background: white;
  color: #666666;
  transition: all .3s ease 0s;
}
@media (max-width: 692px) {
  .css3-tab .css3-tab-nav {
    display: block;
    margin: 0 0 20px;
  }
  .css3-tab .css3-tab-nav label {
    display: block;
    box-sizing: border-box;
    width: 100%;
    padding: 20px;
  }
}
.css3-tab .css3-tab-content {
  overflow: hidden;
  padding: 25px;
  display: none;
  background: #FFF;
  clear: left;
  box-sizing: border-box;
}
.css3-tab input[id='tabOne']:checked ~ .css3-tab-nav label[for='tabOne'] {
  background: #b6ff00;
  color: #666666;
  cursor: default;
}
.css3-tab input[id='tabOne']:checked ~ div.tab-one {
  display: block;
  border-top: solid 3px #b6ff00;
}
.css3-tab input[id='tabTwo']:checked ~ .css3-tab-nav label[for='tabTwo'] {
  background: red;
  color: white;
  cursor: default;
}
.css3-tab input[id='tabTwo']:checked ~ div.tab-two {
  display: block;
  border-top: solid 3px red;
}
.css3-tab input[id='addNew']:checked ~ .css3-tab-nav label[for='addNew'] {
  background: red;
  color: white;
  cursor: default;
}
.css3-tab input[id='addNew']:checked ~ div.add-new {
  display: block;
  border-top: solid 3px red;
}
body {
  background: #e4e4e4;
}

</style>
</head>
<body>

<!-- Pure CSS Menu -->
<div class='css3-tab'>
		<input type='radio' name='a' id='tabOne' tabindex="1">
		<input type='radio' name='a' id='tabTwo' tabindex="2" checked>
		<input type='radio' name='a' id='addNew' tabindex="3">

		<div class="css3-tab-nav">
				<label for='tabOne'>Tab One</label>
				<label for='tabTwo'>Tab Two</label>
				<label for='addNew'>Add New</label>
		</div>

		<div class='css3-tab-content tab-one'>
				<!-- start slipsum code -->
				<h1>Tab One</h1> In facilisis scelerisque dui vel dignissim. Sed nunc orci, ultricies congue vehicula quis, facilisis a orci. In aliquet facilisis condimentum. Donec at orci orci, a dictum justo. Sed a nunc non lectus fringilla suscipit. Vivamus pretium sapien sit
				amet mauris aliquet eleifend vel vitae arcu. Fusce pharetra dignissim nisl egestas pretium.

				<h2>Nullam commodo neque</h2> Etiam aliquam sem ac velit feugiat elementum. Nunc eu elit velit, nec vestibulum nibh. Curabitur ultrices, diam non ullamcorper blandit, nunc lacus ornare nisi, egestas rutrum magna est id nunc. Pellentesque imperdiet malesuada quam, et rhoncus eros
				auctor eu. Nullam vehicula metus ac lacus rutrum nec fermentum urna congue. Vestibulum et risus at mi ultricies sagittis quis nec ligula. Suspendisse dignissim dignissim luctus. Duis ac dictum nibh. Etiam id massa magna. Morbi molestie posuere posuere.

				<h2>Maecenas eu placerat</h2> Integer elementum massa at nulla placerat varius. Suspendisse in libero risus, in interdum massa. Vestibulum ac leo vitae metus faucibus gravida ac in neque. Nullam est eros, suscipit sed dictum quis, accumsan a ligula. In sit amet justo lectus.
				Etiam feugiat dolor ac elit suscipit in elementum orci fringilla. Aliquam in felis eros. Praesent hendrerit lectus sit amet turpis tempus hendrerit. Donec laoreet volutpat molestie. Praesent tempus dictum nibh ac ullamcorper. Sed eu consequat nisi.
				Quisque ligula metus, tristique eget euismod at, ullamcorper et nibh. Duis ultricies quam egestas nibh mollis in ultrices turpis pharetra. Vivamus et volutpat mi. Donec nec est eget dolor laoreet iaculis a sit amet diam.
		</div>

		<div class='css3-tab-content tab-two'>
				<!-- start slipsum code -->
				<h1>Tab Two will be shown by default via the checked attr on the corresponding input</h1> Integer elementum massa at nulla placerat varius. Suspendisse in libero risus, in interdum massa. Vestibulum ac leo vitae metus faucibus gravida ac in neque. Nullam est eros, suscipit sed dictum quis, accumsan a ligula. In sit amet justo lectus.
				Etiam feugiat dolor ac elit suscipit in elementum orci fringilla. Aliquam in felis eros. Praesent hendrerit lectus sit amet turpis tempus hendrerit. Donec laoreet volutpat molestie. Praesent tempus dictum nibh ac ullamcorper. Sed eu consequat nisi.
				Quisque ligula metus, tristique eget euismod at, ullamcorper et nibh. Duis ultricies quam egestas nibh mollis in ultrices turpis pharetra. Vivamus et volutpat mi. Donec nec est eget dolor laoreet iaculis a sit amet diam.

				<h2>Donec malesuada vehicula</h2> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac magna non augue porttitor scelerisque ac id diam. Mauris elit velit, lobortis sed interdum at, vestibulum vitae libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Quisque iaculis ligula ut ipsum mattis viverra. Nulla a libero metus. Integer gravida tempor metus eget condimentum. Integer eget iaculis tortor. Nunc sed ligula sed augue rutrum ultrices eget nec odio. Morbi rhoncus, sem laoreet tempus pulvinar,
				leo diam varius nisi, sed accumsan ligula urna sed felis. Mauris molestie augue sed nunc adipiscing et pharetra ligula suscipit. In euismod lectus ac sapien fringilla ut eleifend lacus venenatis.

				<h2>Nullam eros mi</h2> Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor,
				erat sit amet venenatis luctus, augue libero ultrices quam, ut congue nisi risus eu purus. Cras semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.
		</div>

		<div class='css3-tab-content add-new'>
				<!-- start slipsum code -->
				<h1>Add New</h1> Integer elementum massa at nulla placerat varius. Suspendisse in libero risus, in interdum massa. Vestibulum ac leo vitae metus faucibus gravida ac in neque. Nullam est eros, suscipit sed dictum quis, accumsan a ligula. In sit amet justo lectus.
				Etiam feugiat dolor ac elit suscipit in elementum orci fringilla. Aliquam in felis eros. Praesent hendrerit lectus sit amet turpis tempus hendrerit. Donec laoreet volutpat molestie. Praesent tempus dictum nibh ac ullamcorper. Sed eu consequat nisi.
				Quisque ligula metus, tristique eget euismod at, ullamcorper et nibh. Duis ultricies quam egestas nibh mollis in ultrices turpis pharetra. Vivamus et volutpat mi. Donec nec est eget dolor laoreet iaculis a sit amet diam.

				<h2>Donec malesuada vehicula</h2> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac magna non augue porttitor scelerisque ac id diam. Mauris elit velit, lobortis sed interdum at, vestibulum vitae libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Quisque iaculis ligula ut ipsum mattis viverra. Nulla a libero metus. Integer gravida tempor metus eget condimentum. Integer eget iaculis tortor. Nunc sed ligula sed augue rutrum ultrices eget nec odio. Morbi rhoncus, sem laoreet tempus pulvinar,
				leo diam varius nisi, sed accumsan ligula urna sed felis. Mauris molestie augue sed nunc adipiscing et pharetra ligula suscipit. In euismod lectus ac sapien fringilla ut eleifend lacus venenatis.

				<h2>Nullam eros mi</h2> Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor,
				erat sit amet venenatis luctus, augue libero ultrices quam, ut congue nisi risus eu purus. Cras semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.
		</div>
</div>
  
</body>
</html>