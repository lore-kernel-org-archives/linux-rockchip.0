Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7059EC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 03:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JK8WgcB6MjrFa3sAZLpCGbiVmtFBtwZlDJUOGr3+4ss=; b=N2+YdsveUQ7PAD
	xWP/r8S5JVqTBhKjsWv91OJRQ1/UqPAcxhzku37dlWvzc1eJKx8icElWAFcmJLsrt2/JbljL8BPn9
	DERqk7P02kCj6i/hx36sxUoO9EILB2wVKZN6zDSkGn2sZen+uUE6vcjWVo9dawHpWmYLeJ/EVK9Ct
	5skON4/a8wYuduWZCSMrPAHgIRP9NgeHdTYtY12tffnrmQgDdS6wLHTYs9dqvBCfzLax7TzkYkm5/
	QljQE5FA2rJEZ1Fytm0fuzQqsNNVn+xL9Xx0S8v2IVdgTjvttLmFDCOe2VGg3xhUbKXgichsFjvqt
	DoJWEZXqbdNWMD2tIkbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohjsB-00Gxwb-8T; Mon, 10 Oct 2022 03:54:35 +0000
Received: from out162-62-57-87.mail.qq.com ([162.62.57.87])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohjs7-00Gxvn-SM
	for linux-rockchip@lists.infradead.org; Mon, 10 Oct 2022 03:54:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1665374061; bh=n4/MxQmbZxIWfAIKRIsPOKiIik84Gji03Tkwqwg7QIY=;
	h=From:To:Cc:Subject:Date;
	b=eNvRF8yPWNWMKto/MQ0rBjtaWrl2U/ypN0oiQJC5JSlu27eEcnOio6WekiisLqihP
	 VALbdhHHjh+20TW6RbZBb9C2FjaOuE+d5MR2bgaDl7o2X+AnIUZbGXwglRYb7zOJ7e
	 3B8jgSzW8UKVeyDduLjPOfaD/B9U4Vze1vLt2RXk=
Received: from TS-551.. ([101.93.98.169])
	by newxmesmtplogicsvrszc10.qq.com (NewEsmtp) with SMTP
	id D9306011; Mon, 10 Oct 2022 11:54:19 +0800
X-QQ-mid: xmsmtpt1665374059teb6yr7ur
Message-ID: <tencent_9826B01A920D622F16C778DA116DD2A59909@qq.com>
X-QQ-XMAILINFO: OZZSS56D9fAjUwO/62ROF8MywD6/8XVqA4/W+7bjEa51XxwBlTTcMKZyJ/GNRk
	 /NE+R2fRd1lBIR5fxIGqVJ+rlOIDRJhSV/A4cAY76/i7b197LYbEeLBMzCalztaiHb5kABitreRq
	 SH7YvUDMpt3pLtwY5EbMPog2tVyxac1/jqYoY4lhq3RPaEYO6+d3RKqzGWYnqtoVSXc+9WKZVQWG
	 wV9kFoMc7BtdyV66DbgfJIMzhHXiPnZ0GR53W/ScKO8wrwOakJuEF5QBO5zff5rkLat4xgfbIzLT
	 FwjdUvB8zwgoGWlTppWUi/24iQrCJBJ9QSR9HO6Nf/22mVJ8o/N7fY67y1b9p1hnXIyfIUdNBhno
	 7j3F172OudYRrDLzfb63WwgHnel77AvLhxdm0dYuzK781mCD0K56kq9D9f+tc9+Pg6+KiBoNwwt0
	 FPjNCEEUdQJQvBOy1McAduaTTtsmd43FsP4MNTD84L9sVxPMHEa7pioSlq/V02TqJ+egfq38GSAN
	 W+sbT6d39Hyu2NezyRfI20Viv+JMmR6lq0uFKl78G2wagkYmScs0mlP2KfQsNk8vxaMzb+b7kH40
	 MCxBwlDkDKoNVyUDM9CleIHfFYZq4SbXB0i1esP9seRRyRFXH8/+c5f12mmebhhLN08njkOduyk7
	 oXrTleKNXiY5QmirSqTDacTDBl7t6wqZyadeo4bQBcJL2lqSDDBISuK+1WBVrlntz8006lBKL9Hm
	 Y6BY32ehB55r++K50Ld3N010Qsi9X8oKPH6TOHpDnMlpUcSc+c5pE87uZ7qxpcaR75KJbWfvHYIe
	 8R6vsrjKmE0WI21yJqDhh1/ODDRzju9LeKoEIJRZvm4DzVF+5ZR9TfntsdZb1JNdvbvuAWuxaDGn
	 ypcaDGo28sDeW5FT1E2P5JUiTMlkSlKhwJK2oqyfoEezKuEdojQaH0yYl264m4FeSMKspX0bCi
From: Zhang Ning <zhangn1985@qq.com>
To: linux-rockchip@lists.infradead.org,
	debian-kernel@lists.debian.org
