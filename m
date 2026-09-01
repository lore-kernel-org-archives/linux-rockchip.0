Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84666C624D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 18:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LN99Ii6xpiiKJYpuFGGEhUC/SboL/tYbi/NlV3dSLE=; b=xLNGK/1sSdRz9q
	bwLrhJlsvSQaVu/g6aiEVOpJJpRVBW3JuWZwRxG1pJa0aQ0zrl7uCajgV2RApwe297KuUsdfvmjiB
	UFnNs72ntYbtPoOMYuDF3hVz7VRQzId7NPTxL+wxf7qszpWjPBhmn5o1xbZtyau+xge5PXvriVXBW
	LQPSEqjH31hjBnJIfN2XTv1pwOWEK5Iql1FbB7a5BYMhyjoIVMSwn3q+6QACsA5cKfq0uwCVElPaP
	7m1r0OOGKVB+6pEfQ5ssw2jX6jG3XmGZSnNbiVGrJCLsWVMdLKlwPhP1iPm1aXVk0Uyc98BTKCz8f
	TLPSAsS9T9uPIwulorTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZv-0000000D1O1-3By8;
	Tue, 01 Sep 2026 18:51:27 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZK-0000000D0dH-3wUV;
	Tue, 01 Sep 2026 18:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788288647;
	bh=8ZpsUznPm2VnhV+ei8G+M2HW8IhOZe+pjdpRGniTqQA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CUd7OD/U1UiWKhz1RFGknqxx5New2fGjDtM1QLgcmF8bxImOuhlNcPQHn1mY7JWGC
	 kK6KDhB3pUF/cRpvkksJEhXQrq3wImuA4AkdgcCD02sfdYyzT/4nULAdbJ7dt2X+hF
	 2d2aewJB9ig0G6hUL7nOYfjHV4B3SZEpG75UdC89dAasDD18OhKHV4Ufo/f7BxKB3r
	 F+OHIkzojwKs3WxUYVJ11BcYLYEQApURxoaZOf6xOhDN0fLaJW2dsEBQp77cENX2L2
	 MQ54HNl1/HNlBzsQFIK0hmw/dOKT+NBe69AFyGVRsY67hxVw8Tz/TUt1OuLCHERP+f
	 tdi4jobw+awmQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B634617E157A;
	Tue, 01 Sep 2026 20:50:47 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 01 Sep 2026 21:50:33 +0300
Subject: [PATCH v11 09/74] drm/display: scdc-helper: Add helper to set SCDC
 version information
MIME-Version: 1.0
Message-Id: <20260901-dw-hdmi-qp-scramb-v11-9-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Chen-Yu Tsai <wens@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Algea Cao <algea.cao@rock-chips.com>, 
 Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>, 
 Phong LE <ple@baylibre.com>, Helge Deller <deller@gmx.de>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 linux-fbdev@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Maud Spierings <maud_spierings@hotmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_115051_148137_5680A9F2 
X-CRM114-Status: GOOD (  18.72  )
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

The HDMI 2.x specs mandate that compliant Sink devices report their SCDC
version in the Sink Version register, which reads as 1 on any
SCDC-capable sink.

There is also a dedicated Source Version register.  Writing it is not
compulsory, but the spec advises that compliant Source devices do so, in
which case the value must be 1.

Add drm_scdc_set_source_version() to follow this recommendation.  The
Sink Version register is read first, both to log the advertised SCDC
version and to guard against non-conformant devices: a sink reporting
version 0 is either not SCDC-version-aware or broken, so writing the
source version gains nothing and risks upsetting such hardware.  In that
case the write is skipped.

The source version is passed as a parameter rather than hardcoded, as
future spec revisions may define additional rules for the allowable
version values.  The written value is additionally clamped to the sink's
reported version so the source never advertises a version the sink does
not understand.

Acked-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Tested-by: Maud Spierings <maud_spierings@hotmail.com>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, Rock 5B
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/display/drm_scdc_helper.c | 50 +++++++++++++++++++++++++++++--
 include/drm/display/drm_scdc_helper.h     |  2 ++
 2 files changed, 49 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_scdc_helper.c b/drivers/gpu/drm/display/drm_scdc_helper.c
index 1e7c41d4f926..74388481fc55 100644
--- a/drivers/gpu/drm/display/drm_scdc_helper.c
+++ b/drivers/gpu/drm/display/drm_scdc_helper.c
@@ -22,12 +22,13 @@
  */
 
 #include <linux/bitfield.h>
-#include <linux/export.h>
-#include <linux/i2c.h>
-#include <linux/slab.h>
 #include <linux/debugfs.h>
 #include <linux/delay.h>
+#include <linux/export.h>
+#include <linux/i2c.h>
+#include <linux/minmax.h>
 #include <linux/overflow.h>
+#include <linux/slab.h>
 
 #include <drm/display/drm_scdc_helper.h>
 #include <drm/drm_connector.h>
@@ -306,6 +307,49 @@ bool drm_scdc_set_high_tmds_clock_ratio(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_scdc_set_high_tmds_clock_ratio);
 
+/**
+ * drm_scdc_set_source_version - set SCDC source version on the sink
+ * @connector: connector
+ * @ver: source version to advertise (per spec, 1)
+ *
+ * Reads the sink version for diagnostics and as a guard, then writes
+ * the source version unless the sink reports version 0.
+ *
+ * Returns:
+ * 0 on success or when skipped; a negative error code when either
+ * the read or the write failed.
+ */
+int drm_scdc_set_source_version(struct drm_connector *connector, u8 ver)
+{
+	u8 sink_ver;
+	int ret;
+
+	ret = drm_scdc_readb(connector->ddc, SCDC_SINK_VERSION, &sink_ver);
+	if (ret) {
+		drm_scdc_dbg(connector, "Failed to read SCDC_SINK_VERSION: %d\n", ret);
+		return ret;
+	}
+
+	drm_scdc_dbg(connector, "Sink reported SCDC ver. %u\n", sink_ver);
+
+	/*
+	 * Only advertise our source version to sinks that report a
+	 * non-zero sink version.  A sink reporting version 0 is either
+	 * not SCDC-version-aware or non-conformant; writing the source
+	 * version gains nothing and may upset broken hardware.
+	 */
+	if (sink_ver) {
+		ret = drm_scdc_writeb(connector->ddc, SCDC_SOURCE_VERSION,
+				      min_t(u8, sink_ver, ver));
+		if (ret)
+			drm_scdc_dbg(connector,
+				     "Failed to write SCDC_SOURCE_VERSION: %d\n", ret);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL(drm_scdc_set_source_version);
+
 static void
 drm_scdc_parse_status0_flags(u8 val, struct drm_scdc_status_flags *flags)
 {
diff --git a/include/drm/display/drm_scdc_helper.h b/include/drm/display/drm_scdc_helper.h
index a3b20adaac7e..6a8be1f16ce0 100644
--- a/include/drm/display/drm_scdc_helper.h
+++ b/include/drm/display/drm_scdc_helper.h
@@ -168,6 +168,8 @@ bool drm_scdc_get_scrambling_status(struct drm_connector *connector);
 bool drm_scdc_set_scrambling(struct drm_connector *connector, bool enable);
 bool drm_scdc_set_high_tmds_clock_ratio(struct drm_connector *connector, bool set);
 
+int drm_scdc_set_source_version(struct drm_connector *connector, u8 ver);
+
 int drm_scdc_read_state(struct drm_connector *connector,
 			struct drm_scdc_state *state);
 void drm_scdc_debugfs_init(struct drm_connector *connector, struct dentry *root);

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
