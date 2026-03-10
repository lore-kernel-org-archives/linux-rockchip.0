Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E68FCC9AC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 02:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dXNRWjPP7tS3MAHsdyrod46ZpSxT39tTI3viDbBHjY=; b=4QE3Pikt4shDte
	ytYzpa0ryKEOpkv5iW02pJYmPs/v1ceB7jZ6DxAKgq13Yt1c62qXee+EAHGXfU7VG6gexAMpQx6vf
	htQ+O84jE8QAJxtiyvMReSXuP3iq6buRrbZ3BFRnJS8BGC4s2BaVHGLfZ1Mz0L/Gr6ENaoDxCZaad
	9+UMMxEHYWIRNgUxw0yinPwKmhcMnNpIPhKM9WEyMooceOtl0YHUR/QhSb8XbSxz3EjUyfzWd411h
	W4RttZCmsr7mNgkH4shGn/9OYvasUirOCau7Y0CZ5Jz8iMLgWbWmD2L/NaTxW3HEr+gdbfD42tyen
	TMxMuDgP+24RI4BlUMvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzmP7-00000008XU0-16V3;
	Tue, 10 Mar 2026 02:01:01 +0000
Received: from mail-m32113.qiye.163.com ([220.197.32.113])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzmP4-00000008XRi-2NQu;
	Tue, 10 Mar 2026 02:00:59 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 365514fff;
	Tue, 10 Mar 2026 10:00:51 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	inki.dae@samsung.com,
	sw0312.kim@samsung.com,
	kyungmin.park@samsung.com,
	krzk@kernel.org,
	alim.akhtar@samsung.com,
	jingoohan1@gmail.com,
	p.zabel@pengutronix.de,
	hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com,
	dianders@chromium.org,
	m.szyprowski@samsung.com,
	luca.ceresoli@bootlin.com,
	jani.nikula@intel.com,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v10 15/18] drm/exynos: exynos_dp: Apply analogix_dp_finish_probe()
Date: Tue, 10 Mar 2026 10:00:26 +0800
Message-Id: <20260310020029.178314-2-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310020029.178314-1-damon.ding@rock-chips.com>
References: <20260310012458.169272-1-damon.ding@rock-chips.com>
 <20260310020029.178314-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9cd579bfa703a3kunm3b4bef74315795
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk1NT1YZShpPQk1DQk9MTExWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=IsfdtAQNwR3KWJwLDGzV3IQBxra29kzt8SIF6lpJU0aEmlYx2MwXgV4gk/V3o0xhYjxnQsI9yA1NkrxAR3z+WtYQ+xvKmUyls49JUVWl+0uDMLS8JpOPr82PAP6mafrXp9bGsQm+8hXsuPB8toFtN2xWdVcwBduW47EBLdZTT/A=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=9+M/PibubAO1ntwaSBMGJlK3TPATJcI6Ax1z4zI4i2Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_190058_804553_08179C8C 
X-CRM114-Status: GOOD (  12.49  )
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

Apply analogix_dp_finish_probe() in order to move the panel/bridge
parsing from Exynos side to the Analogix side.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Tested-by: Heiko Stuebner <heiko@sntech.de> (on rk3588)

---

Changes in v4:
- Rename analogix_dp_find_panel_or_bridge() to
  analogix_dp_finish_probe().

Changes in v7:
- Remove exynos_dp_legacy_bridge_init() and inline API
  devm_drm_of_display_mode_bridge().
- If the panel or the next_bridge is parsed from DT, use ptr validity
  to check whether to call component_add() directly at the end of
  probing.

-Changes in v9:
- Add Tested-by tag.
---
 drivers/gpu/drm/exynos/exynos_dp.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_dp.c b/drivers/gpu/drm/exynos/exynos_dp.c
index 478eaa6f3175..6126820aad3b 100644
--- a/drivers/gpu/drm/exynos/exynos_dp.c
+++ b/drivers/gpu/drm/exynos/exynos_dp.c
@@ -157,9 +157,6 @@ static int exynos_dp_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np;
 	struct exynos_dp_device *dp;
-	struct drm_panel *panel;
-	struct drm_bridge *bridge;
-	int ret;
 
 	dp = devm_kzalloc(&pdev->dev, sizeof(struct exynos_dp_device),
 			  GFP_KERNEL);
@@ -186,30 +183,30 @@ static int exynos_dp_probe(struct platform_device *pdev)
 		goto out;
 	}
 
-	ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0, &panel, &bridge);
-	if (ret == -ENODEV) {
+	if (of_get_display_timings(dev->of_node)) {
 		dp->plat_data.next_bridge = devm_drm_of_display_mode_bridge(dp->dev,
 									dp->dev->of_node,
 									DRM_MODE_CONNECTOR_eDP);
-		ret = IS_ERR(dp->plat_data.next_bridge) ? PTR_ERR(dp->plat_data.next_bridge) : 0;
+		if (IS_ERR(dp->plat_data.next_bridge))
+			return PTR_ERR(dp->plat_data.next_bridge);
 	}
-	if (ret)
-		return ret;
 
 	/* The remote port can be either a panel or a bridge */
-	dp->plat_data.panel = panel;
-	dp->plat_data.next_bridge = bridge;
 	dp->plat_data.dev_type = EXYNOS_DP;
 	dp->plat_data.power_on = exynos_dp_poweron;
 	dp->plat_data.power_off = exynos_dp_poweroff;
 	dp->plat_data.attach = exynos_dp_bridge_attach;
+	dp->plat_data.ops = &exynos_dp_ops;
 
 out:
 	dp->adp = analogix_dp_probe(dev, &dp->plat_data);
 	if (IS_ERR(dp->adp))
 		return PTR_ERR(dp->adp);
 
-	return component_add(&pdev->dev, &exynos_dp_ops);
+	if (dp->plat_data.panel || dp->plat_data.next_bridge)
+		return component_add(&pdev->dev, &exynos_dp_ops);
+	else
+		return analogix_dp_finish_probe(dp->adp);
 }
 
 static void exynos_dp_remove(struct platform_device *pdev)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
