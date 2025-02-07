Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9D2EC0219B
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 18:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoKwXrLZzx8SIr5NWqeeLVGOngm58sKgViniXFE0xmw=; b=UENtWMSJ1MnvIJ
	pkcwhHe+W+TZl7ZYQ6zdSAfrvwhWxslK2vi4rTqFPf06tkouUvY//kTu9K4F0VxRXuEb1x0a77xg1
	DwnYPThds/86Lj4Qo6o+O44fMhA2KqD/kJkYb6GOHFRfwXnCz58AHdt0J3dNYFaq7mACVtT9WAIHx
	0EvWLquT6aILGmqsFjqj4zfnuiPq6x5iolNXXhMaI8g0Vh7go6AuN+Dht8b6Ehqs/ee6shokR5+iv
	2yxt8BqntKUZo9rhhChLxR6BTJaDZr/Xt/2A4xCA6fIQThaI7vYc3xvwMx9YZkWIQIaRcHCcZcYb7
	kpRo6t15/bCZShEZvlrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgT31-0000000AgxR-1RH8;
	Fri, 07 Feb 2025 18:25:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgT0L-0000000AgEl-31xF
	for linux-rockchip@bombadil.infradead.org;
	Fri, 07 Feb 2025 18:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qousSCFJjwXnvHbM400whZi7lj7kZe26RkWaGTgUxv0=; b=SlDhAMmJoVn0SJVjpPMz20eXx6
	yFIgMC3pqVNQrikOc6LyiSFYqbq7/KcdfUGDQvHM01u0tvlii2BLqekRsi3W780R70r/gtt9yr2/n
	J6jLjttxaPPPXVRV+ZbjnbCMlRbtOOiO63UyhJ3BG4hD+gJZcCWeuKplnZ2LlqTMWodbA/GBdcpuI
	qFO8IXB9CKFDe1FJnHbW4DvWPp0uwxP3dmSwSzwt60X0rhDmD9+wLOYYrccYlIwZF9FIbzZGd8yRe
	4IKvHQpkHhWGibWJG+9JpsAo4iAjcHQr421ryXvNM/lIaJG0YfUrLKdk9lXNtUszASAdIqInlgGg3
	xXWpZxqQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgT0I-0000000HI7o-3jnd
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 18:23:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1tgT05-0006i4-Ft; Fri, 07 Feb 2025 19:22:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1tgT03-00418A-2y;
	Fri, 07 Feb 2025 19:22:47 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Damon Ding <damon.ding@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	patchwork-lst@pengutronix.de
Subject: [PATCH 2/2] drm/rockchip: analogix_dp: move PSR entry wait to VOP CRTC handling
Date: Fri,  7 Feb 2025 19:22:47 +0100
Message-Id: <20250207182247.215537-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250207182247.215537-1-l.stach@pengutronix.de>
References: <20250207182247.215537-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_182303_086823_B1C5B4DD 
X-CRM114-Status: GOOD (  19.62  )
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

Instead of calling from the Analogix DP encoder into the VOP crtc
handling, move the wait for PSR entry to vop_crtc_atomic_disable().

This untangles the Analogix DP code from the VOP, so it can safely
be used with VOP2.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
Note: I don't have any Rockchip system with a panel capable of PSR,
so while I am pretty sure that this doesn't change the flow of
operations at all, it should be tested by someone who has the
necessary hardware before applying.
---
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   |  26 -----
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   1 -
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c   | 102 +++++++++---------
 3 files changed, 53 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 0844175c37c5..6fec687d7db1 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -39,8 +39,6 @@
 
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
-#define PSR_WAIT_LINE_FLAG_TIMEOUT_MS	100
-
 /**
  * struct rockchip_dp_chip_data - splite the grf setting of kind of chips
  * @lcdsel_grf_reg: grf register offset of lcdc select
@@ -216,29 +214,6 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 	clk_disable_unprepare(dp->grfclk);
 }
 
-static void rockchip_dp_drm_encoder_disable(struct drm_encoder *encoder,
-					    struct drm_atomic_state *state)
-{
-	struct rockchip_dp_device *dp = encoder_to_dp(encoder);
-	struct drm_crtc *crtc;
-	struct drm_crtc_state *new_crtc_state = NULL;
-	int ret;
-
-	crtc = rockchip_dp_drm_get_new_crtc(encoder, state);
-	/* No crtc means we're doing a full shutdown */
-	if (!crtc)
-		return;
-
-	new_crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
-	/* If we're not entering self-refresh, no need to wait for vact */
-	if (!new_crtc_state || !new_crtc_state->self_refresh_active)
-		return;
-
-	ret = rockchip_drm_wait_vact_end(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
-	if (ret)
-		DRM_DEV_ERROR(dp->dev, "line flag irq timed out\n");
-}
-
 static int
 rockchip_dp_drm_encoder_atomic_check(struct drm_encoder *encoder,
 				      struct drm_crtc_state *crtc_state,
@@ -266,7 +241,6 @@ static const struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs =
 	.mode_fixup = rockchip_dp_drm_encoder_mode_fixup,
 	.mode_set = rockchip_dp_drm_encoder_mode_set,
 	.atomic_enable = rockchip_dp_drm_encoder_enable,
-	.atomic_disable = rockchip_dp_drm_encoder_disable,
 	.atomic_check = rockchip_dp_drm_encoder_atomic_check,
 };
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index c183e82a42a5..d1333f432b4e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -82,7 +82,6 @@ void rockchip_drm_dma_detach_device(struct drm_device *drm_dev,
 				    struct device *dev);
 void rockchip_drm_dma_init_device(struct drm_device *drm_dev,
 				  struct device *dev);
