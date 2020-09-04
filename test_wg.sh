#!/bin/bash

# wireguard interface name is set to wg0, 
# change the variable wginterface to your needs.

wginterface="wg0"

test $(ip a show $wginterface 2> /dev/null | wc -l) -ne 0 && echo "<txt>"[wg up]"</txt>" || echo "<txt>"[wg down]"</txt>"

# if you like an bar instead the text you can try this line

# test $(ip a show $wginterface 2> /dev/null | wc -l) -ne 0 && echo "<bar>"100%"</bar>" || echo "<bar>"0%"</bar>"

# if you like an icon instead the text or the bar ...

# test $(ip a show $wginterface 2> /dev/null | wc -l) -ne 0 && echo "<img>"secure.svg"</img>" || echo "<img>"not-secure.svg"</img>"

