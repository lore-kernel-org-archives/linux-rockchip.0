Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C917D1F9D2
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Dec 2025 12:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHMa9ivz4zsPGfnkvYHFDQrVHfHVVdm8PLV2Y3L+DeE=; b=nqZe27YoKeDVcF
	e27HhAvuVg0evGvEUr+aRqjchWRReEELPUAxaS+2RvbTuojRf3cI63lPybg2qWeE8WcCJQXMSuM5u
	3z505eTXA2Lso0Y3HC7a/wrGzZvLsurARIU/2WS9JsBo0QCGEJcvyku4hhd69eAqslsDVza1kS7Z/
	+7gMHWXVna84Lq5n4FQ1Cq8/kW1phlEFJUOzchkBH6wYxpGlb8+ztt31xvUpN1eYVmk+D+NEQwu33
	O/fMhXKEusYSlaGBpHVIWfh6CwmnSClgNJrmyzB3IIKMzLYqPmPNDyOARqxgrkiqCpUm1aEUwb2rn
	sr59fALAsKCWqCHGE4og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR80G-00000007x0h-1k1u;
	Thu, 04 Dec 2025 12:00:08 +0000
Received: from out-170.mta1.migadu.com ([2001:41d0:203:375::aa])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR80C-00000007wzh-0Bt8
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Dec 2025 12:00:06 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1764849598;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NSOcwY/qQ5Xjiw03oUTju/J5KsMWDXKedAXrLMaSJsg=;
	b=eYavfJDnYzbV/1+ATBULl51tKvKwmc1JT04PBgj8/NYWQ8VMKUo5i6V0sRDcWyQGZ3JpVV
	1tnGWC8BO3EX6g9wJV1TgghoVBvha/zvDCj4nJNdx57vi1M78VYS6uFjVlM9LvtgEG1J25
	Eo0EPmhMTwgRUeQ7ZiHGuprnRCEWb+haFSeFqsAq90p/QjjUxPP5ivHKeQCqRqIRfD6J2l
	aix/h65OgeaIT9YGFIRQWCzLdi1g9vXFveOtu6z1TgwJPYjX9tY0JFNeWI8iWUIne6Ik2s
	4wccxHa4Sz62XgnUROPp8BB/Omjbi+OOMCoIhgECQyKIzwMVCwaYOMfokeup8w==
Date: Thu, 04 Dec 2025 12:59:53 +0100
Message-Id: <DEPEYUF5BRGY.UKFBWRRE8HNP@cknow-tech.com>
Cc: <linux-kernel@vger.kernel.org>, "Linus Walleij"
 <linus.walleij@linaro.org>, <linux-pci@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, "Bjorn Helgaas" <bhelgaas@google.com>
Subject: Re: [PATCH] regulator: fixed: fix GPIO descriptor leak on register
 failure
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Haotian Zhang" <vulab@iscas.ac.cn>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>
References: <20251028172828.625-1-vulab@iscas.ac.cn>
In-Reply-To: <20251028172828.625-1-vulab@iscas.ac.cn>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_040004_846893_583B6FEC 
X-CRM114-Status: GOOD (  18.73  )
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

On Tue Oct 28, 2025 at 6:28 PM CET, Haotian Zhang wrote:
> In the commit referenced by the Fixes tag,
> devm_gpiod_get_optional() was replaced by manual
> GPIO management, relying on the regulator core to release the
> GPIO descriptor. However, this approach does not account for the
> error path: when regulator registration fails, the core never
> takes over the GPIO, resulting in a resource leak.
>
> Add gpiod_put() before returning on regulator registration failure.
>
> Fixes: 5e6f3ae5c13b ("regulator: fixed: Let core handle GPIO descriptor")
> Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
> ---
>  drivers/regulator/fixed.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
> index 1cb647ed70c6..a2d16e9abfb5 100644
> --- a/drivers/regulator/fixed.c
> +++ b/drivers/regulator/fixed.c
> @@ -334,6 +334,7 @@ static int reg_fixed_voltage_probe(struct platform_device *pdev)
>  		ret = dev_err_probe(&pdev->dev, PTR_ERR(drvdata->dev),
>  				    "Failed to register regulator: %ld\n",
>  				    PTR_ERR(drvdata->dev));
> +		gpiod_put(cfg.ena_gpiod);
>  		return ret;
>  	}
>  

