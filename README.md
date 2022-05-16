# MenuV_ClothingMenu
 Created by Rigoormortis

# Installation
1. Move the files into your `resources` folder.
2. Rename the folder to whatever you'd like.
3. Start the resource by adding `ensure [folder name]` to your `server.cfg` file.

# NOTE:
This resource requires [MenuV](https://github.com/ThymonA/menuv) as a dependency. It will not work without it.

There is an issue with the most recent version of MenuV where you cannot change the max value of the range items, so in order to fix this, do the following:
1. Navigate to your menuv resource folder and open `menuv.lua` in your preferred code editor.
2. Crtl-F and search for `SetMaxValue`. It should be on line `1501` if you havent formatted the file or added any lines.
3. Change `self.Min = input` to `self.Max = input`.
4. Below that, change the `if` statement for the min max from `if (self.Min < self.Max) then` to `if (self.Min > self.Max) then`
5. Save the file and everything should work just fine.
6. Enjoy!

-- If you would like to save your skin to a database, you will also need a SQL handler such as [oxmysql](https://github.com/overextended/oxmysql/) or something similar.

