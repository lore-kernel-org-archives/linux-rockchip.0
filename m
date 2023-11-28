Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADD44C07E98
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAEMFan7Mekv9g+PAhoVc2ujLSASYt5L6g5sPFuQcAU=; b=wLdb2HXIgg1avZ
	9vPMlBzrAO4Zzgfvcr3r4o6cgho3IptgBlvGGdvGk7RlKLtg5X/x1dDFBTzDFUNTPtMFeUwV3T/do
	kNFD8Tdb0JNo1Aei/yVcd1nDoSecBMrUKfU5sxmWNJkQScJaMw//PTbY54TYwxDxNR/QGSFhlLLjO
	2lVB3ed3azB0eltUHi3DbkS3vqMkCbBPJIuLmWP1E4sR2pIFQPXFkhU4MI4yeJTRl1dM0v6SbOFe7
	5VTxESzd2egTVUhgx9HdbA3dAJSjjnK0j5tTjdxUvcuuzrqcHhmJwebq1vzmYWMeXSJ6wSb9U5KuS
	r7ykmcK+1YhZmIzal4CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vK8-004uka-0g;
	Tue, 28 Nov 2023 10:28:12 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIL-004t1B-2N;
	Tue, 28 Nov 2023 10:26:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 07691CE193B;
	Tue, 28 Nov 2023 10:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9340C433CA;
	Tue, 28 Nov 2023 10:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167179;
	bh=c0jADGC6TjAEj2UIRZa0xYYM+pIDgthxehFYDaZ1tpk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IIEdA55PNmhCheulDzBMd2sY6UaWH7VjNyg5ce7UwwH0X9L9VdnXWHHAODiBPFyLO
	 qMUxJ0DUGEUD9vX1+sGre4jRZniTk+fzgdmApQDW1kLlFsxZG9hwymMhAzkzc4SxfE
	 QMk3EQhKZk73AZWIkdOphc2M4xofwU/uLie2TRr4/XBkzc93NcOKDM/y4PkN6b5pF+
	 TUCG4htx7qsmv7ooxbO6Hawcb3NmoKmdc9J0STAv1RA4qc85xMnnAWiivG5V6NOVht
	 UIsdMgntR5Nxkryl9bS3dD+Qv/Caggty0KnB3pJWTr0vh3QIt7bnJmbDN8CSJENvoA
	 Jev6I47PRoEWg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:52 +0100
Subject: [PATCH v4 41/45] drm/sun4i: hdmi: Convert encoder to atomic
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-41-c7602158306e@kernel.org>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2311; i=mripard@kernel.org;
 h=from:subject:message-id; bh=c0jADGC6TjAEj2UIRZa0xYYM+pIDgthxehFYDaZ1tpk=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y87KHwJErVqbnpsNFWhyERp+zTliKxwkXu/NxxrL
 NRlUpDqKGVhEONikBVTZIkRNl8Sd2rW6042vnkwc1iZQIYwcHEKwETOZzP8z77gc+b6/Lx2K1Ob
 Jb5rWZs2/v55TH3KG6aQf/dWR3JM52b4p+BzXP9golbWhKMH7zX0Tn7q9v6yj83s9ly9J5nzdLj
 n8QMA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_022622_164772_88D5FF7B 
X-CRM114-Status: GOOD (  11.98  )
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

The sun4i_hdmi driver still uses the non-atomic variants of the encoder
hooks, so let's convert to their atomic equivalents.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
index 152375f3de2e..799a26215cc2 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
@@ -82,7 +82,8 @@ static int sun4i_hdmi_atomic_check(struct drm_encoder *encoder,
 	return 0;
 }
 
-static void sun4i_hdmi_disable(struct drm_encoder *encoder)
+static void sun4i_hdmi_disable(struct drm_encoder *encoder,
+			       struct drm_atomic_state *state)
 {
 	struct sun4i_hdmi *hdmi = drm_encoder_to_sun4i_hdmi(encoder);
 	u32 val;
@@ -96,7 +97,8 @@ static void sun4i_hdmi_disable(struct drm_encoder *encoder)
 	clk_disable_unprepare(hdmi->tmds_clk);
 }
 
-static void sun4i_hdmi_enable(struct drm_encoder *encoder)
+static void sun4i_hdmi_enable(struct drm_encoder *encoder,
+			      struct drm_atomic_state *state)
 {
 	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
 	struct sun4i_hdmi *hdmi = drm_encoder_to_sun4i_hdmi(encoder);
@@ -120,9 +122,10 @@ static void sun4i_hdmi_enable(struct drm_encoder *encoder)
 }
 
 static void sun4i_hdmi_mode_set(struct drm_encoder *encoder,
-				struct drm_display_mode *mode,
-				struct drm_display_mode *adjusted_mode)
+				struct drm_crtc_state *crtc_state,
+				struct drm_connector_state *conn_state)
 {
+	const struct drm_display_mode *mode = &crtc_state->mode;
 	struct sun4i_hdmi *hdmi = drm_encoder_to_sun4i_hdmi(encoder);
 	unsigned int x, y;
 	u32 val;
@@ -201,9 +204,9 @@ static enum drm_mode_status sun4i_hdmi_mode_valid(struct drm_encoder *encoder,
 
 static const struct drm_encoder_helper_funcs sun4i_hdmi_helper_funcs = {
 	.atomic_check	= sun4i_hdmi_atomic_check,
-	.disable	= sun4i_hdmi_disable,
-	.enable		= sun4i_hdmi_enable,
-	.mode_set	= sun4i_hdmi_mode_set,
+	.atomic_disable	= sun4i_hdmi_disable,
+	.atomic_enable	= sun4i_hdmi_enable,
+	.atomic_mode_set	= sun4i_hdmi_mode_set,
 	.mode_valid	= sun4i_hdmi_mode_valid,
 };
 

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
