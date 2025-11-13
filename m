Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B47CCD98D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 19:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKa3RI7OxxH+ENlY0ilNSV1ST3Bj1xBcKKotoYdJcI8=; b=is3AE72NuKXFkv
	xjKTT9r/fSxdK2SYPvrt2E6px8LiY5J6lKyexpYwn9ZgEeWEJnb4/KI158q95d95/lucaSmhnYLZj
	lwcDooF/GJQ64cb7g4c7qHiNz0Nz+6e+ZV5koxq9G6ECfq1Atu9jyfySYMnOtCX2pZs5fhNMf7L3i
	fr6RvOnz/nnm55X3VX5Pq2CG9iU2I4y5DfE6TaM5LygBKxj4GUKYTHCHZcamAsi1biXKTEgwTXGUg
	VZfzhs24BmYfc3+0fmC11G3wAgShbFgsJV3N/pR1RUuNsaz1XVNhbqOSdXcdDaEi4PXPcRzywb/Z7
	Gi04A86nbZZi3gnbsYsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJd3G-0000000B0Ty-3MU9;
	Thu, 13 Nov 2025 19:32:14 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJd3E-0000000B0SR-3pXP
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 19:32:14 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7c701097a75so654621a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Nov 2025 11:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763062331; x=1763667131; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WjY5bSDF/34na4x5qJa/vBhMjZyyo09Xbv/ulTjTfew=;
        b=PoU54iBUR9ED/NudNgnvBkwedFawo5HKiT61bGEJstwK/WwVQLqZmmAUDBd8UVW1e7
         AuJcfKVv9muSxREQlhELfnxjIChqsu+nlG3/JKLNEdBiM22mww8jSCRgH0tleCOMeWA5
         XaTf+fKEtnc5BYI0wqNVQqjrDH1XHXHpWL6KwQ7zqVj9bLYTytMFCvyxSjZaZbrRxuoX
         oubbUX2B3z6QzIMslxSf3/KXOvJfm7pi/+kHehxoXlyxkyJLALMGiZkgH0ElcWeFBkC/
         rAB0yUx4Icy7pvjWtFHV7R5cyBlK7eKpaqNInC2Cyhbt4i0Wp4dFtXdvFk91vh8/nZqM
         jRIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062331; x=1763667131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WjY5bSDF/34na4x5qJa/vBhMjZyyo09Xbv/ulTjTfew=;
        b=XjC5dnLkJV5P/fNEpHhvTtX6ONukxSEyhcNwA3SvoDNNgnH+HwJVlTNZ9WxdM4RXNY
         SpCvbcX/o/6bFM/s9gSJMlHSCuZNok+5jdBiVtaAlQrhxo6wz8F4GDRPru3GVNGjbDTG
         4iE+AkcOknCInzn/zHO3lQG1kiqlu/PjDxVDRBAkDKC1XdGkg54NZ28N+StaGP/jVYCl
         2uOJolqNyLKD3RArBNdNv8ZpQTw4FzyTYW3UYS+jYd50PnwKpbYtj6Xq+III7r1GhhQz
         csoVKw51mgs5Helfm4cNgy72VoLsMOpTcAnVjROA9nJwXoRvYD/ltqnGB6NVLTXxXPAw
         wCyg==
X-Gm-Message-State: AOJu0YxivNChV2353r6bqzY4E9kbNtYJH113oh1aEt2VSEMvzD56UvMt
	qNU4BYIa7vX6/1rYR1cihE5RaGexiZYmI9BUhn4wxefHA5YWtiIfeWEpnb2Ifw==
X-Gm-Gg: ASbGncuJbwM0JSRw/lrbOVMwQ0pLAt6rcMrAhMX6If7qYOdeuGaFtxoDo+mC1gtw1Co
	cSmjN9ilU1zuknir5fnE4rS3QVodF4/Yc85OzcVnK5GzoGMsEYLCEIgP9udYOdRLLRWtnws0e5/
	AVXsWUzuFQKgpvUugVQl7pp4N4qI3OgZzWObBctJIbdrjLVCQAS/x8iFgY1djaztUqtlsl5RmU2
	Pmq0eUYwldG8lyW/hDhJ8jsD8g7U8rcqF+YjzCEZLI785DURUFPrueKKKCFQ0VPsjYhot/f/PKu
	6EwG1u07gBWW6FwYIPHDwwQlJj4rSr+ZsAR+RhDEpFZzqmP2hNr9TYzp6e8XdF1uaDOZGrHy20t
	s7VGQ8aEeXlwv/bgMenCtqqgsNe7hz1bTH4NxErYKOyuMg9FE1oXyIAo1GOBOjaYBF8IGmwgAk1
	jRAsGInrNS
X-Google-Smtp-Source: AGHT+IEN0ly3jkiturhspnw+/Ap8OVCxuw6kbAXWdNt7i/HmMqvW9s6jce50wrIfcbraP1DJ8sELaQ==
X-Received: by 2002:a05:6830:3690:b0:7ae:dbc5:4705 with SMTP id 46e09a7af769-7c744505ddamr468309a34.27.1763062331474;
        Thu, 13 Nov 2025 11:32:11 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a392fa5sm1693527a34.19.2025.11.13.11.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 11:32:10 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Date: Thu, 13 Nov 2025 13:29:38 -0600
Message-ID: <20251113192939.30031-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113192939.30031-1-macroalpha82@gmail.com>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_113212_959245_ED7816E5 
X-CRM114-Status: GOOD (  16.11  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the dw-hdmi-qp driver to handle devices with missing
HPD pins.

Since in this situation we are now polling for the EDID data via i2c
change the error message to a debug message when we are unable to
complete an i2c read, as a disconnected device would otherwise fill
dmesg with i2c read errors.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 32 +++++++++++++++++---
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 39332c57f2c5..a2b1a4821714 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -145,6 +145,7 @@ struct dw_hdmi_qp {
 	struct regmap *regm;
 
 	unsigned long tmds_char_rate;
+	bool no_hpd;
 };
 
 static void dw_hdmi_qp_write(struct dw_hdmi_qp *hdmi, unsigned int val,
@@ -520,6 +521,11 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 		i2c->is_regaddr = true;
 	}
 
+	/*
+	 * Mark errors as debug messages when using no_hpd so no device
+	 * attached does not fill up dmesg.
+	 */
+
 	while (length--) {
 		reinit_completion(&i2c->cmp);
 
@@ -535,14 +541,20 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 
 		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
 		if (!stat) {
-			dev_err(hdmi->dev, "i2c read timed out\n");
+			if (hdmi->no_hpd)
+				dev_dbg(hdmi->dev, "i2c read timed out\n");
+			else
+				dev_err(hdmi->dev, "i2c read timed out\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EAGAIN;
 		}
 
 		/* Check for error condition on the bus */
 		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
-			dev_err(hdmi->dev, "i2c read error\n");
+			if (hdmi->no_hpd)
+				dev_dbg(hdmi->dev, "i2c read error\n");
+			else
+				dev_err(hdmi->dev, "i2c read error\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EIO;
 		}
@@ -879,6 +891,15 @@ static enum drm_connector_status
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
@@ -1074,12 +1095,15 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
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
