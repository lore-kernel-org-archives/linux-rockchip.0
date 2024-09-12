Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 240F4EE57F8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 12:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCqOgzPFV1lQk9q7NtjmYbc9X5jGqkeS1kn4OfpaQ7c=; b=BvGPG4ATkg3l1A
	3BIZgEGGagF1D4GGBOxvIAn0uG6yYhtDgaisf7VR10m4PZWMzkeraRPZ2PWTenY4LVf52la8oeNlO
	TgdYrc8PwPUsRI+t0bxbgDTduGMXDaZrhZ7DJ2FzSsXPiMXKY7zrPTVpm/H0091zMiT9Bgh9RyAgD
	mZqMStnl9hB2xRswQGqNa/gH5X9D0wOtU54o1xsdCNF49bXqG+ThbCjYMy9lQcAyTaE2tEe+ALIzF
	yCi4vQd4Qe9lClZiNLU2bfRTfPVCbplzNvP0f33L9FbxW06LJ70lMb+/QssV/EU/No7/RQH5FOLm2
	oToAQwuK2xqRwGRTBmJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sojAx-0000000D4Ue-3PIF;
	Thu, 12 Sep 2024 12:43:55 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soj9s-0000000D4In-2Ea1;
	Thu, 12 Sep 2024 12:42:50 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id A83C760010;
	Thu, 12 Sep 2024 12:42:37 +0000 (UTC)
From: walker@interruptlabs.ca
To: dsimic@manjaro.org
Cc: airlied@gmail.com,
	andy.yan@rock-chips.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Remove redundant workarounds for firmware loading
Date: Thu, 12 Sep 2024 14:42:34 +0200
Message-ID: <20240912124234.58864-1-walker@interruptlabs.ca>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <9b7a9e9b88ad8c7489ee1b4c70b8751eeb5cf6f9.1720049413.git.dsimic@manjaro.org>
References: <9b7a9e9b88ad8c7489ee1b4c70b8751eeb5cf6f9.1720049413.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-GND-Sasl: walker@interruptlabs.ca
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_054248_876602_BF24BBE6 
X-CRM114-Status: UNSURE (   9.29  )
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

I'm having issues relevant to this thread. I want to build my rtl8723ds driver into the kernel. When fw_loader tries to load rtw8723d_fw.bin, my sysfs isn't mounted. Ideally, I don't have to use the driver as a module, use initramfs, or build the firmware into the kernel. Please let me know if I can do anything to help with the efforts.

[    0.193910] gpio gpiochip1: Static allocation of GPIO base is deprecated, use dynamic allocation.
[    0.196848] sun8i-a33-pinctrl 1c20800.pinctrl: initialized sunXi PIO driver
[    0.197475] sun8i-a33-pinctrl 1c20800.pinctrl: supply vcc-pb not found, using dummy regulator
[    0.198599] printk: legacy console [ttyS0] disabled
[    0.219380] 1c28000.serial: ttyS0 at MMIO 0x1c28000 (irq = 142, base_baud = 1500000) is a U6_16550A
[    0.226341] printk: legacy console [ttyS0] enabled
[    1.158740] sun8i-a33-pinctrl 1c20800.pinctrl: supply vcc-pg not found, using dummy regulator
[    1.189006] 1c28400.serial: ttyS1 at MMIO 0x1c28400 (irq = 143, base_baud = 1500000) is a U6_16550A
[    1.204192] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    1.205291] sun8i-a33-pinctrl 1c20800.pinctrl: supply vcc-pf not found, using dummy regulator
[    1.220994] Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    1.227118] sunxi-mmc 1c10000.mmc: allocated mmc-pwrseq
[    1.231759] Loaded X.509 cert 'wens: 61c038651aabdcf94bd0ac7ff06c7248db18c600'
[    1.239605] clk: Disabling unused clocks
[    1.240126] sunxi-mmc 1c0f000.mmc: Got CD GPIO
[    1.243767] ALSA device list:
[    1.250965]   No soundcards found.
[    1.255508] platform regulatory.0: Direct firmware load for regulatory.db failed with error -2
[    1.257835] sunxi-mmc 1c10000.mmc: initialized, max. request size: 16384 KB
[6 [    1.273169] sunxi-mmc 1c0f000.mmc: initialized, max. request size: 16384 KB
[    1.280679] Waiting for root device /dev/mmcblk1p1...
[    1.285837] sunxi-mmc 1c10000.mmc: card claims to support voltages below defined range
[    1.304227] mmc0: new high speed SDIO card at address 0001
[    1.312047] rtw_8723ds mmc0:0001:1: Direct firmware load for rtw88/rtw8723d_fw.bin failed with error -2
[    1.321568] rtw_8723ds mmc0:0001:1: failed to request firmware
[    1.330441] mmc1: host does not support reading read-only switch, assuming write-enable
[    1.334030] rtw_8723ds mmc0:0001:1: failed to load firmware
[    1.343207] mmc1: new high speed SDHC card at address aaaa
[    1.344048] rtw_8723ds mmc0:0001:1: failed to setup chip efuse info
[    1.351159] mmcblk1: mmc1:aaaa SC32G 29.7 GiB
[    1.355846] rtw_8723ds mmc0:0001:1: failed to setup chip information
[    1.366892] rtw_8723ds mmc0:0001:1: probe with driver rtw_8723ds failed with error -22
[    1.367560]  mmcblk1: p1
[    1.434987] EXT4-fs (mmcblk1p1): orphan cleanup on readonly fs
[    1.443377] EXT4-fs (mmcblk1p1): mounted filesystem c5551457-88e0-47ae-9094-06babfcdeded ro with ordered data mode. Quota mode: disabled.
[    1.455974] VFS: Mounted root (ext4 filesystem) readonly on device 179:1.
[    1.465835] devtmpfs: mounted
[    1.470605] Freeing unused kernel image (initmem) memory: 1024K
[    1.476798] Run /sbin/init as init process
[    1.781051] EXT4-fs (mmcblk1p1): re-mounted c5551457-88e0-47ae-9094-06babfcdeded r/w. Quota mode: disabled.

Thanks,

Walker

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
