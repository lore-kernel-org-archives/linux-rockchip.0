Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27CA3C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 14:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uQtImnFvAzguTjjqG8zJdsY9WK/zXGteH4RFlvwr73I=; b=uzPWeWADZE+nnB
	rX61nZR2Dwh0L6iYsQ1ol1excpUTgEJz4ePhZ04zD+UsTw8n513f/R8qVzsP/Gn9Wz6eYYUBexC9s
	fWH+BdafdfQpEml1HyMogu2IihReT/lgawOwTxcKX7zJvJ3Wh6a3M+SXOs2PjDDre0QQU8R39RNM9
	4UrkWD0yDCtGQRxWen+K0jUAejduL6Q/c91auKCz5ViB2E1ONzaZZMSePn8iSyMFNRQbOxGFf/9BN
	7adofcr7oe/XIV3fxcVLAktYT+CsghZDorv+IiGiwCu1zUYNDRpQ4IROA2JvWaarZOQxbvlu0zhye
	ys6Yk0P4z4Xbe+DJUPnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzdvV-00000004Yp8-3zRA;
	Wed, 24 Apr 2024 14:48:49 +0000
Received: from smtp-65.smtpout.orange.fr ([80.12.242.65] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzdvR-00000004YmD-21iA;
	Wed, 24 Apr 2024 14:48:47 +0000
Received: from fedora.home ([86.243.17.157])
	by smtp.orange.fr with ESMTPA
	id zdvHrVBipBgCpzdvHrXTtd; Wed, 24 Apr 2024 16:48:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1713970118;
	bh=GysVhjc3jwVBUnjotsdi6hoQgzGItSC3vfYl+wJfA7Y=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=gqigxi7matvvstvzj9pbU7drkXFb1U8gb11FLCkw8HOVd0G1h45y+Dq2DXQJamyrF
	 ieSSch/8E80FXzwJZ/yhnfIAMrvre/kyh4gU3ycrJ43YAprtaXsQ77hWeIfgTk97zb
	 jbBp3JaWVEZaMxmya7lfKxokGCuVV7YsykFGM91vGiQYg/oPvegJSX/M01DrZFc3CG
	 wHgJ+mWFVg8w9Hv1+2YtX/BLwgi8c5/wEKTjg6yqpgjS/oP5jeKo0c4JaDYYgmKa30
	 Zh1p+m5pBoDpf7uayHkroOPxygV0p+pAgkF7LOsdhXrJlVkvcU7TgsHKFVmD3hxtJe
	 3g0pvLpCWWG1g==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Wed, 24 Apr 2024 16:48:38 +0200
X-ME-IP: 86.243.17.157
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] clk: rockchip: Remove some unused fields in struct rockchip_mmc_clock
Date: Wed, 24 Apr 2024 16:48:29 +0200
Message-ID: <410bc0f86c7b9f1c80f8a4e9a2a028a9a6ee1ec0.1713970085.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_074845_954361_1A2BAF49 
X-CRM114-Status: UNSURE (   9.15  )
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

In "struct rockchip_mmc_clock", the 'id' field is unused.
Remove it.

Found with cppcheck, unusedStructMember.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested only.

Apparently, it has never been used. It is not a left-over from a
refactoring.
---
 drivers/clk/rockchip/clk-mmc-phase.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 975454a3dd72..91012078681b 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -14,7 +14,6 @@
 struct rockchip_mmc_clock {
 	struct clk_hw	hw;
 	void __iomem	*reg;
-	int		id;
 	int		shift;
 	int		cached_phase;
 	struct notifier_block clk_rate_change_nb;
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
