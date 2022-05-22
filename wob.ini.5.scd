wob.ini(5)

# NAME

wob.ini - wob configuration file

You can run `wob -vv` to find the default values.

# SECTION: default

*timeout*
	Timeout after which wob hides itself, in milliseconds.

*max*
	This value will be represented as fully filled bar.

*width*
	Width of wob, in pixels.

*height*
	Height of wob, in pixels.

*offset*
	Border offset, in pixels.

*border*
	Border size, in pixels.

*padding*
	Bar padding, in pixels.

*anchor*
	Anchor point, combination of *top*, *left*, *right*, *bottom*, *center*.

	Example: *bottom* *right*

*margin*
	Anchor margin, in pixels.

*border_color*
	Border color, in #RRGGBBAA format.

*background_color*
	Background color, in #RRGGBBAA format.

*bar_color*
	Bar color, in #RRGGBBAA format.

*overflow_mode*
	Overflow mode, one of *wrap*, and *nowrap*.

	*wrap*: wrap value so *max* + 20 will be displayed as 20

	*nowrap* values > *max* will be displayed as just *max*

*overflow_bar_color*
	Overflow bar color, in #RRGGBBAA format.

*overflow_background_color*
	Overflow background color, in #RRGGBBAA format.

*overflow_border_color*
	Overflow border color, in #RRGGBBAA format.

*output_mode*
	Output mode, one of *whitelist*, *all*, *focused*.

	*whitelist*: show wob only on outputs defined in *output.\** sections of config file

	*all*: show wob on all available outputs

	*focused*: show wob on compositor default (focused) output

# SECTION: output.*

This section will be used in future releases of wob to provide per output configuration.
Currently this servers only as list of outputs to show wob on in *whitelist* mode.

Replace *\** with user friendly name of your choosing.

*name*
	Output name.

	Example: DP-1

# EXAMPLE

```
timeout = 1000
max = 100
output_mode = whitelist

[output.left]
name = DP-1

[output.ips]
name = HDMI-1
```

# See also

*wob*(1)