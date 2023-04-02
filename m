Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF392C77B6C
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 09:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nbz7+JM2KeaAdpxGruVz34wHPnzftXsFCg6AB5zCw10=; b=PhAr6/FoZz5LMx
	i6YUpwP7pzuqJ4E0zlNgAxiv++QmAnIbAjmlhRfPfy6UKc5SM8LP4D82/264yH4jpIJUnndsFjmEF
	nl9u5HK22XcoRpOR+8vZ+VQrMgSFq2CaIRQ9n2kDia2E5xyIVKHmInthYCdrYJJp3ikOwqWSTZQnC
	fZvxk0g51Bzh5b9c6syIgdnVOfUGnF4xEIp9C4ptUyCQsHN7Ul6T2Gzm/Xo9exBFO4DUonWxiHi8B
	lcHhwOZ7MS2jS6oEJ7cuD4TefkBkM6W78GkaFxPFD8iD+eBSFbRQwqbbT/Ifz5IfXS8NGyYyC6nbP
	3Ehg8OKeI9/ZIpNf3xgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piuEO-00CAIC-04;
	Sun, 02 Apr 2023 09:42:36 +0000
Received: from smtp-21.smtpout.orange.fr ([80.12.242.21] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piuEC-00CADd-1Q
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Apr 2023 09:42:26 +0000
Received: from pop-os.home ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id iuDzpwm4hwFKBiuEApeDi6; Sun, 02 Apr 2023 11:42:23 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 02 Apr 2023 11:42:23 +0200
X-ME-IP: 86.243.2.178
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	abelvesa@kernel.org,
	peng.fan@nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	heiko@sntech.de
Cc: linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH v2 1/4] clk: Compute masks for fractional_divider clk when needed.
Date: Sun,  2 Apr 2023 11:42:04 +0200
Message-Id: <0fd6357242c974259c9e034c6e28a0391c480bf0.1680423909.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
References: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_024224_825314_54CF7B91 
X-CRM114-Status: GOOD (  10.70  )
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

There is no real need to pre-compute mmask and nmask when handling
fractional_divider clk.

They can be computed when needed.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/clk/clk-fractional-divider.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 6affe3565025..479297763e70 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -71,6 +71,7 @@ static void clk_fd_get_div(struct clk_hw *hw, struct u32_fract *fract)
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
 	unsigned long flags = 0;
 	unsigned long m, n;
+	u32 mmask, nmask;
 	u32 val;
 
 	if (fd->lock)
@@ -85,8 +86,11 @@ static void clk_fd_get_div(struct clk_hw *hw, struct u32_fract *fract)
 	else
 		__release(fd->lock);
 
-	m = (val & fd->mmask) >> fd->mshift;
-	n = (val & fd->nmask) >> fd->nshift;
+	mmask = GENMASK(fd->mwidth - 1, 0) << fd->mshift;
+	nmask = GENMASK(fd->nwidth - 1, 0) << fd->nshift;
+
+	m = (val & mmask) >> fd->mshift;
+	n = (val & nmask) >> fd->nshift;
 
 	if (fd->flags & CLK_FRAC_DIVIDER_ZERO_BASED) {
 		m++;
@@ -166,6 +170,7 @@ static int clk_fd_set_rate(struct clk_hw *hw, unsigned long rate,
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
 	unsigned long flags = 0;
 	unsigned long m, n;
+	u32 mmask, nmask;
 	u32 val;
 
 	rational_best_approximation(rate, parent_rate,
@@ -182,8 +187,11 @@ static int clk_fd_set_rate(struct clk_hw *hw, unsigned long rate,
 	else
 		__acquire(fd->lock);
 
+	mmask = GENMASK(fd->mwidth - 1, 0) << fd->mshift;
+	nmask = GENMASK(fd->nwidth - 1, 0) << fd->nshift;
+
 	val = clk_fd_readl(fd);
-	val &= ~(fd->mmask | fd->nmask);
+	val &= ~(mmask | nmask);
 	val |= (m << fd->mshift) | (n << fd->nshift);
 	clk_fd_writel(fd, val);
 
@@ -260,10 +268,8 @@ struct clk_hw *clk_hw_register_fractional_divider(struct device *dev,
 	fd->reg = reg;
 	fd->mshift = mshift;
 	fd->mwidth = mwidth;
-	fd->mmask = GENMASK(mwidth - 1, 0) << mshift;
 	fd->nshift = nshift;
 	fd->nwidth = nwidth;
-	fd->nmask = GENMASK(nwidth - 1, 0) << nshift;
 	fd->flags = clk_divider_flags;
 	fd->lock = lock;
 	fd->hw.init = &init;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
