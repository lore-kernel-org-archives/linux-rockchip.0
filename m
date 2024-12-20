Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCF31E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 19:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoCnt9eZSybKSCgfDl7dR4EVirdmWrs0Hrtu1K8GKAU=; b=2f3r9PAgzumb/k
	QgEIVXeZ/kZZImc4Bs+39SgzLOxd21krWoMfkfYvPMmhGwp8u0SIhrOs1sSS/zUhpiGBKSosmt6N5
	MjF3mAUo7uMIT1nN4n6MS2xYO1FtgXEtNVZ3She7Mj0lcUogMG9cWW4IGfuqLeMpDzV6zzf71Y3d0
	ts2Ayln8n/y5C8DQ6MYjBvCHZN2pNSaoUyasxgoR478S80mqmyTX/OiA05cw6ri8g1+uKIo/NJMNe
	YY2C5ORCXkzepFV6KoH14RfVsIDctI2GjwK9SH+yF+Ik63SWYX87cHdugWr71E7GS78ObYjM+LsP+
	RrY/v1mUrAktI7eraG5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOici-00000005vlf-43gd;
	Fri, 20 Dec 2024 19:25:20 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOiV2-00000005tao-0dUD
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 19:17:25 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-30167f4c1e3so24060411fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2024 11:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734722242; x=1735327042; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hqnxj6s3/EgjVuNjxM9/sx/Q8vGKE4sDTiUqotmlFDQ=;
        b=dutZSBNEBqv6qHnMOTZ2mqTLjXZiS1V3xIeIxaz0DWVof3UGXspaivCjUztFpME+Sq
         TiEl8GMV6A4uwwYgydxaBvyHCHC8I5MwQpLWxxVsafwfNajC9+nws58LbMKKFz04J5h5
         +E2aJHFasg3Oixr+NYz+tO76lN+rk5FZaPC3lTwdA273QjL6y05yrITWt73R9LZmEAQ0
         aGi8101GPZkSKue+V5QtopgMwIvbYXzmgqkq2YLWaTz7XkcL4BaOFIkSoJXkgZrUIGiF
         OpNvjh3RjMvshbnlfGR/v1rxK/IFm+4FiD1awty/FlytcfXVgxs9I8sJi7QtmUk7A31n
         5rlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734722242; x=1735327042;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hqnxj6s3/EgjVuNjxM9/sx/Q8vGKE4sDTiUqotmlFDQ=;
        b=HoU2om9bs6GCqXsbpcghshoGwNLkjsNKTcj/xVCl9e/JQLJe9rxtm5bg74p8H9ORl5
         kYoc5igvFFCsIOwgQ161V//yS2SpdFFXieFI+LCpN/qZSHiFSQm26uwSFlRROv0sKM7k
         V7BnMfDYSkBJOzEVGa3ze03CbLU4c0c8mjaTx5EWPPCTkADm7X1U5MJ4PZrdiZ3UhBEP
         mvVg6cE4Obqyu39F4Op3/SBGBhzj4eJVXC84oKz/MG4yHLyEp++7bz+Xl7XNyKTZ8cOS
         iPSwVxdu4z6o6gwVusKhX8BfD0gBGL7KyRg0eE3qb8mZsgQjpNoIxgq2y1fZq1+uHiKT
         4HoA==
X-Forwarded-Encrypted: i=1; AJvYcCVTxlkk+ZW2RdOWOTfrfuIKaoMXHsCz7M11fqfWfjcugI33wT0B0ep0bJPvbs9a0jvVnl6nocS7EvuRvcUKHw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxubeoO26XaLtsBK8HrcUdpt0vQ/z159hA95iJ/UOIzrHHTruMo
	2Mx1XiP4TGaq16EF3ZBrwQRYNNvb56GGZ7Gx4eGu8DNxs3cCbSYcAlX5EXDrnTc=
X-Gm-Gg: ASbGncslWLKe6kn25DT8p55ObCsBeQSgfoo356Jqiw41l1iZpoqsbB5vz+g+4AFedTT
	lnSejirH3Pw0a92Dx8ubpM6CSzVp3ywrWmB2yBaFQ91MGgKPVxp4JGzsczzTx7zvvkJB6fflHlS
	pg22T8y2Qx/xEwokMI7S2qsGgBKGndbwErFG8yDdaBjVKj9kdV22w52ma0X0ECG+lxhA2K6iZU4
	z+c+00SkPQCzf/1OPij1Evx/tMZ2nUouagaXEVqElHAwkMUjQHWHFVG/iu4gDTx
X-Google-Smtp-Source: AGHT+IEptTJIjjBHJb6drHS6Ssf3ip8D9nli87J1i3Tl5U5BIoRVUbAgr22Q8lEZaYRdhxbZ2aDt2A==
X-Received: by 2002:a05:6512:ba9:b0:542:232c:d3eb with SMTP id 2adb3069b0e04-54229530111mr1143607e87.19.1734722241963;
        Fri, 20 Dec 2024 11:17:21 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813877sm545141e87.149.2024.12.20.11.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 11:17:20 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 20 Dec 2024 21:17:04 +0200
Subject: [PATCH v8 07/10] drm/bridge_connector: hook
 drm_atomic_helper_connector_hdmi_hotplug()
