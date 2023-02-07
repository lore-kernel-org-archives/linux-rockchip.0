Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C650C636CD
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Feb 2023 08:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4c4gQKfkHlLOJKVLp93Cn24bSg9ntZ6arOu3+xcytA=; b=vFuGT9op/7KWeg
	jyOV+YKh8R7VbtS4McKDYzBIYI8QJrfuvb/hOgZxNOLYQCkm+mLcR4wdio7hLmRdLOTEiw9SP/gLL
	MLzvu2+6pYozWAmqlYdL3bNabp0L/3Mq0NG1+0SYYivXoCO4q5J1ySyv4xlG7phzgrfklmMrfykWW
	SgjeGw2Fp90iHqFDs+WKXQb7xVGDnyePhqiy7XnsY118FmD8teAf19EE3wkVW7kd/jJw1Y9spcy0f
	4V7bcBSxAQhP4exq0YgiwrFrJrTvQXmv66+RbuoB/9bWc+hFnLysmm4ehZL9Nye228iPA/fPClrZ6
	jIPbvLcBsfpY4Io8rzzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPJc5-00BJpB-FW; Tue, 07 Feb 2023 08:46:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPJbu-00BJjt-Dq
	for linux-rockchip@lists.infradead.org; Tue, 07 Feb 2023 08:45:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPJbj-0002Pp-5t; Tue, 07 Feb 2023 09:45:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPJbc-003FF6-UV; Tue, 07 Feb 2023 09:45:38 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPJbd-004UQ6-EF; Tue, 07 Feb 2023 09:45:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de,
	Robin Murphy <robin.murphy@arm.com>,
	Dan Johansen <strit@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: [PATCH v4 4/4] drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
Date: Tue,  7 Feb 2023 09:44:52 +0100
Message-Id: <20230207084452.1069656-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230207084452.1069656-1-s.hauer@pengutronix.de>
References: <20230207084452.1069656-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_004554_494696_78F6ADA1 
X-CRM114-Status: GOOD (  14.01  )
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

The Rockchip PLL drivers are currently table based and support only
the most common pixelclocks. Discard all modes we cannot achieve
at all. Normally the desired pixelclocks have an exact match in the
PLL driver, nevertheless allow for a 0.1% error just in case.

Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
Tested-by: Dan Johansen <strit@manjaro.org>
Link: https://lore.kernel.org/r/20230118132213.2911418-4-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index feba6b9becd6c..725952811752b 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -256,10 +256,14 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 {
 	struct rockchip_hdmi *hdmi = data;
 	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
-	int pclk = mode->clock * 1000;
+	int rpclk, pclk = mode->clock * 1000;
 	bool exact_match = hdmi->plat_data->phy_force_vendor;
 	int i;
 
+	rpclk = clk_round_rate(hdmi->ref_clk, pclk);
+	if (abs(rpclk - pclk) > pclk / 1000)
+		return MODE_NOCLOCK;
+
 	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
 		/*
 		 * For vendor specific phys force an exact match of the pixelclock
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
