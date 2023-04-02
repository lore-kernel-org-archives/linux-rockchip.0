Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 747FBC76196
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 09:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRZ/+fD2geYrmHper2Kyu6q7ChfznuRcvbNvb8fndQI=; b=b879sKv/C9u2Z/
	N0PIvMtKTIM3zZsB5L81KFcXsrnJ8GU5xOUjIYs11ljebMTNxovZpampVYKjbjmtJKWgkQRvorEW6
	Zp7p5FqzUzuv5Ar1ZnEd7e5TSzdbznjtyhk6d9eI/rTlBfbd203zA21diVwnTI9bbsFzcnUo/Yqi4
	GuMxM9uFgtnWAvpDQmHVtKkwT6Fy8CNMh31lJP1YLC/0Q8DwkE+stgaaz/3AIJ1hb3/4JJtJNSyTX
	g0zdyXqoFDAfkqjl3PTpPcw06obFNBz3FtRueOzmRS0z2sVtlL0yGahXPvD/dyfYxtFzJS+83MNXz
	0bsiTHPCNEVBgHmvP3Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piuEV-00CAKc-1X;
	Sun, 02 Apr 2023 09:42:43 +0000
Received: from smtp-21.smtpout.orange.fr ([80.12.242.21] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piuEF-00CAEY-2c
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Apr 2023 09:42:34 +0000
Received: from pop-os.home ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id iuDzpwm4hwFKBiuEEpeDj1; Sun, 02 Apr 2023 11:42:26 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 02 Apr 2023 11:42:26 +0200
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
Subject: [PATCH v2 3/4] clk: rockchip: Remove values for mmask and nmask in struct clk_fractional_divider
Date: Sun,  2 Apr 2023 11:42:06 +0200
Message-Id: <58e1950566e40e2fbb31004baee57a164ca6a390.1680423909.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
References: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_024230_007669_FDBCEE0C 
X-CRM114-Status: UNSURE (   8.55  )
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
 drivers/clk/rockchip/clk.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index a8646794575a..4059d9365ae6 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -244,10 +244,8 @@ static struct clk *rockchip_clk_register_frac_branch(
 	div->reg = base + muxdiv_offset;
 	div->mshift = 16;
 	div->mwidth = 16;
-	div->mmask = GENMASK(div->mwidth - 1, 0) << div->mshift;
 	div->nshift = 0;
 	div->nwidth = 16;
-	div->nmask = GENMASK(div->nwidth - 1, 0) << div->nshift;
 	div->lock = lock;
 	div->approximation = rockchip_fractional_approximation;
 	div_ops = &clk_fractional_divider_ops;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
