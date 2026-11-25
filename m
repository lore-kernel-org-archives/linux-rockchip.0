Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F52606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 11:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cvx20L56;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=OAsj6kbv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=U2NW+oKl27B/jPgKR0ais9GmsE6vZnUUHZi29+lUDuQ=; b=cvx20L56RRWyzvB6Uean3U5H/m
	kkCMwN/6ZtxeqRd6PaeUhh+hMAbBN5pDksM1EQj90W68ldHv0l6kg+foB5w11ldQlGcsEO+hZe2xO
	csz0nItx+kAaqfkL74QUBlsudtG37R8TA9834kKsqqZXyeTH6ZtbKNR1uS+glURv3Bskw/C+p+bph
	91F5OxK2IqqmRD0i40hVdgn3CyCl636BHQ8XCSN6T86yxvrWccdQqT0ZPLWcYc9nzhThXSUhBc7Mu
	3lpGVAUgOU2WI1lNTqlFUt9b78+JntdJbvCx0RKldKV5nIY5qzZJCFVk2rx+QCCGq4mYm/yOgfSIk
	1QPyMbnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWB79-00000009bu1-2KNS;
	Wed, 25 Nov 2026 11:24:39 +0000
Received: from mail-m16023653110.xmail.ntesmail.com ([160.236.53.110])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWB4u-00000009aBy-0Gv3;
	Wed, 25 Nov 2026 11:22:21 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 55f816072;
	Wed, 25 Nov 2026 19:22:15 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jingoo Han <jingoohan1@gmail.com>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andyshrk@163.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v7 16/20] drm/bridge: analogix_dp: Move IRQ enable/disable to bind/unbind
Date: Wed, 25 Nov 2026 19:21:37 +0800
Message-Id: <20261125112141.1434903-17-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261125112141.1434903-1-damon.ding@rock-chips.com>
References: <20261125112141.1434903-1-damon.ding@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa21271284103a8kunm17c230507758e4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSR5KVh9JTE1IQx9PTBkZTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=OAsj6kbvgBlKLLElEaBzaIFEzmN00kluE9wqa/zec5JimzgOIjgN2ZvbfcOL50uUDwDF417z5Zfcxyc+thIl8b+koVuDnsiPkrV5OnX6HLM4FXifmHmSP1BpOzHvIu0mQqpsSP1eJi/qGcweTWSp4PdpuJWT6HZKK41wLroOEZI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=HD9QCAlNGtAGCffBEYxRFXecwI8idwXSFHx/hgHiNdM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_032220_401573_3948986D 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Move enable_irq()/disable_irq() from bridge enable/disable handlers
into analogix_dp_bind()/analogix_dp_unbind(). This keeps the IRQ
active throughout the device lifecycle rather than only during display
activity, which is a prerequisite for supporting HPD detection while
the display pipeline is inactive.

Make the interrupt fully threaded and hold a runtime PM reference in
the threaded handler, so that no register is accessed while the
controller is runtime suspended.

Tested-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v3:
- Move this patch after mute/unmute related modification and detail the
  commit msg.

Changes in v4:
- Add Tested-by tag.

Changes in v5:
- Use a pure threaded IRQ handler and hold a runtime PM reference in
  it, so that no MMIO happens on the unclocked controller after
  runtime suspend. (Sashiko)
- Add prep patches to call analogix_dp_unbind() when
  drm_bridge_connector_init() fails, so that the IRQ enabled across
  the bind lifetime gets properly disabled on bind failures. (Sashiko)

Changes in v6:
- Skip the runtime PM reference in the IRQ thread for the GPIO HPD
  mode, since it only reads the GPIO level. (Sashiko)
- Add Tested-by tag.

Changes in v7:
- Do not add the redundant pm_runtime_mark_last_busy() call, as
  pm_runtime_put_autosuspend() updates the last busy stamp since
  commit b3db492e8335.
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 38 ++++++++++---------
 1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index af855f33cf6f..46433ea73d67 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -700,24 +700,25 @@ static int analogix_dp_enable_scramble(struct analogix_dp_device *dp,
 	return ret < 0 ? ret : 0;
 }
 
-static irqreturn_t analogix_dp_hardirq(int irq, void *arg)
-{
-	struct analogix_dp_device *dp = arg;
-	irqreturn_t ret = IRQ_NONE;
-	u32 irq_type;
-
-	irq_type = analogix_dp_get_irq_type(dp);
-	if (irq_type)
-		ret = IRQ_WAKE_THREAD;
-
-	return ret;
-}
-
 static irqreturn_t analogix_dp_irq_thread(int irq, void *arg)
 {
 	struct analogix_dp_device *dp = arg;
 	u32 irq_type;
 	bool hpd_detected;
+	int ret;
+
+	/*
+	 * The device may have been runtime suspended since the interrupt was
+	 * raised. Hold a runtime PM reference before touching the registers,
+	 * as the controller clocks are only guaranteed to be enabled while
+	 * the device is runtime PM active. The GPIO HPD mode needs no such
+	 * reference, since it only reads the GPIO level.
+	 */
+	if (!dp->hpd_gpiod) {
+		ret = pm_runtime_resume_and_get(dp->dev);
+		if (ret)
+			return IRQ_HANDLED;
+	}
 
 	irq_type = analogix_dp_get_irq_type(dp);
 	if (!dp->hpd_gpiod && irq_type)
@@ -734,6 +735,9 @@ static irqreturn_t analogix_dp_irq_thread(int irq, void *arg)
 			drm_helper_hpd_irq_event(dp->drm_dev);
 	}
 
+	if (!dp->hpd_gpiod)
+		pm_runtime_put_autosuspend(dp->dev);
+
 	return IRQ_HANDLED;
 }
 
@@ -1053,7 +1057,6 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 		goto out_dp_init;
 	}
 
-	enable_irq(dp->irq);
 	return 0;
 
 out_dp_init:
@@ -1195,8 +1198,6 @@ static void analogix_dp_bridge_disable(struct drm_bridge *bridge)
 	if (dp->dpms_mode != DRM_MODE_DPMS_ON)
 		return;
 
-	disable_irq(dp->irq);
-
 	analogix_dp_set_analog_power_down(dp, POWER_ALL, 1);
 
 	pm_runtime_put_sync(dp->dev);
@@ -1522,7 +1523,7 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 	}
 
 	ret = devm_request_threaded_irq(&pdev->dev, dp->irq,
-					analogix_dp_hardirq,
+					NULL,
 					analogix_dp_irq_thread,
 					irq_flags, "analogix-dp", dp);
 	if (ret)
@@ -1608,6 +1609,8 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 		goto err_unregister_aux;
 	}
 
+	enable_irq(dp->irq);
+
 	return 0;
 
 err_unregister_aux:
@@ -1619,6 +1622,7 @@ EXPORT_SYMBOL_GPL(analogix_dp_bind);
 
 void analogix_dp_unbind(struct analogix_dp_device *dp)
 {
+	disable_irq(dp->irq);
 	drm_dp_aux_unregister(&dp->aux);
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