I recently upgraded the kernel of my PINE64 Quartz64 - Model A (8GB) to
6.18 and saw several stack traces and the result was that it didn't see
my PCIe card which connects a USB drive to it.
Doing a ``git bisect`` led me to this commit/patch.
I'm assuming ``git bisect log`` output isn't useful.

Interestingly enough, I haven't seen it on any of my other Rockchip
based devices thus far: not on Rock 5B (rk3588) nor on NanoPi R5S
(rk3568). Both of these devices also use PCIe via a NVMe drive.

What's possibly relevant is that quite a lot of my kernel modules are
built as ``=m``, which can/does affect probe order (apparently).

This is the call trace I'm seeing most often:

```
[   19.941158] Unable to handle kernel paging request at virtual address fffffffffffffc78
[   19.941919] Mem abort info:
[   19.942182]   ESR = 0x0000000096000006
[   19.942530]   EC = 0x25: DABT (current EL), IL = 32 bits
[   19.943013]   SET = 0, FnV = 0
[   19.943298]   EA = 0, S1PTW = 0
[   19.943591]   FSC = 0x06: level 2 translation fault
[   19.944163] Data abort info:
[   19.944440]   ISV = 0, ISS = 0x00000006, ISS2 = 0x00000000
[   19.944938]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
[   19.945400]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
[   19.945887] swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000000003d46000
[   19.946496] [fffffffffffffc78] pgd=0000000000000000, p4d=0000000004477403, pud=0000000004478403, pmd=0000000000000000
[   19.947477] Internal error: Oops: 0000000096000006 [#1]  SMP
[   19.947997] Modules linked in: nfsd auth_rpcgss nfs_acl lockd grace sunrpc efi_pstore configfs nfnetlink autofs4 ext4 crc16 mbcache jbd2 rockchip_rng xhci_plat_hcd xhci_hcd dw_hdmi_cec d
w_hdmi_i2s_audio rk808_regulator rtc_rk808 rk817_charger fan53555 rockchipdrm gpio_rockchip dw_hdmi_qp sdhci_of_dwcmshc dwmac_rk sdhci_pltfm dw_mipi_dsi stmmac_platform sdhci dw_hdmi stmmac
 dw_mmc_rockchip analogix_dp fixed display_connector dw_mmc_pltfm drm_dp_aux_bus pcs_xpcs dwc3 phy_rockchip_inno_usb2 dw_wdt phy_rockchip_naneng_combphy phylink pl330 cqhci drm_display_help
er dw_mmc cec rc_core drm_client_lib mdio_devres drm_dma_helper ehci_platform udc_core of_mdio io_domain ehci_hcd fixed_phy drm_kms_helper ohci_platform fwnode_mdio ohci_hcd libphy rockchip
_dfi drm usbcore i2c_rk3x ulpi mdio_bus usb_common
[   19.954611] CPU: 0 UID: 0 PID: 38 Comm: kworker/u16:3 Not tainted 6.18-rc6-arm64-cknow #1 PREEMPTLAZY  Debian 6.18~rc6-1
[   19.955602] Hardware name: Pine64 Quartz64 Model A (DT)
[   19.956084] Workqueue: events_unbound deferred_probe_work_func
[   19.956649] pstate: a0400009 (NzCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[   19.957284] pc : gpio_device_find+0x58/0x160
[   19.957692] lr : gpio_device_find+0x38/0x160
[   19.958094] sp : ffff80008024b810
[   19.958401] x29: ffff80008024b810 x28: 0000000000000001 x27: ffffde478c23e248
[   19.959063] x26: 0000000000000000 x25: ffffffffffffefff x24: ffffde478b48ba98
[   19.959722] x23: 0000000000000000 x22: ffff80008024b868 x21: ffffde478ce630a8
[   19.960380] x20: ffff0001ff04bee8 x19: fffffffffffffc40 x18: 000000000000000a
[   19.961038] x17: 0000000082a13c1f x16: ffff000100356490 x15: 0000000000000000
[   19.961696] x14: 0000000000000000 x13: ffffde478cdd4838 x12: ffff8000810c0000
[   19.962353] x11: ffff8000812c0000 x10: ffff21b977a41118 x9 : ffffde478b4856c0
[   19.963012] x8 : 0101010101010101 x7 : 000000000000001a x6 : 0000000000000000
[   19.963670] x5 : ffffde478cbed940 x4 : 0000000000000001 x3 : ffff21ba6a799000
[   19.964328] x2 : ffff000100935000 x1 : 0000000100000000 x0 : 0000000000000000
[   19.964988] Call trace:
[   19.965223]  gpio_device_find+0x58/0x160 (P)
[   19.965633]  of_get_named_gpiod_flags+0xf4/0x3a0
[   19.966070]  of_find_gpio+0x90/0x1b0
[   19.966412]  gpiod_find_by_fwnode+0x148/0x208
[   19.966822]  gpiod_find_and_request+0xa0/0x4b0
[   19.967239]  gpiod_get_index+0x60/0x90
[   19.967593]  devm_gpiod_get_index+0x28/0xa0
[   19.967985]  devm_gpiod_get_optional+0x20/0x48
[   19.968400]  rockchip_pcie_probe+0xa4/0x588
[   19.968800]  platform_probe+0x64/0xc0
[   19.969152]  really_probe+0xc8/0x3a0
[   19.969493]  __driver_probe_device+0x84/0x160
[   19.969902]  driver_probe_device+0x48/0x130
[   19.970295]  __device_attach_driver+0xc4/0x178
[   19.970714]  bus_for_each_drv+0x90/0xf8
[   19.971077]  __device_attach+0xa4/0x1c8
[   19.971440]  device_initial_probe+0x1c/0x38
[   19.971833]  bus_probe_device+0xa8/0xc0
[   19.972195]  deferred_probe_work_func+0xb8/0x120
[   19.972627]  process_one_work+0x170/0x3e0
[   19.973008]  worker_thread+0x25c/0x390
[   19.973362]  kthread+0x148/0x240
[   19.973678]  ret_from_fork+0x10/0x20
[   19.974030] Code: d10f0273 a9046bf9 92820019 d503201f (f9401e60)
[   19.974593] ---[ end trace 0000000000000000 ]---
```

