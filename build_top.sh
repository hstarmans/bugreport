# Automatically generated by Amaranth 0.4.dev21+gdb49294. Do not edit.
set -ex
[ -n "$NMIGEN_ENV_ICESTORM" ] && . "$NMIGEN_ENV_ICESTORM"
[ -n "$AMARANTH_ENV_IceStorm" ] && . "$AMARANTH_ENV_IceStorm"
: ${YOSYS:=yosys}
: ${NEXTPNR_ICE40:=nextpnr-ice40}
: ${ICEPACK:=icepack}
"$YOSYS" -l top.rpt top.ys
"$NEXTPNR_ICE40" --log top.tim --up5k --package sg48 --json top.json --pcf top.pcf --asc top.asc
"$ICEPACK" -v top.asc top.bin