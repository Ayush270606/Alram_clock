### Alarm Clock Module Description

This Verilog module implements a basic alarm clock that tracks the current time in hours, minutes, and seconds. It allows for setting the current time and an alarm time, and it raises an alarm signal when the current time matches the set alarm time. The module also handles resetting the alarm and generating a 1-second clock pulse from a given system clock.

#### Inputs:
- `reset`: Resets the clock and alarm settings.
- `clk`: System clock input.
- `H_in1`, `H_in0`: Inputs for setting the hour (tens and units place).
- `M_in1`, `M_in0`: Inputs for setting the minute (tens and units place).
- `LD_time`: Load signal for setting the current time.
- `LD_alarm`: Load signal for setting the alarm time.
- `STOP_al`: Signal to stop the alarm.
- `AL_ON`: Signal to turn on the alarm.

#### Outputs:
- `Alarm`: Output signal indicating whether the alarm is active.
- `H_out1`, `H_out0`: Outputs for the current hour (tens and units place).
- `M_out1`, `M_out0`: Outputs for the current minute (tens and units place).
- `S_out1`, `S_out0`: Outputs for the current second (tens and units place).

#### Internal Registers:
- `clk_1s`: 1-second clock signal.
- `tmp_1s`: Temporary counter for generating the 1-second clock signal.
- `tmp_hour`, `tmp_minute`, `tmp_second`: Temporary registers for holding the current hour, minute, and second values.
- `c_hour1`, `c_hour0`, `c_min1`, `c_min0`, `c_sec1`, `c_sec0`: Registers for the current time's tens and units place.
- `a_hour1`, `a_hour0`, `a_min1`, `a_min0`, `a_sec1`, `a_sec0`: Registers for the alarm time's tens and units place.

