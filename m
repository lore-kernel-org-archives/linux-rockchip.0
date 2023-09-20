Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D6BC04AA7
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 15:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d88s5qJcunP0IAg8/MMwKacj0G8gcGXCMqKeZvaQY4U=; b=gCSdQJl4mEGnWG
	NWKegNsi24eKwmNa8l5V24OPk/59n0Ci6TXqwhqrh7DltGWsYQHzNKaUbFN9qruWKmT+aQJwlzl42
	d6QqY3iFHFrVS53uaM7ze2Nzus5Y3hn60zdOT+olU/K266G81blHKuvRpTUcGjJ90f+P6UVdtcvXG
	eag3zdjwioWmqc3NnR3CulVR0cY+HlZhjo+oLB/2gLwsV+ofKr5sMoqN0NtpI5CG3+eRGX/FhYIVr
	YD/ZCv2oEKh5kCGiAKAwaFzf9ma5ro/5VlZPXSNBwiY6U7DHuzFh8amWZSojJIW1L1NuaeLqXuliK
	SjHvFweTcKOtyxIIKbfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qizOh-003XYD-3B;
	Wed, 20 Sep 2023 15:45:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyJc-003LVA-0G;
	Wed, 20 Sep 2023 14:36:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 56DA061CCD;
	Wed, 20 Sep 2023 14:36:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB04BC433CA;
	Wed, 20 Sep 2023 14:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695220591;
	bh=M2G6LOjWKL55s6a+6IU/6bn6CB2qn7/s2odBTDcEBoM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=VG6HXzEJjtHNlREEXb+KlWhW8N8tg+/g4J5oZFgY6CMqXyawkmlGFx6afBVlftbm2
	 QAN3ejUw5Qki1aigMuDZP6YE2pxsoRb7fZ/uKH0n7dsMDyz+dyCIjMwrlKdpaFluUs
	 Sey8pjkvVmjNilcgqLRDkMZrUS3QDfLBX2uynPQ0w/785xtFmDSWhukAk40MlsZ7Wo
	 O60ULnHF5B7AGvcDsCk0hd4LZYkaMT0J6jfNODwqvoHQ1xnj4iUhi7Fw16gK6QCdHO
	 G6v+W4roW9NYOyKn9+pali3nCGZY+lXuh8eLHa2JI2NRnXCWM4soGsOPU2Yg2f40m3
	 QOIKkES9+QPjQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 20 Sep 2023 16:35:32 +0200
Subject: [PATCH RFC v2 17/37] drm/rockchip: inno_hdmi: Switch encoder hooks
 to atomic
MIME-Version: 1.0
Message-Id: <20230920-kms-hdmi-connector-state-v2-17-17932daddd7d@kernel.org>
References: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
In-Reply-To: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2182; i=mripard@kernel.org;
 h=from:subject:message-id; bh=M2G6LOjWKL55s6a+6IU/6bn6CB2qn7/s2odBTDcEBoM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnczJaq4o+8FodPkG5TsuSra9xrXJI9ZfEuH6XJdQEvh
 dKsKpU6SlkYxLgYZMUUWWKEzZfEnZr1upONbx7MHFYmkCEMXJwCMJFvpxj+B89jTmpZmPFjodS5
 s06ajbImncuXRWls3vVX01075b56AMM/Q62VOaUna67se90dEjGjze7/iVvfNMt67pxunHhpVjg
 nKwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_073632_310586_F81DF2DF 
X-CRM114-Status: GOOD (  12.44  )
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

The inno_hdmi encoder still uses the !atomic variants of enable, disable
and modeset. Convert to their atomic equivalents.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 4f5844fc115a..cc86d273ca4a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -491,22 +491,25 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 }
 
 static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
-				       struct drm_display_mode *mode,
-				       struct drm_display_mode *adj_mode)
+				       struct drm_crtc_state *crtc_state,
+				       struct drm_connector_state *conn_state)
 {
+	struct drm_display_mode *adj_mode = &crtc_state->adjusted_mode;
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_setup(hdmi, adj_mode);
 }
 
-static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)
+static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
+				     struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
-static void inno_hdmi_encoder_disable(struct drm_encoder *encoder)
+static void inno_hdmi_encoder_disable(struct drm_encoder *encoder,
+				      struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
@@ -527,10 +530,10 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 }
 
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
-	.enable     = inno_hdmi_encoder_enable,
-	.disable    = inno_hdmi_encoder_disable,
-	.mode_set   = inno_hdmi_encoder_mode_set,
-	.atomic_check = inno_hdmi_encoder_atomic_check,
+	.atomic_check	= inno_hdmi_encoder_atomic_check,
+	.atomic_enable	= inno_hdmi_encoder_enable,
+	.atomic_disable	= inno_hdmi_encoder_disable,
+	.atomic_mode_set	= inno_hdmi_encoder_mode_set,
 };
 
 static enum drm_connector_status

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
