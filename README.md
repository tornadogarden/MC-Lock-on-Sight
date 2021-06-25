# Minecraft but you Freeze on sight
A Minecraft datapack that allows players to lock the position of other players by looking at them.

## Setup:
There are two tags that this datapack listens for: `can_freeze` and `freeze_immune`.<br/>
| Tag | Effect |
|-----|:-----:|
|`can_freeze`| Can lock others in place |
|`freeze_immune`| Cannot be locked in place |

1. Pick a friend (or a small group) as Survivors. <br/>
2. Run this command on the Survivors: `/tag <name> add can_freeze`. <br/>
3. Run this to make the Survivors immune to each other: `/tag <name> add freeze_immune`. <br/>
4. Give the Survivors a goal, tell the others to stop them, and start! <br/>
Good luck!

## Gameplay:
Once everything is set up, things will work like this:

* Anyone (who isn't immune) in the Surivor's line of sight will be frozen in place. </br> **When that happens:**
  * A trail of particles will show the Survivor's line of sight.
  * The frozen player will start glowing.
* Survivors *CAN LOCK EACH OTHER* unless they are given the `freeze_immune` tag.

### Can everyone be a Survivor?
Yes! If everyone has the `can_freeze` tag, they can lock one another (unless they have the `freeze_immune` tag as well).
### Can someone be immune but *not* able to lock others?
Yes! Give them the `freeze_immune` tag only.

## Contribute to this datapack
If you encounter any bugs with this datapack, please make a new pull request with a description of the error. <br/>
If you have any suggestions to make this datapack run better, feel free to also make a new pull request with a description.

## Credits
Some of the techniques used in this datapack by **Cloud Wolf**:<br/>
[Movement Lock](https://www.youtube.com/watch?v=auwn5xe1BgU), [Raycasting](https://www.youtube.com/watch?v=fGlJpli5cYc)<br/>

### A note on using this datapack:
If you are feeling kind, **please mention this repository** if you decide to use it. It would mean a lot!
Also, if you improve this pack at all, **please let us know**! We'd love to include improvements in a new release.
