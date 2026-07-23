Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4643BC531CB
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 01:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cw5dIuE0JoEFwaqRlz1ivSmGECmmVN2trn77xdsMJg=; b=Ohzcf5hJArpCZv
	QXppAJY5p5665zIpWRHYF7s8iEX9it/sxmF3WGr+7lFtqOzvo7isjiTdzpWjTRI1LXlQVYEjOF3C5
	VeAGCs1i9OC5rqGTchgbPtBP7gEpfBN5b5PUES+a03R3Ov72EqWXLGwFsFcEbGMRMkWkSOPL9mCGt
	BorM8dZ3S14f0BAsOS3XzLF/RlnMFKOHnE3161/+Of0jQd54vNlJEvv7Ia0xnSCCk61bQEWlFh3lH
	aV05TIiVHqdXTncjkJ7K15/uIOwLpEvk3Q8QYwohcA/wYoCfKOVEuZ9+GiStPcq5rO8LNV7nqKCXU
	HgI3rqEzolVSml4pXwXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmiLd-0000000D3WP-1fzp;
	Thu, 23 Jul 2026 01:35:41 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmiL8-0000000D2r3-2sEl;
	Thu, 23 Jul 2026 01:35:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784770508;
	bh=0p335ODob3vf741ZjOZFVQVXgjwYRbsBqdw3GvcClIU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IAHPb+PrY/PB/aOrRfSnol8NHCytSzRyNZz3/9fQiLiLwlz1/0Wab5RC3LZN8JH9A
	 iMEq61VUl9x4SmDlKfT5B1hwFPGdQVy+SMf16jgdcZAbXorA+UnKzom4Zq3hBphq1Q
	 BvjxSa8mnvooGmDVUkB4VBX3Lu4Hvf+Tj581F2PjeB4AsLIwpRE987jkubYFtAB3JE
	 5msn8+3Co05hTCOxJleU59gEkJ96u8gLMKSBqU0dNrzSAFpXWAXJFNytPE9HQbr3+8
	 T7Wq5f865I26AYzmgLxK9efy7uB7KQ6NUvPOn/35357zziRX3fM5ptWtlihlU24CTm
	 6Elfv9HlCFDjA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4A40817E3686;
	Thu, 23 Jul 2026 03:35:08 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 23 Jul 2026 04:34:58 +0300
Subject: [PATCH v9 09/61] drm/display: hdmi: Advertise SCDC source version
 when scrambling
MIME-Version: 1.0
Message-Id: <20260723-dw-hdmi-qp-scramb-v9-9-4fb12ea22ac9@collabora.com>
References: <20260723-dw-hdmi-qp-scramb-v9-0-4fb12ea22ac9@collabora.com>
In-Reply-To: <20260723-dw-hdmi-qp-scramb-v9-0-4fb12ea22ac9@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Algea Cao <algea.cao@rock-chips.com>, 
 Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>, 
 Phong LE <ple@baylibre.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_183510_923910_C686B58F 
X-CRM114-Status: UNSURE (   8.58  )
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

The HDMI 2.0 spec advises that compliant Source devices report their
SCDC version in the Source Version register.  Do so when enabling
scrambling by calling drm_scdc_set_source_version().

Failures are non-fatal: SCDC version negotiation is purely informational
and does not gate scrambling or any high-bitrate functionality, so a
flaky DDC bus should not block scrambling setup.

Acked-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Maud Spierings <maud_spierings@hotmail.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/display/drm_hdmi_helper.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_hdmi_helper.c b/drivers/gpu/drm/display/drm_hdmi_helper.c
index b9be0a2e833a..e66ee8aa4ebc 100644
--- a/drivers/gpu/drm/display/drm_hdmi_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_helper.c
@@ -16,6 +16,7 @@
 #include <drm/drm_print.h>
 #include <drm/drm_property.h>
 
+#define DRM_HDMI_SCDC_SOURCE_VERSION	1
 #define DRM_HDMI_SCDC_POLL_DELAY_MS	1000
 
 static inline bool is_eotf_supported(u8 output_eotf, u8 sink_eotf)
@@ -541,6 +542,12 @@ int drm_connector_hdmi_enable_scrambling(struct drm_connector *connector,
 	if (!connector->ddc)
 		return -EINVAL;
 
+	/*
+	 * Advertise our SCDC source version. This is purely informational and
+	 * does not gate scrambling, so failures are non-fatal.
+	 */
+	drm_scdc_set_source_version(connector, DRM_HDMI_SCDC_SOURCE_VERSION);
+
 	drm_dbg_kms(dev, "Enabling scrambling\n");
 
 	if (!hdmi->scdc_work_initialized) {

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
