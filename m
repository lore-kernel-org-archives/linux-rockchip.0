Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E8EFC48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fnSr9BRV+QP4WNC39vKqYUNGjowKJYX5jo4DPEra9w=; b=c5WpJnABFpL7+m
	ytnexj4qxQmXeqWU1zsIy1FzA/7NwkpHn7NxGQAYSqvrY4RovT7MEU3KrZLIFtBcfboxTlXCS0LE0
	atHlZQeLOhz3O9fJJaiJ5rJOt7S0+b0RKQ7oR7+bVoc82bTUAAHZs/dCIUWsKU6P9LhJ06ATCT5Fd
	SR0BnwN2SsOV1w2qE/vpHj8eVEJ16Irk30xb0UQ1ak4pVaraVxKheuAMVgwT5e2CObRnpIOp3TYJT
	xeDUIKU6Ft/05xW37LD0RhqlDhUqNXlUtgnFLUVyw1kHjgzmQP7xOCwphcOatfe9nH7AXgjuPFS6k
	CRulr3LJVRSwAzv3BTqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDzA-0000000696E-1KTb;
	Thu, 22 Feb 2024 18:39:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDyu-000000068sl-47Go;
	Thu, 22 Feb 2024 18:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=nX6MiQJkkAEZl/HPfoeELHO6SyEOrvctmQOjhIz8+Rs=; b=NrShZ1jootsxak3AApN6j/rqoR
	5Ihomotds9DaFvTqcK6SkRXpfpVwd5T+Fk9+yw51zT55DJpjN2pU7KoYQXjnEez1ZxDjUiq7SJ1By
	B3J693TgYVhoE0dcBc4ZLE4EF8DK/HJxRICFo5iFul/bRh+nAUsnSTKTpDk/zgkX0J9w5ZrfwACcM
	b9o6xW4SZAh3mhWQD7X1GVYN2LFskEPKLQ/m0g/FS+9lR4C+ZrcbUoLlZXus16hwAc4DaxKf5+Kin
	Po8nSDNaUBcZwjb0WAKjE6p1M0cHklHjM/3edP81FwgwWbcQmYXcfbFwviXVry4+20KN1hL4e5QyU
	e/VnOTsA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDcC-00000004J0u-1Nne;
	Thu, 22 Feb 2024 18:16:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3132361A0A;
	Thu, 22 Feb 2024 18:16:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DAB7C433F1;
	Thu, 22 Feb 2024 18:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625760;
	bh=06Y9bTrXk/Zk/AbVbMU7GmJ4QmvebUl1g2EB4tW+8+Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=o/2jN3OcW2EHEuhgApfFwexvsxu24F6mDo3xTlm5P5n0dYYsGhwUtDPI8hrjXhRBQ
	 v0X2n88pj2d7iB7OVwpYNybk546AvqFvCTIe6uvKxYSDSudW3MzkIH6giFRsqEtehe
	 9wJXC/RFsRwp2s1hHm4/vz5zakhx540MBvwpSdmWdHLL4YLqW0BPR7QufjJ04Ipeme
	 SHV98ayR1euxJvpLnerk5O4wsbEgTXNSTgLfbxbR/kcL2RCkRkW8RtKqR8gbQmab2O
	 2euu17XWbEgn3L4iekLP6XfFkXUw9eA2S2wKA/dLBQoQRcZtsS6iQE9o2Ghwt31VpD
	 m3LiNucktuV2Q==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:14:19 +0100
Subject: [PATCH v7 33/36] drm/sun4i: hdmi: Move mode_set into enable
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-33-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Sui Jingfeng <sui.jingfeng@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2857; i=mripard@kernel.org;
 h=from:subject:message-id; bh=06Y9bTrXk/Zk/AbVbMU7GmJ4QmvebUl1g2EB4tW+8+Y=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+/4933Hnf92ptXcjNhkouzH3NuQwhs9/YmSuVxqwc
 PGjc+e7OkpZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCRFE5GhmXXxGSSfV2OzZ4f
 6nS4zjV8Tumb2Tfe97KGtl8977ewfBfDP4vVfHcfXU9XPBU088R+vs9XX1eu61p5KeN4pB3Tvs1
 f9zADAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181612_613356_DCE04C12 
