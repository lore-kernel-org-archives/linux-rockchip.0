Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE1AC77B6C
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 07:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gQuo9Rc6swbmTlxEklD51vrHt1vAUW1wy1vTkIzDnc0=; b=tMyOkVZ6lUt2v4Z83fMbZfu1RT
	WDBdvZVDBKrDTYTMWlm84aURe/bS8BNfogBRElvfHfUcF7sfuAgWjLph5oYRkSSHQWMet1gc6upC3
	XVjbFbo+X8wl3Lb1blXQq8AY+1QiMDqG9Kxqv2mckiCF4S65OyNriXZwx/3KDMul5oIrvKJMrAVKv
	aPVgWX7p1/uiqpiznVb7EWny1pUwYYWcQqiPKjhh+iBviYmqSpcXAeln3AswGOvdhnmsfRIMfUQsm
	igtC4U8/S0f9LVxKF7YuSQfDG9+kPOPmA8hVja5hH8inuExgUlVEybTaKWU86yPU4MycJGeDF/nO6
	xm9pSa0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmrPi-005Hvq-2T;
	Thu, 13 Apr 2023 07:30:38 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmqSL-005ARJ-1A
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 06:29:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pmqSG-0002kg-7u
	for linux-rockchip@lists.infradead.org; Thu, 13 Apr 2023 08:29:12 +0200
Message-ID: <57c88a52-c051-4297-22e0-2188cc65a058@pengutronix.de>
Date: Thu, 13 Apr 2023 08:28:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Problems about NIC, PCIe and usb on RK3568 EVB
To: linux-rockchip@lists.infradead.org
References: <ZDeZTWWIW2I4H7Sc@www.com>
Content-Language: en-US, de-DE
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <ZDeZTWWIW2I4H7Sc@www.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_232917_397798_F6FFBEBB 
X-CRM114-Status: GOOD (  19.01  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Doug,

On 4/13/23 07:55, Doug Brewer wrote:
> Hi,
> 
> I tested Linux kernel 6.3-rc6 on my rk3568 evaluation board, it seems there
> are problems with Ethernet, PCIe and usb devices.
> 
> First, NICs doesn't work.
> 
> rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
> rk_gmac-dwmac fe010000.ethernet: no regulator found
> rk_gmac-dwmac fe010000.ethernet: clock input or output? (output).
> rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
> rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
> rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
> rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10
> rk_gmac-dwmac fe010000.ethernet: integrated PHY? (no).
> rk_gmac-dwmac fe010000.ethernet: init for RGMII_ID
> rk_gmac-dwmac fe010000.ethernet: User ID: 0x30, Synopsys ID: 0x51
> rk_gmac-dwmac fe010000.ethernet:         DWMAC4/5
> rk_gmac-dwmac fe010000.ethernet: DMA HW capability register suppd
> rk_gmac-dwmac fe010000.ethernet: RX Checksum Offload Engine suppd
> rk_gmac-dwmac fe010000.ethernet: TX Checksum insertion supported
> rk_gmac-dwmac fe010000.ethernet: Wake-Up On Lan supported
> rk_gmac-dwmac fe010000.ethernet: TSO supported
> rk_gmac-dwmac fe010000.ethernet: Enable RX Mitigation via HW Watr
> rk_gmac-dwmac fe010000.ethernet: Enabled RFS Flow TC (entries=10)
> rk_gmac-dwmac fe010000.ethernet: TSO feature enabled
> rk_gmac-dwmac fe010000.ethernet: Using 32/32 bits DMA host/devich
> mdio_bus stmmac-1: MDIO device at address 0 is missing.
> rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
> rk_gmac-dwmac fe2a0000.ethernet: no regulator found
> rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
> rk_gmac-dwmac fe2a0000.ethernet: Can not read property: tx_delay.
> rk_gmac-dwmac fe2a0000.ethernet: set tx_delay to 0x30
> rk_gmac-dwmac fe2a0000.ethernet: Can not read property: rx_delay.
> rk_gmac-dwmac fe2a0000.ethernet: set rx_delay to 0x10
> rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
> rk_gmac-dwmac fe2a0000.ethernet: init for RGMII_ID
> rk_gmac-dwmac fe2a0000.ethernet: User ID: 0x30, Synopsys ID: 0x51
> rk_gmac-dwmac fe2a0000.ethernet:         DWMAC4/5
> rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability register suppd
> rk_gmac-dwmac fe2a0000.ethernet: RX Checksum Offload Engine suppd
> rk_gmac-dwmac fe2a0000.ethernet: TX Checksum insertion supported
> rk_gmac-dwmac fe2a0000.ethernet: Wake-Up On Lan supported
> rk_gmac-dwmac fe2a0000.ethernet: TSO supported
> rk_gmac-dwmac fe2a0000.ethernet: Enable RX Mitigation via HW Watr
> rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
> rk_gmac-dwmac fe2a0000.ethernet: TSO feature enabled
> rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA host/devich
> mdio_bus stmmac-0: MDIO device at address 0 is missing.
> rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POO0
> rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot atta)
> 
> Second, running 'lspci' and 'lsusb' doesn't see any devices on PCIe and USB.
> I guess the device tree might be updated.  Anyone has idea how to fix it?
> Thanks.
> 
> - Doug
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

I've seen similar errors on other boards when the phy is not powered or 
does not have a clock supplied. Could you check your DT if there is any 
diffs in the phy-supply or any gpio-Hog pulling the enable of a 
regulator that might enable the phy? Also you could check if you have 
all the required regulator drivers available and probed.

Best regards
Johannes

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
