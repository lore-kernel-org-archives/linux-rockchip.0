Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24FD1C5CFDB
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 10:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6pOmJWMCC/LB7IZpEYL7f8k325pG/0eSr2vCa2f0VBM=; b=Zlamv16JbhbA0B
	yTbSYNMzmpuuvGVIfQ2+yLBOOF/oX0GY/07W++7Cz7Z+1MfUbz3+TW93HkekmukZGyi+jbJbur6+p
	mhKlZ3Ua8H+EBv60n74FDFgD53CQpEhjozIB/TrWAUgIaTTZr1iL4TERw48rwxe7W8yGGnmYeP+Wt
	hMDtxdhr+HJsRjjdOQ9hHjw79INMYdEI2puVyqzSaHT1gzmVnKe/0zeZnHAQ29BKC/a0EKZvlsvLR
	jPvEtYSlkSAwv/Bm9xbPhF17On2OIwa+sAFYRjdw1BepP1W0Wci/vX0mavkRAZMtZKmSWwaol8SBe
	Oal7rKOtLhpRYZYFlqtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6Wg-0000000FwYQ-0j8G;
	Wed, 12 Aug 2026 10:49:38 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6Wc-0000000FwWs-2TQ9
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Aug 2026 10:49:36 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4954c08a7c8so573645e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Aug 2026 03:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786531772; x=1787136572; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2htw98TlVcP+RIDb3b8KEcHym617Hw0Z8IMjX67kKx8=;
        b=MibAnT8RFoQ4ZSb4h/dXRfONIiyytD2erqhtwqFjbxdjiSlDrl2EX/8VWCcEw1qsPm
         sMJiFuUaUggvs5V3h+ac1sRy8yzBG5XpT1Ur/2ew3nlKxZgVQmtFGTbPXDxbsk3JK9Fu
         1Gow3oAupLugA4X7hHUFqhzkKJewB/MgyzduntOYb10u9rdrJH/MgpAN6WfL+9fTBDRL
         m9A0Jhh7RgfUGXkk4/w3GUP2lyAPhyq17LVKx6U2i655KRti2KHdE27vxYc+/LJPVHNk
         YYFznM2NwIcEvcPuhHTEUFWe6vVHbU+vpPnwnandPjw9c2+s8vOHueBNHeqMrLqjlv/u
         wQUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786531772; x=1787136572;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2htw98TlVcP+RIDb3b8KEcHym617Hw0Z8IMjX67kKx8=;
        b=OGo+l7Xq/Iit3kH5IYIFUw+TObXHB+wfezZsGkN5Z5oFrQECsW3yZbN62jMM+4lKXJ
         hT8UBgclYCaeZQiIh1HJzBD4Q71AA9Itrdfs472iGrWvU9iqc69cFdnVwoPopKC5xIQ4
         5ug+CGB++TCfER8+Oh1D6WBpsdhsb24xNOf1vd6cgGqXXX7o8KnkaRVAtF6Rt7wItT8H
         6uIEv+FYAEcWnBnBd7PtXwYpdjb8kpAX7Feh31UhmuvpO2RsxFKiqHeBwrzzW1Z43rXs
         6VaNZgjIKk+rRdEs/GhCrA+r7yB7HAFPBWkX/pZZf5QrEAk+GWuQkyKW5TJ99CzbXyVP
         P2Jw==
X-Forwarded-Encrypted: i=1; AHgh+Rp74ADe7sSH4mJLP+YGFgHv6RyDUwPYTz8P5MLYEKMe1SqLrUk3SAmr30eKQuYea7R8wdRasRuxYY2PpP7vzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwcpCUEO4GVhVDIeU69pdRQIfLAH6mZuivxBC40SOXffYex5fnB
	hIVIhRVSc1X6RIXDiWgnxwoZe/dw6NyIDFe0GpnwaaNWzh1rvRuSAbXZ
