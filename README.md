# Samagri 
---

CSS authoring helper files based on SASS. There are mainly 3 helper files 

- pallete.scss
- typography.scss
- viewport.scss

### 1. Pallete 
Pallete manages all your color codes used in the project. you can register a colour hex code with respect to some name that you like or pantone name _(eg: PMS-2717: #A5BAE0)_.

##### Color Registry
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

#### @mixin **color**( *property*, *name* )
- **property:** `bg` - background color, `color` - font color and `border` - border color
- **name:** that you defined in the color registry for corresponding hex code.

```
.klass {
	@include color('pure-white');
	@include color('bg', 'pure-black');
	@include color('border', 'us');
}
```

### 2. Typography
Typography `typography.scss` helps you to manage font and corresponding typeset using in the project. now a days lot of people started using multiple fonts in there projects.

##### Font Registry
```
/* Fonts Register */

$fonts : (
  'georgia': 'georgia',
  'lato' : 'Lato'
);
```

##### Typeset Registry
typeset register helps you to map the font-weight to meaning full tag.

```
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

#### @mixin **font**( *name*, *type*, *size*, *line_height* )

- **name:** Font name. eg: Lato, Georgia etc
- **type:** font weight tag. eg: bold, extra-bold etc
- **size** Font size. eg: 16px, 2em etc
- **line_height** ofcourse line height eg: 1.4, 20px etc

```
.klass {
	@include font('georgia', 'regular', 18px, 1.4);
}
```

#### @function **em**( *font_size*, *base_font_size* )

- **font_size:** font size in pixel you want to convert
- **base_font_size:** default font size.

```
.klass {
	@include font('georgia', 'regular', em(18), 1.4);
}
```

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
