Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49470CF648D
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 22:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YpRUzFbMq+gF8AFAIT8X9zuR7G8Ows/2oLixBOZOZHQ=; b=JRKpYLiUlltlE+
	vnP1mrYbP0uQHQrmngMTaOMMxx0sFu0n3WSKSGBtyVSucL1Khid5ZXcS3rW3TXInHhwYeC3ZbvTvG
	X0QRblUBETjD+JpFt9EFSybI0BDuii3/lq4/ugasKlPobwBgBll60t6OTs05GoQzndWO/0mt/aCuw
	Z6XNriYWN9kh1cVpPOqaTk21IfdmMc0OkGB9UY5I7ZUxXgnM6UPhFoJUfzv1dgjPEafKKfmoJBZrc
	MDhir/hgGX5beEuqWZFMDbwkfhJ0WgNXd8dSXsOhgeG9Lxh82L0wsFscdTBFjl8IFoaa175kzKzxk
	aazi7Jrlum2rnwXIlVAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLr7h-00000005ozB-33sG;
	Wed, 19 Nov 2025 22:58:01 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLr7e-00000005oy1-2deb
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 22:57:59 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-3e37ad3d95aso106216fac.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 14:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763593077; x=1764197877; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y6LGAGBP9c6FoKoEIEPE5MCGiUaAlb4W0quePS5bYZY=;
        b=f6REUm7zyVBzj2E4HDmDiFr1i7fIRNeCiAnOR8sLj5gfcPkcdOTnGrAOPq/2m6CxJ9
         y8I4+SDp1SoJbvt1ZKMt706KJlxjtCbG36J2brZb2uuvEZ6DE+F3mAO07jjK0WRXr7s1
         n8sQ93L4yldDUb8ZXLW7MjTKhZG0BhtezOFDlcGo0iD7BxPZWfWnJpY/Sg4gv9QHkaxp
         KGx7DRidh3EKbqgkCOlm2b15NlKc09BjGLydUhAlisUM3e/1Po5S2JjV0r+Tg0kGrIKo
         d5isg4MsgL+NRH1Q3YDW/2cpd2OtQ2wMk4LSvtvlGwwnjPVjpXcygncxjHBTxfGDrU8s
         GPLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593077; x=1764197877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y6LGAGBP9c6FoKoEIEPE5MCGiUaAlb4W0quePS5bYZY=;
        b=vfX8Cd2J/Y0EBMcuAWoNyNu3Lg5YT6Heti/9TYNeBF9RuSTYlL9OFTkD3Aa0F9dH7I
         z8z1ZNgD1ZLYxvUgXBQ8BzPYnoUjyaualKBGful6ZB7n5koCX4ea9fqICljF3TsdZH4j
         O3FlfyMIJZhyplY0QGChC+0q8/Kv5iu9XaOKLBAjfpOIRe080XQJ8j9bO0X/7UKlUjXx
         qiI10rbaAB1MqvAEwVd5qvZJxvxTbt7XtLJJAvazFtNhIpXEHqjnew6Qjpk4B7dPmJbu
         4A8/LiYeZa+It5HxpM75qQ+6kTKXRBUN9w8lePokXiBNY+HMYwhRJQnw7LpVYYNCukgi
         BaEA==
X-Gm-Message-State: AOJu0YxRSdTm3TaaY8RoFLVkdiCj0RixFlQQ9+40Tq7ty9MsC+UBvN/G
	+ApPhrHR8e+ZbEvMaD5zA7wgUHuySdTpzG7qckGGhxJ6wMwH8thQJphenpgASQ==
X-Gm-Gg: ASbGncss4dPaswxdW8gf0bz4GGmOVcEnl0boVhQWmR3j2th4OOAUYg/zez8WCh941uv
	yQ50NjQNBbOWT1R6eDCJggjmGzfAVuRLuSakqr764ohcBr597LGXaOXayxm7ETT+j0Gg2l7YUEM
	+zIn9oW2Wqs/fjeATViHglebxauOpbAsxn/yuDc+Oh8qJ2+GCfvYz2Yd9JFA70Pp42tXQm5Rhea
	9nQ1fXfy8abDVjfrRfBR/jV7LP0s4Hsetq4Hz42dJOgaiSnqbJ85JNWPlBNmrGJD9/rgnuRoBtE
	Rxz/VWzocKACcmK2HhaXWD3a6cJ8eAo+0F3q63MdihE1v5xdk4EAt1/jEWeUmN3GT3tTeMarviJ
	BST/lLRce4CJFHgLZ4RJ4abHmldI6g3QBrwBAlbkykLKbGG30pXbI3nTRlh+s9TDzhKJY+nQx7+
	5qMmBZzOrPEwhLtMIN/1k=
