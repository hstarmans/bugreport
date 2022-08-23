# bugreport
This commands succeeds on both windows and linux.
```
yosys -l top.rpt top.ys
```
Note, that yowasp-nextpnr-ice40 is working.
This command fails 
```
yowasp-yosys -l top.rpt top.ys
```

Rasbpian 64 bit
```
2.40.1.1. Executing ABC.
Running ABC command: /yosys-abc -s -f <abc-temp-dir>/abc.script 2>&1
ABC command line: "source /tmp/yosys-abc-000000/abc.script".

+ read_blif /tmp/yosys-abc-000000/input.blif 
+ read_lut /tmp/yosys-abc-000000/lutdefs.txt 
+ strash 
+ ifraig 
+ scorr 
Warning: The network is combinational (run "fraig" or "fraig_sweep").
+ dc2 
+ dretime 
+ strash 
+ dch -f 
+ if 
+ mfs2 
+ lutpack -S 1 
+ dress 
Traceback (most recent call last):
  File "/home/pi/.cache/pypoetry/virtualenvs/hexastorm-W3PUr5wm-py3.9/bin/yowasp-yosys", line 8, in <module>
    sys.exit(_run_yosys_argv())
  File "/home/pi/.cache/pypoetry/virtualenvs/hexastorm-W3PUr5wm-py3.9/lib/python3.9/site-packages/yowasp_yosys/__init__.py", line 79, in _run_yosys_argv
    sys.exit(run_yosys(sys.argv[1:]))
  File "/home/pi/.cache/pypoetry/virtualenvs/hexastorm-W3PUr5wm-py3.9/lib/python3.9/site-packages/yowasp_yosys/__init__.py", line 75, in run_yosys
    return _run_wasm_app("yosys.wasm", ["yowasp-yosys", *argv])
  File "/home/pi/.cache/pypoetry/virtualenvs/hexastorm-W3PUr5wm-py3.9/lib/python3.9/site-packages/yowasp_yosys/__init__.py", line 68, in _run_wasm_app
    app.exports(store)["_start"](store)
  File "/home/pi/.cache/pypoetry/virtualenvs/hexastorm-W3PUr5wm-py3.9/lib/python3.9/site-packages/wasmtime/_func.py", line 100, in __call__
    raise WasmtimeError._from_ptr(error)
  File "/usr/lib/python3.9/contextlib.py", line 124, in __exit__
    next(self.gen)
  File "/home/pi/.cache/pypoetry/virtualenvs/hexastorm-W3PUr5wm-py3.9/lib/python3.9/site-packages/wasmtime/_func.py", line 263, in enter_wasm
    raise trap_obj
wasmtime._trap.Trap: wasm trap: out of bounds memory access
wasm backtrace:
    0: 0xaa2465 - <unknown>!<wasm function 16189>
    1: 0x1ad149 - <unknown>!<wasm function 2389>
    2: 0x1ace11 - <unknown>!<wasm function 2388>
    3: 0x1addc8 - <unknown>!<wasm function 2394>
    4: 0x1aebdd - <unknown>!<wasm function 2401>
    5: 0x1b167b - <unknown>!<wasm function 2433>
    6: 0x1b6630 - <unknown>!<wasm function 2501>
    7: 0x1b66a9 - <unknown>!<wasm function 2506>
    8: 0x5a3fcd - <unknown>!<wasm function 7481>
    9: 0x5a442a - <unknown>!<wasm function 7482>
   10: 0x5a5eca - <unknown>!<wasm function 7484>
   11: 0x5a69c3 - <unknown>!<wasm function 7487>
   12: 0x105297 - <unknown>!<wasm function 1414>
   13: 0x105445 - <unknown>!<wasm function 1415>
   14: 0x105a54 - <unknown>!<wasm function 1419>
   15: 0x146c3f - <unknown>!<wasm function 1754>
   16: 0x26289 - <unknown>!<wasm function 270>
   17: 0x27bf1 - <unknown>!<wasm function 289>
   18: 0xa6155 - <unknown>!<wasm function 1016>
   19: 0x26289 - <unknown>!<wasm function 270>
   20: 0x27bf1 - <unknown>!<wasm function 289>
   21: 0x1ba289 - <unknown>!<wasm function 2602>
   22: 0xd5bd7f - <unknown>!<wasm function 19128>
   23: 0xd519f8 - <unknown>!<wasm function 19126>
   24: 0x91643d - <unknown>!<wasm function 13541>
   25: 0x9160b1 - <unknown>!<wasm function 13539>
   26: 0x91993b - <unknown>!<wasm function 13579>
   27: 0x1211659 - <unknown>!<wasm function 24229>
   28: 0x919aad - <unknown>!<wasm function 13581>
   29: 0x120f34f - <unknown>!<wasm function 24227>
   30: 0x91643d - <unknown>!<wasm function 13541>
   31: 0x9160b1 - <unknown>!<wasm function 13539>
   32: 0x8fcdcd - <unknown>!<wasm function 13296>
   33: 0x8f93fa - <unknown>!<wasm function 13275>
   34: 0x8e4216 - <unknown>!<wasm function 13026>
   35: 0x8e4292 - <unknown>!<wasm function 13027>
   36: 0x8e352f - <unknown>!<wasm function 13003>
   37: 0xb773 - <unknown>!<wasm function 24>
````




Windows
```