X-CRM114-Status: GOOD (  10.47  )
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

We're not doing anything special in atomic_mode_set so we can simply
merge it into atomic_enable.

Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 38 +++++++++++++---------------------
 1 file changed, 14 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
index 799a26215cc2..bae69d696765 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
@@ -103,33 +103,11 @@ static void sun4i_hdmi_enable(struct drm_encoder *encoder,
 	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
 	struct sun4i_hdmi *hdmi = drm_encoder_to_sun4i_hdmi(encoder);
 	struct drm_display_info *display = &hdmi->connector.display_info;
+	unsigned int x, y;
 	u32 val = 0;
 
 	DRM_DEBUG_DRIVER("Enabling the HDMI Output\n");
 
-	clk_prepare_enable(hdmi->tmds_clk);
-
-	sun4i_hdmi_setup_avi_infoframes(hdmi, mode);
-	val |= SUN4I_HDMI_PKT_CTRL_TYPE(0, SUN4I_HDMI_PKT_AVI);
-	val |= SUN4I_HDMI_PKT_CTRL_TYPE(1, SUN4I_HDMI_PKT_END);
-	writel(val, hdmi->base + SUN4I_HDMI_PKT_CTRL_REG(0));
-
-	val = SUN4I_HDMI_VID_CTRL_ENABLE;
-	if (display->is_hdmi)
-		val |= SUN4I_HDMI_VID_CTRL_HDMI_MODE;
-
-	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
-}
-
-static void sun4i_hdmi_mode_set(struct drm_encoder *encoder,
-				struct drm_crtc_state *crtc_state,
-				struct drm_connector_state *conn_state)
-{
-	const struct drm_display_mode *mode = &crtc_state->mode;
-	struct sun4i_hdmi *hdmi = drm_encoder_to_sun4i_hdmi(encoder);
-	unsigned int x, y;
-	u32 val;
-
 	clk_set_rate(hdmi->mod_clk, mode->crtc_clock * 1000);
 	clk_set_rate(hdmi->tmds_clk, mode->crtc_clock * 1000);
 
@@ -181,6 +159,19 @@ static void sun4i_hdmi_mode_set(struct drm_encoder *encoder,
 		val |= SUN4I_HDMI_VID_TIMING_POL_VSYNC;
 
 	writel(val, hdmi->base + SUN4I_HDMI_VID_TIMING_POL_REG);
+
+	clk_prepare_enable(hdmi->tmds_clk);
+
+	sun4i_hdmi_setup_avi_infoframes(hdmi, mode);
+	val |= SUN4I_HDMI_PKT_CTRL_TYPE(0, SUN4I_HDMI_PKT_AVI);
+	val |= SUN4I_HDMI_PKT_CTRL_TYPE(1, SUN4I_HDMI_PKT_END);
+	writel(val, hdmi->base + SUN4I_HDMI_PKT_CTRL_REG(0));
+
+	val = SUN4I_HDMI_VID_CTRL_ENABLE;
+	if (display->is_hdmi)
+		val |= SUN4I_HDMI_VID_CTRL_HDMI_MODE;
+
+	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
 }
 
 static enum drm_mode_status sun4i_hdmi_mode_valid(struct drm_encoder *encoder,
@@ -206,7 +197,6 @@ static const struct drm_encoder_helper_funcs sun4i_hdmi_helper_funcs = {
 	.atomic_check	= sun4i_hdmi_atomic_check,
 	.atomic_disable	= sun4i_hdmi_disable,
 	.atomic_enable	= sun4i_hdmi_enable,
-	.atomic_mode_set	= sun4i_hdmi_mode_set,
 	.mode_valid	= sun4i_hdmi_mode_valid,
 };
 

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
