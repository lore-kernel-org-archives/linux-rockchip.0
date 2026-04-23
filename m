Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC24C4450A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0V9gNx6Er4NJhQnMAE0P3nkrEVQxDgwTN8FVy5bgmY=; b=GOzcJk43I+LSpC
	1Ua4DzC1p/oW5wsvgiZCMpc++lvUMOvA4xQGazAGhR2jbLk+M3MfvrQeu+d0R1y/29pmh97GupbpP
	QWI6lleLsyI0zUiVQR1zF4rIFNSoatOoUkLOmqBZL/XsUszj+NHmIgQdMcltiGv2UNLNgkmlboEgg
	b/S5FtGfl5BekRP7xvExAdL9ZOADXQC4P1AwzxBPHDHAxAh8uB05aWfOJmlaXm11NPXagIE/J5KpT
	snJQwbExoxKv8FCvIsfHND8Y6GTY0PGOMJlVj2DmyxL3b28xfXDipKLPbqdIB4AjVbvqhVEJd6NRi
	I9pmF+uJeZLcttsYJ3qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRh-00000001XWG-0SsO;
	Thu, 09 Jul 2026 08:49:25 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFsiP-0000000BZhm-1CAD;
	Thu, 23 Apr 2026 11:59:31 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id A698B1A33C5;
	Thu, 23 Apr 2026 11:59:27 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 69C9260495;
	Thu, 23 Apr 2026 11:59:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5309B10460BF2;
	Thu, 23 Apr 2026 13:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776945564; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=0cIzziXQXBlswI5he/Z1p9UVN9gXfIafkur4yQLuNKM=;
	b=WlStTxqGzva9+UFSYhFfXw4/eyvnNhgwpre83ebDV7irThXx3jpNRYnWO16QrVNcMMUvPa
	FtqvwIEFzz1tDTi3nQMemL7s2ni2N5ABm2DKLe/xjA9s9AGh/vfXXFmQ+Ix5neYQpUggUE
	ZkZ21Yrus5l3d9xGjFkYkOvTZpps9BvhfTY2TQgvgGgOjnl7ZVfUyrQEb88q3IfxCsNhlP
	OFyLzhp9rcJGWmKKtalqgU7Zg963yUOKfMu+Yf0/VXh1SnUEd9dPdKa1GHuQ5iAzalT8L2
	gWTTR+Ma0QEQnp454zzEqKiIy5BYmW0LpXZy4mqze37S9YM/iIdSVAQFxUomwQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sasha Finkelstein <fnkl.kernel@gmail.com>,
	Janne Grunau <j@jannau.net>,
	Liu Ying <victor.liu@nxp.com>,
	Douglas Anderson <dianders@chromium.org>,
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Cercueil <paul@crapouillou.net>,
	Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Jingoo Han <jingoohan1@gmail.com>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Marek Vasut <marex@denx.de>,
	Stefan Agner <stefan@agner.ch>,
	Jyri Sarha <jyri.sarha@iki.fi>,
	Michal Simek <michal.simek@amd.com>
Cc: Hui Pu <Hui.Pu@gehealthcare.com>,
	Ian Ray <ian.ray@gehealthcare.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-mips@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: [PATCH v2 41/41] drm: renesas: shmobile: remove now-redundant call to drm_connector_attach_encoder()
Date: Thu, 23 Apr 2026 13:55:50 +0200
Message-ID: <20260423115550.444930-7-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com>
References: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_045929_585181_498E0C9D 
X-CRM114-Status: GOOD (  14.33  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

shmob_drm_connector_create() can init the connector in two ways, based on
the 'if (sdev->pdata)':

 1. manually in shmob_drm_connector_create(), or
 2. delegating to drm_bridge_connector_init()

Whichever branch is taken, drm_connector_attach_encoder() is called
immediately after to attach the connector to the encoder.

Now drm_bridge_connector_init() calls drm_connector_attach_encoder() on the
connector so it is not needed anymore in case 2 and should be removed, but
it is still needed in case 1. Move drm_connector_attach_encoder() from the
common path to inside shmob_drm_connector_create() in order to get back to
a single drm_connector_attach_encoder() in both cases.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

Changes in v2:
- rewrote completely, fixing potential ERR_PTR deref and ending up with
  a cleaner patch
- also wrote more extensive commit message
---
 .../gpu/drm/renesas/shmobile/shmob_drm_crtc.c    | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/renesas/shmobile/shmob_drm_crtc.c b/drivers/gpu/drm/renesas/shmobile/shmob_drm_crtc.c
index 5f460b38596c..815c770147ed 100644
--- a/drivers/gpu/drm/renesas/shmobile/shmob_drm_crtc.c
+++ b/drivers/gpu/drm/renesas/shmobile/shmob_drm_crtc.c
@@ -583,6 +583,13 @@ shmob_drm_connector_init(struct shmob_drm_device *sdev,
 
 	drm_connector_helper_add(connector, &connector_helper_funcs);
 
+	ret = drm_connector_attach_encoder(connector, encoder);
+	if (ret < 0) {
+		drm_connector_cleanup(connector);
+		kfree(scon);
+		return ERR_PTR(ret);
+	}
+
 	return connector;
 }
 
@@ -594,7 +601,6 @@ int shmob_drm_connector_create(struct shmob_drm_device *sdev,
 			       struct drm_encoder *encoder)
 {
 	struct drm_connector *connector;
-	int ret;
 
 	if (sdev->pdata)
 		connector = shmob_drm_connector_init(sdev, encoder);
@@ -606,17 +612,9 @@ int shmob_drm_connector_create(struct shmob_drm_device *sdev,
 		return PTR_ERR(connector);
 	}
 
-	ret = drm_connector_attach_encoder(connector, encoder);
-	if (ret < 0)
-		goto error;
-
 	connector->dpms = DRM_MODE_DPMS_OFF;
 
 	sdev->connector = connector;
 
 	return 0;
-
-error:
-	drm_connector_cleanup(connector);
-	return ret;
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
