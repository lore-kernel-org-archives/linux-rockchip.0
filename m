Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8165BC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 20:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lhAq4Fah47Y0SrohbPKJVeKXc++nKNogdJh1VXcfNiA=; b=Sjg
	8NlfaPfojaqdBJfOHnMTCeamob0REqtHfhBmbAvQ89aLfe3XWvS8eCEmg8mXg1onyJdcCyWpbYeYs
	IuON30n3WllBp4cOJcEQutzGejLDdKh2gyB9yMS/23p3Y8BoZI+UShCyQOFGoQ7EBMGLJsRc+H8ok
	6vP6adrkB4WsZV3moo+4IUAubKZjyILl17VIplyBqRJwu2b1JITjiUpFJGkodkoLl6xbdmC+vIDNx
	yls4uOFvfKRzUfVjuhmJvXJ85mdwp+utTRdBDiMo2pyFIsUzbxlG3N/5zCGXOAxaDTUqo/CUkrNpQ
	3qkPOnODiJx3YFVxMVJ8prfd5WOlxIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe06T-005OYO-Po; Thu, 29 Sep 2022 20:25:53 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe06N-005OWU-6S
	for linux-rockchip@lists.infradead.org; Thu, 29 Sep 2022 20:25:52 +0000
Received: by mail-il1-x129.google.com with SMTP id o2so1294785ils.0
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Sep 2022 13:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=ZxNJIj7tng7xPAeoPGSaPLzATAcWjQs2LylkITP/WpU=;
        b=q7bUGnyWFchhWWbzD5X0w5TUvKToDVXy0LOewxkuqn0JGOX9rRPWEa5VyR1lTYEGV5
         sD2xpAUhspDCKGDDLLHHHRf76x6LXwBtGUCbEn2nZU4ZfaXWGAwIq4k2y9rgfROMzQyd
         VJMDPkwdJdoEdJPDwJtrbXKHuEepTKSrqmZz8xlic0buQst5p4qCwItZ2iUAGLe2Ao4z
         vaim+lZtxR6vQTaS0erDFGVmyjgMjdeqQl8185NGBegnFPd9UjZ+FS8rfkyMP0qr6wLe
         sZq1Dvtlmmve+wlcVEavbg1IUHms3A7loMv4EK+T5Z/GG4qxgRYSc+NQOQ6zuWqiNnXc
         bnsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=ZxNJIj7tng7xPAeoPGSaPLzATAcWjQs2LylkITP/WpU=;
        b=S+7jIC6KVJDaOZQwLDpN1befMV4Y0pIUo3Qmu3R+hk8er/Wo3U+7lW/+aNza+6UU8H
         4RpcWl+7LWpVJFMuZec40kwoA7WAqRa1AXzdiTMiNqtoTZWsktpbbiJH1O9Cf+umx6zW
         cQvx0MF1PrP0ObMzqq0C6JwEv3DOlwfCed62ZNMO6Te1m2mRxv2Etd0XMSmZvWcEzljA
         phlKuZPJ9Zp61YoVZPUizUv2nHeLVsJWvb8JBb3TDBVyoBlcR1MyZzkv4TyXewVtgP5z
         Az61P337vsR9iTWUznKy1i8WUbl5XJ4c9PfhpwWF1h25GHLhgxSl8+j4NOH0GV8wK2+t
         LV2Q==
X-Gm-Message-State: ACrzQf1yzHX1HY7uyJtMJAyoKNulSJq8L0R8ROxb0v5WDED0XslTFjYV
	fcvIo8XXPDbEjLvEfHHlhw+OUjV7Tjns4BfQ+5OqmNTKaPrx5w==
X-Google-Smtp-Source: AMsMyM5dD9JVoLG5Zh1Owb/8b4CEil/tpeSj6oGjIkKAln5sb8Ia1BTEy6GLS25v0/dnyxTpn4xmFEDDIzgjVdqVHRE=
X-Received: by 2002:a92:6e05:0:b0:2f6:b086:7a12 with SMTP id
 j5-20020a926e05000000b002f6b0867a12mr2607889ilc.142.1664483145222; Thu, 29
 Sep 2022 13:25:45 -0700 (PDT)
