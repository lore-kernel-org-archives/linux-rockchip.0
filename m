Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59FDBC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 08:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S44eKKcbmZ20bVLLR/XqrYGs3hFVSTrQT8X/vPeo6c0=; b=HIp9ZapA1+3qAe
	3wqE+yfCTaWLr3/48euS1NzGSgAnml/0il/WTvkw8ECmIs+Nigy9dgIxnAHL0cjctEO/Tgx81u13K
	cafmh4uaTBfDClgVEhBukQg5nQOzlGYRAQSux15tVO9+f1GmfjT8TIw9v9BQv9pZjLNOQCmqdvE9n
	ucVWpF4wdD4iIp+uhIjLSuUigmm6ubWvNhPN51hnEXuyovE5oSxnF/q66DgQXo5pPVKq0wtgcDWG2
	Xr+jMcNUwbBWmD1AiH8htSmjIm6mTHW8eYSijarwmR7biUa4Bqk3XxSWeSuqQJZPejjhPwO6irYx2
	QLE0vuKSJLUiHr5kvHcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSatN-00Ff2b-Kd; Fri, 11 Mar 2022 08:44:57 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSaic-00FZMr-OR
 for linux-rockchip@lists.infradead.org; Fri, 11 Mar 2022 08:33:57 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nSaiI-0000aM-FN; Fri, 11 Mar 2022 09:33:30 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nSaiE-0040gh-Gt; Fri, 11 Mar 2022 09:33:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Subject: [PATCH v8 08/24] drm/rockchip: dw_hdmi: add regulator support
Date: Fri, 11 Mar 2022 09:33:07 +0100
Message-Id: <20220311083323.887372-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220311083323.887372-1-s.hauer@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_003350_823552_065ACA64 
X-CRM114-Status: GOOD (  17.18  )
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
Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index b64cc62c7b5af..fe4f9556239ac 100644
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
 
@@ -226,6 +229,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
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
 
@@ -566,11 +577,23 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
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
@@ -594,10 +617,19 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
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
 
@@ -608,6 +640,9 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
 
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
