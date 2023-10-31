Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A53C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzmezFqSqixKjq1WK6hcKhFoM9gjZkfDuLeP9FiAKm0=; b=AQ2SiIrePhZNcV
	V/Gu1jMwitEXwWMcYV1d9n8QiQ9iyovusYVNNvM7+vAjQ8M+r4fIAt1kFyDE4gzDbDS0SIW+dVySA
	70o1mMXCcwRFB6uD39WKyuT9/EynY4y2RRSrp0Ad3fBTSC8IOuXU15qh8d2MOzEakJVmZOBokos7j
	tYWC5Uqntpu+BJ6gAl5QzF1xfvKnhgiKCY44rDP1Z5W+EgeJgU8lCgVKX4zcQL0HEh/ISaLek6ZFi
	3fShd9tSWmnWNta1P8eOv/ndrQ62NFBwTJmglzOCJy+QWK+IuNyZl92A+WL6T6+EGiDUsbG4KGkCh
	+IjHklZ9eT2VejWfUhHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrxr-005lVZ-0D;
	Tue, 31 Oct 2023 16:51:39 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrvq-005jt8-0i;
	Tue, 31 Oct 2023 16:49:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 7B817B811C1;
	Tue, 31 Oct 2023 16:49:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA2CAC433C7;
	Tue, 31 Oct 2023 16:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698770972;
	bh=612NFeh5NOImp0JEmAQppe78uklCbIwDoN+fmJSIsz0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cKkuMFsG/jPrVSnqKxx/+QycPtSciIo1JerUB0LH3rYHMUjw//Je1+3ShNeuTUkd+
	 +iFvY+BHj5Ap/Lic23WjNHBQk3EBt6MupGw/R3i/gtKnZmjFXy8GITkikTPBD4e+VF
	 TeU3YQUf0wCEwBsJzuIHFyM7uLdtNblE+kbiJypvpYWTZAsWC9fU+TCwFDzrTqZwD2
	 VcdyVpmTjdBSkaiNYPr/u0iLGURg8/BHauMmPYMWcnAEKrfvd8xlyOUk5o3rTCwlWz
	 NflXZwblZq00uXjf8hN8i0UKARtKRKV/JSOXtpqIMwYBiIBdqat5zQw4jsoVICi4L/
	 YRQBb4DAtW78g==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:33 +0100
Subject: [PATCH RFC v3 20/37] drm/rockchip: inno_hdmi: Remove unneeded has
 audio flag
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-20-328b0fae43a7@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1051; i=mripard@kernel.org;
 h=from:subject:message-id; bh=612NFeh5NOImp0JEmAQppe78uklCbIwDoN+fmJSIsz0=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+vcOttf4VVV/Vn21KkPd1KQ05M9Ka6fWSN1Ph0tFr
 p2tN77SUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgIlwZDH84ZP4+UVtzqYNK1Pr
 xd46n7U1aDu8sHR3sYhb05vC5/wi7IwMt/wlu5/X3MuTsVC3/P3k6G9+XvWgJrUyBdcLObo1L+6
 zAQA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_094934_440149_767FB578 
X-CRM114-Status: GOOD (  10.31  )
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

The sink_has_audio flag is not used anywhere in the driver so let's get
rid of it. It's redundant with drm_display_info.has_audio anyway.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 294f0d442c0c..3908dc09d85f 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -28,7 +28,6 @@
 #include "inno_hdmi.h"
 
 struct hdmi_data_info {
-	bool sink_has_audio;
 	unsigned int enc_in_format;
 	unsigned int enc_out_format;
 	unsigned int colorimetry;
@@ -554,7 +553,6 @@ static int inno_hdmi_connector_get_modes(struct drm_connector *connector)
 
 	edid = drm_get_edid(connector, hdmi->ddc);
 	if (edid) {
-		hdmi->hdmi_data.sink_has_audio = drm_detect_monitor_audio(edid);
 		drm_connector_update_edid_property(connector, edid);
 		ret = drm_add_edid_modes(connector, edid);
 		kfree(edid);

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
