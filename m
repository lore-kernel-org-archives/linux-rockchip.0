Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEC29C5DF87
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2026 10:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7O8OYgg8GFRvifc51TGd0f2j5D/cqw3V/u3vmvoC0ps=; b=5EQD6GFUNKk0ZA
	l025ffjul6CC0ge43PopwnF2+NsFA2TbcRsHza81PkgW7Ugkvjn4NUdNG9TZPEKcYdi7Vh11AtyRc
	ib5ij9KL9luTIEbgOkk+PaRRXX6NokolMes4B2fbPnDkcAboDCw8p7Cwlmulq4sZd8rnJJbQWigUy
	bqbshVCjbZL3AfVSMCCsoN5XYr/zAtc300/AFMOm/9EFGECyGn00kACw/vcP42pBmyP3SEPtRM/pf
	dMobaY36BtqbTd6z2cyJnXkJDEB6Mc9dPLOyXvoJw2OudlkwEX4vE2Vzj4qnKMUw94DL5+scO0oCD
	eaNnzbdky9HxjRbu/YNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxMBC-0000000D2Ld-1R8A;
	Fri, 21 Aug 2026 10:08:54 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxMB6-0000000D2HG-0yOu;
	Fri, 21 Aug 2026 10:08:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 036E04020C;
	Fri, 21 Aug 2026 10:08:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BEB81F00A3A;
	Fri, 21 Aug 2026 10:08:45 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/2] phy: freescale: fsl-samsung-hdmi: Make sure clk_init_data is fully initialized
Date: Fri, 21 Aug 2026 12:08:39 +0200
Message-ID: <3c3be1c676eea5d32102864c57643b1573bc0db0.1787240165.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1787240165.git.geert+renesas@glider.be>
References: <cover.1787240165.git.geert+renesas@glider.be>
MIME-Version: 1.0
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

The clk_init_data structure contains several mutually-exclusive members
for different methods to specify the possible parents of a clock,
prompting drivers to initialize only the members they need.  However,
not initializing all members may cause subtle issues, which are only
exposed when CONFIG_INIT_STACK_ALL_PATTERN or CONFIG_INIT_STACK_NONE is
enabled.

Make sure all members are fully initialized, to avoid such bugs, and to
prevent future breakage when converting drivers to a different method
for specifying the parents.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Compile-tested only.
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 0f25d81de61bb67f..ded142020e725f58 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -610,7 +610,7 @@ static int phy_clk_register(struct fsl_samsung_hdmi_phy *phy)
 {
 	struct device *dev = phy->dev;
 	struct device_node *np = dev->of_node;
-	struct clk_init_data init;
+	struct clk_init_data init = {};
 	const char *parent_name;
 	struct clk *phyclk;
 	int ret;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
