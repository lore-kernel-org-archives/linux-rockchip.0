Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 004C2C5478C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3CZUg7z+CSsIGZENdCMN8rJNglVoyV815KGcn8z2os=; b=Xri/D434Pa6I1z
	7KhvjhKAAyfqh48w2YpsozoCBZThaYdB+DnHM54UZUOoHR+b1RTYxbkF6YmsAKyxqOKx0JUrOGqV2
	uwwfzp7n50J6MLM/J3Ro1Gs/rg4AvCfL2gP3mvfx90IKWhcHdvIfLh9rfInQcFFsIlC7eqRim0sU/
	vuA6cFhZ7HsV7rt8J2fXDOzbp7x/oVM7/8Cm/wcyd2kE0dZBQHx9Kv07R5Dg6ph2aXrTd10J87BWl
	urwsdqQKXu0jnvTW0jXoRrC7CJkRgzaSTFe+NQU4LryZNQbBh6eBB3xps1HkrmnoiMlRVBjFulnCu
	Bfejzv8bAMiwJHR/VM1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDzc-000000069TB-1hjg;
	Thu, 22 Feb 2024 18:40:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDzG-000000069An-0Dxo;
	Thu, 22 Feb 2024 18:40:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=MTnUbfrhclbgZ2tzIZVZD82l9kS0u0j0Zhzjq8Q5sGw=; b=nVUbYI6mLo7W5iTMMvoHUxIGEd
	A3uCxSavpc7p2lnJ/1Fy6uEzGuAcLbcjTF8fbSvHclWunQLqIPP2j4QTrRnoQO5iABgLNL02Foo3r
	ZkkdgAaordO/OEE6cCj4ZjgJppS2LBfe8ckCPlnCXERazCzmmNnrloXFSMz0avGjWMgNH0eXfHa5s
	9+UT5lbL19Szk6wI/ZUUbsUo2ydvawZsNdEYkrB77TwEkdynweFOgobQiHcwrlgurlf9//EcLFK0b
	1AE5Jpw94rzmBwd/Xt2iKEFniXNRc9wqlUe/r0ogltluy+reWWMQpZW+kO62obDpVKbA8jHTsLyZv
	sSs9VijA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDc5-00000004IvV-0NIe;
	Thu, 22 Feb 2024 18:16:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4AC52617FB;
	Thu, 22 Feb 2024 18:15:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1E27C433F1;
	Thu, 22 Feb 2024 18:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625758;
	bh=HwA8pHzZqVdQyHV/A0cE4sshsUXIMq0spgAC4b0SoHc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qmT/rE2rhMFDIHrJCGBxP+N9iYDNev4YbiCdQ1llWH1TWCYk+Ial8qXGuWGm3zEZp
	 h/SDvGDs+mp9KiSkdkvqRyY4ns6TBhMn00Z7IFt+qn/ty2LbBLnw2hmPzdUJ8so7to
	 hFK7qgI2FGauNYfYYMtOG/bbGd5GwIhw5bVx8OJFgcYoA073Klg2IfL6a+CgHQhgwV
	 VJDGd6KRhc2OgM/YD3y/ePUSkEFxJ4NprmsVwNmn6Jkc6z/mKcRptQtv7UUGCRChhl
	 j1aKoXCAdPo9Ks/vBSuU8eJKdg1bJqpH2a37Cb1Eyr2ae6+MslxwiHuyoYZ0v75r2I
	 vThmaF4lzrdqw==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:14:18 +0100
Subject: [PATCH v7 32/36] drm/sun4i: hdmi: Convert encoder to atomic
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-32-8f4af575fce2@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2360; i=mripard@kernel.org;
 h=from:subject:message-id; bh=HwA8pHzZqVdQyHV/A0cE4sshsUXIMq0spgAC4b0SoHc=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+/5e5Ev7lbvnxKZUft0ONiGLa4p+WsJN3fEVjf8dt
 aPUHn3vKGVhEONikBVTZIkRNl8Sd2rW6042vnkwc1iZQIYwcHEKwETW2DAyvFW67JV4+cM3dvn9
 n48pzH5/KWOy18UPFzoErJ84XfVes5Thr/gBXvZl29JP3dK4srGK7+q8DdaHV8cuVBKfMneGocQ
 FGRYA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181605_390220_D45E9AFB 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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

Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>
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
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
