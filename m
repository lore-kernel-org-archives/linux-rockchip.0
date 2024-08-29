Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D28C4C83F2E
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 15:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzIOFfktTerXDM+AtqK9un1cTknOtJSlDTy82CibAB0=; b=b+T1e/MPoE+a2I
	FB+3v6l8pm3pDYxbLLgGymrYFXp+uvPM6ee575j4whzbNKZZaIEMv/yBmyx6XkuQmxoX5fyhoNS39
	eFALhlx0BvToiSBUjX6FV5RyY929sdZkhVIzdx/R0E6D+FwjQnDU1exU3jmIQBi1fcMnuc52GP0TZ
	GeZHuVG0F2antbBtZOSqKlzjy1WbQYsTKemjmsBFaV6WwNqDVUPzCKxsLET29fm20BJQVD75cD+Xk
	OrsUBrFld4V41AFjezWDpS2GjRG7Ls/N/LLIVA2dVz1/hw5qdH5NpY0AdHLHgDGqqnv/qMSM1K0cT
	OBvvQPJaUjsDE/NCeEMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjgl2-00000002XpG-0IbK;
	Thu, 29 Aug 2024 15:08:20 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjgkF-00000002Xis-16Co
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 15:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724944040;
 bh=ZwTRTuALx98evFLAh9ctTY+ppbSyT4A4mm+kS90lF4g=;
 b=rNSXO3PX1AAU63Yt0mZIrCohDhkC5C9Iz6j1oj2/jJWn2HwgKArI3xrUUxiUNixQLQl1Hc0xU
 XNzEby/5hzWAu/KV0tj/jNadMMJpdq7aH71mDbX/QLWKkpjNhVZpdlNFzOLHklwJFr8RjSrc+9P
 DuQQOsTlyTv3WW8dpT12IdOWXBYDPbCjlkLiVT70dsiP25ou9+T2WnU/zfLoyXV7dACf9IthBTn
 U37qGVGBaMw4AVcT8QiSn6OJPKEUK4Aug9QA7ujZITYVQu0wM27f6bOhGPA3KnI+HhbbNS2EyKD
 7mtX5iyMFcMOT8z7gUSY2RCu+NlGhtlh5Vvhb+jpFXvA==
Message-ID: <2d9da451-a553-4eb6-a0e3-067219de5302@kwiboo.se>
Date: Thu, 29 Aug 2024 17:07:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: Add Hardkernel ODROID-M1S
To: jonesthefox@icloud.com
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <44115846-F7A9-47F5-899B-A8146E20BC31@icloud.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <44115846-F7A9-47F5-899B-A8146E20BC31@icloud.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66d08ea542a3f102c40026f2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_080731_348407_D58E3341 
X-CRM114-Status: GOOD (  22.17  )
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

Hi Patrick,

On 2024-08-29 14:52, jonesthefox@icloud.com wrote:
> Hi Jonas,
> 
> I applied your four patches for the Odroid M1S to the mainline kernel [1], 
> compiled it using the kernel configuration from the Hardkernel Ubuntu 
> Server Image [2], and then attempted to boot into the official Generic 
> AArch64 image on mmcblk0 using a dtb file and an Arch Linux initrd by 
> manually copying the kernel and dtb file to the boot partition and 
> booting manually with the vendor's U-Boot [3]. 
> 
> The booting process was successful!
> 
> However, the network interface is not working. Here is the relevant 
> dmesg output:
> 
> ----
> [ 6.694455] rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
> [ 6.695030] rk_gmac-dwmac fe010000.ethernet: IRQ sfty not found
> [ 6.702424] rk_gmac-dwmac fe010000.ethernet: clock input or output? (input).
> [ 6.703064] rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
> [ 6.704461] rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
> [ 6.705002] rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
> [ 6.709919] rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10
> [ 6.710579] rk_gmac-dwmac fe010000.ethernet: integrated PHY? (no).
> [ 6.711180] rk_gmac-dwmac fe010000.ethernet: clock input from PHY
> [ 6.716749] rk_gmac-dwmac fe010000.ethernet: init for RGMII_ID
> [ 6.718117] rk_gmac-dwmac fe010000.ethernet: User ID: 0x30, Synopsys ID: 0x51
> [ 6.719022] rk_gmac-dwmac fe010000.ethernet: DWMAC4/5
> [ 6.719540] rk_gmac-dwmac fe010000.ethernet: DMA HW capability register supported
> [ 6.720204] rk_gmac-dwmac fe010000.ethernet: RX Checksum Offload Engine supported
> [ 6.720864] rk_gmac-dwmac fe010000.ethernet: TX Checksum insertion supported
> [ 6.721484] rk_gmac-dwmac fe010000.ethernet: Wake-Up On Lan supported
> [ 6.722155] rk_gmac-dwmac fe010000.ethernet: TSO supported
> [ 6.723019] rk_gmac-dwmac fe010000.ethernet: Enable RX Mitigation via HW Watchdog Timer
> [ 6.723761] rk_gmac-dwmac fe010000.ethernet: device MAC address 0e:c7:69:a9:f2:61
> [ 6.724436] rk_gmac-dwmac fe010000.ethernet: Enabled RFS Flow TC (entries=10)
> [ 6.725073] rk_gmac-dwmac fe010000.ethernet: TSO feature enabled
> [ 6.725609] rk_gmac-dwmac fe010000.ethernet: Using 32/32 bits DMA host/device width
> [ 6.998073] rk_gmac-dwmac fe010000.ethernet end0: renamed from eth0
> [ 7.096335] rk_gmac-dwmac fe010000.ethernet end0: Register MEM_TYPE_PAGE_POOL RxQ-0
> [ 7.097618] rk_gmac-dwmac fe010000.ethernet end0: __stmmac_open: Cannot attach to PHY (error: -19)
> ----
> 
> Does anyone have any idea what could be causing this issue, or if there 
> is anything I could try to get the network interface up and running?

This is more than likely an issue with the RTL8211F not being identified
because it needs to be reset before its phy-id can be read. See [4] for
an old topic on similar issue with RTL8211F on other boards.

Mainline U-Boot will reset the Ethernet PHY during boot and this will
help Linux identify it correctly. See [5] for mainline U-Boot for this
board. Will submit U-Boot patches once the DT has reached a tag in the
devicetree-rebasing repo.

Another possible solution (untested) would be to change the Ethernet PHY
compatible to "ethernet-phy-id001c.c916". That may help bootstrap Linux
into being able to reset and identify the PHY.

[4] https://lore.kernel.org/r/47d55aca-bee6-810f-379f-9431649fefa6@kwiboo.se/

[5] https://github.com/Kwiboo/u-boot-rockchip/commit/210dc397c1758c7666fa686a2da59e34010650ba
Branch: rk3xxx-2024.10, target: odroid-m1s-rk3566_defconfig

Regards,
Jonas

> 
> Thanks for your help!
> 
> Best regards,
> Patrick
> 
> [1] Linux Kernel Repository: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> Version: v6.11-rc5-50-g3ec3f5fc4a91
> 
> [2] Semi-official Hardkernel Ubuntu Server Preview Image for Odroid M1S: 
> https://forum.odroid.com/viewtopic.php?t=48230
> 
> [3] U-Boot Version: U-Boot 2017.09-g97ab962d1ed-230719 #tobetter (Oct 27 2023 - 14:54:41 +0900)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