X-Gm-Gg: AR+sD13ggiARJSTOfZk2w31m5RQOcqXOL5VRGnu2utOs8E6nEyO1REfB132eDyF3yfa
	PHmSwuokuducuYg2WHKeApnt+PP/gAhaF89B3KNkZZKjWufzpvJ/AehqikXHqkK/m3Z8w0hdeIe
	G7kdG7qXPPBI//gftsLYJr+Pp57ctt1szWeoH/VVpKPNayyW3z3jbKg7J//Mie7rgPzpBF41WNx
	+Xpm5ax7GALvAZNJx9U1di/keKmc0aCVCpJBzT1rqbt+mC8WmlfOfoBDfaL56YAn3gJmWm758k8
	VaLedC5uBh2akQFmuXa0JocMSOW+0o4aL3C9F5uytCh/iW3tGH+P88ilso8sIRYZfnRQjuTaKcB
	BmW1odBO/tEOy+evhwICbp+Rl2UUASgqEXBUvIAjv3FTIpad5QnuyABF0k03fkkHsvkQzIu7Z+u
	UCn5VNqXWK4JEdsy7ls2q5KI2576OQXXRR/6QirlspnViXm21IYAR3SHNEvWnK4iV5TjFUVCXjP
	f09wZ15TzDRA0YRcpX3+mMYDGCrvJlQg0IVYavQg7+7h6uUUa/HZ6+W16LxDDHM9P3pzRYPDyJT
	PavB
X-Received: by 2002:a05:600c:1d02:b0:493:f42e:1b3f with SMTP id 5b1f17b1804b1-4997c1412a8mr27209975e9.3.1786531772439;
        Wed, 12 Aug 2026 03:49:32 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B84A600F9E120266BE3CC9B.dsl.pool.telekom.hu. [2001:4c4e:1b84:a600:f9e1:2026:6be3:cc9b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4997abf94c1sm60999775e9.14.2026.08.12.03.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 03:49:31 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] drm/rockchip: vop2: Scale the AXI clock to the bandwidth the mode needs
