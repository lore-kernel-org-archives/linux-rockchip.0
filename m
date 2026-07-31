Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2C94C54F54
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 14:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcR7SdRg+4dBYuZM7a9jc1pyaGnelUNOSxtlCyIvqfg=; b=Ntmq5bf14feNyM
	77Rf/L1tttGFjiJmCeYowa6VV64esXIjeiOEK46OE44juhlvQpM74W96fIWtE7ZXda+Akdl+72DBS
	ZxkgCjaoCva33ACD49633hIPI2mFdkwxEqVW0b8x1VmXGuJ+0ft3e/WzeTUWO86TYYcaNw9g+zNdi
	1tjBdc1APMYeRRWuajoei/zVdSxV0a/ZWj26H5hjzY+fPepjtlF7/3E2ErhpVUQf/6k3COqI5hQa7
	zJfuFvOHQrKyl8fjKAoOc7G52uuEDK2/RqvHm+8TpiE9Z1CnhDcobx/xS05TVW9ryRFJURMcMrSOB
	QAHnxs2EKXIdUs001s8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpoSx-0000000CnXO-2y6s;
	Fri, 31 Jul 2026 14:44:03 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpoRQ-0000000ClpP-1sRJ;
	Fri, 31 Jul 2026 14:42:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785508930;
	bh=8QSlSuWPiGUI9AoT3cgCttdenutXBFd4174AAf6FMNQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RpW6soXFZ0C9d03s4tSeUnq6+zSO5T4qevnJFNf5yd2UOeCXf2+/jserYjLYkpOop
	 Fep0wM3IneQ/36dT0LWWzAE0/6v74igOcF2atNqXQhCMljcAr4qhiTMfidl31fHtLx
	 KpWZwm2W2jNOzPQA3Kg+nkUCdUOfD9Z4bTvaRj/qan3bPVHAkgj1nlDsHm9QrAsiIH
	 97Ru5eCrLL97dCSjjesddQ4B82MoCBPqfuFJEeDeAYUZDgJR48MCP0UVwXiBv0RQye
	 85RTCwLudJQops3qc/OAky1m9mxFb8snff4rIvPQJH0n3uMH3qLnr22GlExwLY3QF+
	 OenY+Vvq6ySUw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E3FD717E093B;
	Fri, 31 Jul 2026 16:42:09 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1301E480055; Fri, 31 Jul 2026 16:42:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 31 Jul 2026 16:42:20 +0200
Subject: [PATCH v8 15/21] drm/rockchip: dw_dp: Add runtime PM support
MIME-Version: 1.0
Message-Id: <20260731-synopsys-dw-dp-improvements-v8-15-ac1e6a75782f@collabora.com>
References: <20260731-synopsys-dw-dp-improvements-v8-0-ac1e6a75782f@collabora.com>
In-Reply-To: <20260731-synopsys-dw-dp-improvements-v8-0-ac1e6a75782f@collabora.com>
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
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2728;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=8QSlSuWPiGUI9AoT3cgCttdenutXBFd4174AAf6FMNQ=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpstEBAgFnkmOejF0+fy0EQb6cQC2uag2yRm
 tTPH3UlrUBdEYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqbLRAAAoJENju1/PI
 O/qaEhcP/09V+tpEFBCZRdA1zOBOVXyqkKpazKAPKX7rxFtNP2+2FOuyDSRYXvhsa0kfnLpuShz
 xpGMp4IRTkPTK0ySK4/ScsvcxODAWPMw+xHtc9Pbd6dKiU3dPfwKR1RjxpcYZlkVAhIqTjeyQd+
 TbCr1XmQN0goqFuJZA4wtvmLwiJl12dMvWJv+WW1GuU1d8IeZdMV8lvqByOWcCi6yPmeM0hRHhT
 mHUIrQw6bTdqm/jT0Ij0JfRDAERKnyjfbcMGvfRgUgEQFyfiT1FM4ogd8VDqAsclkyg1GZkejh/
 /EVYfTIWouW0agFqikTur4f+jWwpSU428fpsVZiZygDdrTsLBli3Q7PYeec+2QCC6BLapX4wbM/
 I9ewKooiNBJ+2M61AdZiChz3i0PoVS4Qaul3jc5JKv2bCwuQ4bhZo+uQaVXUwJYsDm35zo6wjmW
 hgg59Nj2IwDl3/xsm5llAXVhzSuoeTpI/+mYbP3ZP0i+CemUpvyNc6bSDvaX7hlkMOKntVbPV5O
 K1k4ytSNTlyVsskLp0h1D9cIa2pMqa/zNj2Yl5lo590bZsxr6EGcN99mCb0qHKT5E6XxdhjnwsN
 YoVgoNTdaydQ4snFZ9ON6NGUswWOuTD+hf/h9tL8kj6YEm7+9hlq2EOGRJmo6ts53kmK6a1NNtl
 OEbkWc1GYDSooSS1F6xItkA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_074229_212070_9910DD11 
X-CRM114-Status: GOOD (  16.08  )
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
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 29 +++++++++++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index d516b3910b51..dde3881efad8 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/videodev2.h>
 
@@ -194,7 +195,7 @@ static int dw_dp_rockchip_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rockchip_dw_dp *dp;
 	struct resource *res;
-	int id;
+	int id, ret;
 
 	plat_data_const = device_get_match_data(dev);
 	if (!plat_data_const)
@@ -231,16 +232,21 @@ static int dw_dp_rockchip_probe(struct platform_device *pdev)
 	if (IS_ERR(dp->vo_grf))
 		return PTR_ERR(dp->vo_grf);
 
+	plat_data->autosuspend_delay = 500;
 	plat_data->max_link_rate = plat_data_const->max_link_rate;
 	plat_data->pixel_mode = plat_data_const->pixel_mode;
 	plat_data->hpd_sw_sel = dw_dp_rockchip_hpd_sw_sel;
 	plat_data->hpd_sw_cfg = dw_dp_rockchip_hpd_sw_cfg;
 	plat_data->data = dp;
 
-	dp->base = dw_dp_probe(pdev, plat_data);
+	dp->base = dw_dp_alloc(pdev, plat_data);
 	if (IS_ERR(dp->base))
 		return PTR_ERR(dp->base);
 
+	ret = dw_dp_probe(dp->base);
+	if (ret)
+		return ret;
+
 	return component_add(&pdev->dev, &dw_dp_rockchip_component_ops);
 }
 
@@ -249,6 +255,24 @@ static void dw_dp_rockchip_remove(struct platform_device *pdev)
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
+
+	return dw_dp_runtime_resume(dp->base);
+}
+
+static const struct dev_pm_ops dw_dp_pm_ops = {
+	RUNTIME_PM_OPS(dw_dp_rockchip_runtime_suspend, dw_dp_rockchip_runtime_resume, NULL)
+};
+
 static const struct rockchip_dw_dp_plat_data rk3588_dp_plat_data = {
 	.num_ctrls = 2,
 	.ctrl_ids = {0xfde50000, 0xfde60000},
@@ -283,5 +307,6 @@ struct platform_driver dw_dp_driver = {
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
