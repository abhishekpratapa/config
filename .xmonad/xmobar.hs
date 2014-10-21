-- xmobar config used by Vic Fryzel
-- Original Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config
-- Modified by Zach Nation
-- http://github.com/znation/xmonad-config
Config {
    font = "xft:Source Code Pro:size=10:antialias=true",
    bgColor = "#000000",
    fgColor = "#ffffff",
    lowerOnStart = True,
    commands = [
        Run Weather "KSEA" ["-t","<tempF>F <skyCondition>","-L","50","-H","80","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu:<total0><total1><total2><total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "eth0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%  %memory%  %swap%  %eth0%  |  <fc=#FFFFCC>%date%</fc>  |  %KSEA% "
}
