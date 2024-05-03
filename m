Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5E32C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6uwaV+e8y/ybNkRlil4Cqlk1/jYSflkRUP6ktC9d1O8=; b=2fxP1sTemam2Ik
	OuAXqda7FfR/JSt7xpHSD4027hr87rhon3edddTRJxExWfhRYgiD8P/gDwXHtHOn/L/UZ9wMvh0rG
	DVClQt/0whun2XCBnNesrAhx5xGk9qm3zJy3gsGh0cYDpGfkI7GoMTgDyAQJ9EzM6biGuznbV+MeO
	vethRFkmg7eQSq2zsJuNThqfXGIZ0DpCn4nS/WU7gfGtEEx7HWZ2fosxnoKQZ8gF3sjbsIM8UJ0NT
	JptGf3yusC/Z9MLr4u/ITCwDHPRP/BLY2Rw98Qibflcdl0U2l/0Sao4irYLImPruCWRwi8DXoqeVw
	/2kpWpWN0I9gt+j8siyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uun-0000000H3hH-3Tg9;
	Fri, 03 May 2024 15:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uuk-0000000H3fW-3SVp
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:33:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uuf-0000tI-OL; Fri, 03 May 2024 17:33:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uuf-00FjKU-7x; Fri, 03 May 2024 17:33:29 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	patchwork-lst@pengutronix.de
Subject: [PATCH] clk: rockchip: rk3568: Add PLL rate for 724 MHz
Date: Fri,  3 May 2024 17:33:29 +0200
Message-Id: <20240503153329.3906030-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_083334_898423_6E932030 
X-CRM114-Status: UNSURE (   8.25  )
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

This rate allows to provide a low-jitter 72,4 MHz pixelclock
for a custom eDP panel from the VPLL.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 8cb21d10beca..292f2ef32958 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -64,6 +64,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(912000000, 1, 76, 2, 1, 1, 0),
 	RK3036_PLL_RATE(816000000, 1, 68, 2, 1, 1, 0),
 	RK3036_PLL_RATE(800000000, 3, 200, 2, 1, 1, 0),
+	RK3036_PLL_RATE(724000000, 3, 181, 2, 1, 1, 0),
 	RK3036_PLL_RATE(700000000, 3, 350, 4, 1, 1, 0),
 	RK3036_PLL_RATE(696000000, 1, 116, 4, 1, 1, 0),
 	RK3036_PLL_RATE(600000000, 1, 100, 4, 1, 1, 0),
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
