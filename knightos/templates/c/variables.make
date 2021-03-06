# Project variables
SDK=.knightos/
INCLUDE=-I $(SDK)include/ -I $(SDK) -I ./
AS:={{ assembler }}
CC:={{ compiler }}
EMU:={{ emulator }}
DEBUGGER:={{ debugger }}
ASFLAGS:=-fauto-relocation
GENKFS:=genkfs
KPACK:=kpack
.DEFAULT_GOAL=all
INIT:=/bin/{{ project_name }}
VERSION:=$(shell knightos query version)
PLATFORM:={{ platform }}
KEY:={{ key }}
UPGRADEEXT:={{ upgrade_ext }}
PRIVILEGED:={{ privileged }}
FAT:={{ fat }}

LINK:=$(SDK)pkgroot/slib/
LIBC:=$(LINK)c

OUT:=bin/
ROOT:=$(OUT)root/
BIN:=$(ROOT)bin/
LIB:=$(ROOT)lib/
SLIB:=$(ROOT)slib/
ETC:=$(ROOT)etc/
VAR:=$(ROOT)var/
INC:=$(ROOT)include/
SHARE:=$(ROOT)share/
APPS:=$(VAR)applications/
