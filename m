Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94EA0C021B3
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 16:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dAhLoGuMXtJTdMgEk4ZjZIkkVy3vq1VGDRS5f7cP4Bg=; b=dr1x/zhhDPpC6x
	eQPuABM/9NCB2RFXpQKXnkSeA0pPzw3B4d0JbdeiTjl0PH/TuZTt7dQm4lFy9kgRLFVhAvvKAPGiV
	NG5D/FZy9C2KeZL1cTUj2V6Gm+X2nYN1tX8/kecwvONlmi6kLrByE+OVhzE7Vutn+ItOd0ylR5u0h
	587vQgLl8LtSR13WaDju6iaYdOvjXJZk0QHCE9SVR3idIFYSm6LWiO94miOAFDSwqZpvqTvmB7ZCF
	IFherDaFnIaLgSKSrhPfhrbHYZM2lpd7sRAe4UArAxJbeMOnSsm5jNQywO553uffAE6quDctLWNR1
	qT7RT/aovBoxMHopI1jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9dv-00000001vk1-1XFk;
	Thu, 20 Feb 2025 16:43:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9cP-00000001vEw-2fzd;
	Thu, 20 Feb 2025 16:41:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9F7425C5EAB;
	Thu, 20 Feb 2025 16:41:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49F95C4CED1;
	Thu, 20 Feb 2025 16:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740069704;
	bh=HyXshobuVqA0RqPRtuVurArIvohbfETQanVpkFcibTg=;
	h=From:To:Cc:Subject:Date:From;
	b=NJNJYCpaUum1F7pXgvxKAzTey+/y/cSpzoDM/1W7Qu5koLF4xu5BI9n4sa6HJrJ2p
	 gTuBaxgIbeEIo4Iw53vdKou1gUzUOt7Pi8aPAvlifYsVd4zFObR5+XPDUi+e5Gke7y
	 f7lqiUbf6rjVoBOlQvZxwRXgoWv1FobuJruVyuN+NSNAx62rUj0LWxpiy9mOZ7Do/h
	 MFM4NdiPOX3m0jOTCqbL8SxY45FE/byY60Y5VWf7/lzFYQIILdEk0nG05icel81aWu
	 ak0P+K0yHJt+VNYirpTV1eKknp3F9X3zw9nwgs0cn4sqJbEIuMxAlFieytPCCiq77q
	 iOjR9ZiBdHF6A==
Received: by wens.tw (Postfix, from userid 1000)
	id 984635FB8F; Fri, 21 Feb 2025 00:41:41 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	stable@vger.kernel.org
Subject: [PATCH RESEND net-next] net: stmmac: dwmac-rk: Provide FIFO sizes for DWMAC 1000
Date: Fri, 21 Feb 2025 00:40:31 +0800
Message-Id: <20250220164031.1886057-1-wens@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_084145_731503_0AF35734 
X-CRM114-Status: GOOD (  16.46  )
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

From: Chen-Yu Tsai <wens@csie.org>

The DWMAC 1000 DMA capabilities register does not provide actual
FIFO sizes, nor does the driver really care. If they are not
provided via some other means, the driver will work fine, only
disallowing changing the MTU setting.

The recent commit 8865d22656b4 ("net: stmmac: Specify hardware
capability value when FIFO size isn't specified") changed this by
requiring the FIFO sizes to be provided, breaking devices that were
working just fine.

Provide the FIFO sizes through the driver's platform data, to not
only fix the breakage, but also enable MTU changes. The FIFO sizes
are confirmed to be the same across RK3288, RK3328, RK3399 and PX30,
based on their respective manuals. It is likely that Rockchip
synthesized their DWMAC 1000 with the same parameters on all their
chips that have it.

Fixes: eaf4fac47807 ("net: stmmac: Do not accept invalid MTU values")
Fixes: 8865d22656b4 ("net: stmmac: Specify hardware capability value when FIFO size isn't specified")
Cc: <stable@vger.kernel.org>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
(Resending to net-next instead of netdev.)

The commit that broke things has already been reverted in netdev.

The reason for stable inclusion is not to fix the device breakage
(which only broke in v6.14-rc1), but to provide the values so that MTU
changes can work in older kernels.

 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index a4dc89e23a68..71a4c4967467 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1966,8 +1966,11 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	/* If the stmmac is not already selected as gmac4,
 	 * then make sure we fallback to gmac.
 	 */
-	if (!plat_dat->has_gmac4)
+	if (!plat_dat->has_gmac4) {
 		plat_dat->has_gmac = true;
+		plat_dat->rx_fifo_size = 4096;
+		plat_dat->tx_fifo_size = 2048;
+	}
 	plat_dat->fix_mac_speed = rk_fix_speed;
 
 	plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
