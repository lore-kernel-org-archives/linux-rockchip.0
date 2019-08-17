From: Philipp Richter <richterphilipp.pops-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
Date: Sat, 17 Aug 2019 15:12:41 +0200
Message-ID: <CA+Vb7hpXfavS0k47Z0o=SkswO_jMmv3HN7RsUMdx=AHjvrD7LA@mail.gmail.com>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
 <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
 <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, catalin.marinas-5wv7dgnIgG8@public.gmane.org, vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, andre.przywara-5wv7dgnIgG8@public.gmane.org, Will Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Compiling the kernel also triggered the panic so that was hard.

I added "memtest=4" to the kernel cmdline and I'm getting very quicky
a "Internal error: synchronous external abort" panic.

============
INFO:    PSCI Power Domain Map:
INFO:      Domain Node : Level 2, parent_node -1, State ON (0x0)
INFO:      Domain Node : Level 1, parent_node 0, State ON (0x0)
INFO:      Domain Node : Level 0, parent_node 0, State ON (0x0)
INFO:      Domain Node : Level 0, parent_node 0, State ON (0x0)
INFO:      CPU Node : MPID 0x0, parent_node 1, State ON (0x0)
INFO:      CPU Node : MPID 0x1, parent_node 1, State ON (0x0)
INFO:      CPU Node : MPID 0x2, parent_node 1, State ON (0x0)
INFO:      CPU Node : MPID 0x3, parent_node 1, State ON (0x0)
DDR version 1.16 20190528
ID:0x805 N
In
SRX
LPDDR3
333MHz
Bus Width=32 Col=11 Bank=8 Row=15/15 CS=2 Die Bus-Width=32 Size=4096MB
ddrconfig:7
OUT
Boot1 Release Time: May 13 2019 17:34:36, version: 2.50
ChipType = 0x11, 316
mmc2:cmd19,100
SdmmcInit=2 0
BootCapSize=2000
UserCapSize=29820MB
FwPartOffset=2000 , 2000
SdmmcInit=0 NOT PRESENT
StorageInit ok = 198645
Raw SecureMode = 0
SecureInit read PBA: 0x4
SecureInit read PBA: 0x404
SecureInit read PBA: 0x804
SecureInit read PBA: 0xc04
SecureInit read PBA: 0x1004
SecureInit ret = 0, SecureMode = 0
atags_set_bootdev: ret:(0)
GPT 0x337a9f0 signature is wrong
recovery gpt...
GPT 0x337a9f0 signature is wrong
recovery gpt fail!
LoadTrust Addr:0x4000
No find bl30.bin
Load uboot, ReadLba = 2000
Load OK, addr=0x200000, size=0x9a864
RunBL31 0x10000
NOTICE:  BL31: v1.3(debug):0eba775
NOTICE:  BL31: Built : 12:11:32, Nov 23 2018
NOTICE:  BL31:Rockchip release version: v1.3
INFO:    ARM GICv2 driver initialized
INFO:    Using opteed sec cpu_context!
INFO:    boot cpu mask: 1
INFO:    plat_rockchip_pmu_init: pd status 0xe
INFO:    BL31: Initializing runtime services
INFO:    BL31: Initializing BL32
INF [0x0] TEE-CORE:init_primary_helper:337: Initializing
(1.1.0-221-gda2bcfdc #137 Mon Jun 17 03:00:04 UTC 2019 aarch64)

INF [0x0] TEE-CORE:init_primary_helper:338: Release version: 1.4

INF [0x0] TEE-CORE:init_teecore:83: teecore inits done
INFO:    BL31: Preparing for EL3 exit to normal world
INFO:    Entry point address = 0x200000
INFO:    SPSR = 0x3c9


U-Boot 2019.07-2 (Aug 16 2019 - 18:37:30 +0000) Arch Linux ARM

Model: Rockchip RK3328 EVB
DRAM:  4 GiB
MMC:   rksdmmc@ff500000: 1, rksdmmc@ff520000: 0
Loading Environment from MMC... Card did not respond to voltage select!
*** Warning - No block device, using default environment

In:    serial@ff130000
Out:   serial@ff130000
Err:   serial@ff130000
Model: Rockchip RK3328 EVB
Net:
Warning: ethernet@ff540000 (eth0) using random MAC address - 4a:92:84:ee:d8:3b
eth0: ethernet@ff540000
Hit any key to stop autoboot:  2     1     0
switch to partitions #0, OK
mmc0(part 0) is current device
Scanning mmc 0:1...
Found U-Boot script /boot.scr
1105 bytes read in 5 ms (215.8 KiB/s)
## Executing script at 00500000
26501632 bytes read in 628 ms (40.2 MiB/s)
49338 bytes read in 12 ms (3.9 MiB/s)
10033777 bytes read in 242 ms (39.5 MiB/s)
## Flattened Device Tree blob at 01f00000
   Booting using the fdt blob at 0x1f00000
   Loading Ramdisk to fc59b000, end fcf2ca71 ... OK
   Loading Device Tree to 00000000fc58b000, end 00000000fc59afff ... OK

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.2.8-1-ARCH (alarm@rock64) (gcc version
8.3.0 (GCC)) #1 SMP Sat Aug 17 10:28:16 CEST 2019
[    0.000000] Machine model: Pine64 Rock64
[    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff130000 (options '')
[    0.000000] printk: bootconsole [uart8250] enabled
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 64 MiB at 0x00000000f8400000
[    0.000000] early_memtest: # of tests: 4
[    0.000000]   0x0000000000200000 - 0x0000000002080000 pattern
aaaaaaaaaaaaaaaa
[    0.000000]   0x0000000003a95000 - 0x00000000f8400000 pattern
aaaaaaaaaaaaaaaa
[    0.000000] Internal error: synchronous external abort: 96000210 [#1] SMP
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.2.8-1-ARCH #1
[    0.000000] Hardware name: Pine64 Rock64 (DT)
[    0.000000] pstate: 20000085 (nzCv daIf -PAN -UAO)
[    0.000000] pc : early_memtest+0x16c/0x23c
[    0.000000] lr : early_memtest+0x11c/0x23c
[    0.000000] sp : ffff000011733df0
[    0.000000] x29: ffff000011733df0 x28: ffff0000114a6000
[    0.000000] x27: ffff00001178b000 x26: aaaaaaaaaaaaaaaa
[    0.000000] x25: ffff00001178b000 x24: aaaaaaaaaaaaaaaa
[    0.000000] x23: 00000000ff000000 x22: 0000000000200000
[    0.000000] x21: ffff0000117396c8 x20: 0000000000000003
[    0.000000] x19: ffff00001164bcc8 x18: 0000000000000010
[    0.000000] x17: 000000000000d080 x16: ffff7dfffe99807c
[    0.000000] x15: ffffffffffffffff x14: 6161616161616161
[    0.000000] x13: 616161616161206e x12: 7265747461702030
[    0.000000] x11: 3030303034386630 x10: 3030303030303078
[    0.000000] x9 : 30202d2030303035 x8 : ffff000010868858
[    0.000000] x7 : 000000000000000b x6 : ffff0000119d1539
[    0.000000] x5 : ffff8000f8400000 x4 : ffff800008400000
[    0.000000] x3 : 0000000008400000 x2 : 0000000000000000
[    0.000000] x1 : 0000000000000000 x0 : aaaaaaaaaaaaaaaa
[    0.000000] Call trace:
[    0.000000]  early_memtest+0x16c/0x23c
[    0.000000]  bootmem_init+0x48/0x174
[    0.000000]  setup_arch+0x1f0/0x558
[    0.000000]  start_kernel+0x8c/0x494
[    0.000000] Code: d2800002 d2800001 eb0400bf 54000309 (f9400080)
[    0.000000] random: get_random_bytes called from
print_oops_end_marker+0x30/0x58 with crng_init=0
[    0.000000] ---[ end trace 0000000000000000 ]---
[    0.000000] Kernel panic - not syncing: Attempted to kill the idle task!
[    0.000000] ---[ end Kernel panic - not syncing: Attempted to kill
the idle task! ]---
============

Is my board completely broken ? :(

Regards,
Philipp Richter
