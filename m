Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBF57C7619A
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 09:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cv2sE9byfGnIVeSk6NueEOQRPQmDuTuJCgqata7wHT0=; b=tYT6yGshXlXXEa
	gBmr9fXXxmJ+f0DEqCtmMHXWu6lvLRpxW67fAJh8Z1lz09WZNFa6KGkfPBB/VvXoChI5w+7WF3SC8
	epYYawDNkgSBg/NkUxywuC2B9P3lB8ShsWdn0w1mSxhF9/NNFT1KUf+IBEwSwD/d62NH5172J92px
	gyyQEw1d3LUhZBv5BlsGypfzrNJJ+QR24x9WJBe0OFfGvyhEzYEAubArSt6S0U874PJeSwRIogA4f
	gcxMUl3rkrDfd1aaFpO+KjnHCDulUWNPZqVhiFpHebgZI4cTfT6ALAKX7lYS2YTwUgJTUStdYXtaf
	ingHDsZ5xFduCiRiMmCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piuEZ-00CAM9-14;
	Sun, 02 Apr 2023 09:42:47 +0000
Received: from smtp-21.smtpout.orange.fr ([80.12.242.21] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piuEH-00CAF2-19
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Apr 2023 09:42:34 +0000
Received: from pop-os.home ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id iuDzpwm4hwFKBiuEFpeDju; Sun, 02 Apr 2023 11:42:28 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 02 Apr 2023 11:42:28 +0200
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
Subject: [PATCH v2 4/4] clk: Remove mmask and nmask fields in struct clk_fractional_divider
Date: Sun,  2 Apr 2023 11:42:07 +0200
Message-Id: <680357e5acb338433bfc94114b65b4a4ce2c99e2.1680423909.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
References: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_024229_983726_1842B51A 
X-CRM114-Status: UNSURE (   8.76  )
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

All users of these fields have been removed.
They are now computed when needed with [mn]shift and [mn]width.

This shrinks the size of struct clk_fractional_divider from 72 to 56 bytes.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 include/linux/clk-provider.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index faad3cdc1e48..eb6930ae550f 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -1154,10 +1154,8 @@ struct clk_fractional_divider {
 	void __iomem	*reg;
 	u8		mshift;
 	u8		mwidth;
-	u32		mmask;
 	u8		nshift;
 	u8		nwidth;
-	u32		nmask;
 	u8		flags;
 	void		(*approximation)(struct clk_hw *hw,
 				unsigned long rate, unsigned long *parent_rate,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
