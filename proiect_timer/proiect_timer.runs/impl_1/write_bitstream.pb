
j
Command: %s
1870*	planAhead25
!open_checkpoint Nexys4_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.021 . Memory (MB): peak = 254.090 ; gain = 0.0002default:defaulth px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
732default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2018.32default:defaultZ1-479h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:002default:default2 
00:00:00.1022default:default2
1165.2892default:default2
2.5702default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.1032default:default2
1165.2892default:default2
2.5702default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1165.3282default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2018.3 (64-bit)2default:default2
24059912default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:112default:default2
00:00:122default:default2
1165.3282default:default2
911.2382default:defaultZ17-268h px� 
f
Command: %s
53*	vivadotcl25
!write_bitstream -force Nexys4.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2018.3/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2d
 "N
CU/count_enable_reg_i_2_n_0CU/count_enable_reg_i_2_n_02default:default2default:default2`
 "J
CU/count_enable_reg_i_2/OCU/count_enable_reg_i_2/O2default:default2default:default2\
 "F
CU/count_enable_reg_i_2	CU/count_enable_reg_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2`
 "J
CU/count_mode_reg_i_2_n_0CU/count_mode_reg_i_2_n_02default:default2default:default2\
 "F
CU/count_mode_reg_i_2/OCU/count_mode_reg_i_2/O2default:default2default:default2X
 "B
CU/count_mode_reg_i_2	CU/count_mode_reg_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2^
 "H
CU/led_alarm_reg_i_2_n_0CU/led_alarm_reg_i_2_n_02default:default2default:default2Z
 "D
CU/led_alarm_reg_i_2/OCU/led_alarm_reg_i_2/O2default:default2default:default2V
 "@
CU/led_alarm_reg_i_2	CU/led_alarm_reg_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2Z
 "D
CU/ssd_min_reg_i_2_n_0CU/ssd_min_reg_i_2_n_02default:default2default:default2V
 "@
CU/ssd_min_reg_i_2/OCU/ssd_min_reg_i_2/O2default:default2default:default2R
 "<
CU/ssd_min_reg_i_2	CU/ssd_min_reg_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2O
 "9
numara_minute/E[0]numara_minute/E2default:default2default:default2z
 "d
&numara_minute/min_Unitati_reg[3]_i_2/O&numara_minute/min_Unitati_reg[3]_i_2/O2default:default2default:default2v
 "`
$numara_minute/min_Unitati_reg[3]_i_2	$numara_minute/min_Unitati_reg[3]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "j
)numara_minute/count_reg[0]_LDC_i_1__0_n_0)numara_minute/count_reg[0]_LDC_i_1__0_n_02default:default2default:default2|
 "f
'numara_minute/count_reg[0]_LDC_i_1__0/O'numara_minute/count_reg[0]_LDC_i_1__0/O2default:default2default:default2x
 "b
%numara_minute/count_reg[0]_LDC_i_1__0	%numara_minute/count_reg[0]_LDC_i_1__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "j
)numara_minute/count_reg[1]_LDC_i_1__0_n_0)numara_minute/count_reg[1]_LDC_i_1__0_n_02default:default2default:default2|
 "f
'numara_minute/count_reg[1]_LDC_i_1__0/O'numara_minute/count_reg[1]_LDC_i_1__0/O2default:default2default:default2x
 "b
%numara_minute/count_reg[1]_LDC_i_1__0	%numara_minute/count_reg[1]_LDC_i_1__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "j
)numara_minute/count_reg[2]_LDC_i_1__0_n_0)numara_minute/count_reg[2]_LDC_i_1__0_n_02default:default2default:default2|
 "f
'numara_minute/count_reg[2]_LDC_i_1__0/O'numara_minute/count_reg[2]_LDC_i_1__0/O2default:default2default:default2x
 "b
%numara_minute/count_reg[2]_LDC_i_1__0	%numara_minute/count_reg[2]_LDC_i_1__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "j
)numara_minute/count_reg[3]_LDC_i_1__0_n_0)numara_minute/count_reg[3]_LDC_i_1__0_n_02default:default2default:default2|
 "f
'numara_minute/count_reg[3]_LDC_i_1__0/O'numara_minute/count_reg[3]_LDC_i_1__0/O2default:default2default:default2x
 "b
%numara_minute/count_reg[3]_LDC_i_1__0	%numara_minute/count_reg[3]_LDC_i_1__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "j
)numara_minute/count_reg[4]_LDC_i_1__0_n_0)numara_minute/count_reg[4]_LDC_i_1__0_n_02default:default2default:default2|
 "f
'numara_minute/count_reg[4]_LDC_i_1__0/O'numara_minute/count_reg[4]_LDC_i_1__0/O2default:default2default:default2x
 "b
%numara_minute/count_reg[4]_LDC_i_1__0	%numara_minute/count_reg[4]_LDC_i_1__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "j
)numara_minute/count_reg[5]_LDC_i_1__0_n_0)numara_minute/count_reg[5]_LDC_i_1__0_n_02default:default2default:default2|
 "f
'numara_minute/count_reg[5]_LDC_i_1__0/O'numara_minute/count_reg[5]_LDC_i_1__0/O2default:default2default:default2x
 "b
