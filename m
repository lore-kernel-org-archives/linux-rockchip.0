Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9FBAC63684
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 14:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNn8bOYMHmOZXc0SL1CmSD7WHqexXxmqxvq8qRfiR4A=; b=y3oFLiPsBw6CWx
	XFDkTBzPENCIK67VFtEZR2sB7nVK1tJkXSu3fxfV4EeDEVXxx5pjSE92nw2fW/5I4EO7H4n6X9B1l
	Td0QWlXz9mqH1iBO+e+lA/xjccojR9OPSwFaZ2t6gdCtMZN+7WjPw7nuhDZJydLuozc3e+ItymCp2
	9TLtjRq/P6RaYTPI5WhA3HqgIecHTBftF9dYRRjUY/0fcmReSBVDFhpm+JIL2izTO9a5rcN965tPt
	1x/ancgKN+jvb3OE3yb2EezVrNp7RntxNcS1rWnxA+Q3vpRxblhcdHcrlzg+m6o1k+Q26WT2puZIU
	g6PXSJvdtnweB0H8l2LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCjkh-00C4Fk-1U; Wed, 26 Jan 2022 14:58:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjih-00C2uG-An
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 14:56:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjiG-0004tO-5l; Wed, 26 Jan 2022 15:55:56 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjiD-002ktd-4s; Wed, 26 Jan 2022 15:55:53 +0100
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
Subject: [PATCH 05/27] drm/rockchip: dw_hdmi: add regulator support
Date: Wed, 26 Jan 2022 15:55:27 +0100
Message-Id: <20220126145549.617165-6-s.hauer@pengutronix.de>
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
X-CRM114-CacheID: sfid-20220126_065623_396713_FBB0CAF1 
X-CRM114-Status: GOOD (  18.20  )
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

The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
for the HDMI port. add support for these to the driver for boards which
have them supplied by switchable regulators.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 262eef614cb1..3d7c3f6fdf22 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -9,6 +9,7 @@
 #include <linux/platform_device.h>
 #include <linux/phy/phy.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 
 #include <drm/bridge/dw_hdmi.h>
 #include <drm/drm_edid.h>
@@ -76,6 +77,8 @@ struct rockchip_hdmi {
 	struct clk *ref_clk;
 	struct clk *grf_clk;
 	struct dw_hdmi *hdmi;
+	struct regulator *avdd_0v9;
+	struct regulator *avdd_1v8;
 	struct phy *phy;
 };
 
@@ -223,6 +226,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 		return PTR_ERR(hdmi->grf_clk);
 	}
 
+	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
+	if (IS_ERR(hdmi->avdd_0v9))
+		return PTR_ERR(hdmi->avdd_0v9);
+
+	hdmi->avdd_1v8 = devm_regulator_get(hdmi->dev, "avdd-1v8");
+	if (IS_ERR(hdmi->avdd_1v8))
+		return PTR_ERR(hdmi->avdd_1v8);
+
 	return 0;
 }
 
@@ -563,11 +574,23 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	ret = regulator_enable(hdmi->avdd_0v9);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9: %d\n", ret);
+		goto err_avdd_0v9;
+	}
+
+	ret = regulator_enable(hdmi->avdd_1v8);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8: %d\n", ret);
+		goto err_avdd_1v8;
+	}
+
 	ret = clk_prepare_enable(hdmi->ref_clk);
 	if (ret) {
 		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI reference clock: %d\n",
 			      ret);
-		return ret;
+		goto err_clk;
 	}
 
 	if (hdmi->chip_data == &rk3568_chip_data) {
@@ -591,10 +614,19 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	 */
 	if (IS_ERR(hdmi->hdmi)) {
 		ret = PTR_ERR(hdmi->hdmi);
-		drm_encoder_cleanup(encoder);
-		clk_disable_unprepare(hdmi->ref_clk);
+		goto err_bind;
 	}
 
+	return 0;
+
+err_bind:
+	clk_disable_unprepare(hdmi->ref_clk);
+	drm_encoder_cleanup(encoder);
+err_clk:
+	regulator_disable(hdmi->avdd_1v8);
+err_avdd_1v8:
+	regulator_disable(hdmi->avdd_0v9);
+err_avdd_0v9:
 	return ret;
 }
 
@@ -605,6 +637,9 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
 
 	dw_hdmi_unbind(hdmi->hdmi);
 	clk_disable_unprepare(hdmi->ref_clk);
+
+	regulator_disable(hdmi->avdd_1v8);
+	regulator_disable(hdmi->avdd_0v9);
 }
 
 static const struct component_ops dw_hdmi_rockchip_ops = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
