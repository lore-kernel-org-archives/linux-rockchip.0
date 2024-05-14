Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F800C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 May 2024 15:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EI0m8KKxBe48cO77fmlE93DYWjGWHg2BSsRkpANVfIY=; b=fiK8534/7H0OAW
	JWO/vkMq4TJApiQlW879iW6XLHpd9dxNRc8KmU7+TEtGod3AF5dcbXQKzte5yvz7cmfLK6+WGsMJe
	XvDTy3hxg7vNU/GGS+x1xJg7TyaN4H3qmg5v2ghYLi2cc3XYSNuDr3kt7qtGB5z3v0nVDMUhkS/1q
	oICu1xURaGRIj4WK4EOPzI+xCZ8V2w27bVI3yjluHa1d8B5qw9LctWP1iPHZ7oNxKTBluFfUzcwZv
	y0CdpLgQfuNejREyNLIrG/VJq8gX5SxcQbePwsCRjSIHHHYuAaD5imO5wSL0QI0NUx1CDOXATA3qI
	+tC8oirYC1ZoXxldGALA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6u0v-0000000GJcF-20vH;
	Tue, 14 May 2024 15:24:25 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6u0n-0000000GJVd-1BnL;
	Tue, 14 May 2024 15:24:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715700254;
	bh=PA/IrvxvIM1ep8+7B89JcUeTkpU1YjsSPqMoeUWmhXE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FTBoB/7uotXXUuwJ8K2YfoYtA/rDvdjmDaQQEPVWDdXWA202pbtg8J7SPXQoW3ufN
	 UaQMlPxpioSSIfoX90k0nPA377XM0GYLVHL/atltBTMSY33pYN64CCHQQW2my9agS7
	 k/on0z/UGaaQs0akuOubpl1+KtZ0ciLAtOcDl+vC+Hyi4BtJpRN89jDlNUrO7rnnWK
	 cv7xupPLy+51AxvvlgSE/2fR+O/+lO4g/0ed1R8e9SxfRo6db8xh+lYlmgiZ1dkIEb
	 DhQ9mtc51bNAsvyVAR5SrC1jJpcitZuhfkPgAdQdHPBPYBZlL4v17cAt9ZzhixLReG
	 S7lwSTHqRC0EA==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id ED28B3782191;
	Tue, 14 May 2024 15:24:10 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 1/3] drm/rockchip: vop2: Add clock resets support
Date: Tue, 14 May 2024 11:19:45 -0400
Message-ID: <20240514152328.21415-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240514152328.21415-1-detlev.casanova@collabora.com>
References: <20240514152328.21415-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_082417_496081_188F5A50 
X-CRM114-Status: GOOD (  15.85  )
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

At the end of initialization, each VP clock needs to be reset before
they can be used.

Failing to do so can put the VOP in an undefined state where the
generated HDMI signal is either lost or not matching the selected mode.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 30 ++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index fdd768bbd487c..e81a67161d29a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -17,6 +17,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
+#include <linux/reset.h>
 #include <linux/swab.h>
 
 #include <drm/drm.h>
@@ -157,6 +158,7 @@ struct vop2_win {
 struct vop2_video_port {
 	struct drm_crtc crtc;
 	struct vop2 *vop2;
+	struct reset_control *dclk_rst;
 	struct clk *dclk;
 	unsigned int id;
 	const struct vop2_video_port_data *data;
@@ -1915,6 +1917,26 @@ static int us_to_vertical_line(struct drm_display_mode *mode, int us)
 	return us * mode->clock / mode->htotal / 1000;
 }
 
+static int vop2_clk_reset(struct vop2_video_port *vp)
+{
+	struct reset_control *rstc = vp->dclk_rst;
+	struct vop2 *vop2 = vp->vop2;
+	int ret;
+
+	if (!rstc)
+		return 0;
+
+	ret = reset_control_assert(rstc);
+	if (ret < 0)
+		drm_warn(vop2->drm, "failed to assert reset\n");
+	udelay(10);
+	ret = reset_control_deassert(rstc);
+	if (ret < 0)
+		drm_warn(vop2->drm, "failed to deassert reset\n");
+
+	return ret;
+}
+
 static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 				    struct drm_atomic_state *state)
 {
@@ -2055,6 +2077,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
 
+	vop2_clk_reset(vp);
+
 	drm_crtc_vblank_on(crtc);
 
 	vop2_unlock(vop2);
@@ -2706,6 +2730,12 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 		vp->data = vp_data;
 
 		snprintf(dclk_name, sizeof(dclk_name), "dclk_vp%d", vp->id);
+		vp->dclk_rst = devm_reset_control_get_optional(vop2->dev, dclk_name);
+		if (IS_ERR(vp->dclk_rst)) {
+		        drm_err(vop2->drm, "failed to get %s reset\n", dclk_name);
+		        return PTR_ERR(vp->dclk_rst);
+		}
+
 		vp->dclk = devm_clk_get(vop2->dev, dclk_name);
 		if (IS_ERR(vp->dclk)) {
 			drm_err(vop2->drm, "failed to get %s\n", dclk_name);
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
