Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 395B8C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 22:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVAla6OgQx+mMqKAWBNXPst+t0m5SHSPPIRVPEZUnYo=; b=4HHWFEKYjFE//v
	cwpH3Gl2JJ3n3PRLWlOXE1KL/psBAsajBp7DPSz2Cj2VFc2Jns7f0UlgPRYRsNsWsesCLMWoDUH1y
	ipMtFjILjdeqDMqBLkTMjHrJKXfj+c8odIdDPHWVvTW51oDPOz/wkirLTEUGm4xSyzR9nvOB8tyw/
	dDOS2T6DCpYW4SYgfdSjfdNSBSqwkoXk3zr9FdMpQnGf+Yx4xLidsptd7LwtQ7GC+0lZQRjDW23SQ
	zG5svZXMXCWcn+355dUJUVZGnBYA0o8xu52eowT74KpIa+zfH4Hl0VQNQp4Dfxny9Rm+xXQtp0hwq
	Hxp4u/N8W0nmD/ELI1wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nelNk-002rQK-GU; Wed, 13 Apr 2022 22:22:36 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nelKp-002pwh-04; Wed, 13 Apr 2022 22:19:39 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 4C4035C0322;
 Wed, 13 Apr 2022 18:19:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 13 Apr 2022 18:19:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649888374; x=1649974774; bh=nV
 Ty+l52zCL3CGPsMmkYpIgGpQIKDxR1HFzp1d9DKBM=; b=dVbHkFYEUIWKj3ST7L
 IBX+AJR97Rtc0cw/qe/xx1IbNAWDzL7cJxz92447dAJ+2XEMH9GU5LnFkNHnneLG
 SFhR4LUP/MXzeomdimp7OCR8XFDBurxwSK/quHj86LkjRORQYoS4hvfXFakfi8VE
 CvqOK6ihp9rGtzdL4mkrHJtEZTTImSV8tEdThzKo9Yo7k+uB+DYWO0tw5NGiij6W
 jif+GY0AaIlBqQX2sFudpXcaOPE752aKTneA6XMeMyMkS4TY3ZNYTKF/CZFfi1Qi
 SFr40Chx1xag+xteKy77K0SbfqP3GdJQ+fYwazt/FQcS3fbjPdhvyUAqqIR1c2E7
 GyMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649888374; x=1649974774; bh=nVTy+l52zCL3CGPsMmkYpIgGpQIKDxR1HFz
 p1d9DKBM=; b=T5bbug34WLzjJT60oKKAjH1Uv5gPeFjPhVnLKH6/meLNcIczDt9
 nSx/qeeOrXFwLv3M/oQKGA64u6ziulT4CyG79Fepyy0WaPk48PO65ZPo+svzfJ2D
 Di2RzPO33aiXdNSS66Vi0Rxgi4dpH0j9p8N3v7UST129BFiB110/FQBCKos38aow
 2YtT1RykvcUk0ZyloPOvXMTL4WFl57qBCJDJvKKU5FsRG+ncL2LrFtm0ZmCGG1qi
 Do86lfvwo8tFbcAQ8I8Y7EDyYI5mnW/zsmlYaUPOdNuHEvGE4FHCIaz0pCpc5nbv
 +zI85V/NHO+/5FRlF36zhvV7u4n34c+PpRw==
X-ME-Sender: <xms:dkxXYln05wFKGiNOTZwnFM98eEjBT4e9Yr7nzt446a32fuYh1HIYLA>
 <xme:dkxXYg0cTe0Q3BYMcVdVQRoGEvKNakHg25-7LcvIcLUlzo6YBIERJOGbzt0CZGtWs
 f2Ti3JJAZHUKPMDgg>
X-ME-Received: <xmr:dkxXYrr3ZGoLZBHXMIImhvMLxlg3niVjggvOsVsgUY_OKXJM-CwJe04XIUo9CfV9c1vGkRhOb4wzs7yo5eysYtvbyvCgqSSMaCiYJn8gaEAcsnJBDoxoV4uBncb5JXx7As949w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddguddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:dkxXYlkC6vMi22E5SAyji78ecuNLDcTRVNnAhMgj7M1tBA4R6LenIw>
 <xmx:dkxXYj26Dq1ESX_ZkfiN5NC58NvITt7RtacqB01lvD_kN3EQl8zE1Q>
 <xmx:dkxXYku2ugGhpWHCSA0dzLSU0GFUFScYEvPr_LCab_TR0-HwqeytxQ>
 <xmx:dkxXYoUW2tiHyS3dHuYqZoSa8mLyi-_mYT5YtwthRt2vLvoQDTgXJg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 18:19:33 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
 Alistair Francis <alistair@alistair23.me>,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <x@xff.cz>,
 Andreas Kemnade <andreas@kemnade.info>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Samuel Holland <samuel@sholland.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 06/16] drm/rockchip: ebc: Add CRTC refresh thread
Date: Wed, 13 Apr 2022 17:19:06 -0500
Message-Id: <20220413221916.50995-7-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413221916.50995-1-samuel@sholland.org>
References: <20220413221916.50995-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_151935_190143_B249A131 
X-CRM114-Status: GOOD (  18.37  )
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

EPD refreshes are extremely slow; they take anywhere between hundreds of
milliseconds and several seconds. To avoid blocking userspace, perform
these refreshes on a separate thread. The thread will also take care of
initializing the display before first use and clearing it when the CRTC
is disabled.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/gpu/drm/rockchip/rockchip_ebc.c | 82 ++++++++++++++++++++++++-
 1 file changed, 81 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_ebc.c b/drivers/gpu/drm/rockchip/rockchip_ebc.c
