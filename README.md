# Samagri 

CSS authoring helper files based on SASS. There are mainly 3 helper files **Pallete**, **Typography** and **Viewport**.


##### 1. Copy the three files to folder you like

##### 2. Add your colour to pallete.scss

```
/* Color Pallete */

$pallete : (
  pure-white: #FFF,
  patone: #EEE,
  custom-name: #DDD,
  us: #27AE60,
  pure-black: #000,
);
```

##### 3. Register your fonts and typeset in typography.scss

```
/* Fonts Register */

$fonts : (
  'georgia': 'georgia',
  'lato' : 'Lato'
);

$typesets : (
  'georgia': (
    'regular': 400
  ),

  'lato' : (
    'light' : 300,
    'regular' : 400,
    'bold' : 700,
    'extra-bold' : 900
  )
);

```
##### 4. Thats its!!!

----

###Usage

```
@import 'base/pallete';
@import 'base/typography';
@import 'base/viewport';

.klass {
	width: 200px;
	height: 200px;
	
	@include font('georgia', 'regular', em(18));
	
	@include color('pure-white');
	@include color('bg', 'pure-black');
	@include color('border', 'us');
	
	@include respond-to('small-screen-l')	{
		width: 400px;
		height: 400px;
	}
}
```
