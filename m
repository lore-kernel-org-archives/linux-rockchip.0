Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 326C0C2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 15:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aogZ702I+hnAAdmYVfIQtIlI572xaddq+XLWVuD4IP0=; b=ytx8CMLv9wpBAY
	/2Dnw6kXUJUBvOcbNBgOgL/+tIws9K5UwbOzh84lL/UPdakPL3FiQ0H3J8hFfFDAMkk2JdbEVUmSg
	AlYMgw2IH7AMOtKMscKHL+YRXePBt8ePWMO6N1pa4uK6Nwd5lkEyyGcmUKC0YqqZMmMIVz+CJ4qwM
	wI9CAMrtA2ACqw5JUtfjssSHDRBwhh5DPEzF2vmU1K233lvRut4x4uxx4qXIGS7zN3BJvbaC+mp7s
	SRTuo9lXVN24sitK7m/W9R645rwyaNgDZK6WDlYnTADU/yU4L+5nDdnleHU1aDk+TgZi8qGDxjryZ
	YC//N/4dU4EtfCtRoVrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCk1E-00CCBt-Qc; Wed, 26 Jan 2022 15:15:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjks-00C4Ns-M5
 for linux-rockchip@bombadil.infradead.org; Wed, 26 Jan 2022 14:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=idjWlIzjcoAgmRB+UVliyrJoUz9hIUrOlzb8WJFbu2M=; b=pfkc9trDESRYzdWRzNVdms81HL
 cOP0btCOzNbaMnkRxFS8GhAd9vNK2EnPwLORgVuYx4HvVyK+l5DWo6oSHCm4i0RYl14BZNLFn6Dz9
 mZxxnMic2t2wrA86LYJDjzXB3vQcOmCcIo50sHJk4vvSuRkDG+eKm/dQ+JYGTS0+MM9dKKpzKpd2d
 cr2Fko2fABdoCfT6IZ8+zlSnmIgz7L419OvZzeODROmrVaALYI8l5S/vsRUaHW6ehrOu+Vg3tyDhW
 9v3UlyWgeZnphHY5XPNokZbn1btPv/ju07ySDBVffSsFzknOIBjfT27EY9UOV8KKqdzRBKHme9V5A
 7R8tMEpg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkj-003piV-Lm
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 14:58:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjkb-0005fL-RY; Wed, 26 Jan 2022 15:58:21 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjka-002l6a-Jp; Wed, 26 Jan 2022 15:58:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 11/27] clk: rockchip: rk3568: Add more PLL rates
Date: Wed, 26 Jan 2022 15:55:33 +0100
Message-Id: <20220126145549.617165-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_145829_838066_D8C55667 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This adds a few more PLL settings needed for some standard resolutions:

297MHz    3840x2160-30.00
241.5MHz  2560x1440-59.95
135MHz    1280x1024-75.02
119MHz    1680x1050-59.88
108MHz    1280x1024-60.02
 78.75MHz 1024x768-75.03

Changes since v3:
- new patch

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3568.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 69a9e8069a48..9d889fc46811 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -71,11 +71,17 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(500000000, 1, 125, 6, 1, 1, 0),
 	RK3036_PLL_RATE(408000000, 1, 68, 2, 2, 1, 0),
 	RK3036_PLL_RATE(312000000, 1, 78, 6, 1, 1, 0),
+	RK3036_PLL_RATE(297000000, 2, 99, 4, 1, 1, 0),
+	RK3036_PLL_RATE(241500000, 2, 161, 4, 2, 1, 0),
 	RK3036_PLL_RATE(216000000, 1, 72, 4, 2, 1, 0),
 	RK3036_PLL_RATE(200000000, 1, 100, 3, 4, 1, 0),
 	RK3036_PLL_RATE(148500000, 1, 99, 4, 4, 1, 0),
+	RK3036_PLL_RATE(135000000, 2, 45, 4, 1, 1, 0),
+	RK3036_PLL_RATE(119000000, 3, 119, 4, 2, 1, 0),
+	RK3036_PLL_RATE(108000000, 2, 45, 5, 1, 1, 0),
 	RK3036_PLL_RATE(100000000, 1, 150, 6, 6, 1, 0),
 	RK3036_PLL_RATE(96000000, 1, 96, 6, 4, 1, 0),
+	RK3036_PLL_RATE(78750000, 1, 96, 6, 4, 1, 0),
 	RK3036_PLL_RATE(74250000, 2, 99, 4, 4, 1, 0),
 	{ /* sentinel */ },
 };
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
