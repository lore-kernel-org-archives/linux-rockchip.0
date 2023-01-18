Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1F07C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 13:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLCTEcdaOgqKpeAJP5BxT0mYFwsmJlsGKoJywvVzdJ0=; b=NsTEuDQWTDc5ra
	XKZ/jqquPCiTfbrlFuOz77uqRGr9HcLJ6v4Kdwn6KGmNIb0GonHubEVFzoYOgNI4nqXasYmgSa8Jk
	aeqh7tpAMY0LWKYEeEENocY9GoCPiGxvPRd9I+tNLw+tNibxAEaPukB3zIiWHsPdMeyYcL+HpeThY
	rkywbDZ92amvT37wuOwqViey1nvweZoH9cvmFzItkmjnxg+1qHXs3Rqq6RcLTeYjLmD0ybWCOxA9g
	gviydm8jAMqjAKQoV1HUjkTNKOW9boC2NE/wYTi8OBgs9d/HPYKUxkgLLN4Qw5YbRuVP1/lxzzl2b
	ujZ2nCmNdfjLLW3Z2puQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI8Og-0017Kg-E7; Wed, 18 Jan 2023 13:22:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI8Od-0017JB-2e
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 13:22:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pI8OS-0002f7-3t; Wed, 18 Jan 2023 14:22:20 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pI8OP-006v7d-Ar; Wed, 18 Jan 2023 14:22:17 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pI8OO-00D1m6-Df; Wed, 18 Jan 2023 14:22:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de,
	Robin Murphy <robin.murphy@arm.com>,
	Dan Johansen <strit@manjaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v3 2/3] drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
Date: Wed, 18 Jan 2023 14:22:12 +0100
Message-Id: <20230118132213.2911418-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230118132213.2911418-1-s.hauer@pengutronix.de>
References: <20230118132213.2911418-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_052231_131748_60B472A5 
X-CRM114-Status: GOOD (  12.30  )
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

Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
Link: https://lore.kernel.org/r/20220926080435.259617-3-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v2:
    - Use correct mpll_cfg values, previously the 420 values were used

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 7d8bf292fedce..feba6b9becd6c 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -161,6 +161,12 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 			{ 0x214c, 0x0003},
 			{ 0x4064, 0x0003}
 		},
+	}, {
+		340000000, {
+			{ 0x0040, 0x0003 },
+			{ 0x3b4c, 0x0003 },
+			{ 0x5a64, 0x0003 },
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