it then gets followed by several other call traces, see f.e. here:
https://paste.sr.ht/~diederik/619211a270f27fca4fbf9438ac2bbfcc8401f47d

I also did a test where I removed the PCIe card from the PCIe slot (and
disabled any references to my USB drive), but still got the crash.

But booting the latest 'bisect kernel', thus based on this commit:
636f4618b1cd ("regulator: fixed: fix GPIO descriptor leak on register failure")

gave a different call trace and landed me in the initramfs:

```
...
[    7.764336] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
[    7.764948] rk_gmac-dwmac fe010000.ethernet: IRQ sfty not found
[    7.775498] dwmmc_rockchip fe2c0000.mmc: IDMAC supports 32-bit address mode.
[    7.776396] dwmmc_rockchip fe2c0000.mmc: Using internal DMA controller.
[    7.777013] dwmmc_rockchip fe2c0000.mmc: Version ID is 270a
[    7.777573] dwmmc_rockchip fe2c0000.mmc: DW MMC controller at irq 67,32 bit host data width,256 deep fifo
[    8.031099] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
[    8.032588] rk_gmac-dwmac fe010000.ethernet: IRQ sfty not found
[    8.041752] rockchip-drm display-subsystem: bound fe040000.vop (ops vop2_component_ops [rockchipdrm])
[    8.053961] dwmmc_rockchip fe2c0000.mmc: IDMAC supports 32-bit address mode.
[    8.054694] dwmmc_rockchip fe2c0000.mmc: Using internal DMA controller.
[    8.055310] dwmmc_rockchip fe2c0000.mmc: Version ID is 270a
[    8.055949] dwmmc_rockchip fe2c0000.mmc: DW MMC controller at irq 67,32 bit host data width,256 deep fifo
[    8.177729] fan53555-regulator 0-001c: FAN53555 Option[12] Rev[15] Detected!
[    8.190700] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
[    8.191317] rk_gmac-dwmac fe010000.ethernet: IRQ sfty not found
[    8.247794] rockchip-drm display-subsystem: bound fe040000.vop (ops rockchip_drm_fini [rockchipdrm])
[    8.307337] dwmmc_rockchip fe2c0000.mmc: IDMAC supports 32-bit address mode.
[    8.308195] dwmmc_rockchip fe2c0000.mmc: Using internal DMA controller.
[    8.308820] dwmmc_rockchip fe2c0000.mmc: Version ID is 270a
[    8.309384] dwmmc_rockchip fe2c0000.mmc: DW MMC controller at irq 67,32 bit host data width,256 deep fifo
[    8.513425] rk808-rtc rk808-rtc.4.auto: registered as rtc0
[    8.517302] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
[    8.517922] rk_gmac-dwmac fe010000.ethernet: IRQ sfty not found
[    8.520914] rk808-rtc rk808-rtc.4.auto: setting system clock to 2025-12-04T10:30:22 UTC (1764844222)
[    8.539869] rockchip-drm display-subsystem: bound fe040000.vop (ops rockchip_drm_fini [rockchipdrm])
[    8.554583] dwmmc_rockchip fe2c0000.mmc: IDMAC supports 32-bit address mode.
[    8.555321] dwmmc_rockchip fe2c0000.mmc: Using internal DMA controller.
[    8.556030] dwmmc_rockchip fe2c0000.mmc: Version ID is 270a
[    8.556546] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
[    8.556598] dwmmc_rockchip fe2c0000.mmc: DW MMC controller at irq 67,32 bit host data width,256 deep fifo
[    8.557114] rk_gmac-dwmac fe010000.ethernet: IRQ sfty not found
[    8.559859] rk_gmac-dwmac fe010000.ethernet: clock input or output? (input).
[    8.560546] rk_gmac-dwmac fe010000.ethernet: TX delay(0x30).
[    8.561075] rk_gmac-dwmac fe010000.ethernet: RX delay(0x10).
[    8.561616] rk_gmac-dwmac fe010000.ethernet: integrated PHY? (no).
[    8.562256] rk_gmac-dwmac fe010000.ethernet: clock input from PHY
[    8.569953] rk_gmac-dwmac fe010000.ethernet: init for RGMII
[    8.571077] rk_gmac-dwmac fe010000.ethernet: User ID: 0x30, Synopsys ID: 0x51
[    8.571847] rk_gmac-dwmac fe010000.ethernet:         DWMAC4/5
[    8.572341] rk_gmac-dwmac fe010000.ethernet: DMA HW capability register supported
[    8.573032] rk_gmac-dwmac fe010000.ethernet: RX Checksum Offload Engine supported
[    8.573719] rk_gmac-dwmac fe010000.ethernet: TX Checksum insertion supported
[    8.574362] rk_gmac-dwmac fe010000.ethernet: Wake-Up On Lan supported
[    8.575119] rk_gmac-dwmac fe010000.ethernet: TSO supported
[    8.575687] rk_gmac-dwmac fe010000.ethernet: Enable RX Mitigation via HW Watchdog Timer
[    8.576429] rk_gmac-dwmac fe010000.ethernet: Enabled RFS Flow TC (entries=10)
[    8.577088] rk_gmac-dwmac fe010000.ethernet: TSO feature enabled
[    8.577640] rk_gmac-dwmac fe010000.ethernet: Using 32/32 bits DMA host/device width
[    8.581607] Unable to handle kernel paging request at virtual address 02ff342760bfa000
[    8.582364] Mem abort info:
[    8.582630]   ESR = 0x0000000096000004
[    8.582979]   EC = 0x25: DABT (current EL), IL = 32 bits
[    8.583465]   SET = 0, FnV = 0
[    8.583806]   EA = 0, S1PTW = 0
[    8.584107]   FSC = 0x04: level 0 translation fault
[    8.584556] Data abort info:
[    8.584825]   ISV = 0, ISS = 0x00000004, ISS2 = 0x00000000
[    8.585326]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
[    8.585790]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
[    8.586276] [02ff342760bfa000] address between user and kernel address ranges
[    8.586924] Internal error: Oops: 0000000096000004 [#1]  SMP
[    8.587444] Modules linked in: rk808_regulator(+) rk817_charger rtc_rk808 fan53555 rockchipdrm dw_hdmi_qp dw_mipi_dsi dw_hdmi analogix_dp drm_dp_aux_bus drm_display_helper dwmac_rk gpio_
rockchip stmmac_platform cec fixed display_connector stmmac rc_core drm_client_lib pcs_xpcs sdhci_of_dwcmshc drm_dma_helper phylink sdhci_pltfm dwc3 drm_kms_helper ehci_platform sdhci phy_r
ockchip_inno_usb2 mdio_devres pl330 dw_mmc_rockchip ohci_platform cqhci dw_wdt ehci_hcd ohci_hcd udc_core phy_rockchip_naneng_combphy dw_mmc_pltfm of_mdio rockchip_dfi dw_mmc fixed_phy drm
usbcore fwnode_mdio io_domain ulpi i2c_rk3x libphy usb_common mdio_bus
[    8.592659] CPU: 1 UID: 0 PID: 119 Comm: kworker/u16:4 Not tainted 6.18.0-rc4+ #9 PREEMPTLAZY
[    8.593452] Hardware name: Pine64 Quartz64 Model A (DT)
[    8.593935] Workqueue: events_unbound deferred_probe_work_func
[    8.594499] pstate: 80400009 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[    8.595139] pc : __srcu_read_lock+0x38/0x98
[    8.595539] lr : gpio_device_find+0x6c/0x160
[    8.595950] sp : ffff800080e4b5a0
[    8.596260] x29: ffff800080e4b5a0 x28: 0000000000000001 x27: ffffcbda959ecd50
[    8.596926] x26: 0000000000000000 x25: ffffffffffffefff x24: ffffcbdaa8277338
[    8.597588] x23: 0000000000000000 x22: ffff800080e4b618 x21: ffffcbdaa9671d28
[    8.598248] x20: ffffffffff600448 x19: ffffffffff600030 x18: 000000000000000a
[    8.598908] x17: 0000000072de8d8d x16: ffffcbdaa8276e90 x15: 5f454c4249544150
[    8.599569] x14: 0000000000000000 x13: 3d4d554e51455300 x12: ffffcbdaa99571c0
[    8.600230] x11: 0000000000000000 x10: ffff3426602357e0 x9 : ffffcbdaa8270f94
[    8.600894] x8 : 0101010101010101 x7 : 0000000000736c6c x6 : 0000000000000000
[    8.601558] x5 : 030000000b050000 x4 : 0000000000000001 x3 : ffff342755baa000
[    8.602223] x2 : ffff000104ec2680 x1 : 02ff342760bfa000 x0 : ffffffffff600448
[    8.602885] Call trace:
[    8.603123]  __srcu_read_lock+0x38/0x98 (P)
[    8.603531]  gpio_device_find+0x6c/0x160
[    8.603913]  of_get_named_gpiod_flags+0xf4/0x3a0
[    8.604353]  of_find_gpio+0x90/0x1b0
[    8.604698]  gpiod_find_by_fwnode+0x148/0x208
[    8.605111]  gpiod_find_and_request+0xa0/0x4b0
[    8.605529]  gpiod_get_index+0x60/0x90
[    8.605883]  devm_gpiod_get_index+0x28/0xa0
[    8.606276]  devm_gpiod_get_optional+0x20/0x48
[    8.606691]  stmmac_mdio_reset+0x64/0x180 [stmmac]
[    8.607260]  __mdiobus_register+0x17c/0x460 [libphy]
[    8.607784]  __of_mdiobus_register+0xb8/0x240 [of_mdio]
[    8.608277]  stmmac_mdio_register+0x174/0x600 [stmmac]
[    8.608824]  stmmac_dvr_probe+0xb00/0xf40 [stmmac]
[    8.609315]  rk_gmac_probe+0x598/0x620 [dwmac_rk]
[    8.609773]  platform_probe+0x64/0xc0
[    8.610140]  really_probe+0xc8/0x3a0
[    8.610484]  __driver_probe_device+0x84/0x160
[    8.610896]  driver_probe_device+0x48/0x130
[    8.611292]  __device_attach_driver+0xc4/0x178
[    8.611710]  bus_for_each_drv+0x90/0xf8
[    8.612075]  __device_attach+0xa4/0x1c8
[    8.612439]  device_initial_probe+0x1c/0x38
[    8.612832]  bus_probe_device+0xa8/0xc0
[    8.613196]  deferred_probe_work_func+0xb8/0x120
[    8.613629]  process_one_work+0x170/0x3e0
[    8.614011]  worker_thread+0x25c/0x390
[    8.614365]  kthread+0x148/0x240
[    8.614678]  ret_from_fork+0x10/0x20
[    8.615029] Code: d2800024 aa0503e1 d53cd043 8b030021 (f824003f)
[    8.615592] ---[ end trace 0000000000000000 ]---
[    8.616085] note: kworker/u16:4[119] exited with preempt_count 1
[    8.625817] boost: Bringing 4700000uV into 5000000-5000000uV
Begin: Loading essential drivers ... done.
Begin: Running /scripts/init-premount ... done.
Begin: Mounting root file system ... Begin: Running /scripts/local-top ... done.
Begin: Running /scripts/local-premount ... done.
Begin: Waiting for root file system ... Begin: Running /scripts/local-block ... done.
Begin: Running /scripts/local-block ... done.
Begin: Running /scripts/local-block ... done.
Begin: Running /scripts/local-block ... done.
...
```

If you want/need more info, just ask.

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