MIME-Version: 1.0
From: Shimmy Shai <shimmyshai00@gmail.com>
Date: Thu, 29 Sep 2022 13:25:31 -0700
Message-ID: <CAF4C_UOzZ101U5Wu7EdQTVZOuFOVjOPxB1P3o1Ea2k8Kfa=weQ@mail.gmail.com>
Subject: 6.0.0-rc7+ Kernel cannot be brought up on Firefly ITX-3588J (RK3588, ARM64)
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_132547_262175_8A7014AE 
X-CRM114-Status: GOOD (  20.26  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi!

I'm coming here because I've been playing with this board for quite a
while now and I notice the mainline kernels are still not yet up to
snuff for handling the chip it uses (Rockchip RK3588). I have obtained
from the vendor a 5.10.66 kernel source code tree and have been
wondering if I couldn't help with getting the newer kernels working
using that as a guide. This would actually be my first real dip into
kernel programming, but I have a lot of prior coding experience in
other areas - and even if I can't contribute a lot of code myself, I
hope that I can at least help by testing with this board and offering
feedback.

Anyway, I've downloaded, compiled, and built the latest kernel
pre-release (6.0.0-rc7) from the current github, and I try to load it
to the board and it fails to even complete the basic bringup, with
this dump. Note the "ITS queue timeout" errors and "ITS cmd ...
failed" errors. I know a lot on RK3588 is still not yet finished but
apparently it supposedly does bring up at least on other boards and
here it's not even able to get through that - this log is actually cut
off as there's a bunch of repetitive spam of the last few messages (or
very close) there. This looks similar to another issue here:

https://www.spinics.net/lists/kernel/msg3903734.html

on RK356x from last year, but there, there was a further problem where
that it had an error "ITS: No ITS available, not enabling LPIs". That
is not happening in this case, just the timeout and command build
failures.

Do you have any ideas? FWIW, I've tried migrating some code in
drivers/rockchip/irq-gic-v3-its.c that were apparently in the vendor
kernel but missing in the stock one which had some checks for rk3588,
but they did not do a thing to fix these errors.