MIME-Version: 1.0
Message-Id: <20241220-drm-bridge-hdmi-connector-v8-7-2399dbae2990@linaro.org>
References: <20241220-drm-bridge-hdmi-connector-v8-0-2399dbae2990@linaro.org>
In-Reply-To: <20241220-drm-bridge-hdmi-connector-v8-0-2399dbae2990@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Phong LE <ple@baylibre.com>, Inki Dae <inki.dae@samsung.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4313;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=qie1G35P6Yl7cippcpWCMVmv6O7BDmJcfLKNOKKg6kE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnZcKvRQ1DyEvUZ1bVLVKWFGtt2tlzDFohZ6VEy
 cv513jnLgOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2XCrwAKCRCLPIo+Aiko
 1VZZB/48AgSV1kDPiMY882P+b8lEru7SsHx6YLD9T1fz/l553VfG8tGAZ4zSgd8lyhfFF3Ugvw4
 zy5oID9hdz885xTx+UUeywPsD2hrB/WzGlsawx1pwmKboE6XIU214KCydAEFuFXTAb1Ncd1P4T/
 TqQvi7thRLweENmH/lapmF6aDNJ74rfeJrrgZTzyf6rjNMkOzMvwFjg03adlbeISOAYcjf993ja
 6H5af0Us6KBcRMkdKLbmesZB0TGqYhynDCbOVjJid3zmoIDD35wUb/CdkzrFHTDQUebxUfzdD9x
 TPLhFJiPj9m/4tUNtSPH40RcFpTeoTCnjwALIZ68OmXM++JX
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_111724_200303_D3271A14 
X-CRM114-Status: GOOD (  15.84  )
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

Extend drm_bridge_connector code to read the EDID and use it to update
connector status if the bridge chain implements HDMI bridge. Performing
it from the generic location minimizes individual bridge's code and
enforces standard behaviour from all corresponding drivers.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 39 ++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index cc955ee008d843d73fedb891e97143a4168fd311..66e4ab81fa0c2717490193e896389757f0a903f2 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -17,6 +17,7 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_modeset_helper_vtables.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/display/drm_hdmi_helper.h>
 #include <drm/display/drm_hdmi_state_helper.h>
@@ -180,11 +181,15 @@ drm_bridge_connector_detect(struct drm_connector *connector, bool force)
 	struct drm_bridge_connector *bridge_connector =
 		to_drm_bridge_connector(connector);
 	struct drm_bridge *detect = bridge_connector->bridge_detect;
+	struct drm_bridge *hdmi = bridge_connector->bridge_hdmi;
 	enum drm_connector_status status;
 
 	if (detect) {
 		status = detect->funcs->detect(detect);
 
+		if (hdmi)
+			drm_atomic_helper_connector_hdmi_hotplug(connector, status);
+
 		drm_bridge_connector_hpd_notify(connector, status);
 	} else {
 		switch (connector->connector_type) {
@@ -203,6 +208,16 @@ drm_bridge_connector_detect(struct drm_connector *connector, bool force)
 	return status;
 }
 
+static void drm_bridge_connector_force(struct drm_connector *connector)
+{
+	struct drm_bridge_connector *bridge_connector =
+		to_drm_bridge_connector(connector);
+	struct drm_bridge *hdmi = bridge_connector->bridge_hdmi;
+
+	if (hdmi)
+		drm_atomic_helper_connector_hdmi_force(connector);
+}
+
 static void drm_bridge_connector_debugfs_init(struct drm_connector *connector,
 					      struct dentry *root)
 {
@@ -231,6 +246,7 @@ static void drm_bridge_connector_reset(struct drm_connector *connector)
 static const struct drm_connector_funcs drm_bridge_connector_funcs = {
 	.reset = drm_bridge_connector_reset,
 	.detect = drm_bridge_connector_detect,
+	.force = drm_bridge_connector_force,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
@@ -276,6 +292,14 @@ static int drm_bridge_connector_get_modes(struct drm_connector *connector)
 		to_drm_bridge_connector(connector);
 	struct drm_bridge *bridge;
 
+	/*
+	 * If there is a HDMI bridge, EDID has been updated as a part of
+	 * the .detect(). Just update the modes here.
+	 */
+	bridge = bridge_connector->bridge_hdmi;
+	if (bridge)
+		return drm_edid_connector_add_modes(connector);
+
 	/*
 	 * If display exposes EDID, then we parse that in the normal way to
 	 * build table of supported modes.
@@ -368,10 +392,25 @@ static int drm_bridge_connector_write_infoframe(struct drm_connector *connector,
 	return bridge->funcs->hdmi_write_infoframe(bridge, type, buffer, len);
 }
 
+static const struct drm_edid *
+drm_bridge_connector_read_edid(struct drm_connector *connector)
+{
+	struct drm_bridge_connector *bridge_connector =
+		to_drm_bridge_connector(connector);
+	struct drm_bridge *bridge;
+
+	bridge = bridge_connector->bridge_edid;
+	if (!bridge)
+		return NULL;
+
+	return drm_bridge_edid_read(bridge, connector);
+}
+
 static const struct drm_connector_hdmi_funcs drm_bridge_connector_hdmi_funcs = {
 	.tmds_char_rate_valid = drm_bridge_connector_tmds_char_rate_valid,
 	.clear_infoframe = drm_bridge_connector_clear_infoframe,
 	.write_infoframe = drm_bridge_connector_write_infoframe,
+	.read_edid = drm_bridge_connector_read_edid,
 };
 
 static int drm_bridge_connector_audio_startup(struct drm_connector *connector)

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
