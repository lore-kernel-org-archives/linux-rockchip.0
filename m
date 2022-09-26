Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C44BC6FA8E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 08:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ijZWyQ6J/pbQLfOfyIo+ckgIa3o2ctXAA4wFJ8ZX+k=; b=ZxTVzXz4M2plEL
	x9/DFbq/LowT0GZy8RvvgAInv4LnTLHHJ4iw57rcqgebZeu4iClbbUcuqftn/SmYXEZnmcU8N5OO3
	WlVp4i5TIjqzXRgIo2JM9I6M/49zT6F1tJG9EtKNYf/DHVWpOwm+G2s9+m7m8d+ZtmGuduQK4TyrP
	RinnNaJLGWHJGZeRiIOagiHVqzeM7FRvGCU/eJwfmNRftJgjNU/+PnQMiOBTxSNJ/5dBO4WFTYeVp
	PZVgMJfW8+kXJKBL/3pE5oDd38FIGrz45UmT2ebBN0sGbmwq01ohiMJ9sD9ULeIk/zrJvXWYC6+SW
	qil08nZRJhdQk1InUgpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocj6m-002z3e-2A; Mon, 26 Sep 2022 08:04:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocj6h-002z0t-MS
	for linux-rockchip@lists.infradead.org; Mon, 26 Sep 2022 08:04:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ocj6Y-0007T3-7P; Mon, 26 Sep 2022 10:04:42 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ocj6W-002zK0-8F; Mon, 26 Sep 2022 10:04:38 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ocj6T-0016vj-Sj; Mon, 26 Sep 2022 10:04:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 2/2] drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
Date: Mon, 26 Sep 2022 10:04:35 +0200
Message-Id: <20220926080435.259617-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220926080435.259617-1-s.hauer@pengutronix.de>
References: <20220926080435.259617-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_010451_761318_B8FD0BAF 
X-CRM114-Status: GOOD (  11.93  )
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

This adds the PLL/phy settings to support higher resolutions like 4k@30.
The values were taken from the Rockchip downstream Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 6a387780562b1..cf86a2936c4d9 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -161,6 +161,12 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 			{ 0x214c, 0x0003},
 			{ 0x4064, 0x0003}
 		},
+	}, {
+		340000000, {
+			{ 0x0052, 0x0003 },
+			{ 0x214d, 0x0003 },
+			{ 0x4065, 0x0003 },
+		},
 	}, {
 		~0UL, {
 			{ 0x00a0, 0x000a },
@@ -186,6 +192,8 @@ static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
 		146250000, { 0x0038, 0x0038, 0x0038 },
 	}, {
 		148500000, { 0x0000, 0x0038, 0x0038 },
+	}, {
+		600000000, { 0x0000, 0x0000, 0x0000 },
 	}, {
 		~0UL,      { 0x0000, 0x0000, 0x0000},
 	}
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
