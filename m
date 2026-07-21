Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF56C4453B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 17:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9oIkFByuDv1EFjmzVJU2TvreduNdJOsVijKdGBYw9M=; b=fujWW8LVzxKSar
	3LdKzpofEIq2D4z5x2Pfe1UlHAF8AfRSSQwztmADnfTtRgN6y7Mh95DHh49V2o+qo+hxOtQAHDbBm
	vC3CIKTjgRl2Hk28wwtN0D4NQNjPuWqZq1cWWN61C3hpnqQ+N7K3aaP5xVggnTw7Q7yZfimEt5m6b
	z0q+TCgY6h/s7poetrL5FWtmVrtt0ESWk0TlfasJoXQX/MRnpxEcnhPnxHGhZNNbOkt79sG6JyekB
	lgS5Q5Fw8KYO9obqZ3e+hAeR+q3VeSEapW0XXPbTfCsnMWmmsUTyUUPJwSqkg3MnylWwQ1hhc6khS
	Sue1GkLB5kocpclHc6cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmEeC-0000000A6zx-2CwS;
	Tue, 21 Jul 2026 17:52:52 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmEe5-0000000A6rS-02db;
	Tue, 21 Jul 2026 17:52:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784656358;
	bh=rRhowV7M1frOqvzyChhxOIGtQOr1JW2pNEr4gL+rRig=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=f/uV3XANtU0RiyNDuGGZjBCC9D4CZd9b+waf41m6U8sWE2SwgrHJIBYgCGwsJtVV/
	 TSD99THTvk5CIDub/j6WAzfx+Kc4iUzviLXZdfZc6rS64PImnsO/jzkhW1frh+gOuy
	 CJATLSue/l9VSdc9iPNr4jV/ckNLjcmirQqTZLy1v1L+g+97MPp1WXG7DVrKXPuMzx
	 ov6VoSjLBznY57EW1CZzo/Si6i0PXL/rgRAlxNZahbwhqKHm5kjb64G0mKcbCvKG2x
	 5jhpDl2/GedRByk0pgN+Y6O9onoDHJep13g7Q6PMlm+umr9BzV6jkI/Oc8XJffJZhu
	 bBUg/lHVgwo0Q==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 469BA17E1164;
	Tue, 21 Jul 2026 19:52:38 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A063848003A; Tue, 21 Jul 2026 19:52:37 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 21 Jul 2026 19:52:38 +0200
Subject: [PATCH v4 08/10] drm/rockchip: dw_dp: Add runtime PM support
MIME-Version: 1.0
Message-Id: <20260721-synopsys-dw-dp-improvements-v4-8-f0f4a4ede712@collabora.com>
References: <20260721-synopsys-dw-dp-improvements-v4-0-f0f4a4ede712@collabora.com>
In-Reply-To: <20260721-synopsys-dw-dp-improvements-v4-0-f0f4a4ede712@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3685;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=rRhowV7M1frOqvzyChhxOIGtQOr1JW2pNEr4gL+rRig=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpfseUrR0mW5zk0dgMOPDEASl2cFju8CGUvt
 0Dqs52Nf/nWVokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqX7HlAAoJENju1/PI
 O/qaK7gP/AtdLuNAqOkwghJrGAU7vewDOudJHH2PvucjEhJ4UDvoxQxPQjiMPktY4xaCXmxiJ5P
 3XONVe7+O5Xtuo/J6lNWkBBgt0WaodFPr4fPHHGuCpPY6liNhS3h3LUGA6/Xwj1qZuE8FHjXVdZ
 G3mRfKgSYmUmzS/6D9vkWiweDtZe8UIV98kKDscXmaL3gSEUsBkPUIalCLHkHcZw1R0/DZbewIp
 M4VuQ/AsXj+J2wRFVnvDkxiRpo5eRryNZ+M9CoEz+spjA5fMJlkSFCq8vD89sKtFUQwZguGceUV
 I88ABPCUVawVtKdjBqRRStgG+gitFKYkFRUuUg1V1OUeouzPt0CsJb24cAO6tPiPJAM6+gu6ipE
 947VE+XIxgPO4gv7UFDrByub7cwZ0Vb2+uQMNHgxbkqD7KjAhQGyvP5Cie5TX60in4S6ipBG3sR
 iVaTtoIKMjb0E9f58/FStJfgJEqT9C52ozRyP1s1V0yMEX1ZDbxzy8m047EZFOQLNYlMj7+2fxx
 0lNiENjQKBjLgzViJOMYlsAx54q8iiXtYgvkvuKRx104W0078FZYu13IUYC7xc4f7ttskfh/3iz
 Zh6rtDVYontSBJvqvuaoxU84OWqQuJj7esW6hbnKuqYI/nC50O+JD5zIwfLZ2Rfg3GJXia8xUSL
 I63yE4Z1dGO9Y4ImmfDwnqQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_105245_211897_536EBF78 
