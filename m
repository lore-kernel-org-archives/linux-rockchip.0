Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45318C63797
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Jan 2023 14:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSxNDixHf1t3KYfGH4UWMhkGScA46CvSv7a8mERQj/Q=; b=fRm1L2auSSom5T
	oOcsjOfV7NLOksthMo35tloXCVJbZcoVGQPmzXtp8OKrvKje9YinucbWOQVky3xWyd42qE7aw4otD
	ycWlIIm65XBPZxqOBSKsjzDoz0NObqorlYMjCq37wsIrOvKTxUeaAHtyd31vylz5x/LQx1sylfY81
	DfGSYO1qr8FJ22G1Fa8Mji6IsYBg9dh7CxXvXktCGbsBzycBD15pIKY0G2GU6INicb8NMSDV7bMyy
	zclLEhyWt7XJF8LqNol0MhRm5xcEKjiSiCs1TF0DoEU+8tynPncDNlQVOP83AeQsqPXgq0C6SEk1c
	g0nZOmdEzQZIE5FwSh5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4IB-007Tiy-Di; Sun, 15 Jan 2023 14:47:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4Hl-007TbZ-GX; Sun, 15 Jan 2023 14:47:03 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pH4He-0007bK-3g; Sun, 15 Jan 2023 15:46:54 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jensen Huang <jensenhuang@friendlyarm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add missing #interrupt-cells to rk356x pcie2x1
Date: Sun, 15 Jan 2023 15:46:50 +0100
Message-Id: <167379396101.36245.10680301028456952223.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113064457.7105-1-jensenhuang@friendlyarm.com>
References: <20230113064457.7105-1-jensenhuang@friendlyarm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230115_064701_583710_8848525C 
X-CRM114-Status: GOOD (  11.06  )
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

On Fri, 13 Jan 2023 14:44:57 +0800, Jensen Huang wrote:
> This fixes the following issue:
>   pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add missing #interrupt-cells to rk356x pcie2x1
      commit: a323e6b5737bb6e3d3946369b97099abb7dde695

Moved the new line to a better position inside the node
(similar to the pcie3 on rk3568)

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
