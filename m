Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2DD6C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 08:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWBGq2AxL/R7Pk2LI+aWMkPvyvQBFGVxGMluec2RTVo=; b=adx15zBPUG9xaT
	s6NUgoqlmiANY+RhydZfMI2DwjYZdV4gEJPSQzzb20eovnYWaE28ZGsqjY2b2KGpX72JoOXXfhDXL
	d4eAdop20O/gyglqXvlIRdwGVXwBrkYs0GN1P8gCDwmixWgk0DgY44SPzUFNJpHD4DCpR1u2qNRx9
	/6UURPPsH3Rzp0gj2DukEd4SjSF/JNo5xZKc47anKO6r5WlDV02RwcL51wC4nh8sJ/s36d3y4ROMY
	w8bkDiijKhfJugVzxhHK+tit6HJPMmD9V9NboFgbZ4VhWjY5Ng7MePFAg7lkQ+KGsOowpWxES65hN
	bHNir8C04rLJhemV48Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKcEP-009S56-LK; Thu, 17 Feb 2022 08:33:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKcAw-009QDd-CI
 for linux-rockchip@lists.infradead.org; Thu, 17 Feb 2022 08:30:10 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nKcAs-0002EB-A0; Thu, 17 Feb 2022 09:30:02 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nKcAp-00ClTL-VA; Thu, 17 Feb 2022 09:29:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Douglas Anderson <dianders@chromium.org>,
 Yakir Yang <ykk@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v6 13/23] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
Date: Thu, 17 Feb 2022 09:29:44 +0100
Message-Id: <20220217082954.2967889-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220217082954.2967889-1-s.hauer@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_003006_495918_E1C4C0AB 
X-CRM114-Status: GOOD (  10.88  )
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

From: Douglas Anderson <dianders@chromium.org>

Jitter was improved by lowering the MPLL bandwidth to account for high
frequency noise in the rk3288 PLL.  In each case MPLL bandwidth was
lowered only enough to get us a comfortable margin.  We believe that
lowering the bandwidth like this is safe given sufficient testing.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Yakir Yang <ykk@rock-chips.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v3:
    - new patch

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index b48f137334ad6..4f2aff4b512d8 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -181,20 +181,8 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
 	/*      pixelclk    bpp8    bpp10   bpp12 */
 	{
-		40000000,  { 0x0018, 0x0018, 0x0018 },
-	}, {
-		65000000,  { 0x0028, 0x0028, 0x0028 },
-	}, {
-		66000000,  { 0x0038, 0x0038, 0x0038 },
-	}, {
-		74250000,  { 0x0028, 0x0038, 0x0038 },
-	}, {
-		83500000,  { 0x0028, 0x0038, 0x0038 },
-	}, {
-		146250000, { 0x0038, 0x0038, 0x0038 },
-	}, {
-		148500000, { 0x0000, 0x0038, 0x0038 },
-	}, {
+		600000000, { 0x0000, 0x0000, 0x0000 },
+	},  {
 		~0UL,      { 0x0000, 0x0000, 0x0000},
 	}
 };
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