X-CRM114-Status: GOOD (  15.99  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add support for runtime PM to the Rockchip RK3576/3588 Synopsys
DesignWare DisplayPort driver.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 53 +++++++++++++++++++++++++++++--
 1 file changed, 50 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index 0ecbad24dd4e..d7e1704fd980 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/videodev2.h>
 
@@ -57,6 +58,8 @@ static void dw_dp_rockchip_hpd_sw_sel(void *data, bool force_hpd_from_sw)
 
 	dp->hpd_sel = force_hpd_from_sw;
 
+	ACQUIRE(pm_runtime_active_auto, pm)(dp->dev);
+
 	regmap_write(dp->vo_grf, hpd_reg,
 		     FIELD_PREP_WM16(ROCKCHIP_VO_GRF_DP_SINK_HPD_SEL, dp->hpd_sel));
 }
@@ -70,6 +73,8 @@ static void dw_dp_rockchip_hpd_sw_cfg(void *data, bool hpd)
 
 	dp->hpd_cfg = hpd;
 
+	ACQUIRE(pm_runtime_active_auto, pm)(dp->dev);
+
 	regmap_write(dp->vo_grf, hpd_reg,
 		     FIELD_PREP_WM16(ROCKCHIP_VO_GRF_DP_SINK_HPD_CFG, dp->hpd_cfg));
 }
@@ -169,14 +174,25 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 	if (ret)
 		return ret;
 
+	pm_runtime_use_autosuspend(dev);
+	pm_runtime_set_autosuspend_delay(dev, 500);
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+
 	connector = drm_bridge_connector_init(drm_dev, encoder);
 	if (IS_ERR(connector)) {
-		dw_dp_unbind(dp->base);
-		return dev_err_probe(dev, PTR_ERR(connector),
-				     "Failed to init bridge connector\n");
+		ret = PTR_ERR(connector);
+		dev_err_probe(dev, ret, "Failed to init bridge connector\n");
+		goto error;
 	}
 
 	return 0;
+
+error:
+	pm_runtime_dont_use_autosuspend(dev);
+	pm_runtime_disable(dev);
+	dw_dp_unbind(dp->base);
+	return ret;
 }
 
 static void dw_dp_rockchip_unbind(struct device *dev, struct device *master,
@@ -184,6 +200,8 @@ static void dw_dp_rockchip_unbind(struct device *dev, struct device *master,
 {
 	struct rockchip_dw_dp *dp = dev_get_drvdata(dev);
 
+	pm_runtime_dont_use_autosuspend(dev);
+	pm_runtime_disable(dev);
 	dw_dp_unbind(dp->base);
 }
 
@@ -254,6 +272,34 @@ static void dw_dp_rockchip_remove(struct platform_device *pdev)
 	component_del(&pdev->dev, &dw_dp_rockchip_component_ops);
 }
 
+static int dw_dp_rockchip_runtime_suspend(struct device *dev)
+{
+	struct rockchip_dw_dp *dp = dev_get_drvdata(dev);
+
+	return dw_dp_runtime_suspend(dp->base);
+}
+
+static int dw_dp_rockchip_runtime_resume(struct device *dev)
+{
+	struct rockchip_dw_dp *dp = dev_get_drvdata(dev);
+	u32 hpd_reg = dp->pdata->hpd_reg[dp->id];
+	int ret;
+
+	ret = dw_dp_runtime_resume(dp->base);
+	if (ret)
+		return ret;
+
+	regmap_write(dp->vo_grf, hpd_reg,
+		     FIELD_PREP_WM16(ROCKCHIP_VO_GRF_DP_SINK_HPD_SEL, dp->hpd_sel) |
+		     FIELD_PREP_WM16(ROCKCHIP_VO_GRF_DP_SINK_HPD_CFG, dp->hpd_cfg));
+
+	return 0;
+}
+
+static const struct dev_pm_ops dw_dp_pm_ops = {
+	RUNTIME_PM_OPS(dw_dp_rockchip_runtime_suspend, dw_dp_rockchip_runtime_resume, NULL)
+};
+
 static const struct rockchip_dw_dp_plat_data rk3588_dp_plat_data = {
 	.num_ctrls = 2,
 	.ctrl_ids = {0xfde50000, 0xfde60000},
@@ -288,5 +334,6 @@ struct platform_driver dw_dp_driver = {
 	.driver = {
 		.name = "dw-dp",
 		.of_match_table = dw_dp_of_match,
+		.pm = pm_ptr(&dw_dp_pm_ops),
 	},
 };

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
