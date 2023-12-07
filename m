Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AC6CC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAyw2dY11erUoATfQO2v++AcKsXq78LsN4x8EnS++Eg=; b=KRNdb5FZ5XhkY4
	H+7aUrwBn6CUZOJMUJM45BxhxvZYXGnWOkhgWTfuRWKRYxisKDPsmNu+b2sYHfDLTUlbHq7V2TA2q
	71XRszUyXXPJdtmR+ikgKW13YiW36Xykd8irw+6n0+I5X3NDIGquPof1zL73+BaUWscTfEFjBL6L1
	6L96F7F7TrvdWkmgXhgP5f7d5Ks85dQ8ufyw58sngL0hoIC8NmjUVNwC2CA6HcdpamRcdliFajBW3
	P2aWhvYk4g//gKPVY97jT3VhzYUb4ephsxcWyOATvn9vZwgA//mMPAdCvIvmKpxI7AFI/cN5ev392
	1/IiXJtUSOPk8EeZL2aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGf8-00DIH7-38;
	Thu, 07 Dec 2023 15:51:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeH-00DHI4-1q;
	Thu, 07 Dec 2023 15:50:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=u8STevAKg/77cPhpA6up+DhR+bDS/q88Ok3w3iYDMp0=; b=H+aSa7Nl+/IpY8C/fS2NlJmURp
	fgY3N0YF3KXM0upY588TjNLvrfwjtV3EMoYzb9oxj+69xg9/7jp2YGON7ZSaMsUbWWaci5oBxJ5bl
	wyEMXPqu5wK3JZ1glv4/15xOWuljSESGhL2hliaol44BACpEsoKc8rQ63Z/apq7jNKCkS7Sb9HVKC
	b7fjVK2cErdt6f2X1k44ALsGQOvvCvkiKvY+ZwvBS9letxbsZj0TPsQ0w1Hlkru9Af529wNJ5UoLU
	oX230C6zysaKkEizk780whgzBuqgZjmeGf6OvD+t2LL+j/McQY8clkQs0qYjvu6ndutYQ5fa0K95T
	gawOFGSw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeA-0062VE-1Z;
	Thu, 07 Dec 2023 15:50:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B594562060;
	Thu,  7 Dec 2023 15:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F9BFC433B7;
	Thu,  7 Dec 2023 15:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964240;
	bh=zO46BEH/qfu0CixrowksluYDZc217GLndsOE/KC1EdM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hMS+0Vqt+qR+tob/ei3PXa4k1sWLRiOz/xAniL7zz3kmt0XcgvIxb3+u6OrJprL0l
	 gzpb9o9ikIGNi39tytp671JuL2X5u3aEp5De5BudQ91H7sYeHzv5ujZhRO2/GKRhGb
	 siozNngD9OXULyyHeL0dJttcn2lltNs8PDc0qDuogs6Sd8850MnYaSdYq57fJUYfIQ
	 ZueYQeYPPbWfj/noqgVerMJqbT9iySwJmHG/y5mm2nRvYHMQx6xz2FJQAJOSTT43u0
	 IGi/GUiGfCl7qz2gN89VsN/S/+Pa/yui9WC5amkYPG/LIqspfh8bD9S2Y2y8OqNOtY
	 lF6FO6IrPCiTA==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:47 +0100
Subject: [PATCH v5 24/44] drm/rockchip: inno_hdmi: Switch encoder hooks to
 atomic
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-24-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
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
 h=from:subject:message-id; bh=zO46BEH/qfu0CixrowksluYDZc217GLndsOE/KC1EdM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9sCNuq3Hbny/sDSv5npaUfMGcoN9KetZDQ8E6P1u
 EJawCygo5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABPZ+Y+R4ZFLBOPt1EC7oJiz
 +2uX7d62evNhv6Dlf/90fi+rW6770I/hf0Dn71NRNyb9O8pwdvOdC8dz5fSsC3fVXswJFPvZsHV
 bCxMA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155043_028871_CC29A6DF 
X-CRM114-Status: GOOD (  10.72  )
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
