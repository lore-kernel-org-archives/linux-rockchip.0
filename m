Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D56B0CD3424
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Apr 2026 22:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpOM4REkCSQqCeQ+0knqcxENzQ+VP0CNV1l7uMbJoMM=; b=4zA32RDq2XBKn0
	Jb0k4mx97jRHnbRJV8V3E9un7ci9Ym7OVAzPYQm5gF0ZVAu3z4qPatONO28RnbORNtiSgp9qDkduu
	8wQaXG0X74DX+J0NBgp/jVBqRDV2TzqwWKGypp2OJvApkmr6DDjMIXvKuiMyKlvDTQeSWn2uUqjSP
	iNX4KZCOvJ3sfqZWgAUc6g8alTlWbBz6fgjUrAHBdRLcYrj0LmbS/CrAFXSsCi8ccssSHWkr+dCJR
	Ncpk+6dCD/x/vHnDmX5V2nahXFnc7bkBaMyU2bug9fvuRYJC9WOUALKLwSwdT2L6XqCdLMfqf6Txk
	ywulZppD9+OuZ+inw1qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIZkl-000000062M0-3KAL;
	Thu, 30 Apr 2026 22:21:03 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIZkT-0000000622J-457j;
	Thu, 30 Apr 2026 22:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777587638;
	bh=KyEBP+kk/lyiVl3ntsIO5pL+OJQ3jTSjF+KktcrQhPY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=C9Qa+FScllmx4u3vDE/OI2MhSI96ZMy0rOCAAH8Jq6USV+/PjkpGnQviSx1hgJTiY
	 /YhKj4GQw1HH+8Llwr/FMVj9baPR77vxKLH+U4e8ER0C0hXYlK5Oe73vxRNRbrx+qZ
	 6yg3VMPMiE1Z2/u/Gn+d8lFCc/uXmvLHjerbr4QWoVQsUHvACG55oll/gt6v9VLb0x
	 IRjFkdF9/viiXF6QrqOqmyMFk/2U3CeL2VRzquiTtX5IdK3HLRrlHnn2ooH75SJadt
	 bVvgfYxAPYXZGaosBym08d7D9ChqAnO4yztERqh4XITOX00abc3xGhnCjynTD7ReCt
	 c/PY3pgnekfzg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CDD9017E15A5;
	Fri,  1 May 2026 00:20:37 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1D62648004E; Fri, 01 May 2026 00:20:37 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 01 May 2026 00:20:37 +0200
Subject: [PATCH v2 10/12] drm/rockchip: dw_dp: Add runtime PM support
MIME-Version: 1.0
Message-Id: <20260501-synopsys-dw-dp-improvements-v2-10-d7e7f6bac77f@collabora.com>
References: <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
In-Reply-To: <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3069;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=KyEBP+kk/lyiVl3ntsIO5pL+OJQ3jTSjF+KktcrQhPY=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGnz1bQmGZUmmuaHVFXAPTGWTE7qcJDZ+640X
 nMmqgNtE37l+YkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJp89W0AAoJENju1/PI
 O/qaOXQP/jSakJDMAmUBr1ylCpE3O1yAzbu6uf9pGA4DvmM/J88q7BO7SpGS0YxCJH9tg4SpKHO
 SLZzmPsgW4EpG0tJfCKk64o2jbuVdXUeZvfhDgmCJ6kAEtMdb8YkB0d88K9Y4aDAmzRn8MWC6Pe
 60a0Y58PPryOoORid8YZWl0E6VTM7/30aY7v+BwnRB0B4+XbAhhAxidNpW2AoSheW1EUWDAU+v7
 BvCoBpQ21ygQva/tWBTVq5EWF27KAiNxLROBFyR0XPPljT5j2Ef+QJn7ruXHG3vrzeaXUisvGui
 jrITyHCbEhiELGbaPmlubfZOJJ9mUkJJB7KU6h6ljqCzrvhbh+eWAr0ykL2Y0Ut4qA+g3AB9UwN
 GgFl8XeWQcbMwJ/pPcIdocx4pcHnRyLk3zYXoZEPTP/SagvmVp2A5oQ1ZFmBfkyB1rudf2UpFI/
 fjPpx88/h6Ltmz5/YbEw/Ss8xZbKAPcX5v2o4tgS72x93ufdWhSYAik9neYeGolHgKeqnLCpgqN
 2u7Blr/1O4zPkafwiF/Iwb6jWnYWKbu4R6u8CD3FZKFgUQU9CbNfBz2NTw2QvH/5Wg4cs2Vhh41
 Lfx+EWM4BNebr7lfjTGR6pumJkPOBDTUnIskXUVe+D6zpSqgyjNFmZD5jvrQUl17jWu4cCY0xfB
 Ufj6aBo4hvZIqLJblZ/YusA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_152046_324979_DE1C1341 
X-CRM114-Status: GOOD (  14.52  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add support for runtime PM to the Rockchip RK3576/3588 Synopsys
DesignWare DisplayPort driver.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 40 +++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index 5750cf887981..015d39d48648 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/videodev2.h>
 #include <linux/regmap.h>
 
@@ -58,6 +59,8 @@ static void dw_dp_rockchip_hpd_sw_sel(void *data, bool force_hpd_from_sw)
 
 	dp->hpd_sel = force_hpd_from_sw;
 
+	ACQUIRE(pm_runtime_active_auto, pm)(dp->dev);
+
 	regmap_write(dp->vo_grf, hpd_reg,
 		     FIELD_PREP_WM16_CONST(ROCKCHIP_VO_GRF_DP_SINK_HPD_SEL, dp->hpd_sel));
 }
@@ -71,6 +74,8 @@ static void dw_dp_rockchip_hpd_sw_cfg(void *data, bool hpd)
 
 	dp->hpd_cfg = hpd;
 
+	ACQUIRE(pm_runtime_active_auto, pm)(dp->dev);
+
 	regmap_write(dp->vo_grf, hpd_reg,
 		     FIELD_PREP_WM16_CONST(ROCKCHIP_VO_GRF_DP_SINK_HPD_CFG, dp->hpd_cfg));
 }
@@ -213,6 +218,12 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 	if (IS_ERR(dp->base))
 		return PTR_ERR(dp->base);
 
+	pm_runtime_use_autosuspend(dev);
+	pm_runtime_set_autosuspend_delay(dev, 500);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to enable runtime PM\n");
+
 	connector = drm_bridge_connector_init(drm_dev, encoder);
 	if (IS_ERR(connector)) {
 		dw_dp_unbind(dp->base);
@@ -246,6 +257,34 @@ static void dw_dp_remove(struct platform_device *pdev)
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
+		     FIELD_PREP_WM16_CONST(ROCKCHIP_VO_GRF_DP_SINK_HPD_SEL, dp->hpd_sel) |
+		     FIELD_PREP_WM16_CONST(ROCKCHIP_VO_GRF_DP_SINK_HPD_CFG, dp->hpd_cfg));
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
@@ -280,5 +319,6 @@ struct platform_driver dw_dp_driver = {
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
