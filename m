Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFFDDC624D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 18:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dj64NtDkp8yfYLjPrnaaYNaAJRUW1dUzWMBqE5tkDfY=; b=UNDHMtu1SdY+v2
	drJhT7s29NsPwcj9Z7NY8kFr0Ophyf6TNLOMqw6psFmxTnoYfCjV3+v8KXzyEsAHaP3KaJBgM1Bb7
	hEDHYH534M9YIidlxPhHyD0soxkhefN/fSXN/JJ+nWMgJkdieCHED+57xitEvrNZuhO4C8vvdeiAZ
	V9eznUaxSkZAkYXGW2WGx23wRONTHrsC39qCIQOJCEscHHqUyC2iZEzqRpL63ZuvSe34dM0pp2FbR
	xp6Qeida67Wryt7QphOnw+SK/koNOf5SEusPUUDfSmevrnF88Hv3J2xaqC+0GcAv2M8AVR5aokGOL
	kS3Pjt78byczclRMTQ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Tbz-0000000D5Tz-1MRL;
	Tue, 01 Sep 2026 18:53:35 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZX-0000000D0sh-0Pco;
	Tue, 01 Sep 2026 18:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788288661;
	bh=fw8obzJP5OPYqaOUFHt36T0iWpVWKUYn3AqoExbRHJc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=lyhoHWsl5QoCjUe1mZPnym9LTzC3Ptx/LiQw570od6ba1r/6oasTUxYubJwjPTNQY
	 d+yWLS4xwQK0ucRMZGE9ghkFF6GQHuD4+Kcd39QCfyHnrSYlTXpMohR4D74IyNjjkD
	 6iyvjS4YgRW/BEl7QYg80Zpj9HFlW8b4S+srNQIO8Xg8VcORflTuPHSnCv1HJa5647
	 e6cN4M8l5CoTeObxUZ0pqjVd721V/guzUsBD9QgK6V/i2T+r3RUQOtqefCnUaC4rr8
	 o+r9krSCLJyK+/TidmFsCjWYNGmMUdPlcSPI8lg5tZcvdtCudUn31Fmbza929NVjwk
	 6KHWiNf8VirjQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1075A17E39A7;
	Tue, 01 Sep 2026 20:51:01 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 01 Sep 2026 21:50:51 +0300
Subject: [PATCH v11 27/74] drm/bridge: dw-hdmi-qp: Provide
 .{enable,disable}_hpd() PHY ops
MIME-Version: 1.0
Message-Id: <20260901-dw-hdmi-qp-scramb-v11-27-bc12954a0688@collabora.com>
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
 linux-fbdev@vger.kernel.org, Maud Spierings <maud_spierings@hotmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_115104_986556_EE31B495 
X-CRM114-Status: GOOD (  11.12  )
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

Implement the .hpd_enable() and .hpd_disable() bridge callbacks and
extend dw_hdmi_qp_phy_ops with corresponding hooks.

This enables the DRM core to control when HPD interrupts are armed,
which is needed to prevent premature interrupt delivery before the
connector is fully initialized, and to properly quiesce HPD during
suspend.

Tested-by: Maud Spierings <maud_spierings@hotmail.com>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, Rock 5B
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 18 ++++++++++++++++++
 include/drm/bridge/dw_hdmi_qp.h              |  2 ++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 7475b6b71836..a0613f0d2ebc 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -1189,6 +1189,22 @@ static int dw_hdmi_qp_cec_transmit(struct drm_bridge *bridge, u8 attempts,
 #define dw_hdmi_qp_cec_transmit NULL
 #endif /* CONFIG_DRM_DW_HDMI_QP_CEC */
 
+static void dw_hdmi_qp_bridge_hpd_enable(struct drm_bridge *bridge)
+{
+	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+
+	if (hdmi->phy.ops->enable_hpd)
+		hdmi->phy.ops->enable_hpd(hdmi, hdmi->phy.data);
+}
+
+static void dw_hdmi_qp_bridge_hpd_disable(struct drm_bridge *bridge)
+{
+	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+
+	if (hdmi->phy.ops->disable_hpd)
+		hdmi->phy.ops->disable_hpd(hdmi, hdmi->phy.data);
+}
+
 static const struct drm_bridge_funcs dw_hdmi_qp_bridge_funcs = {
 	.atomic_get_output_bus_fmts = drm_atomic_helper_bridge_get_hdmi_output_bus_fmts,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
@@ -1197,6 +1213,8 @@ static const struct drm_bridge_funcs dw_hdmi_qp_bridge_funcs = {
 	.atomic_enable = dw_hdmi_qp_bridge_atomic_enable,
 	.atomic_disable = dw_hdmi_qp_bridge_atomic_disable,
 	.detect = dw_hdmi_qp_bridge_detect,
+	.hpd_enable = dw_hdmi_qp_bridge_hpd_enable,
+	.hpd_disable = dw_hdmi_qp_bridge_hpd_disable,
 	.edid_read = dw_hdmi_qp_bridge_edid_read,
 	.hdmi_tmds_char_rate_valid = dw_hdmi_qp_bridge_tmds_char_rate_valid,
 	.hdmi_clear_avi_infoframe = dw_hdmi_qp_bridge_clear_avi_infoframe,
diff --git a/include/drm/bridge/dw_hdmi_qp.h b/include/drm/bridge/dw_hdmi_qp.h
index 6ea9c561cfef..b80fceffc315 100644
--- a/include/drm/bridge/dw_hdmi_qp.h
+++ b/include/drm/bridge/dw_hdmi_qp.h
@@ -17,6 +17,8 @@ struct dw_hdmi_qp_phy_ops {
 	void (*disable)(struct dw_hdmi_qp *hdmi, void *data);
 	enum drm_connector_status (*read_hpd)(struct dw_hdmi_qp *hdmi, void *data);
 	void (*setup_hpd)(struct dw_hdmi_qp *hdmi, void *data);
+	void (*enable_hpd)(struct dw_hdmi_qp *hdmi, void *data);
+	void (*disable_hpd)(struct dw_hdmi_qp *hdmi, void *data);
 };
 
 struct dw_hdmi_qp_plat_data {

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