index 5f9502313657..ebe60d5e011a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_ebc.c
+++ b/drivers/gpu/drm/rockchip/rockchip_ebc.c
@@ -6,6 +6,7 @@
 #include <linux/clk.h>
 #include <linux/completion.h>
 #include <linux/irq.h>
+#include <linux/kthread.h>
 #include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/pm_runtime.h>
@@ -135,9 +136,15 @@ struct rockchip_ebc {
 	struct drm_plane		plane;
 	struct regmap			*regmap;
 	struct regulator_bulk_data	supplies[EBC_NUM_SUPPLIES];
+	struct task_struct		*refresh_thread;
 	u32				dsp_start;
+	bool				reset_complete;
 };
 
+static bool skip_reset;
+module_param(skip_reset, bool, 0444);
+MODULE_PARM_DESC(skip_reset, "skip the initial display reset");
+
 DEFINE_DRM_GEM_FOPS(rockchip_ebc_fops);
 
 static const struct drm_driver rockchip_ebc_drm_driver = {
@@ -172,6 +179,42 @@ to_ebc_crtc_state(struct drm_crtc_state *crtc_state)
 	return container_of(crtc_state, struct ebc_crtc_state, base);
 }
 
+static int rockchip_ebc_refresh_thread(void *data)
+{
+	struct rockchip_ebc *ebc = data;
+
+	while (!kthread_should_stop()) {
+		/*
+		 * LUTs use both the old and the new pixel values as inputs.
+		 * However, the initial contents of the display are unknown.
+		 * The special RESET waveform will initialize the display to
+		 * known contents (white) regardless of its current contents.
+		 */
+		if (!ebc->reset_complete) {
+			ebc->reset_complete = true;
+			drm_dbg(&ebc->drm, "display reset\n");
+		}
+
+		while (!kthread_should_park()) {
+			drm_dbg(&ebc->drm, "display update\n");
+
+			set_current_state(TASK_IDLE);
+			schedule();
+			__set_current_state(TASK_RUNNING);
+		}
+
+		/*
+		 * Clear the display before disabling the CRTC. Use the
+		 * highest-quality waveform to minimize visible artifacts.
+		 */
+		drm_dbg(&ebc->drm, "display clear\n");
+
+		kthread_parkme();
+	}
+
+	return 0;
+}
+
 static inline struct rockchip_ebc *crtc_to_ebc(struct drm_crtc *crtc)
 {
 	return container_of(crtc, struct rockchip_ebc, crtc);
@@ -296,11 +339,23 @@ static void rockchip_ebc_crtc_atomic_flush(struct drm_crtc *crtc,
 static void rockchip_ebc_crtc_atomic_enable(struct drm_crtc *crtc,
 					    struct drm_atomic_state *state)
 {
+	struct rockchip_ebc *ebc = crtc_to_ebc(crtc);
+	struct drm_crtc_state *crtc_state;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	if (crtc_state->mode_changed)
+		kthread_unpark(ebc->refresh_thread);
 }
 
 static void rockchip_ebc_crtc_atomic_disable(struct drm_crtc *crtc,
 					     struct drm_atomic_state *state)
 {
+	struct rockchip_ebc *ebc = crtc_to_ebc(crtc);
+	struct drm_crtc_state *crtc_state;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	if (crtc_state->mode_changed)
+		kthread_park(ebc->refresh_thread);
 }
 
 static const struct drm_crtc_helper_funcs rockchip_ebc_crtc_helper_funcs = {
@@ -408,6 +463,14 @@ static int rockchip_ebc_plane_atomic_check(struct drm_plane *plane,
 static void rockchip_ebc_plane_atomic_update(struct drm_plane *plane,
 					     struct drm_atomic_state *state)
 {
+	struct rockchip_ebc *ebc = plane_to_ebc(plane);
+	struct drm_plane_state *plane_state;
+
+	plane_state = drm_atomic_get_new_plane_state(state, plane);
+	if (!plane_state->crtc)
+		return;
+
+	wake_up_process(ebc->refresh_thread);
 }
 
 static const struct drm_plane_helper_funcs rockchip_ebc_plane_helper_funcs = {
@@ -673,6 +736,7 @@ static int rockchip_ebc_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, ebc);
 	init_completion(&ebc->display_end);
+	ebc->reset_complete = skip_reset;
 
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
@@ -716,12 +780,26 @@ static int rockchip_ebc_probe(struct platform_device *pdev)
 			return ret;
 	}
 
+	ebc->refresh_thread = kthread_create(rockchip_ebc_refresh_thread,
+					     ebc, "ebc-refresh/%s",
+					     dev_name(dev));
+	if (IS_ERR(ebc->refresh_thread)) {
+		ret = dev_err_probe(dev, PTR_ERR(ebc->refresh_thread),
+				    "Failed to start refresh thread\n");
+		goto err_disable_pm;
+	}
+
+	kthread_park(ebc->refresh_thread);
+	sched_set_fifo(ebc->refresh_thread);
+
 	ret = rockchip_ebc_drm_init(ebc);
 	if (ret)
-		goto err_disable_pm;
+		goto err_stop_kthread;
 
 	return 0;
 
+err_stop_kthread:
+	kthread_stop(ebc->refresh_thread);
 err_disable_pm:
 	pm_runtime_disable(dev);
 	if (!pm_runtime_status_suspended(dev))
@@ -738,6 +816,8 @@ static int rockchip_ebc_remove(struct platform_device *pdev)
 	drm_dev_unregister(&ebc->drm);
 	drm_atomic_helper_shutdown(&ebc->drm);
 
+	kthread_stop(ebc->refresh_thread);
+
 	pm_runtime_disable(dev);
 	if (!pm_runtime_status_suspended(dev))
 		rockchip_ebc_runtime_suspend(dev);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