Date: Wed, 12 Aug 2026 12:49:04 +0200
Message-ID: <20260812104909.6390-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_034934_704129_F8C32ABC 
X-CRM114-Status: GOOD (  29.71  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VOP2 fetches the scanout data for all of its video ports over a single
AXI clock.  On RK3588 that clock is pinned to 500 MHz by the device tree
and nothing ever raises it, so a mode whose pixel rate outruns what the
AXI clock can deliver underruns the internal scanout FIFO.  The hardware
reports this as POST_BUF_EMPTY and the picture is corrupted.

3840x2160@120 over DisplayPort is such a mode.  Measured on an Orange Pi
5 Plus by moving the rate at runtime while the mode was up, with dclk
unchanged at 594 MHz throughout, so that the AXI rate was the only
variable:

  500 MHz: ~594000 suppressed vop2_isr callbacks per 5 s, corrupted
  750 MHz: no POST_BUF_EMPTY at all for the 42 s the phase lasted, clean
  500 MHz: ~607000 suppressed callbacks per 5 s, corrupted again

Both transitions are immediate.  Heiko Stuebner reports the same
starvation on different hardware [1].

The requirement follows each port's pixel rate rather than its interface
clock, and it is per port rather than aggregate.  Two measurements at
500 MHz pin that down:

  - a single port scanning out 3840x2160@120 underruns, while the same
    composed pixel rate spread over three ports - 3840x2160@60 on one
    and 3840x2160@30 on two others - is clean for a minute with no
    underrun on any of them.  The totals are equal to the pixel:
    3840*2160*120 == 3840*2160*(60+30+30).

  - 3840x2160@60 is clean where 3840x2160@120 is not, although both run
    dclk at 594 MHz on this board: the 120 Hz link is YCbCr 4:2:0, which
    halves dclk without halving the rate at which the port consumes
    pixels.

So the condition belongs on each video port's own crtc_clock.  Summing
across ports would be wrong, and keying on dclk would miss 4:2:0
entirely.  The threshold sits between the measured points: 3840x2160@60
(594000 kHz) and 2560x1440@144 (about 586000 kHz) are both clean at the
default rate, 3840x2160@120 (1188000 kHz) is not.

Take the maximum over the video ports that are scanning out rather than
counting them, so that disabling one port cannot drop the rate below
what a port that is still scanning needs.  The rate the platform set up
is used as the lower bound, so a board that already configures a higher
rate keeps it.

Tested on the same board on drm-misc-next plus the dw-dp and Rockchip
USBDP PHY series, which DisplayPort Alt Mode needs in order to come up
at all: 3840x2160@120 selects 750 MHz and runs with no underrun,
dropping to 3840x2160@60 returns the clock to 500 MHz and stays clean,
and going back raises it again.  On that same kernel without this patch
the output shows no picture at any mode.

Link: https://lore.kernel.org/all/20260808104240.13776-1-royalnet026@gmail.com/
Link: https://lore.kernel.org/all/20767137.geO5KgaWL5@diego/ [1]
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
Cristian, this overlaps with your ACLK work: the condition here is not
FRL-specific, so it also covers the HDMI FRL case that 7e580d1cc3aa
handles in the rockchip-3588 branch.  I did not want to queue this
behind a series that is itself blocked, but I am equally happy to rebase
on top of yours, or to drop this if you would rather carry it.  Whatever
shape it takes should keep the FRL case working rather than replace it.

Chaoyi, thank you for the FIFO description and the downstream decision
flow - the per-port measurement above came directly out of that.

Based on drm-misc-next at c8d3d795dd40.  Tested on an Orange Pi 5 Plus;
DisplayPort Alt Mode there additionally needs the dw-dp series and the
Rockchip USBDP PHY series, neither of which is merged yet, so the test
kernel carried both.
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 46 ++++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  2 +
 2 files changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 4cce3e336f5b..5dda1fc1c8a1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -104,6 +104,20 @@ enum vop2_afbc_format {
 
 #define VOP2_MAX_DCLK_RATE		600000000UL
 
+/*
+ * All video ports fetch their scanout data over a single AXI clock.  The
+ * hardware buffers that data in an internal FIFO which is drained at the
+ * pixel rate, so a mode whose pixel rate outruns the fill rate underruns the
+ * FIFO, which the hardware reports as POST_BUF_EMPTY and which shows up as a
+ * corrupted image.  Raise the AXI clock for modes that need it.
+ *
+ * The requirement follows the pixel rate rather than the interface clock: a
+ * YCbCr 4:2:0 link halves dclk but not the rate at which the video port
+ * consumes pixels.
+ */
+#define VOP2_ACLK_RATE_HIGH		750000000UL
+#define VOP2_HIGH_BW_PIXCLK_KHZ		1000000
+
 /*
  * bus-format types.
  */
@@ -1008,6 +1022,32 @@ static bool vop2_gamma_lut_in_use(struct vop2 *vop2, struct vop2_video_port *vp)
 	return gamma_en_vp_id != nr_vps && gamma_en_vp_id != vp->id;
 }
 
+/*
+ * Pick the AXI clock rate that satisfies every video port that is scanning
+ * out.  Taking the maximum over the active ports rather than counting them
+ * means a port being disabled can never drop the rate below what a port that
+ * is still scanning needs.
+ */
+static void vop2_update_aclk_rate(struct vop2 *vop2)
+{
+	unsigned long rate = vop2->aclk_rate_normal;
+	struct drm_crtc *crtc;
+
+	if (vop2->version != VOP_VERSION_RK3588)
+		return;
+
+	drm_for_each_crtc(crtc, vop2->drm) {
+		if (!crtc->state->active)
+			continue;
+
+		if (crtc->state->adjusted_mode.crtc_clock > VOP2_HIGH_BW_PIXCLK_KHZ &&
+		    rate < VOP2_ACLK_RATE_HIGH)
+			rate = VOP2_ACLK_RATE_HIGH;
+	}
+
+	clk_set_rate(vop2->aclk, rate);
+}
+
 static void vop2_crtc_atomic_disable(struct drm_crtc *crtc,
 				     struct drm_atomic_commit *state)
 {
@@ -1053,6 +1093,8 @@ static void vop2_crtc_atomic_disable(struct drm_crtc *crtc,
 	if (!vop2->enable_count)
 		vop2_disable(vop2);
 
+	vop2_update_aclk_rate(vop2);
+
 	vop2_unlock(vop2);
 
 	if (crtc->state->event && !crtc->state->active) {
@@ -1780,6 +1822,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vop2_lock(vop2);
 
+	vop2_update_aclk_rate(vop2);
+
 	ret = clk_prepare_enable(vp->dclk);
 	if (ret < 0) {
 		drm_err(vop2->drm, "failed to enable dclk for video port%d - %d\n",
@@ -2875,6 +2919,8 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 		return dev_err_probe(drm->dev, PTR_ERR(vop2->aclk),
 				     "failed to get aclk source\n");
 
+	vop2->aclk_rate_normal = clk_get_rate(vop2->aclk);
+
 	vop2->pclk = devm_clk_get_optional(vop2->dev, "pclk_vop");
 	if (IS_ERR(vop2->pclk))
 		return dev_err_probe(drm->dev, PTR_ERR(vop2->pclk),
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index ffcb39c130aa..50a3513c89ab 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -326,6 +326,8 @@ struct vop2 {
 	unsigned int enable_count;
 	struct clk *hclk;
 	struct clk *aclk;
+	/* AXI clock rate set up by the platform, used as the lower bound. */
+	unsigned long aclk_rate_normal;
 	struct clk *pclk;
 	struct clk *pll_hdmiphy0;
 	struct clk *pll_hdmiphy1;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
