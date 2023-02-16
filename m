Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D39CFC636CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Feb 2023 10:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liaOT6bZloG/qEqn3fsWDR3+0XMq9ri6L8ACfIj9oaY=; b=nHk9wtDPD295PZ
	0ptDwmoZP+wWCtkRqESHfe9UWf7Wu49rFCj1ZQDLtEHXch4QkHUW5leJ3Mj9xfnei0NxtoRMluBAx
	8QGV+95u/vWOTeJ0BUv0jNKDhNsOTAJ+njWo+UwOqAaUoSgiILNRADPCBne9hgceBDBGZJeuat0IC
	gPU5rTTPP+Yg8FgM57vrKR6dVy+riGihdcvDR/Tg5jYgU04sOUOrmYhEKviUGo9XMMbRmVR8AK/jU
	gUIIBefxO4cVFk7uRTtotS72nv42Spn1qm3Op7MrjhBmtFLFaAsvy2Usy6MYnQapcfs9hTEeGoPIp
	nbOHD4eMdZ//mFPRNnUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbSG-009YGm-D3; Thu, 16 Feb 2023 10:25:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbSC-009YDX-Ql
	for linux-rockchip@lists.infradead.org; Thu, 16 Feb 2023 10:25:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbRd-0001Qk-Od; Thu, 16 Feb 2023 11:24:53 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbRY-005Kiy-N5; Thu, 16 Feb 2023 11:24:49 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbRY-002Sfn-RS; Thu, 16 Feb 2023 11:24:48 +0100
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
Subject: [PATCH v6 4/4] drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
Date: Thu, 16 Feb 2023 11:24:47 +0100
Message-Id: <20230216102447.582905-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230216102447.582905-1-s.hauer@pengutronix.de>
References: <20230216102447.582905-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_022528_911736_D15BA2D3 
X-CRM114-Status: GOOD (  12.72  )
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

Notes:
    Changes since v3:
    - only check for rate when clk != NULL
    
    Changes since v2:
    - new patch

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index feba6b9becd6c..293dcf0f05931 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -260,6 +260,13 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 	bool exact_match = hdmi->plat_data->phy_force_vendor;
 	int i;
 
+	if (hdmi->ref_clk) {
+		int rpclk = clk_round_rate(hdmi->ref_clk, pclk);
+
+		if (abs(rpclk - pclk) > pclk / 1000)
+			return MODE_NOCLOCK;
+	}
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