%numara_minute/count_reg[5]_LDC_i_1__0	%numara_minute/count_reg[5]_LDC_i_1__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2z
 "d
&numara_minute/count_reg[6]_LDC_i_1_n_0&numara_minute/count_reg[6]_LDC_i_1_n_02default:default2default:default2v
 "`
$numara_minute/count_reg[6]_LDC_i_1/O$numara_minute/count_reg[6]_LDC_i_1/O2default:default2default:default2r
 "\
"numara_minute/count_reg[6]_LDC_i_1	"numara_minute/count_reg[6]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2z
 "d
&numara_minute/count_reg[7]_LDC_i_1_n_0&numara_minute/count_reg[7]_LDC_i_1_n_02default:default2default:default2v
 "`
$numara_minute/count_reg[7]_LDC_i_1/O$numara_minute/count_reg[7]_LDC_i_1/O2default:default2default:default2r
 "\
"numara_minute/count_reg[7]_LDC_i_1	"numara_minute/count_reg[7]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2e
 "O
numara_minute/min_reg[6]_1[0]numara_minute/min_reg[6]_12default:default2default:default2t
 "^
#numara_minute/min_ZECI_reg[3]_i_2/O#numara_minute/min_ZECI_reg[3]_i_2/O2default:default2default:default2p
 "Z
!numara_minute/min_ZECI_reg[3]_i_2	!numara_minute/min_ZECI_reg[3]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2Q
 ";
numara_secunde/E[0]numara_secunde/E2default:default2default:default2v
 "`
$numara_secunde/sec_ZECI_reg[2]_i_2/O$numara_secunde/sec_ZECI_reg[2]_i_2/O2default:default2default:default2r
 "\
"numara_secunde/sec_ZECI_reg[2]_i_2	"numara_secunde/sec_ZECI_reg[2]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2|
 "f
'numara_secunde/count_reg[0]_LDC_i_1_n_0'numara_secunde/count_reg[0]_LDC_i_1_n_02default:default2default:default2x
 "b
%numara_secunde/count_reg[0]_LDC_i_1/O%numara_secunde/count_reg[0]_LDC_i_1/O2default:default2default:default2t
 "^
#numara_secunde/count_reg[0]_LDC_i_1	#numara_secunde/count_reg[0]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2|
 "f
'numara_secunde/count_reg[1]_LDC_i_1_n_0'numara_secunde/count_reg[1]_LDC_i_1_n_02default:default2default:default2x
 "b
%numara_secunde/count_reg[1]_LDC_i_1/O%numara_secunde/count_reg[1]_LDC_i_1/O2default:default2default:default2t
 "^
#numara_secunde/count_reg[1]_LDC_i_1	#numara_secunde/count_reg[1]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2|
 "f
'numara_secunde/count_reg[2]_LDC_i_1_n_0'numara_secunde/count_reg[2]_LDC_i_1_n_02default:default2default:default2x
 "b
%numara_secunde/count_reg[2]_LDC_i_1/O%numara_secunde/count_reg[2]_LDC_i_1/O2default:default2default:default2t
 "^
#numara_secunde/count_reg[2]_LDC_i_1	#numara_secunde/count_reg[2]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2|
 "f
'numara_secunde/count_reg[3]_LDC_i_1_n_0'numara_secunde/count_reg[3]_LDC_i_1_n_02default:default2default:default2x
 "b
%numara_secunde/count_reg[3]_LDC_i_1/O%numara_secunde/count_reg[3]_LDC_i_1/O2default:default2default:default2t
 "^
#numara_secunde/count_reg[3]_LDC_i_1	#numara_secunde/count_reg[3]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2|
 "f
'numara_secunde/count_reg[4]_LDC_i_1_n_0'numara_secunde/count_reg[4]_LDC_i_1_n_02default:default2default:default2x
 "b
%numara_secunde/count_reg[4]_LDC_i_1/O%numara_secunde/count_reg[4]_LDC_i_1/O2default:default2default:default2t
 "^
#numara_secunde/count_reg[4]_LDC_i_1	#numara_secunde/count_reg[4]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2|
 "f
'numara_secunde/count_reg[5]_LDC_i_1_n_0'numara_secunde/count_reg[5]_LDC_i_1_n_02default:default2default:default2x
 "b
%numara_secunde/count_reg[5]_LDC_i_1/O%numara_secunde/count_reg[5]_LDC_i_1/O2default:default2default:default2t
 "^
#numara_secunde/count_reg[5]_LDC_i_1	#numara_secunde/count_reg[5]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2g
 "Q
numara_secunde/sec_reg[2]_0[0]numara_secunde/sec_reg[2]_02default:default2default:default2|
 "f
'numara_secunde/sec_Unitati_reg[3]_i_2/O'numara_secunde/sec_Unitati_reg[3]_i_2/O2default:default2default:default2x
 "b
%numara_secunde/sec_Unitati_reg[3]_i_2	%numara_secunde/sec_Unitati_reg[3]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 23 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
]
Writing bitstream %s...
11*	bitstream2 
./Nexys4.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
232default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:112default:default2
00:00:112default:default2
1663.2072default:default2
497.8792default:defaultZ17-268h px� 


End Record