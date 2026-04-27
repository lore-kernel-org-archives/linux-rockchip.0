Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA827FF885E
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hFKsUjZ1n3WydMht0F7TSCvNIvXNhjDWYe1Yp37U6Y=; b=f3CUaHKd6FaMut
	XXuVSkA1iIJy3Fw7DXGAN7ETy7nV18+hA+GMhdCoxMSPmHfKdCh1++zxLbWzDCTYYFYu8LXjUuPCW
	arKtxttALchgktRcHeHldT+xk1n1WBl/pSXIWUYiN7GAxQ/vXuzIZdj7Nqhx8N49fJri1aX1zAMxL
	HzXmLxFrNAS8AZShXjuTRm1fFuBhkwcxETAfvYa+Be2OWBzVRtqYYwKXH6IE42Bv7n811RtE+hBUF
	VJ8Oo6xhtRqe+NzjMRJGej1rRJsZnSe/OFj4zGFR9KhmleEVdIFfUM6afoUhyAyrIqBYtOBL93fzl
	TyCSvGlYYi/K4n1kRU3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL05-0000000GtBQ-29jq;
	Mon, 27 Apr 2026 12:23:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKzs-0000000Gt5Q-1nDI;
	Mon, 27 Apr 2026 12:23:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rSa4DsT5RHn/LdrwfWnRLn67k6i1+NfLB6ROGNloCyo=; b=UYzELeGymE59QPg89eSJu+qECD
	6mqObrTNGCj4NLoYQNA/Q3HgnAIl1clnfFZiJPFl0oY0nEbUGEhVoLcoN3QunicBTxe++VzPdizGL
	0x9TFsEhxGeiWwnoUl3FbTezFHK5BmDRCyWeqgHdmHHJ4gD8xgMRHhuO30bLkBPBdA+vhX16dIO5M
	ZgNcNcrWx4/+1SUMSXKoXD/HgOgGLnbg/wQu5JOw+S61WY673LcD6ykWOahZmccHrKM0/bhEelTxg
	bhPrABLndzFbmv+jUZD8d/luHby8kKUAev3Bota6q2DGYrVtrFcb9Uks5r25lJopooGZoTGyL+NDM
	d6OMEPcg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>,
	stable@vger.kernel.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: fix Ethernet PHY on Theobroma PX30 devices
Date: Mon, 27 Apr 2026 14:23:19 +0200
Message-ID: <177729258224.1866089.13274076466595011566.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260421-px30-eth-phy-v2-0-68c375b120fd@cherry.de>
References: <20260421-px30-eth-phy-v2-0-68c375b120fd@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052332_515288_795AD2B0 
X-CRM114-Status: GOOD (  14.50  )
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


On Tue, 21 Apr 2026 11:45:04 +0200, Quentin Schulz wrote:
> This removes the reliance on the bootloader setting up the Ethernet PHY
> for the Linux kernel to be able to use Ethernet.
> 
> This is due to the HW default of the PHY reset line being active and the
> MDIO auto-detection mechanism not controlling a PHY's reset line such
> that we need to hardcode the PHY ID in the compatible property for it to
> be usable by the kernel, regardless of what the bootloader is doing.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: fix Ethernet PHY not found on PX30 Cobra
      commit: 6598ed3586a4b1cc79423666e66b9861631a6c7e
[2/2] arm64: dts: rockchip: fix Ethernet PHY not found on PX30 Ringneck
      commit: ae653cb854f36d1555681ce70ca3d80d0ec73516

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
