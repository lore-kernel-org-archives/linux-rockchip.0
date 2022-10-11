Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4862C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Oct 2022 08:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vg4jBbRky2Vf5iH9w/ZfxxVXxVMqq66HmEWL8FAHrds=; b=3n670Xjc8Mabh8
	Af+Ydl4iyO9VdLM01ruMiD08YczOTNqJ41cBYCl359xdv9liIYJX023vhbzPsavRTd5CC9RvZY05x
	iImTJP4pmI3Q2jYdZxhm2FxJShVNQPO/qNwoppI78ZfLSzlJKSVKJh/Sh8dDbWtbHnXM9StuWD8qn
	81maq9xpfpO5JvZYwzdQM2X6qf0wGj2v9hhSmokdJ/NOt1kF0wiLko3oW16YW17QiRHxm2inVWvyW
	3GA1PROZppmOfjxesuqA7+5XtPnt2EAiF6/oMOoH4xSemRCMbJoV16zoHXjvQxNoj64p0WZ4KKepR
	ETkGGIubvWZuCVOjGJzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiAyh-003m5p-65; Tue, 11 Oct 2022 08:51:07 +0000
Received: from out203-205-251-27.mail.qq.com ([203.205.251.27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiAyb-003m4N-3n
	for linux-rockchip@lists.infradead.org; Tue, 11 Oct 2022 08:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1665478253; bh=hB9nTOJpZxEGUYl69lKS+teBTUM5tEPMYOqF3nd26x4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IG49NKw3oZF1nmhDWbUc2jtpHJaQzyCogKyLio2EEP7W0qsMuMKmBnz3VgczGUvu6
	 1oM/ZjZrHG5ygBAKRi6sJvi2fekpQwz7R7GZoVzJv55mNTfnGqcT4qeWRMPCPoN3bO
	 zK5K7fmc6F9fvdJIF1LilpWXx+dwzrpw18M28iWA=
Received: from TS-551 ([101.93.98.169])
	by newxmesmtplogicsvrszb7.qq.com (NewEsmtp) with SMTP
	id CB333AD0; Tue, 11 Oct 2022 16:50:51 +0800
X-QQ-mid: xmsmtpt1665478251tdw430dfh
Message-ID: <tencent_3A438D81C6C5CB58603B8CCDA474C6C44606@qq.com>
X-QQ-XMAILINFO: OZZSS56D9fAj72jKvZYu+lG4N8b8Qatt+QLndWcg5QYE9xwk8VILPuztVsXZLC
	 rELOpD6vJJEBKDHj9y3qIXNyn2hmdsM4PwljSbCXMyLpgzhY/RwO+GEgt/IaPJ5OIJrP9CMp8fNW
	 bF2rxIEYr78h0av2GaSTlC2qSeDOOqO32AYipQY/zKW3Lx6y70IEYShpkQWj/BU+p4i8PscYfh9s
	 go/42DwYKbb5VIuWYGd/WrqaK/C70fuBoZeGfJhua+PLekc+bf7Bbn8EZEbmC91+tpCA/NohUmsq
	 N6r2az729xHZEKYMuR+5fPksym8ZATeC2/v1fLJuInfvuFXzJnrfy1gE7dbeKz7K0yrm5jTiDryc
	 VPHpjI4ei0DL22CSCGC/E0z2TR853Fy1Ui79FnTnSGfEl3D37pori0R/LGb39dih4wHhIxJx5Vm4
	 1gxcBsxc5XiV3ouLWyZ1tUiPuvthETXDQp1BdTq5rLBZGxAPTuK94BdHqd83d1tOMDyccrM7t7cE
	 nxFD1HMQJIO6qeWr1n9ANKft4imqb5FgxbWcEmjitOhbZPho2zdjRC1kF2H0sBY9HowNwCNLJdEl
	 kEzWL3IOe3NVkXg5BcuCLII+4+oMMIsOKgwKq3HWijz5PMTr0qMUrnJEjNudHvyTRyP1EWVMtj32
	 Wz2GIsBP4A2cthEUyA9Op+uC0uQrkBaTIhFWuUe65CKn2c634St5J0fduvk5kZ217B2THoqlq3cr
	 qqcXqVMT5/2UaoNcQYT0tz3fn76GEOm/c79RVXpXmupJIF9JpACTehAkjLmZX46rK1daQ6fWmN6i
	 vZO1L1sCBeWrQQc5vy6NCCr+P6S9yPaAusuBCUCiwBuvB0LlCtRC7v9Y2p1vcT6fbM+5utj2BNul
	 cM5AUo8UUn4jiMXH2OSzRwjng06HCCbGe2GmwZn6TTBlqH4OWuRWcebXmbfGo49A==
Date: Tue, 11 Oct 2022 16:50:51 +0800
From: Zhang Ning <zhangn1985@qq.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-rockchip@lists.infradead.org, debian-kernel@lists.debian.org
Subject: Re: Regression/Help: RK3399: Internal error: SP/PC alignment
 exception: 8a000000 [#1] SMP
X-OQ-MSGID: <Y0Uua1Xyut8uF0rT@TS-551>
References: <tencent_9826B01A920D622F16C778DA116DD2A59909@qq.com>
 <9bb5e351-6ef3-94d7-92b8-009da91574db@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9bb5e351-6ef3-94d7-92b8-009da91574db@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_015101_526874_BC537879 
X-CRM114-Status: GOOD (  21.00  )
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

Thanks, it's fix this issue.

On Mon, Oct 10, 2022 at 11:22:41AM +0100, Robin Murphy wrote:
> On 2022-10-10 04:54, Zhang Ning wrote:
> > Hi,
> > 
> > My Khadas Edge V is running debian bookworm, with debian's kernel release 5.18.?
> > after update to 5.19.?? I got below crash.
> > 
> > I also build kernel from upstream linux-6.0.0, and got same error.
> > 
> > this looks like a regression,
> > but I also have Amlogic SBCs and Asus Tinker(RK3288), running same kernel verions, no such issue.
> > 
> > from below crash log, it looks like error happens in idle driver, I also build a version with idle driver disabled,
> > and get a slight different crash: Fatal exception in interrupt
> 
> The problem is in the USB2 phy driver, and it shows up as all manner of
> weird symptoms. The fix is this patch:
> 
> https://lore.kernel.org/linux-rockchip/20220902184543.1234835-1-pgwipeout@gmail.com/
> 
> Robin.
> 
> > I don't know how to do next, thus send an email to comunity.
> > 
> > below is crash log with init=/bin/sh
> > 
> > 
> > 
> > /dev/mmcblk2p1: clean, 202185/1908736 files, 1516916/7629568 blocks
> > done.
> > [    5.937959] EXT4-fs (mmcblk2p1): mounted filesystem with ordered data mode. Quota mode: none.
> > done.
> > Begin: Running /scripts/local-bottom ... done.
> > Begin: Running /scripts/init-bottom ... done.
> > /bin/sh: 0: can't access tty; job control turned off
> > # [    7.200507] Internal error: SP/PC alignment exception: 8a000000 [#1] SMP
> > [    7.201158] Modules linked in: ext4 crc16 mbcache jbd2 crc32c_generic xhci_plat_hcd xhci_hcd realtek rk808_regulator governor_simpleondemand dwc3 udc_core roles ulpi rockchipdrm dwmac_rk dw_hdmi crct10dif_ce pwm_regulator crct10dif_common cec fixed stmmac_platform dwc3_of_simple rc_core fan53555 stmmac pcs_xpcs gpio_keys phylink dw_mipi_dsi analogix_dp drm_display_helper drm_cma_helper of_mdio fixed_phy fwnode_mdio ohci_platform drm_kms_helper phy_rockchip_inno_usb2 ehci_platform ohci_hcd phy_rockchip_emmc pl330 phy_rockchip_pcie pwm_rockchip io_domain phy_rockchip_typec libphy adc_keys dw_mmc_rockchip ptp dw_mmc_pltfm ehci_hcd i2c_rk3x sdhci_of_arasan spi_rockchip sdhci_pltfm cqhci drm usbcore dw_mmc usb_common pps_core industrialio sdhci
> > [    7.207316] CPU: 2 PID: 0 Comm: swapper/2 Not tainted 6.0.0-trunk-arm64 #1  Debian 6.0-1~exp1
> > [    7.208091] Hardware name: Khadas Edge-V (DT)
> > [    7.208491] pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> > [    7.209125] pc : 0x1ffffffff
> > [    7.209404] lr : call_timer_fn+0x3c/0x154
> > [    7.209787] sp : ffff80000a033a00
> > [    7.210094] x29: ffff80000a033a00 x28: ffff800009b17000 x27: ffff80000a033ad0
> > [    7.210755] x26: ffff800009698008 x25: 0000000000000000 x24: ffff800009b1ea80
> > [    7.211416] x23: 0000000000000100 x22: 00000001ffffffff x21: ffff80000a033ad0
> > [    7.212077] x20: ffff0000f7743f40 x19: ffff0000f4b6bb10 x18: ffff80000a893cb8
> > [    7.212736] x17: ffff8000ee0a9000 x16: ffff800009e5c000 x15: 0000000000004000
> > [    7.213397] x14: 0000000000017700 x13: 0000000000000000 x12: 003d090000000000
> > [    7.214057] x11: 0000000000000040 x10: ffff0000f7743fb0 x9 : ffff800008161adc
> > [    7.214718] x8 : ffff80000a033ad8 x7 : 0000000000000009 x6 : 0000000000000240
> > [    7.215377] x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000200
> > [    7.216035] x2 : 00000000fffee210 x1 : 00000001ffffffff x0 : ffff0000f4b6bb10
> > [    7.216697] Call trace:
> > [    7.216929]  0x1ffffffff
> > [    7.217172]  __run_timers+0x2d8/0x37c
> > [    7.217520]  run_timer_softirq+0x28/0x50
> > [    7.217890]  __do_softirq+0x120/0x350
> > [    7.218235]  __irq_exit_rcu+0x11c/0x14c
> > [    7.218601]  irq_exit_rcu+0x18/0x24
> > [    7.218933]  el1_interrupt+0x38/0x54
> > [    7.219275]  el1h_64_irq_handler+0x18/0x24
> > [    7.219660]  el1h_64_irq+0x64/0x68
> > [    7.219981]  cpuidle_enter_state+0xc0/0x440
> > [    7.220374]  cpuidle_enter+0x40/0x60
> > [    7.220711]  do_idle+0x234/0x2c0
> > [    7.221019]  cpu_startup_entry+0x30/0x3c
> > [    7.221387]  secondary_start_kernel+0x130/0x144
> > [    7.221812]  __secondary_switched+0xb0/0xb4
> > [    7.222211] Code: bad PC value
> > [    7.222505] ---[ end trace 0000000000000000 ]---
> > [    7.222930] Kernel panic - not syncing: SP/PC alignment exception: Fatal exception in interrupt
> > [    7.223711] SMP: stopping secondary CPUs
> > [    7.224214] Kernel Offset: disabled
> > [    7.224534] CPU features: 0x4000,0820b021,00001086
> > [    7.224974] Memory Limit: none
> > [    7.225264] ---[ end Kernel panic - not syncing: SP/PC alignment exception: Fatal exception in interrupt ]---
> > 
> > crash log with kernel defconfig from upstream linux-6.0.0.
> > 
> > Begin: Running /scripts/local-bottom ... done.
> > Begin: Running /scripts/init-bottom ... done.
> > /bin/sh: 0: can't access tty; job control turned off
> > # [    2.063727] rockchip-pcie f8000000.pcie: PCIe link training gen1 timeout!
> > [    2.064436] rockchip-pcie: probe of f8000000.pcie failed with error -110
> > [    2.847690] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
> > [    2.848539] Mem abort info:
> > [    2.848810]   ESR = 0x0000000086000004
> > [    2.849169]   EC = 0x21: IABT (current EL), IL = 32 bits
> > [    2.849669]   SET = 0, FnV = 0
> > [    2.849966]   EA = 0, S1PTW = 0
> > [    2.850270]   FSC = 0x04: level 0 translation fault
> > [    2.850729] user pgtable: 4k pages, 48-bit VAs, pgdp=00000000018d6000
> > [    2.851330] [0000000000000000] pgd=0000000000000000, p4d=0000000000000000
> > [    2.851979] Internal error: Oops: 86000004 [#1] PREEMPT SMP
> > [    2.852504] Modules linked in: phy_rockchip_pcie rockchipdrm rtc_rk808 analogix_dp dw_hdmi cec dw_mipi_dsi drm_display_helper drm_cma_helper drm_kms_helper dwmac_rk stmmac_platform stmmac drm pcs_xpcs pcie_rockchip_host adc_keys
> > [    2.854481] CPU: 2 PID: 0 Comm: swapper/2 Not tainted 6.0.0 #1
> > [    2.855034] Hardware name: Khadas Edge-V (DT)
> > [    2.855445] pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> > [    2.856099] pc : 0x0
> > [    2.856329] lr : call_timer_fn.constprop.0+0x24/0x80
> > [    2.856816] sp : ffff80000a4f3aa0
> > [    2.857135] x29: ffff80000a4f3aa0 x28: 0000000000000000 x27: ffff80000a4f3b50
> > [    2.857820] x26: ffff800009fc79c0 x25: ffff0000f7778030 x24: ffff0000f7777fe8
> > [    2.858505] x23: ffff80000a4f3b50 x22: 0000000000000000 x21: 0000000000000101
> > [    2.859189] x20: ffff000000708000 x19: 0000000000000000 x18: 0000000000000000
> > [    2.859873] x17: ffff8000edd4d000 x16: ffff80000a3ec000 x15: 0000000000004000
> > [    2.860557] x14: 0000000000017700 x13: 0000000000000069 x12: 0000000000000000
> > [    2.861242] x11: 0000000000000000 x10: 0000000000000226 x9 : 0000000000000000
> > [    2.861924] x8 : 0000000000000001 x7 : 0000000000000009 x6 : 0000000000000240
> > [    2.862606] x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000200
> > [    2.863289] x2 : 000000003fffffff x1 : 0000000000000000 x0 : ffff000000c05710
> > [    2.863973] Call trace:
> > [    2.864214]  0x0
> > [    2.864409]  __run_timers+0x220/0x264
> > [    2.864774]  run_timer_softirq+0x20/0x40
> > [    2.865163]  __do_softirq+0x10c/0x298
> > [    2.865523]  __irq_exit_rcu+0xec/0xf4
> > [    2.865888]  irq_exit_rcu+0x10/0x1c
> > [    2.866238]  el1_interrupt+0x38/0x70
> > [    2.866597]  el1h_64_irq_handler+0x18/0x24
> > [    2.867002]  el1h_64_irq+0x64/0x68
> > [    2.867338]  arch_cpu_idle+0x18/0x2c
> > [    2.867697]  default_idle_call+0x30/0x6c
> > [    2.868084]  do_idle+0x244/0x2c0
> > [    2.868407]  cpu_startup_entry+0x28/0x30
> > [    2.868791]  secondary_start_kernel+0x130/0x14c
> > [    2.869233]  __secondary_switched+0xb0/0xb4
> > [    2.869657] Code: bad PC value
> > [    2.869960] ---[ end trace 0000000000000000 ]---
> > [    2.870399] Kernel panic - not syncing: Oops: Fatal exception in interrupt
> > [    2.871034] SMP: stopping secondary CPUs
> > [    2.871418] Kernel Offset: disabled
> > [    2.871750] CPU features: 0x4000,0820b021,00001086
> > [    2.872204] Memory Limit: none
> > [    2.872507] ---[ end Kernel panic - not syncing: Oops: Fatal exception in interrupt ]---
> > 
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
