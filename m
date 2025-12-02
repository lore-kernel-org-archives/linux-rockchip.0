Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDD08D12675
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 21:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mX/3pFy00BLYXrLqQ1rKnf/XezMJ9gRPqxtP8t2HyN0=; b=YtWmbyLecvpSe1
	DH6/k+nYSUakwj/VR60tAVW9W6EM5n2IZFKDjcKB5E91XOOr/YuVCNKFTs90IQL5n/c8rcbHfH7jR
	Jg5jexxjtegTyH+cYy/2ry8MqSzPr3eeTS68RmkARanR35rg6BWrcttkX81snm0RTwheVFOVCvv78
	BeNbugrTtQBM8toTPvyHpMLc8z6/L5YrXaYNYnXP8CJ82lRb08y6Ex2zfPqK+zCu+TpTmJaXr5/LE
	4E3AzeM42OsssdnQOF8CpwIJedvxIIe9wnPudNPkxlfmLHHSQvkgAnm8ezBATQ0klqeHZunb9QamA
	8ZHWbdxadeGgmeLotiMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQXWb-00000005pJj-06cy;
	Tue, 02 Dec 2025 21:03:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQXWZ-00000005pIs-3flS
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 21:03:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C8CB66014D;
	Tue,  2 Dec 2025 21:03:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 091ADC4CEF1;
	Tue,  2 Dec 2025 21:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764709382;
	bh=VpnzWhbXjZHpWvJiOcJ9I5dtNVVIO7wS1KDlgT+aD5M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=P8iKijd81YSDt6hL+Uz21nS8IPTKuZg5TlnagB0QbcK7XpaKXDtQ5zS4sZSYo9Eye
	 /8fjbHdvWB2Ij6ZPWSmreTOg/FCakqul5owkM+Y43/NYZxOUPB5nX6DnYcgd2+XzD3
	 sGwK9d+lsU3LC8kn3ljfTlY6rCtl2kXMrOemRUxpotK64Zy9SfO4WtQTl2B4Bp/Y24
	 sWMgFiQJhTZF+bT7K+2zsjcWf+e+gQHff739N1aJrv2tBWnTrbgrp4jCJfDI75hisn
	 rmXPpLJtFbWahz4QuoQTxsr/NeBdCyWPv+d19Jwj9F65wtG2523Zfl7slDNYeQGg3m
	 dXs00NroKnuiA==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 02 Dec 2025 22:02:42 +0100
Subject: [PATCH v6 3/4] drm/rcar-du: Modify custom commit tail
MIME-Version: 1.0
Message-Id: <20251202-mcde-drm-regression-thirdfix-v6-3-f1bffd4ec0fa@kernel.org>
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
In-Reply-To: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
To: Vicente Bergas <vicencb@gmail.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Marek Vasut <marek.vasut+renesas@mailbox.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Aradhya Bhatia <a-bhatia1@ti.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, Linus Walleij <linusw@kernel.org>, 
 Geert Uytterhoeven <geert@linux-m68k.org>
X-Mailer: b4 0.14.3
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

commit c9b1150a68d9362a0827609fc0dc1664c0d8bfe1
"drm/atomic-helper: Re-order bridge chain pre-enable and post-disable"
caused regressions in all bridges that e.g. send DSI commands in
their .prepare() and .unprepare() callbacks when used with R-Car DU.

This is needed on R-Car DU, where the CRTC provides clock to LVDS
and DSI, and has to be started before a bridge may call .prepare,
which may trigger e.g. a DSI transfer.

This specifically fixes the case where ILI9881C is connected to R-Car
DU DSI. The ILI9881C panel driver does DSI command transfer in its
struct drm_panel_funcs .prepare function, which is currently called
before R-Car DU rcar_du_crtc_atomic_enable() rcar_mipi_dsi_pclk_enable()
and the DSI command transfer times out.

Fixes: c9b1150a68d9 ("drm/atomic-helper: Re-order bridge chain pre-enable and post-disable")
Link: https://lore.kernel.org/all/20251107230517.471894-1-marek.vasut%2Brenesas%40mailbox.org/
Tested-by: Geert Uytterhoeven <geert@linux-m68k.org>
Co-developed-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
Tested-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Linus Walleij <linusw@kernel.org>
---
This is a modified version of Marek's patch using the approach
from MCDE. I'm pretty sure this driver also needs the original
semantic ording during disablement, and it surely doesn't hurt
to restore it too.
---
 drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c | 33 ++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c
index 216219accfd9..299d14ec486f 100644
--- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c
+++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c
@@ -540,11 +540,38 @@ static void rcar_du_atomic_commit_tail(struct drm_atomic_state *old_state)
 			rcdu->dpad1_source = rcrtc->index;
 	}
 
-	/* Apply the atomic update. */
-	drm_atomic_helper_commit_modeset_disables(dev, old_state);
+	/*
+	 * Apply the atomic update.
+	 *
+	 * We need special ordering to make sure the CRTC disabled last
+	 * and enabled first. We do this with modified versions of the
+	 * common modeset_disables/enables functions.
+	 */
+
+	/*
+	 * Variant of drm_atomic_helper_commit_modeset_disables()
+	 * that will disable and post-disable all bridges BEFORE
+	 * disabling the CRTC.
+	 */
+	drm_atomic_helper_commit_encoder_bridge_disable(dev, old_state);
+	drm_atomic_helper_commit_encoder_bridge_post_disable(dev, old_state);
+	drm_atomic_helper_commit_crtc_disable(dev, old_state);
+	drm_atomic_helper_update_legacy_modeset_state(dev, old_state);
+	drm_atomic_helper_calc_timestamping_constants(old_state);
+	drm_atomic_helper_commit_crtc_set_mode(dev, old_state);
+
 	drm_atomic_helper_commit_planes(dev, old_state,
 					DRM_PLANE_COMMIT_ACTIVE_ONLY);
-	drm_atomic_helper_commit_modeset_enables(dev, old_state);
+
+	/*
+	 * Variant of drm_atomic_helper_commit_modeset_enables()
+	 * that will enable the CRTC BEFORE pre-enabling and
+	 * enabling the bridges.
+	 */
+	drm_atomic_helper_commit_crtc_enable(dev, old_state);
+	drm_atomic_helper_commit_encoder_bridge_pre_enable(dev, old_state);
+	drm_atomic_helper_commit_encoder_bridge_enable(dev, old_state);
+	drm_atomic_helper_commit_writebacks(dev, old_state);
 
 	drm_atomic_helper_commit_hw_done(old_state);
 	drm_atomic_helper_wait_for_flip_done(dev, old_state);

-- 
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
