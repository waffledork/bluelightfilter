I presume this will work on the RG35XX+/H/2024/SP, though you may have to adjust the key values based on your device; I only have an RG35XX+ so that's as far as my testing goes.

# What Is This?
Blue light from screens interferes with our ability to produce melatonin, a hormone that regulates sleep, resulting in difficulty falling asleep or staying that way. A blue light filter reduces the blue light that a display emits by adjusting the display's color temperature to warmer tones (1900K). It gives everything an amber/yellowish look but it's a small price to pay for better sleep.

While I was looking into this, I also looked into further lowering the screen brightness. Brightness in Batocera is on a 0-255 scale. The `Menu + Volume Down` key combination lets you lower the brightness by 5% intervals. This means the lowest you can get is 5%, which sets the brightness to 12/255 (5%). So I added in a key combination to drop the brightness down to 2/255 (1%).

Lastly, the RG35XX+ doesn't seem to support holding down keys for repetitive button presses. This is why you have to mash the Volume Up/Down button to continuously increase the volume. The same applies for brightness when using the `Menu + Volume Up/Down` keys. As such, I added a key combination to jump up to 100% brightness right away - useful in the daytime after playing the night before.

# The Files

Place them in the following locations:
* `multimedia_keys.conf` -> /userdata/system/configs
* `scripts` folder -> /userdata/system/configs
* `custom.sh` -> /userdata/system

**Note:** While the `custom.sh` file schedules the blue light filter to be on between 8:00 PM and 7:00 AM (feel free to adjust these times as you'd like), my RG35XX+ (on Batocera v40 - I haven't jumped to Knulli yet) seems to boot up with a different time displayed before it corrects to my local time. I'm not sure why this happens and any attempts to fix this thus far has been unsuccessful. It started as a +46min difference, changed to a +52min difference, and now it's at +80min. If anyone has any insight as to how I can correct this or what might be happening, I'm all ears.

# The Key Combos

|Key Combination|Function|
|-----|-----|
|Menu + Power    |Turn on/off the blue light filter    |
|Volume Down + Power    |Change brightness to 1% (2)    |
|Volume Up + Power    |Change brightness to 100% (225)    |

Yes, the volume buttons mess with your system volume but two clicks to get to 100% brightness (Volume Up + Power & Volume Down) is much better than 19 clicks (5 -> 100 in increments of 5). You can update the keys in `multimedia_keys.conf` if you want to change these combinations.