-int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout);
 int rockchip_drm_encoder_set_crtc_endpoint_id(struct rockchip_encoder *rencoder,
 					      struct device_node *np, int port, int reg);
 int rockchip_drm_endpoint_is_subdriver(struct device_node *ep);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 7f5fbea34951..77778df3c225 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -726,14 +726,67 @@ static void rockchip_drm_set_win_enabled(struct drm_crtc *crtc, bool enabled)
         spin_unlock(&vop->reg_lock);
 }
 
+/**
+ * rockchip_drm_wait_vact_end
+ * @crtc: CRTC to enable line flag
+ * @mstimeout: millisecond for timeout
+ *
+ * Wait for vact_end line flag irq or timeout.
+ *
+ * Returns:
+ * Zero on success, negative errno on failure.
+ */
+static int
+rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout)
+{
+	struct vop *vop = to_vop(crtc);
+	unsigned long jiffies_left;
+	int ret = 0;
+
+	if (!crtc || !vop->is_enabled)
+		return -ENODEV;
+
+	mutex_lock(&vop->vop_lock);
+	if (mstimeout <= 0) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	if (vop_line_flag_irq_is_enabled(vop)) {
+		ret = -EBUSY;
+		goto out;
+	}
+
+	reinit_completion(&vop->line_flag_completion);
+	vop_line_flag_irq_enable(vop);
+
+	jiffies_left = wait_for_completion_timeout(&vop->line_flag_completion,
+						   msecs_to_jiffies(mstimeout));
+	vop_line_flag_irq_disable(vop);
+
+	if (jiffies_left == 0) {
+		DRM_DEV_ERROR(vop->dev, "Timeout waiting for IRQ\n");
+		ret = -ETIMEDOUT;
+		goto out;
+	}
+
+out:
+	mutex_unlock(&vop->vop_lock);
+	return ret;
+}
+
 static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 				    struct drm_atomic_state *state)
 {
 	struct vop *vop = to_vop(crtc);
+	int ret;
 
 	WARN_ON(vop->event);
 
 	if (crtc->state->self_refresh_active) {
+		ret = rockchip_drm_wait_vact_end(crtc, 100);
+		if (ret)
+			DRM_DEV_ERROR(vop->dev, "line flag irq timed out\n");
 		rockchip_drm_set_win_enabled(crtc, false);
 		goto out;
 	}
@@ -2131,55 +2184,6 @@ static void vop_win_init(struct vop *vop)
 	}
 }
 
-/**
- * rockchip_drm_wait_vact_end
- * @crtc: CRTC to enable line flag
- * @mstimeout: millisecond for timeout
- *
- * Wait for vact_end line flag irq or timeout.
- *
- * Returns:
- * Zero on success, negative errno on failure.
- */
-int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout)
-{
-	struct vop *vop = to_vop(crtc);
-	unsigned long jiffies_left;
-	int ret = 0;
-
-	if (!crtc || !vop->is_enabled)
-		return -ENODEV;
-
-	mutex_lock(&vop->vop_lock);
-	if (mstimeout <= 0) {
-		ret = -EINVAL;
-		goto out;
-	}
-
-	if (vop_line_flag_irq_is_enabled(vop)) {
-		ret = -EBUSY;
-		goto out;
-	}
-
-	reinit_completion(&vop->line_flag_completion);
-	vop_line_flag_irq_enable(vop);
-
-	jiffies_left = wait_for_completion_timeout(&vop->line_flag_completion,
-						   msecs_to_jiffies(mstimeout));
-	vop_line_flag_irq_disable(vop);
-
-	if (jiffies_left == 0) {
-		DRM_DEV_ERROR(vop->dev, "Timeout waiting for IRQ\n");
-		ret = -ETIMEDOUT;
-		goto out;
-	}
-
-out:
-	mutex_unlock(&vop->vop_lock);
-	return ret;
-}
-EXPORT_SYMBOL(rockchip_drm_wait_vact_end);
-
 static int vop_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
