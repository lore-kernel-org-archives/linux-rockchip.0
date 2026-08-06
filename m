Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A23D0C5AD2C
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 17:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zean5QYloiApsWZeuzYWUvSnsNq1Rf1zzSBfuwKfp8g=; b=aAzm2TTD5dZR/A
	BGAWseuh2lkQ9NeiMgLnpFXMdS0JyHNqa3nF9eg294R7ff2GKgsf1UpZore8fS3wWDKse0rImlY0k
	sBEB8LNl9KRoFyy7ta/hpIhRKBAbcPJ+1sSgNN89s67lO5O25NBR1utpUSrn5LXWbCfULDXukBtHa
	RYJPnsHgmeb06vphIATPJYITy4lzzYpgznBcJsW9/z2qcJ/TEbt+BX5Rvvmy/fNe/Ov+7pJGcel6K
	X1qYt4E2wupiQnLDMeZV1ozZiOWyrDaM4d6CohIB6cbXB90qpp55PAS7xYxZ9mvZwIh3fqHB9KJG0
	KYSNKXgsOsl3NbvDZWzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1UV-00000006I1F-0qGC;
	Thu, 06 Aug 2026 17:02:47 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1UI-00000006HPR-01iL;
	Thu, 06 Aug 2026 17:02:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786035746;
	bh=oRTwAEvsdtAdQ3xeWlEgRs01pA0QwvbbaxWZXaVnR4M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=NVITPhUPm+E2bCAxfubkWxeXY6au6qJQc4/dYj2IOKnvPdF1D8ziM+nN/8vv2pcss
	 en44xonxTBT/Je/GsLqGaP+jcvXmTsrZoLf/YY46l6TPRVYezrVWEBha3/QghPgBLy
	 lbjCaNUuqkdhHlGtn0XyQ1lKAJ0gk27G+n9oFin/+ycPQ0TJXsOTDKprR/WdRW4DSI
	 7VMOxC+amjJr/FRZBGRiEJ4EyCmtsfW2ATnbe56NAYd/hjUa8qOhvhGtKf6ILEvPjd
	 XlBvXZHj+v3jbdTdwXOT9NFr5Q+OCgdWyanxt5awG+PnCEfodiP1S7g2SiraSbwbzJ
	 K96MWQSGLetWA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E377817E1249;
	Thu, 06 Aug 2026 19:02:25 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0DD36480055; Thu, 06 Aug 2026 19:02:25 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 06 Aug 2026 19:02:21 +0200
Subject: [PATCH v11 15/21] drm/rockchip: dw_dp: Add runtime PM support
MIME-Version: 1.0
Message-Id: <20260806-synopsys-dw-dp-improvements-v11-15-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2058;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=oRTwAEvsdtAdQ3xeWlEgRs01pA0QwvbbaxWZXaVnR4M=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGp0viBugf7kmffLWiX1OgyTdCwCTPaeyaUDs
 rciieB6Y4JvmYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqdL4gAAoJENju1/PI
 O/qaszIP/0DAaR/hYLDvWsgM90fNgIUOCUVWdLpAdJLvjbDTehiuKy4XldYAXULqubgYEu0ksLC
 NYoQht5odetpFfbog3Nh5oaUhw7D4qLD+JbH2ECP/01GNOVnr7w1Y6GThw1EdMIdVtlfe5f1XgI
 aZHssLkz//cq88AFQNbzaAu+uoeTyOadH7siM4tZMrP0YUZbZRxKvAiZReVClHeUHWDJT9X9hS6
 7KK36K+W9zgYbiczVOfI73NMWDwQze3SgXCHR9dW3cAxhJlHigiUINny3tVHwZnoupf/n5xQhOA
 z8704oHlJEGs1l7UMHWxEk7PHHbjqa02akAeOQi5gTAtbJQhfGMqdoDItsdmgprVy3pIq/j2uRg
 11JZaY9dGBluIJHBQKs/uFxNb/5CzpbWkluKiMiN/IGdo3+OKTLTRuHmit/mPquKCspOhB6Uy5Q
 PjPjGjT+/yTIfx1LqMpsPVbchVlrSoHObFNy/Lt35IekwbzgAQcVezJDAmrOVHlbEWrOiSfhAyo
 CUteyvi4iGwTuIHjlMVwSsqUNx2nBZDdH9zABAVaZPfF7BfmHhtBa6PEWSOykwCz4khKNaxoyQY
 /3YeUGZDAhwg/sjUQd5gRn+cTtQkvsQutP3YbP+nluoeWEe9bCjdKulynzspdxju0sCFhRZ4JUM
 UGTTi7UKOvD03O+hZbWcquQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_100234_279082_8E00E26A 
X-CRM114-Status: GOOD (  13.33  )
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
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index ffcfb887d0d2..770ab042a187 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/videodev2.h>
 
@@ -231,6 +232,7 @@ static int dw_dp_rockchip_probe(struct platform_device *pdev)
 	if (IS_ERR(dp->vo_grf))
 		return PTR_ERR(dp->vo_grf);
 
+	plat_data->autosuspend_delay = 500;
 	plat_data->max_link_rate = plat_data_const->max_link_rate;
 	plat_data->pixel_mode = plat_data_const->pixel_mode;
 	plat_data->hpd_sw_sel = dw_dp_rockchip_hpd_sw_sel;
@@ -253,6 +255,24 @@ static void dw_dp_rockchip_remove(struct platform_device *pdev)
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
@@ -287,5 +307,6 @@ struct platform_driver dw_dp_driver = {
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
