Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51864C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEPf+Wn2WZPlKNctEZbRpjrPIF+6Zj7TgaS5+Z92uEg=; b=U8vSOM1IUclzDg
	Tl1cG6HlIWkA6c91BvEtB1TmjiQhK7Us1iaWdET2rgfj63BejjphkkNHYtzCLAVfwUMUgrPKGzxBF
	7IQ97GLAGFNN5CJ4MhDAc8TUph+MZj5lO1pinCEwo3WMp99jkHkSAFIni3UxJohtnycPMJBKQTAKR
	DThvU2p1BL5PaCZAl+UEMWzmgg9fZAWwE140jo/ZEfbpP4REF2U3A5fHCNRtVGxaZ72+GNL/tNWn6
	gsEHEV2cq+Ijp7bb0yCeRNSYObzHu65BFRiamDelqTihIteK4BUEA3jykzKe6rKQt3pQENaXtt/Px
	x4xgdeloHXBfgzKHOtHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrxA-005l4r-08;
	Tue, 31 Oct 2023 16:50:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrvV-005jaa-2h;
	Tue, 31 Oct 2023 16:49:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 7E61DB811C3;
	Tue, 31 Oct 2023 16:49:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CB9FC433C8;
	Tue, 31 Oct 2023 16:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698770951;
	bh=3urbyxJOhBJnxOpaqPUf/XFZGd3bz5XAd4Th75mEdek=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iahrUcKqSV3lX4ZqGjGm7cIqAZc5HYlXXHqvrLMWIRS2//1OQFrnc80OMc/fLKTQU
	 4bucmEXFJcZeBxWpnDWS9T9m9gTPVV3TCUNLJE37XeLggA6Bi7EbDcUNc/GnsCZCiS
	 UnQY2OyxKw1dHDtqnIJMZ9ZU8JG0QJhOQwAaLjnHlMsOTjVoIBw94yzUR6Jzvdi+tC
	 7QxRkGr6ZgMpckTxXqItG3ByY3UHQ2SX22k/4Vll+N8ELjvzQozbCTKHnuTDiharJd
	 YiBwwDkRi6aNYL/8UsE25Y51koM1hAboO36vqtHTTiqx7gWDJs0Eq8h6WSlW9p7Pau
	 SINs4JdLMburg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:26 +0100
Subject: [PATCH RFC v3 13/37] drm/vc4: hdmi: Create destroy state
 implementation
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-13-328b0fae43a7@kernel.org>
References: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
In-Reply-To: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1640; i=mripard@kernel.org;
 h=from:subject:message-id; bh=3urbyxJOhBJnxOpaqPUf/XFZGd3bz5XAd4Th75mEdek=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+veYFr399NOA4YHuhmZpjUCFe888Avc6K/vM4e34c
 OTCwTMrOkpZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCRAjuG/9lt+xbUHNaz/jBV
 53SRrxeT0Tvpy4LlzxoeqnKXFD4zamBkOOqrW/PjOeP/iZ8mX1y20c03l89duyHqSMFENi6+J24
 bOAA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_094914_168109_3586A181 
X-CRM114-Status: GOOD (  10.91  )
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

Even though we were rolling our own custom state for the vc4 HDMI
controller driver, we were still using the generic helper to destroy
that state.

It was mostly working since the underlying state is the first member of
our state so the pointers are probably equal in all relevant cases, but
it's still fragile so let's fix this properly.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 25c9c71256d3..f05e2c95a60d 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -672,11 +672,21 @@ vc4_hdmi_connector_duplicate_state(struct drm_connector *connector)
 	return &new_state->base;
 }
 
+static void vc4_hdmi_connector_destroy_state(struct drm_connector *connector,
+					     struct drm_connector_state *state)
+{
+	struct vc4_hdmi_connector_state *vc4_state =
+		conn_state_to_vc4_hdmi_conn_state(state);
+
+	__drm_atomic_helper_connector_destroy_state(state);
+	kfree(vc4_state);
+}
+
 static const struct drm_connector_funcs vc4_hdmi_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.reset = vc4_hdmi_connector_reset,
 	.atomic_duplicate_state = vc4_hdmi_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.atomic_destroy_state = vc4_hdmi_connector_destroy_state,
 	.atomic_get_property = vc4_hdmi_connector_get_property,
 	.atomic_set_property = vc4_hdmi_connector_set_property,
 };

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
