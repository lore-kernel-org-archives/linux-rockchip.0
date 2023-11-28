Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36B52C46CA3
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d88s5qJcunP0IAg8/MMwKacj0G8gcGXCMqKeZvaQY4U=; b=2iPjZqRFjknQ2C
	ipPeS6OcbnxlahyibeqMVtyqolmWor9zTQWQ40XgQUVZaYUYNaHGWdznJkDLo/2nu65wubwYa0+AK
	d+Ohzl7eHVXxBsQmBZox4yVcwvRylJZ9ApKDp+deYn24fhutEaGkakHy6LvJjKgV6K2HzfWmFnjgi
	4kC8U3qiSrdrpEowkx4IR6RuFTLk2ODdXPish4mXwi9LTCLifjzN8AkuFIsabPK+OWKZeXn5fCAey
	+cqfImCS3mu05z3vRsjqMQn+jpA1cAdgJpTwY5IkV9rb87wpiydzFDW83/3XiiwM03quDWHszLF5D
	QsBFAcJmCxBh6U8zo5Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIU-004tBn-2L;
	Tue, 28 Nov 2023 10:26:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHh-004sNV-1G;
	Tue, 28 Nov 2023 10:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=YXWKQWIxx95bdSY+e16leIWNEilIv4fg1ToEhZ3bds4=; b=PiE3ewUWakUXLqn9my50P/X4cD
	Lj9D7YZzMAnottxuT1WH/a2iHbnRSWPjh9RhaUmjZDEXzICYHDC3iEaxw6PwFlx+mJPNPrB96Mbqt
	MNBgXOzC/JyJha0O1j1n7NWLnJ/ohJWqLvlGijZLeK/pklb32ptxSe90qRJ3FOg8LrX3Om4OChvje
	m9O2RVKFHjFfVSTQA9bPsGn+6A8+TU0LIfIcWheoXJ2BWDV2TI0/mpH4AQTgUWBw1MolDW6v+WY5f
	Bh5U9pYSThnWYVDYyoZsG8Xh8wQIAJB+CWJf4p/n/54uSsE7eD+WibK8KwA2pbFTnRVSYVYkszb1H
	0c7c5vvA==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHc-00GaHI-1x;
	Tue, 28 Nov 2023 10:25:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1CBF3B839FC;
	Tue, 28 Nov 2023 10:25:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F22AC433CD;
	Tue, 28 Nov 2023 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167134;
	bh=M2G6LOjWKL55s6a+6IU/6bn6CB2qn7/s2odBTDcEBoM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MgX6Dpp1E/nQbEgbyx4iqBmoKRk4n6MBJGBC62SWL/V1N8dJRf4d0fk6BCxncRG1N
	 lwYeDBoZRPRF5rbzJvwpD59Wgxa0gG8qu63cEOIprCdpqY5sf+r1PXirgMQncGW/V/
	 NRX89qCFCGZYuHFNpvDDk3gVXtNaSbsfRzaEOXIjnxuQ2fcXAT63JS5N51v7wwIHNp
	 obcHvSrAT89jE3iePjt01evwpW+9aHmdh7JXXGrjYJ/uK5ATzDL4yx35TR52XNBeFa
	 WgswNW+m2j/vIMH1wTYt4UoAXZlOo7WWqbD+r7oQwF0cvKeDAixsD36aUUEo+R2IJU
	 hcGGLLJky6WxA==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:36 +0100
Subject: [PATCH v4 25/45] drm/rockchip: inno_hdmi: Switch encoder hooks to
 atomic
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-25-c7602158306e@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2182; i=mripard@kernel.org;
 h=from:subject:message-id; bh=M2G6LOjWKL55s6a+6IU/6bn6CB2qn7/s2odBTDcEBoM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y9VG59/HVe+rE2nIaHqEVP24tvZ8g71YQuWSO7Mb
 pp7LOZiRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACYSYcfIsID9RbdLQu4sbqe8
 mP3FCn0nxAQPJV5affuEfwxTkbG4OiNDo1bIcql5C+88d+Z0rcmaPtPkvXep1D+tHfldZu6vtf9
 wAAA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_102536_849807_60BBFCF5 
X-CRM114-Status: GOOD (  10.36  )
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