2.40.1.1. Executing ABC.
Running ABC command: /yosys-abc -s -f <abc-temp-dir>/abc.script 2>&1
ABC command line: "source /tmp/yosys-abc-000000/abc.script".

+ read_blif /tmp/yosys-abc-000000/input.blif
+ read_lut /tmp/yosys-abc-000000/lutdefs.txt
+ strash
+ ifraig
+ scorr
Warning: The network is combinational (run "fraig" or "fraig_sweep").
+ dc2
+ dretime
+ strash
+ dch -f
+ if
+ mfs2
+ lutpack -S 1
+ dress
Traceback (most recent call last):
  File "C:\Users\starmari\AppData\Local\Programs\Python\Python310\lib\runpy.py", line 196, in _run_module_as_main
    return _run_code(code, main_globals, None,
  File "C:\Users\starmari\AppData\Local\Programs\Python\Python310\lib\runpy.py", line 86, in _run_code
    exec(code, run_globals)
  File "C:\Users\starmari\AppData\Local\pypoetry\Cache\virtualenvs\hexastorm-wNmZJ5sm-py3.10\Scripts\yowasp-yosys.exe\__main__.py", line 7, in <module>
  File "C:\Users\starmari\AppData\Local\pypoetry\Cache\virtualenvs\hexastorm-wNmZJ5sm-py3.10\lib\site-packages\yowasp_yosys\__init__.py", line 79, in _run_yosys_argv
    sys.exit(run_yosys(sys.argv[1:]))
  File "C:\Users\starmari\AppData\Local\pypoetry\Cache\virtualenvs\hexastorm-wNmZJ5sm-py3.10\lib\site-packages\yowasp_yosys\__init__.py", line 75, in run_yosys
    return _run_wasm_app("yosys.wasm", ["yowasp-yosys", *argv])
  File "C:\Users\starmari\AppData\Local\pypoetry\Cache\virtualenvs\hexastorm-wNmZJ5sm-py3.10\lib\site-packages\yowasp_yosys\__init__.py", line 68, in _run_wasm_app
    app.exports(store)["_start"](store)
  File "C:\Users\starmari\AppData\Local\pypoetry\Cache\virtualenvs\hexastorm-wNmZJ5sm-py3.10\lib\site-packages\wasmtime\_func.py", line 90, in __call__
    with enter_wasm(store) as trap:
  File "C:\Users\starmari\AppData\Local\Programs\Python\Python310\lib\contextlib.py", line 142, in __exit__
    next(self.gen)
  File "C:\Users\starmari\AppData\Local\pypoetry\Cache\virtualenvs\hexastorm-wNmZJ5sm-py3.10\lib\site-packages\wasmtime\_func.py", line 263, in enter_wasm
    raise trap_obj
wasmtime._trap.Trap: wasm trap: out of bounds memory access
wasm backtrace:
    0: 0xaa2465 - <unknown>!<wasm function 16189>
    1: 0x1ad149 - <unknown>!<wasm function 2389>
    2: 0x1ace11 - <unknown>!<wasm function 2388>
    3: 0x1addc8 - <unknown>!<wasm function 2394>
    4: 0x1aebdd - <unknown>!<wasm function 2401>
    5: 0x1b167b - <unknown>!<wasm function 2433>
    6: 0x1b6630 - <unknown>!<wasm function 2501>
    7: 0x1b66a9 - <unknown>!<wasm function 2506>
    8: 0x5a3fcd - <unknown>!<wasm function 7481>
    9: 0x5a442a - <unknown>!<wasm function 7482>
```