X-Google-Smtp-Source: AGHT+IFytu07GZ0leAT27e/jZkgFSTcxqNaPPUdMxf5ufIH3je+/bC9NW+Gg2lNinpphG6lYgT/JCg==
X-Received: by 2002:a05:6870:80cb:b0:3ec:343c:8db7 with SMTP id 586e51a60fabf-3ec9a3332f7mr514455fac.5.1763593077107;
        Wed, 19 Nov 2025 14:57:57 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dcfe28csm346496fac.22.2025.11.19.14.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:57:56 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH V3 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Date: Wed, 19 Nov 2025 16:55:25 -0600
Message-ID: <20251119225526.70588-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119225526.70588-1-macroalpha82@gmail.com>
References: <20251119225526.70588-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_145758_678720_FE207DF7 
X-CRM114-Status: GOOD (  17.34  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, rfoss@kernel.org, heiko@sntech.de, jonas@kwiboo.se, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>, sebastian.reichel@collabora.com, mripard@kernel.org, andrzej.hajda@intel.com, jernej.skrabec@gmail.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the dw-hdmi-qp driver to handle devices with missing
HPD pins.

Since in this situation we are now polling for the EDID data via i2c
change the error message to a rate limited debug message when we are
unable to complete an i2c read, as a disconnected device would
otherwise fill dmesg with i2c read errors.

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 34 +++++++++++++++++---
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 39332c57f2c5..929b2e95a5c5 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -145,6 +145,7 @@ struct dw_hdmi_qp {
 	struct regmap *regm;
 
 	unsigned long tmds_char_rate;
+	bool no_hpd;
 };
 
 static void dw_hdmi_qp_write(struct dw_hdmi_qp *hdmi, unsigned int val,
@@ -535,14 +536,22 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 
 		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
 		if (!stat) {
-			dev_err(hdmi->dev, "i2c read timed out\n");
+			if (hdmi->no_hpd)
+				dev_dbg_ratelimited(hdmi->dev,
+						    "i2c read timed out\n");
+			else
+				dev_err(hdmi->dev, "i2c read timed out\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EAGAIN;
 		}
 
 		/* Check for error condition on the bus */
 		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
-			dev_err(hdmi->dev, "i2c read error\n");
+			if (hdmi->no_hpd)
+				dev_dbg_ratelimited(hdmi->dev,
+						    "i2c read error\n");
+			else
+				dev_err(hdmi->dev, "i2c read error\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EIO;
 		}
@@ -879,6 +888,15 @@ static enum drm_connector_status
 dw_hdmi_qp_bridge_detect(struct drm_bridge *bridge, struct drm_connector *connector)
 {
 	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+	const struct drm_edid *drm_edid;
+
+	if (hdmi->no_hpd) {
+		drm_edid = drm_edid_read_ddc(connector, bridge->ddc);
+		if (drm_edid)
+			return connector_status_connected;
+		else
+			return connector_status_disconnected;
+	}
 
 	return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
 }
@@ -904,6 +922,11 @@ dw_hdmi_qp_bridge_tmds_char_rate_valid(const struct drm_bridge *bridge,
 {
 	struct dw_hdmi_qp *hdmi = bridge->driver_private;
 
+	/*
+	 * TODO: when hdmi->no_hpd is 1 we must not support modes that
+	 * require scrambling, including every mode with a clock above
+	 * HDMI14_MAX_TMDSCLK.
+	 */
 	if (rate > HDMI14_MAX_TMDSCLK) {
 		dev_dbg(hdmi->dev, "Unsupported TMDS char rate: %lld\n", rate);
 		return MODE_CLOCK_HIGH;
@@ -1074,12 +1097,15 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
 	if (ret)
 		return ERR_PTR(ret);
 
+	hdmi->no_hpd = device_property_read_bool(dev, "no-hpd");
+
 	hdmi->bridge.driver_private = hdmi;
 	hdmi->bridge.ops = DRM_BRIDGE_OP_DETECT |
 			   DRM_BRIDGE_OP_EDID |
 			   DRM_BRIDGE_OP_HDMI |
-			   DRM_BRIDGE_OP_HDMI_AUDIO |
-			   DRM_BRIDGE_OP_HPD;
+			   DRM_BRIDGE_OP_HDMI_AUDIO;
+	if (!hdmi->no_hpd)
+		hdmi->bridge.ops |= DRM_BRIDGE_OP_HPD;
 	hdmi->bridge.of_node = pdev->dev.of_node;
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	hdmi->bridge.vendor = "Synopsys";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
