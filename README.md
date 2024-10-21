
# fivem_localstorage_promise
Access javascript's localstorage from lua. Remember to store only non-critical data, as it may always be changed by the client. Also remember that if your script is unrelated to javascript, it is better to store the data in lua's kvp.
## Usage

**To save**

```lua
exports["fivem_localstorage_promise"]:SaveCache("YOUR_VARIABLE_NAME", VALUE)
```


**To get**

```lua
local localstorage_data = exports["fivem_localstorage_promise"]:GetCache("YOUR_VARIABLE_NAME").value
```


**To reset**

```lua
exports["fivem_localstorage_promise"]:ResetCache("YOUR_VARIABLE_NAME")
```


If you have any questions then contact me:
- discord: krisuniooo