==========================
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x412fd050]
[    0.000000] Linux version 6.0.0-rc7+ (shimmy@sdf-central-karyo)
(aarch64-linux-gnu-gcc (Ubuntu 9.4.0-1ubuntu
1~20.04.1) 9.4.0, GNU ld (GNU Binutils for Ubuntu) 2.34) #3 SMP Wed
Sep 28 23:49:40 PDT 2022
[    0.000000] Machine model: Firefly ITX-3588J HDMI(Linux)
[    0.000000] earlycon: uart8250 at MMIO32 0x00000000feb50000
(options '')
[    0.000000] printk: bootconsole [uart8250] enabled
[    0.000000] efi: UEFI not found.
[    0.000000] OF: fdt: Reserved memory: failed to reserve memory for
node 'drm-cubic-lut@00000000': base 0x000
0000000000000, size 0 MiB
[    0.000000] Reserved memory: created CMA memory pool at
0x0000000010000000, size 256 MiB
[    0.000000] OF: reserved mem: initialized node cma, compatible id
shared-dma-pool
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000200000-0x00000000ffffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   [mem 0x0000000100000000-0x00000001ffffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000200000-0x00000000083fffff]
[    0.000000]   node   0: [mem 0x0000000009400000-0x00000000efffffff]
[    0.000000]   node   0: [mem 0x0000000100000000-0x00000001ffffffff]
[    0.000000] Initmem setup node 0 [mem
0x0000000000200000-0x00000001ffffffff]
[    0.000000] On node 0, zone DMA: 512 pages in unavailable ranges
[    0.000000] On node 0, zone DMA: 4096 pages in unavailable ranges
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: Trusted OS migration not required
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 27 pages/cpu s73400 r8192 d29000
u110592
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU
interface
[    0.000000] CPU features: detected: Virtualization Host Extensions
[    0.000000] CPU features: detected: ARM errata 1165522, 1319367, or
1530923
[    0.000000] alternatives: patching kernel code
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
1995336
[    0.000000] Kernel command line: rw rootwait root=/dev/sda2
console=tty1 console=ttyFIQ0,1500000 earlycon=ua
rt8250,mmio32,0xfeb50000
[    0.000000] Dentry cache hash table entries: 1048576 (order: 11,
8388608 bytes, linear)
[    0.000000] Inode-cache hash table entries: 524288 (order: 10,
4194304 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] software IO TLB: area num 8.
[    0.000000] software IO TLB: mapped [mem
0x00000000e9f00000-0x00000000edf00000] (64MB)
[    0.000000] Memory: 7580108K/8108032K available (15808K kernel
code, 3386K rwdata, 5628K rodata, 6656K init,
 635K bss, 265780K reserved, 262144K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8,
Nodes=1
[    0.000000] ftrace: allocating 61674 entries in 241 pages
[    0.000000] ftrace: allocated 241 pages with 5 groups
[    0.000000] trace event string verifier disabled
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu:     RCU event tracing is enabled.
[    0.000000]  Rude variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
is 30 jiffies.
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 480 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GICv3: GICv3 features: 16 PPIs
[    0.000000] GICv3: CPU0: found redistributor 0 region
0:0x00000000fe680000
[    0.000000] ITS [mem 0xfe640000-0xfe65ffff]
[    0.000000] ITS@0x00000000fe640000: allocated 8192 Devices
@100210000 (indirect, esz 8, psz 64K, shr 1)
[    0.000000] ITS@0x00000000fe640000: allocated 32768 Interrupt
Collections @100220000 (flat, esz 2, psz 64K,
shr 1)
[    0.000000] ITS [mem 0xfe660000-0xfe67ffff]
[    0.000000] ITS@0x00000000fe660000: allocated 8192 Devices
@100240000 (indirect, esz 8, psz 64K, shr 1)
[    0.000000] ITS@0x00000000fe660000: allocated 32768 Interrupt
Collections @100250000 (flat, esz 2, psz 64K,
shr 1)
[    0.000000] GICv3: using LPI property table @0x0000000100260000
[    0.000000] GICv3: CPU0: using allocated LPI pending table
@0x0000000100270000
[    0.000000] ITS queue timeout (64 1)
[    0.000000] ITS cmd its_build_mapc_cmd failed
[    0.000000] ITS queue timeout (128 1)
[    0.000000] ITS cmd its_build_invall_cmd failed
[    0.000000] ITS queue timeout (64 1)
[    0.000000] ITS cmd its_build_mapc_cmd failed
[    0.000000] ITS queue timeout (128 1)
[    0.000000] ITS cmd its_build_invall_cmd failed
[    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on
contention.
[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
max_cycles: 0x588fe9dc0, max_idle_ns: 4407
95202592 ns
[    0.000000] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps
every 4398046511097ns
[    0.001176] Failed to get pclk for 'rk_timer'
[    0.002190] Console: colour dummy device 80x25
[    0.003258] printk: console [tty1] enabled
[    0.003678] Calibrating delay loop (skipped), value calculated
using timer frequency.. 48.00 BogoMIPS (lpj=8
0000)
[    0.004639] pid_max: default: 32768 minimum: 301
[    0.005227] Mount-cache hash table entries: 16384 (order: 5, 131072
bytes, linear)
[    0.005973] Mountpoint-cache hash table entries: 16384 (order: 5,
131072 bytes, linear)
[    0.008730] cblist_init_generic: Setting adjustable number of
callback queues.
[    0.009443] cblist_init_generic: Setting shift to 3 and lim to 1.
[    0.010246] rcu: Hierarchical SRCU implementation.
[    0.010701] rcu:     Max phase no-delay instances is 1000.
[    0.012093] Platform MSI: msi-controller@fe640000 domain created
[    0.012676] Platform MSI: msi-controller@fe660000 domain created
[    0.013565] PCI/MSI:
/interrupt-controller@fe600000/msi-controller@fe640000 domain created
[    0.014362] PCI/MSI:
/interrupt-controller@fe600000/msi-controller@fe660000 domain created
[    0.015259] EFI services will not be available.
[    0.016121] smp: Bringing up secondary CPUs ...
I/TC: Secondary CPU 1 initializing
I/TC: Secondary CPU 1 switching to normal world boot
[    0.017906] Detected VIPT I-cache on CPU1
[    0.018006] GICv3: CPU1: found redistributor 100 region
0:0x00000000fe6a0000
[    0.018021] GICv3: CPU1: using allocated LPI pending table
@0x0000000100280000
[    1.476363] ITS queue timeout (192 1)
[    1.476368] ITS cmd its_build_mapc_cmd failed
[    2.934711] ITS queue timeout (256 1)
[    2.934715] ITS cmd its_build_invall_cmd failed
[    4.393058] ITS queue timeout (192 1)
[    4.393062] ITS cmd its_build_mapc_cmd failed
[    5.178963] CPU1: failed to come online
[    5.183290] CPU1: failed in unknown state : 0x0
[    5.183719] ------------[ cut here ]------------
[    5.184152] Dying CPU not properly vacated!
[    5.184164] WARNING: CPU: 0 PID: 1 at kernel/sched/core.c:9533
sched_cpu_dying+0xf0/0x1b0
[    5.185330] Modules linked in:
[    5.185625] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 6.0.0-rc7+ #3
[    5.186215] Hardware name: Firefly ITX-3588J HDMI(Linux) (DT)
[    5.186752] pstate: 600000c9 (nZCv daIF -PAN -UAO -TCO -DIT -SSBS
BTYPE=--)
[    5.187405] pc : sched_cpu_dying+0xf0/0x1b0
[    5.187804] lr : sched_cpu_dying+0xf0/0x1b0
[    5.188201] sp : ffffffc009fbbc50
[    5.188514] x29: ffffffc009fbbc50 x28: 0000000000000000 x27:
0000000000000000
[    5.189190] x26: ffffffc1f5895000 x25: ffffffc00964e770 x24:
ffffff81feee3770
[    5.189865] x23: 0000000000000000 x22: 000000000000005f x21:
ffffffc009bb92a0
[    5.190541] x20: 0000000000000001 x19: ffffff81feef1940 x18:
0000000000000000
[    5.191216] x17: 0000000000000000 x16: 0000000000000000 x15:
0720072007200720
[    5.191891] x14: 0720072d072d072d x13: 2164657461636176 x12:
20796c7265706f72
[    5.192567] x11: 0720072007200720 x10: 0720072007200720 x9 :
ffffffc0080e2bf4
[    5.193243] x8 : 0720072007200720 x7 : 727020746f6e2055 x6 :
ffffffc009eed7f1
[    5.193918] x5 : 00000000000affa8 x4 : 000000000000000d x3 :
0000000000000000
[    5.194593] x2 : 0000000000000000 x1 : 0000000000000000 x0 :
0000000000000000
[    5.195269] Call trace:
[    5.195502]  sched_cpu_dying+0xf0/0x1b0
[    5.195868]  cpuhp_invoke_callback+0x108/0x268
[    5.196292]  cpuhp_invoke_callback_range+0x78/0xac
[    5.196745]  _cpu_up+0x180/0x1a8
[    5.197053]  cpu_up+0x88/0x9c
[    5.197338]  bringup_nonboot_cpus+0x94/0x98
[    5.197735]  smp_init+0x38/0x80
[    5.198039]  kernel_init_freeable+0x128/0x2a0
[    5.198453]  kernel_init+0x30/0x134
[    5.198785]  ret_from_fork+0x10/0x20
[    5.199128] ---[ end trace 0000000000000000 ]---
[    5.199563] CPU1 enqueued tasks (0 total):
I/TC: Secondary CPU 2 initializing
I/TC: Secondary CPU 2 switching to normal world boot
** 668410 printk messages dropped **
[   10.279895]  __secondary_switched+0xb0/0xb4
[   10.279905] bad: scheduling from the idle thread!
[   10.279909] CPU: 1 PID: 0 Comm: swapper/1 Tainted: G        W
   6.0.0-rc7+ #3
[   10.279917] Hardware name: Firefly ITX-3588J HDMI(Linux) (DT)
[   10.279920] Call trace:
[   10.279923]  dump_backtrace+0xe0/0x104
[   10.279930]  show_stack+0x20/0x30
[   10.279936]  dump_stack_lvl+0x7c/0xa0
[   10.279943]  dump_stack+0x18/0x34
[   10.279950]  dequeue_task_idle+0x34/0x54
[   10.279957]  dequeue_task+0x94/0xd8
[   10.279964]  deactivate_task+0x28/0x34
[   10.279971]  __schedule+0x4f4/0x698
[   10.279977]  schedule+0x8c/0xdc
[   10.279983]  schedule_preempt_disabled+0x18/0x24
[   10.279990]  __mutex_lock.isra.0+0x1b0/0x298
[   10.279997]  __mutex_lock_slowpath+0x1c/0x28
[   10.280004]  mutex_lock+0x3c/0x4c
[   10.280010]  irq_lock_sparse+0x24/0x30
[   10.280018]  bringup_cpu+0x2c/0xbc
[   10.280025]  cpuhp_invoke_callback+0x108/0x268
[   10.280033]  cpuhp_invoke_callback_range+0x78/0xac
[   10.280040]  notify_cpu_starting+0x80/0x9c
[   10.280048]  secondary_start_kernel+0x114/0x1bc
[   10.280054]  __secondary_switched+0xb0/0xb4
[   10.280065] bad: scheduling from the idle thread!
[   10.280068] CPU: 1 PID: 0 Comm: swapper/1 Tainted: G        W
   6.0.0-rc7+ #3
==========================

Thanks,
Shimrra SHAI.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
