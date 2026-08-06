Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5907C5ACD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 17:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1m1PT0FtuICVxzHY/M9WB2d1AJi90jCn/Cg9Xsrnd2I=; b=axYk3WxyPk714q
	EvnhhpELP4XuiuPmpSKBkw/iaSAO0UVb2HjZ7OuetvfcYZ2Tke6ZLcztS4Ry59z/o/U5evxk+sGRD
	zWXWaxnWZ+F7tSHxUZI69f0UcjrcAZegH14QCPYsWNINrUjKnhFreAcqVoDnUYN//Y9Uz9TDPFMYN
	Hse/X/gJzhX+H1Vd0yR7Wa92qEF5SBS1Ckg4lDKhWrLRSEQb2umfE4ggIh+XMcOXzCHYhHU5pUrCB
	hEMVRO4D0Xd1tkJTQF/PH94t2wGcJWCh9vZ9i3I3u11nf1ZduGLeo1YnRmXYK7rCGE2uVdRd5Avku
	y037UUjiUYwcmtxxRCbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1UN-00000006Hez-2lkS;
	Thu, 06 Aug 2026 17:02:39 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1UG-00000006HNB-0vle;
	Thu, 06 Aug 2026 17:02:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786035745;
	bh=Vi2DWBLkp7BA7pxSSPHO/Gv/jDm6EqjBm8PNB7RSSxM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=a4HLd9t1f1WVhNO+Y2lsrsXPIR2Dg2iE+/EAqbTTefiZH4XCz7LGOY6YS663L2GR/
	 ITxug1FzaU1goqHJJiXBLbZDdNO0IK5qgZu2UNjY7+JfVWUjIUiRR32O0L5+xeO1WR
	 nrdFeIsCqp9HZbQVp2myyxUpREN5Xm6XLXZZj8ED1czGHql67cZBVv17Nr/tbQteVY
	 Qms7BM6Wbaope/2KboW9rSPFLrFRlGyzgOEhDWvF7odZpMDccVyIXi0cbxV4zR24g7
	 D4GcHEWYleeRm24sSN97CsmerbTqsXbHZ+/X/87ANnwG3sTCKL/LCEkK8hqspEoFiX
	 DoliuOB0vrL+A==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B5BA317E121B;
	Thu, 06 Aug 2026 19:02:25 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 096BE48004C; Thu, 06 Aug 2026 19:02:25 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 06 Aug 2026 19:02:18 +0200
Subject: [PATCH v11 12/21] drm/bridge: synopsys: dw-dp: Support software
 triggered OOB HPD
MIME-Version: 1.0
Message-Id: <20260806-synopsys-dw-dp-improvements-v11-12-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3715;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=Vi2DWBLkp7BA7pxSSPHO/Gv/jDm6EqjBm8PNB7RSSxM=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGp0viB3bwBopZcY3L9Pn+/IzYyAUNUHYrKn1
 gdvIX4WpJ2coIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqdL4gAAoJENju1/PI
 O/qa2PUP/A1O6uIOHjQA65v1LL//7YdVhisyfqxIVCoXbbNg2V4Pdz6mBDm+ixFoxdVnyOjScl3
 0Dn0HEFSl93MfFe1mzbs2fkxPrI+IXiP5JCZSaNITbrrxnjMLBNMz3EcHjQ1Ax7qn7i+538pDKf
 6FqNJ6TmZDoigAdTECNhImBiX3zRg5qsp1S6vr4848qtyXKSJApS17VF5N86Chboa6x+Oicq2St
 DZ71drDgM7mHRZ9y/VdcD+++RFnAO9TLJXazkMHqLlKqLXaGEpRt5Jvpc1AiKd4VU3ZCr9lMm5W
 84Tbzw1us+SSnmiWLHhAGvm6TxfUY1NBjBVYoaUA+RkBb/M6KTZFBVlrw4W/EcKeSbI1IzYO9Rn
 X7UNOsHzsmDA/2coIUVzjB0IxCSLwhBEuzUdgTIKvf4TjVE6KA3ja0GwAyJuGhMwEsPv/v5r+YV
 JQ85v7NJv34s61SNlTUt1+byncvu+mHy8pE6cVqt86ZRPAgw1XUcYvvutGkc8P4JoqAjFjKOaGP
 ZrpjRvocEqHefsOK1z2d2l7BrZ2uZjQz86gjoDalGJbvbUYK1tG4gm4EHVgi6aGFhHrUtzehdur
 968ViOfrYEI7Mtke4ED1TdelIe0Qh8HRWuaWSdQkqPiWDm3PXxPowY81LRO9OMdl2kWYtbkvBTb
 jeoVmTiDaELdSXhLyN/AqBA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_100232_459083_C0140F3F 
