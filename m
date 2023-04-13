Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D647C77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 06:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dohUZ2E+TYn8NlhXEP0jeFCsKfgXSWOPSEI01JdvwRw=; b=xs1YQ2GK3bknSF
	p2N7Shcc4rXV0vEjXFzaPn0sRMrmKFdApF5ZbNoGZFBXzI5H3bNHR83/HNJnvBdzSMlhlEdBbyU2h
	7Zf7JOUySy8C3scblSWuct4yNNl68ssv//u1JXPbfKCcIZp27v1sMFyLi1aNWk5srvvY6SreSMk15
	3IKEOZQeAu3vcIpE1R3u+tdCrmoUrEMsB088yL0572YAgjlOqFzVGwAsdaJLqQM3vidPGjFVvob0E
	9Vcsvc8EWn5OQwiiN0fqplL7gakEX42A5Ec8OsEm6vVUOucHLAbeAk4dW69JNEqltJP6Fm240CeXi
	+cMmZnQ+XE0INBJwIrLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmq26-0057Iq-0k;
	Thu, 13 Apr 2023 06:02:10 +0000
Received: from mail.thinkpuffy.com ([198.13.45.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmq23-0057Hp-2i
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 06:02:09 +0000
Received: from localhost (www.thinkpuffy.com [local])
	by www.thinkpuffy.com (OpenSMTPD) with ESMTPA id 9ac5df68
	for <linux-rockchip@lists.infradead.org>;
	Thu, 13 Apr 2023 14:55:25 +0900 (JST)
Date: Thu, 13 Apr 2023 14:55:25 +0900
From: Doug Brewer <brewer.doug@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: Problems about NIC, PCIe and usb on RK3568 EVB
Message-ID: <ZDeZTWWIW2I4H7Sc@www.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_230208_086279_76129C56 
X-CRM114-Status: UNSURE (   5.07  )
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

I tested Linux kernel 6.3-rc6 on my rk3568 evaluation board, it seems there
are problems with Ethernet, PCIe and usb devices.

First, NICs doesn't work.

rk_gmac-dwmac fe010000.ethernet: IRQ eth_lpi not found
rk_gmac-dwmac fe010000.ethernet: no regulator found
rk_gmac-dwmac fe010000.ethernet: clock input or output? (output).
rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10
rk_gmac-dwmac fe010000.ethernet: integrated PHY? (no).
rk_gmac-dwmac fe010000.ethernet: init for RGMII_ID
rk_gmac-dwmac fe010000.ethernet: User ID: 0x30, Synopsys ID: 0x51
rk_gmac-dwmac fe010000.ethernet:         DWMAC4/5
rk_gmac-dwmac fe010000.ethernet: DMA HW capability register suppd
rk_gmac-dwmac fe010000.ethernet: RX Checksum Offload Engine suppd
rk_gmac-dwmac fe010000.ethernet: TX Checksum insertion supported
rk_gmac-dwmac fe010000.ethernet: Wake-Up On Lan supported
rk_gmac-dwmac fe010000.ethernet: TSO supported
rk_gmac-dwmac fe010000.ethernet: Enable RX Mitigation via HW Watr
rk_gmac-dwmac fe010000.ethernet: Enabled RFS Flow TC (entries=10)
rk_gmac-dwmac fe010000.ethernet: TSO feature enabled
rk_gmac-dwmac fe010000.ethernet: Using 32/32 bits DMA host/devich
mdio_bus stmmac-1: MDIO device at address 0 is missing.
rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found 
rk_gmac-dwmac fe2a0000.ethernet: no regulator found
rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
rk_gmac-dwmac fe2a0000.ethernet: Can not read property: tx_delay.
rk_gmac-dwmac fe2a0000.ethernet: set tx_delay to 0x30
rk_gmac-dwmac fe2a0000.ethernet: Can not read property: rx_delay.
rk_gmac-dwmac fe2a0000.ethernet: set rx_delay to 0x10
rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
rk_gmac-dwmac fe2a0000.ethernet: init for RGMII_ID
rk_gmac-dwmac fe2a0000.ethernet: User ID: 0x30, Synopsys ID: 0x51
rk_gmac-dwmac fe2a0000.ethernet:         DWMAC4/5
rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability register suppd
rk_gmac-dwmac fe2a0000.ethernet: RX Checksum Offload Engine suppd
rk_gmac-dwmac fe2a0000.ethernet: TX Checksum insertion supported
rk_gmac-dwmac fe2a0000.ethernet: Wake-Up On Lan supported
rk_gmac-dwmac fe2a0000.ethernet: TSO supported
rk_gmac-dwmac fe2a0000.ethernet: Enable RX Mitigation via HW Watr
rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
rk_gmac-dwmac fe2a0000.ethernet: TSO feature enabled
rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA host/devich
mdio_bus stmmac-0: MDIO device at address 0 is missing.
rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POO0
rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot atta)

Second, running 'lspci' and 'lsusb' doesn't see any devices on PCIe and USB.
I guess the device tree might be updated.  Anyone has idea how to fix it?
Thanks.

- Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