Cc: zhangn1985@qq.com
Subject: Regression/Help: RK3399: Internal error: SP/PC alignment exception: 8a000000 [#1] SMP
Date: Mon, 10 Oct 2022 11:54:18 +0800
X-OQ-MSGID: <20221010035419.15116-1-zhangn1985@qq.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_205432_881442_B995DE57 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
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

Hi,

My Khadas Edge V is running debian bookworm, with debian's kernel release 5.18.?
after update to 5.19.?? I got below crash.

I also build kernel from upstream linux-6.0.0, and got same error.

this looks like a regression,
but I also have Amlogic SBCs and Asus Tinker(RK3288), running same kernel verions, no such issue.

from below crash log, it looks like error happens in idle driver, I also build a version with idle driver disabled,
and get a slight different crash: Fatal exception in interrupt

I don't know how to do next, thus send an email to comunity.

below is crash log with init=/bin/sh



/dev/mmcblk2p1: clean, 202185/1908736 files, 1516916/7629568 blocks
done.
[    5.937959] EXT4-fs (mmcblk2p1): mounted filesystem with ordered data mode. Quota mode: none.
done.
Begin: Running /scripts/local-bottom ... done.
Begin: Running /scripts/init-bottom ... done.
/bin/sh: 0: can't access tty; job control turned off
# [    7.200507] Internal error: SP/PC alignment exception: 8a000000 [#1] SMP
[    7.201158] Modules linked in: ext4 crc16 mbcache jbd2 crc32c_generic xhci_plat_hcd xhci_hcd realtek rk808_regulator governor_simpleondemand dwc3 udc_core roles ulpi rockchipdrm dwmac_rk dw_hdmi crct10dif_ce pwm_regulator crct10dif_common cec fixed stmmac_platform dwc3_of_simple rc_core fan53555 stmmac pcs_xpcs gpio_keys phylink dw_mipi_dsi analogix_dp drm_display_helper drm_cma_helper of_mdio fixed_phy fwnode_mdio ohci_platform drm_kms_helper phy_rockchip_inno_usb2 ehci_platform ohci_hcd phy_rockchip_emmc pl330 phy_rockchip_pcie pwm_rockchip io_domain phy_rockchip_typec libphy adc_keys dw_mmc_rockchip ptp dw_mmc_pltfm ehci_hcd i2c_rk3x sdhci_of_arasan spi_rockchip sdhci_pltfm cqhci drm usbcore dw_mmc usb_common pps_core industrialio sdhci
[    7.207316] CPU: 2 PID: 0 Comm: swapper/2 Not tainted 6.0.0-trunk-arm64 #1  Debian 6.0-1~exp1
[    7.208091] Hardware name: Khadas Edge-V (DT)
[    7.208491] pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[    7.209125] pc : 0x1ffffffff
[    7.209404] lr : call_timer_fn+0x3c/0x154
[    7.209787] sp : ffff80000a033a00
[    7.210094] x29: ffff80000a033a00 x28: ffff800009b17000 x27: ffff80000a033ad0
[    7.210755] x26: ffff800009698008 x25: 0000000000000000 x24: ffff800009b1ea80
[    7.211416] x23: 0000000000000100 x22: 00000001ffffffff x21: ffff80000a033ad0
[    7.212077] x20: ffff0000f7743f40 x19: ffff0000f4b6bb10 x18: ffff80000a893cb8
[    7.212736] x17: ffff8000ee0a9000 x16: ffff800009e5c000 x15: 0000000000004000
[    7.213397] x14: 0000000000017700 x13: 0000000000000000 x12: 003d090000000000
[    7.214057] x11: 0000000000000040 x10: ffff0000f7743fb0 x9 : ffff800008161adc
[    7.214718] x8 : ffff80000a033ad8 x7 : 0000000000000009 x6 : 0000000000000240
[    7.215377] x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000200
[    7.216035] x2 : 00000000fffee210 x1 : 00000001ffffffff x0 : ffff0000f4b6bb10
[    7.216697] Call trace:
[    7.216929]  0x1ffffffff
[    7.217172]  __run_timers+0x2d8/0x37c
[    7.217520]  run_timer_softirq+0x28/0x50
[    7.217890]  __do_softirq+0x120/0x350
[    7.218235]  __irq_exit_rcu+0x11c/0x14c
[    7.218601]  irq_exit_rcu+0x18/0x24
[    7.218933]  el1_interrupt+0x38/0x54
[    7.219275]  el1h_64_irq_handler+0x18/0x24
[    7.219660]  el1h_64_irq+0x64/0x68
[    7.219981]  cpuidle_enter_state+0xc0/0x440
[    7.220374]  cpuidle_enter+0x40/0x60
[    7.220711]  do_idle+0x234/0x2c0
[    7.221019]  cpu_startup_entry+0x30/0x3c
[    7.221387]  secondary_start_kernel+0x130/0x144
[    7.221812]  __secondary_switched+0xb0/0xb4
[    7.222211] Code: bad PC value
[    7.222505] ---[ end trace 0000000000000000 ]---
[    7.222930] Kernel panic - not syncing: SP/PC alignment exception: Fatal exception in interrupt
[    7.223711] SMP: stopping secondary CPUs
[    7.224214] Kernel Offset: disabled
[    7.224534] CPU features: 0x4000,0820b021,00001086
[    7.224974] Memory Limit: none
[    7.225264] ---[ end Kernel panic - not syncing: SP/PC alignment exception: Fatal exception in interrupt ]---

crash log with kernel defconfig from upstream linux-6.0.0.

Begin: Running /scripts/local-bottom ... done.
Begin: Running /scripts/init-bottom ... done.
/bin/sh: 0: can't access tty; job control turned off
# [    2.063727] rockchip-pcie f8000000.pcie: PCIe link training gen1 timeout!
[    2.064436] rockchip-pcie: probe of f8000000.pcie failed with error -110
[    2.847690] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
[    2.848539] Mem abort info:
[    2.848810]   ESR = 0x0000000086000004
[    2.849169]   EC = 0x21: IABT (current EL), IL = 32 bits
[    2.849669]   SET = 0, FnV = 0
[    2.849966]   EA = 0, S1PTW = 0
[    2.850270]   FSC = 0x04: level 0 translation fault
[    2.850729] user pgtable: 4k pages, 48-bit VAs, pgdp=00000000018d6000
[    2.851330] [0000000000000000] pgd=0000000000000000, p4d=0000000000000000
[    2.851979] Internal error: Oops: 86000004 [#1] PREEMPT SMP
[    2.852504] Modules linked in: phy_rockchip_pcie rockchipdrm rtc_rk808 analogix_dp dw_hdmi cec dw_mipi_dsi drm_display_helper drm_cma_helper drm_kms_helper dwmac_rk stmmac_platform stmmac drm pcs_xpcs pcie_rockchip_host adc_keys
[    2.854481] CPU: 2 PID: 0 Comm: swapper/2 Not tainted 6.0.0 #1
[    2.855034] Hardware name: Khadas Edge-V (DT)
[    2.855445] pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[    2.856099] pc : 0x0
[    2.856329] lr : call_timer_fn.constprop.0+0x24/0x80
[    2.856816] sp : ffff80000a4f3aa0
[    2.857135] x29: ffff80000a4f3aa0 x28: 0000000000000000 x27: ffff80000a4f3b50
[    2.857820] x26: ffff800009fc79c0 x25: ffff0000f7778030 x24: ffff0000f7777fe8
[    2.858505] x23: ffff80000a4f3b50 x22: 0000000000000000 x21: 0000000000000101
[    2.859189] x20: ffff000000708000 x19: 0000000000000000 x18: 0000000000000000
[    2.859873] x17: ffff8000edd4d000 x16: ffff80000a3ec000 x15: 0000000000004000
[    2.860557] x14: 0000000000017700 x13: 0000000000000069 x12: 0000000000000000
[    2.861242] x11: 0000000000000000 x10: 0000000000000226 x9 : 0000000000000000
[    2.861924] x8 : 0000000000000001 x7 : 0000000000000009 x6 : 0000000000000240
[    2.862606] x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000200
[    2.863289] x2 : 000000003fffffff x1 : 0000000000000000 x0 : ffff000000c05710
[    2.863973] Call trace:
[    2.864214]  0x0
[    2.864409]  __run_timers+0x220/0x264
[    2.864774]  run_timer_softirq+0x20/0x40
[    2.865163]  __do_softirq+0x10c/0x298
[    2.865523]  __irq_exit_rcu+0xec/0xf4
[    2.865888]  irq_exit_rcu+0x10/0x1c
[    2.866238]  el1_interrupt+0x38/0x70
[    2.866597]  el1h_64_irq_handler+0x18/0x24
[    2.867002]  el1h_64_irq+0x64/0x68
[    2.867338]  arch_cpu_idle+0x18/0x2c
[    2.867697]  default_idle_call+0x30/0x6c
[    2.868084]  do_idle+0x244/0x2c0
[    2.868407]  cpu_startup_entry+0x28/0x30
[    2.868791]  secondary_start_kernel+0x130/0x14c
[    2.869233]  __secondary_switched+0xb0/0xb4
[    2.869657] Code: bad PC value
[    2.869960] ---[ end trace 0000000000000000 ]---
[    2.870399] Kernel panic - not syncing: Oops: Fatal exception in interrupt
[    2.871034] SMP: stopping secondary CPUs
[    2.871418] Kernel Offset: disabled
[    2.871750] CPU features: 0x4000,0820b021,00001086
[    2.872204] Memory Limit: none
[    2.872507] ---[ end Kernel panic - not syncing: Oops: Fatal exception in interrupt ]---

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