X-CRM114-Status: GOOD (  15.59  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add support for USB-C DP AltMode out-of-band hotplug handling. The
handling itself is implemented in the platform specific driver as the
registers to force HPD state are not part of the Designware DisplayPort
IP itself. Instead the platform integration might provide the necessary
functionality to mux the HPD signal.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 38 +++++++++++++++++++++++++++++++++
 include/drm/bridge/dw_dp.h              |  3 +++
 2 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index a6099f7ddc87..3af5b1f643c1 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -1875,6 +1875,19 @@ static struct drm_bridge_state *dw_dp_bridge_atomic_duplicate_state(struct drm_b
 	return &state->base;
 }
 
+static bool dw_dp_is_routed_to_usb_c(struct drm_encoder *encoder)
+{
+	struct drm_bridge *last_bridge __free(drm_bridge_put) = NULL;
+	struct fwnode_handle *fwnode;
+
+	last_bridge = drm_bridge_chain_get_last_bridge(encoder);
+	if (!last_bridge)
+		return false;
+
+	fwnode = of_fwnode_handle(last_bridge->of_node);
+	return fwnode_device_is_compatible(fwnode, "usb-c-connector");
+}
+
 static int dw_dp_bridge_attach(struct drm_bridge *bridge,
 			       struct drm_encoder *encoder,
 			       enum drm_bridge_attach_flags flags)
@@ -1903,6 +1916,13 @@ static int dw_dp_bridge_attach(struct drm_bridge *bridge,
 		goto err_disable_irq;
 	}
 
+	if (dw_dp_is_routed_to_usb_c(encoder)) {
+		dev_dbg(dev, "USB-C mode\n");
+
+		if (dp->plat_data.hpd_sw_sel)
+			dp->plat_data.hpd_sw_sel(dp->plat_data.data, 1);
+	}
+
 	return 0;
 
 err_disable_irq:
@@ -1923,6 +1943,19 @@ static void dw_dp_bridge_detach(struct drm_bridge *bridge)
 	drm_dp_aux_unregister(&dp->aux);
 }
 
+static void dw_dp_bridge_oob_notify(struct drm_bridge *bridge,
+				    struct drm_connector *connector,
+				    enum drm_connector_status status)
+{
+	bool hpd_high = status != connector_status_disconnected;
+	struct dw_dp *dp = bridge_to_dp(bridge);
+
+	if (dp->plat_data.hpd_sw_cfg)
+		dp->plat_data.hpd_sw_cfg(dp->plat_data.data, hpd_high);
+	else
+		dev_err_once(dp->dev, "Missing platform handler for OOB HPD handling\n");
+}
+
 static const struct drm_bridge_funcs dw_dp_bridge_funcs = {
 	.attach = dw_dp_bridge_attach,
 	.detach = dw_dp_bridge_detach,
@@ -1937,6 +1970,7 @@ static const struct drm_bridge_funcs dw_dp_bridge_funcs = {
 	.atomic_disable = dw_dp_bridge_atomic_disable,
 	.detect = dw_dp_bridge_detect,
 	.edid_read = dw_dp_bridge_edid_read,
+	.oob_notify = dw_dp_bridge_oob_notify,
 };
 
 static int dw_dp_link_retrain(struct dw_dp *dp)
@@ -2105,6 +2139,10 @@ struct dw_dp *dw_dp_probe(struct platform_device *pdev, const struct dw_dp_plat_
 
 	dp->dev = dev;
 	dp->pixel_mode = plat_data->pixel_mode;
+
+	dp->plat_data.hpd_sw_sel = plat_data->hpd_sw_sel;
+	dp->plat_data.hpd_sw_cfg = plat_data->hpd_sw_cfg;
+	dp->plat_data.data = plat_data->data;
 	dp->plat_data.max_link_rate = plat_data->max_link_rate;
 
 	INIT_WORK(&dp->hpd_work, dw_dp_hpd_work);
diff --git a/include/drm/bridge/dw_dp.h b/include/drm/bridge/dw_dp.h
index a82412a9e769..79b2cdf0df99 100644
--- a/include/drm/bridge/dw_dp.h
+++ b/include/drm/bridge/dw_dp.h
@@ -20,6 +20,9 @@ enum {
 struct dw_dp_plat_data {
 	u32 max_link_rate;
 	u8 pixel_mode;
+	void *data;
+	void (*hpd_sw_sel)(void *data, bool hpd);
+	void (*hpd_sw_cfg)(void *data, bool hpd);
 };
 
 int dw_dp_bind(struct dw_dp *dp, struct drm_encoder *encoder);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
