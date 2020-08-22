# SetCollector

Set Collector is an add-on for World of Warcraft that allows the player to view various gear/transmogrification sets on their character and track the progress of their appearance collection.

## Changes for Shadowlands

Thank you to everyone who has expressed interest in this project! We have access to the Shadowlands Beta and have begun preparing Set Collector for its release.

Here are some of the tentative changes planned for the Shadowlands release of Set Collector:

* Set Collector will only show sets from starting zones, Battle for Azeroth, Shadowlands, and holidays by default. This is to manage the size of the list and align with the new leveling experience.
* Additional sets from other expansions can be added/enabled from the Set Collector Addon settings and through chat command as well. E.g., to toggle the Legion sets `/setcollector version 7`
* Two much requested features are now here and may be set in the Interface options:
  * The Set Collector UI can be undocked and moved.
  * The setting to show/hide the minimap icon is now global and shared by all cahracter.
* The Garrison Collection has been renamed to Expansion and will include sets obtained from expansion-specific features, such as Garrisons, Class Halls, and Warfronts.
* Character filters (e.g., Show only favorite sets) can now be seen and modified in Interface options.

### SetBackdrop Error

SetCollector is one of the addons affected by the upcoming change in Shadowlands. The good news is that this issue only impacts the Interface options UI for Set Collector. The latest alpha releases of Set Collector all disable the Interface options in Shadowlands and it will be enabled when the fix is available. All interface options will be available as slash commands if the issue is not resolved in time for the pre-patch, release, or if you are testing out in the addon in Beta.

## Localization

Interested in helping localize Set Collector? Translations can be submitted here: www.wowace.com/addons/setcollector/localization/

## Key Features

Players are able to view a list of collections (e.g., Raid, Dungeon or PvP) and their sets (e.g., Tier 15/Shaman/Melee) to select for preview. If there are multiple variants of the sets (e.g., Raid Finder/Normal/Heroic or Red/Blue) then each variant is available for preview as well.

The list of sets is filtered by the activated specialization by default, but also allows for viewing off-spec sets or all sets for the class or armor type. It can also be filtered by sets marked as favorite. Right-click on the set or an unselected variant to mark it as a favorite. You can also filter by whether then set can be obtained or used for transmogrification.

In addition, Set Collector allows the player see their progress toward completing each set and set variant. A check mark will be displayed to show whether you have completed any or all of the variants in the set.

Set Collector also has key binding available to launch the UI. Currently located in the Other category in the Key Binding interface. Other options can be set in the Interface options.

## Included Gear Sets

Current gear sets in Set Collector include:

* Legendaries (Classic through Legion)
* Raid Tier sets (Tier 1 through Tier 19)
* Dungeon sets (1-3 as well as AQ sets)
* Mythic Keystone/Challenge Mode Dungeon Sets (Mists of Pandaria)
* PvP sets (Seasons 14 through Legion Season 1)
* Expansion-Specific Sets (e.g., Garrison and War Campaign Sets)
* Other Sets
* Holiday sets (No transmog. Just for fun)
* Future developments will include Artifacts and Crafted sets.

## Slash Commands

Here are some of the notable slash commands for Set Collector (/setcollector or /sc).

* `/setcollector` - Toggles the Set Collector UI display
* `/setcollector button` - Toggles the minimap button
* `/setcollector show` - Shows the Set Collector UI
* `/setcollector hide` - Hides the Set Collector UI
* `/setcollector version [0-9]` - Toggles the expansion sets shown in Set Collector. Default: 0, 8, and 9. Requires `/reload` for change to take effect.
* `/setcollector docked` - Toggles the UI as docked or undocked. When undocked the Set Collector can be moved/dragged to a preferred location and will not move with other UI elements. Default: docked.
* `/setcollector resetdb` - Rebuilds the collection db (may help if the db gets corrupted or there is an issue with a Set Collector update)
* `/setcollector help` - Displays the Set Collector slash command help information. (new)

## Bugs and Support

Did you find a bug? Do you have a feature that you would like to see added to Set Collector?

If so, you can submit them here: www.wowace.com/addons/setcollector/tickets/

## Acknowledgements

My thanks go out to Nefret, Phanx, Okerhs, MartinL, joshmiller83, cc38941, Brear, AlexSUCF, and the many others who have helped providing testing and feedback at various stages throughout the development.
