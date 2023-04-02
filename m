Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73ACEC76196
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 09:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnxbAzK/8/pukYY1zch3cuZmwQy3pqiIT97vzYIbR4c=; b=eGX8fbFc87B1SM
	22ekx0oELZkWGl5ZkJUqriJpO0XllTqFXxDaWVNVZbOeKo0179IP2zvz3wAjq6VdA+9aI6YHYzTQT
	zM5tBhlexYLCJQqAfiZ3PcZkhON05Lv1kyi9a/0DLmxAjKoAdvDon3K8xwCMY+NkrRfQpotr+ec9f
	irB/oAq9NXMRMmaaJ/bfOh5FhUlWgvlKAwj1oMtme6YbDLqaMLyiQnw89k+fpVTTqIU5yPzt8qzpx
	n/sLQDpmVzoen8bD82DWpHS0JJGYlVyu2cNoML2s85AqKjKx6NgU7RX/N+4binSSExn1fK7UhtMc+
	kS1H6AQAyCCTF/dqmS7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piuEX-00CALN-21;
	Sun, 02 Apr 2023 09:42:45 +0000
Received: from smtp-22.smtpout.orange.fr ([80.12.242.22] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piuEE-00CAEH-20
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Apr 2023 09:42:31 +0000
Received: from pop-os.home ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id iuDzpwm4hwFKBiuEDpeDiY; Sun, 02 Apr 2023 11:42:25 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 02 Apr 2023 11:42:25 +0200
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
Subject: [PATCH v2 2/4] clk: imx: Remove values for mmask and nmask in struct clk_fractional_divider
Date: Sun,  2 Apr 2023 11:42:05 +0200
Message-Id: <187a2266c3a034a593a151d6e5e6b21118043b5d.1680423909.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
References: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_024229_992210_C87B084A 
X-CRM114-Status: UNSURE (   9.73  )
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

Now that fractional_divider clk computes mmask and nmask when needed, there
is no more need to provide them explicitly anymore.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/clk/imx/clk-composite-7ulp.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index 4eedd45dbaa8..e208ddc51133 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -19,10 +19,8 @@
 #define PCG_CGC_SHIFT	30
 #define PCG_FRAC_SHIFT	3
 #define PCG_FRAC_WIDTH	1
-#define PCG_FRAC_MASK	BIT(3)
 #define PCG_PCD_SHIFT	0
 #define PCG_PCD_WIDTH	3
-#define PCG_PCD_MASK	0x7
 
 #define SW_RST		BIT(28)
 
@@ -102,10 +100,8 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 		fd->reg = reg;
 		fd->mshift = PCG_FRAC_SHIFT;
 		fd->mwidth = PCG_FRAC_WIDTH;
-		fd->mmask  = PCG_FRAC_MASK;
 		fd->nshift = PCG_PCD_SHIFT;
 		fd->nwidth = PCG_PCD_WIDTH;
-		fd->nmask = PCG_PCD_MASK;
 		fd->flags = CLK_FRAC_DIVIDER_ZERO_BASED;
 		if (has_swrst)
 			fd->lock = &imx_ccm_lock;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
