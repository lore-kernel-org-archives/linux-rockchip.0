Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF286C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Apr 2022 14:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=is0MXu/6INDLP0otDVssyVGkA6XeuWXsw+anWb8Whec=; b=BXXRcjHumTbc6g
	9jX/RzplSq3z7cPxFsKeI+7pGG4yVXsXXDQQIaRi1uGyjImOcajgCycc1sXwjuDCw5Z7iLnlOatSp
	u1ORpS1b2mMKX0cHB3rqV4EkDUTCrhI7JOrEtKzRGAB6zphfRoLAhsg0IvnFXHxxXKRejWlJ4+9nX
	4O3wBRzG1s8eGHdGfjp247W2Si1+f9S1tSYPTsMdr+IXT7bJvA+p20zd39vE1MVTzky2qZg0O+jzJ
	dlBxtiiridvlf4+mqL07x30etfPtEimeiiqaWBK4vJdnAEMV7snOuxEWunpHj2w9LJiCiR1vrIPV3
	iNnZ5rsasIB0TYxVk6Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhBGl-009OBB-1i; Wed, 20 Apr 2022 14:25:23 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhBGP-009O4x-M1; Wed, 20 Apr 2022 14:25:03 +0000
Received: from melee.fritz.box (unknown [77.244.183.192])
 (Authenticated sender: luca.ceresoli@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPA id A9FA940005;
 Wed, 20 Apr 2022 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1650464695;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=psA6iM1Q1qYNvi/shbhgNJN0YpWI69oasIrc52R//8o=;
 b=A/LejFrbDQbZww+XzPBLIe1NZDFAmF0mLv3HgI/lp8NT9R+TGZAq+lZtkrvy2cVXA39zQc
 4ZfzRm3N9yVtW14/5VowhX8K073TIwMENBpfPLOsFhyEOrrD5VKpMg6rBG4+TLbUChvkGo
 xl4OMwPCKahsIL0gPeTj/gKMcGQpyybc6RlDmAXVILD7HbcmB+EBYyL9V2Uc/nOfKWJIrV
 BLEwV+qUHyY+X7vgaC4cgnB0YQgJY8ikxtdFEGWXZ/oDP6OLQXjGyaGDKsyCa2rCV24OGp
 XQxOaq4I5ZkwyQiz9ePqRoF5TqPjzciiuYqrIXuxUnzp1q6KVb/NnH5hr5LBYQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: linux-gpio@vger.kernel.org
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jianqun Xu <jay.xu@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] pinctrl: rockchip: fix RK3308 pinmux bits
Date: Wed, 20 Apr 2022 16:24:31 +0200
Message-Id: <20220420142432.248565-1-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_072502_219453_8A7590A5 
X-CRM114-Status: GOOD (  12.98  )
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

Some of the pinmuxing bits described in rk3308_mux_recalced_data are wrong,
pointing to non-existing registers.

Fix the entire table.

Also add a comment in front of each entry with the same string that appears
in the datasheet to make the table easier to compare with the docs.

This fix has been tested on real hardware for the gpio3b3_sel entry.

Fixes: 7825aeb7b208 ("pinctrl: rockchip: add rk3308 SoC support")
Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 45 ++++++++++++++++++++----------
 1 file changed, 30 insertions(+), 15 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index a1b598b86aa9..65fa305b5f59 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -457,95 +457,110 @@ static  struct rockchip_mux_recalced_data rk3128_mux_recalced_data[] = {
 
 static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
 	{
+		/* gpio1b6_sel */
 		.num = 1,
 		.pin = 14,
 		.reg = 0x28,
 		.bit = 12,
 		.mask = 0xf
 	}, {
+		/* gpio1b7_sel */
 		.num = 1,
 		.pin = 15,
 		.reg = 0x2c,
 		.bit = 0,
 		.mask = 0x3
 	}, {
+		/* gpio1c2_sel */
 		.num = 1,
 		.pin = 18,
 		.reg = 0x30,
 		.bit = 4,
 		.mask = 0xf
 	}, {
+		/* gpio1c3_sel */
 		.num = 1,
 		.pin = 19,
 		.reg = 0x30,
 		.bit = 8,
 		.mask = 0xf
 	}, {
+		/* gpio1c4_sel */
 		.num = 1,
 		.pin = 20,
 		.reg = 0x30,
 		.bit = 12,
 		.mask = 0xf
 	}, {
+		/* gpio1c5_sel */
 		.num = 1,
 		.pin = 21,
 		.reg = 0x34,
 		.bit = 0,
 		.mask = 0xf
 	}, {
+		/* gpio1c6_sel */
 		.num = 1,
 		.pin = 22,
 		.reg = 0x34,
 		.bit = 4,
 		.mask = 0xf
 	}, {
+		/* gpio1c7_sel */
 		.num = 1,
 		.pin = 23,
 		.reg = 0x34,
 		.bit = 8,
 		.mask = 0xf
 	}, {
+		/* gpio3b4_sel */
 		.num = 3,
 		.pin = 12,
 		.reg = 0x68,
 		.bit = 8,
 		.mask = 0xf
 	}, {
+		/* gpio3b5_sel */
 		.num = 3,
 		.pin = 13,
 		.reg = 0x68,
 		.bit = 12,
 		.mask = 0xf
 	}, {
+		/* gpio2a2_sel */
 		.num = 2,
 		.pin = 2,
-		.reg = 0x608,
-		.bit = 0,
-		.mask = 0x7
+		.reg = 0x40,
+		.bit = 4,
+		.mask = 0x3
 	}, {
+		/* gpio2a3_sel */
 		.num = 2,
 		.pin = 3,
-		.reg = 0x608,
-		.bit = 4,
-		.mask = 0x7
+		.reg = 0x40,
+		.bit = 6,
+		.mask = 0x3
 	}, {
+		/* gpio2c0_sel */
 		.num = 2,
 		.pin = 16,
-		.reg = 0x610,
-		.bit = 8,
-		.mask = 0x7
+		.reg = 0x50,
+		.bit = 0,
+		.mask = 0x3
 	}, {
+		/* gpio3b2_sel */
 		.num = 3,
 		.pin = 10,
-		.reg = 0x610,
-		.bit = 0,
-		.mask = 0x7
+		.reg = 0x68,
+		.bit = 4,
+		.mask = 0x3
 	}, {
+		/* gpio3b3_sel */
 		.num = 3,
 		.pin = 11,
-		.reg = 0x610,
-		.bit = 4,
-		.mask = 0x7
+		.reg = 0x68,
+		.bit = 6,
+		.mask = 0x3
 	},
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
