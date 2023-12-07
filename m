Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E97E0C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGrdXo61L2W6uPBiszjjwufy7H7Mpls6ARn3lm2nDJo=; b=gzqeYUkx9ExHAz
	lNzenz6UkyRNEJeFOLSmBP7s6OosyU+vLWFHgheFuKfW+nn7axZ+15w5uOZ/awyrCgoeng6QUoemt
	C+lSLoITBfSs9mgC+MM3t38N2IUWZezvXyvtY2xWdUjDhOAe1rgesczsAZSM9vi19Jtpp6YsNcaFb
	BYBFFRX9oE4B99vIkGzUmj0lIXMRFgkMTrUw3AH/8NP9ei3thaVtQjbhfoShzfxb/aTmYSpvPUqGj
	sj9DDcRqSCVPE6j9h46RO+XFHNkX7RVvAgcqEY7RGS/4feRTWKrUZTD1vHTHqNUORSp5Cv0cRHxiA
	MU1y1sw7K+rxUAwKNIRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGfR-00DIbk-2s;
	Thu, 07 Dec 2023 15:52:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeR-00DHT2-1N;
	Thu, 07 Dec 2023 15:50:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=raqR7DmsMt1nEp5MrCwcNM/f9uNTqeH1jYehFtj8jXo=; b=P++wJSvffZDplUzixpC+qb2M6u
	RXmfWGOh558ano14X5MTiCwatkJhzuG+7b6Hap5tVDGMLCAc77kCQLfKi6zpWTQ0LMJ1Je6S9QPR6
	iFe7ndfNeXA/ErcC2GmmU/iGcz6nSIh9OAmFBiogA3KZ+q1nuclUPNzRAlEiNA9hYBiSjvf0hqaNv
	hyvauus7/L1Ps1LDG9q0K1/XwTXLWAx0ZgocvlFA9fghL0IGzOAl5S0LU/8chgNngX0b3iZiLfuZF
	WGPT2SUqln7DCtrDxzakfgvY3HHl4zK2OUHHW/mSui1KuT72MUjSvajYCxtEPj2n5SycqsxJTKQs+
	QXWw57jw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeD-0062Wr-1P;
	Thu, 07 Dec 2023 15:50:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 87EF161E91;
	Thu,  7 Dec 2023 15:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04327C433CD;
	Thu,  7 Dec 2023 15:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964243;
	bh=Ox0y4JDexQBxvJ40xD4jKEkeShMLHDYRNsoF7fP2Kbw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GA7tIsJB4+7FsMQ2ypBz3zOmwmmB0rogh5GVD/9X3VAvFpMTLczrjsRnjzbMR9OMA
	 LHoyEIzqHGP6L5jaDOcYkc/NTClHzoqMSqku4DjniPxcOH3cIWLRYgjkHbQdegUAt2
	 DAOVjtFZl+T/7E7i1G5c2EWjb17hKGF5EbCJ+6vCTbTk/tAhUv7jtOgY9Omy9THxGm
	 PwKUS9SrsuDQLzOWAH3KaO7fEBn4MiIXAtNeVwdwNgEHNC/XRxEgF0+X2TmHBKpcsW
	 2IPE6XTGbkWtyAys+OVajU+6PI+/Z/6iKYB+YIRmvvLbTDohUP3ySTVglcYy9WhLuf
	 wV7WwHVRYrkYA==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:48 +0100
Subject: [PATCH v5 25/44] drm/rockchip: inno_hdmi: Get rid of mode_set
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-25-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1884; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Ox0y4JDexQBxvJ40xD4jKEkeShMLHDYRNsoF7fP2Kbw=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9tEj7MWfrQxmvQ/+emJRu0lHsdFVr/LkTnkPXfyv
 2iZG+aJHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZhI3CaGP9wJs2pSfhnpfNun
 fD2why2h2HR2e6vku38zN+o9ttlyN4WR4YXWloRysYQLJxQqctUD76tk5VesC74gUe0gs4FNKDy
 XCwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155045_939025_B521C684 
X-CRM114-Status: GOOD (  13.28  )
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

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index cc86d273ca4a..4db18195246e 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -490,21 +490,22 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	return 0;
 }
 
-static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
-				       struct drm_crtc_state *crtc_state,
-				       struct drm_connector_state *conn_state)
-{
-	struct drm_display_mode *adj_mode = &crtc_state->adjusted_mode;
-	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
-
-	inno_hdmi_setup(hdmi, adj_mode);
-}
-
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
 				     struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
+	struct drm_connector_state *conn_state;
+	struct drm_crtc_state *crtc_state;
 
+	conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
+	if (WARN_ON(!conn_state))
+		return;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+	if (WARN_ON(!crtc_state))
+		return;
+
+	inno_hdmi_setup(hdmi, &crtc_state->adjusted_mode);
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
@@ -533,7 +534,6 @@ static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.atomic_check	= inno_hdmi_encoder_atomic_check,
 	.atomic_enable	= inno_hdmi_encoder_enable,
 	.atomic_disable	= inno_hdmi_encoder_disable,
-	.atomic_mode_set	= inno_hdmi_encoder_mode_set,
 };
 
 static enum drm_connector_status

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
