Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF55CCFA18
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 18:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzkRrxdiqLmas6K0bHl5FrgCWxbuLeMRrApg+qZsU50=; b=Zxp/F9EWJxVw43
	ag3lt0HBL51PLGhzjiMKqRsZD0z375vZ2uPnzI0deSKNzRcdwR57mMPaWENH0Uh3stNFN8azlsBEK
	5WBitZRHMcuxFj6FIGeUVpS9k2NVEaFiFYQAz9OzKisOwK+sOUsgcPiKSLVhFMKajn8wMfuEiCtJM
	bHCPhBY7xxrj0k9M5K9z4PEPTlp1uGAybG6pMMtO/hMyE0vBirikyB0ahvPzFSW3qQf/YXiyhcacQ
	kCxLJ2iOyj1DtotsnzNQp+RW57uFMg0a7QcIXrmpr1ckZmd6eQc9PRJHm4AVy8Wc8VxcjNhWIbHZ5
	jYRZIVAt8WxwJzmq3UKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4SW-0000000G4s1-1Skb;
	Thu, 06 Nov 2025 18:11:44 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4SS-0000000G4qK-3Neb
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 18:11:41 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-3c9a42d6349so1630009fac.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 10:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762452699; x=1763057499; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5NgunL5KwvJK+2gOf+mj57OQ2fhqgmw6auCXGkvoKy8=;
        b=hVQT76seHinvpi2K5nNLxR23s2sfFVlW+DUXetQm99NAO17IUIusTG/vbdLqRj86R1
         JlixmhMY8xcTMHf7ysRngYgbMrIKbWX9tfWEaM9yODUWu/x3yq8WpOk+0ySyQdPiT7aF
         90QKCEYWoa5ZzEZyb7hHmcTfyfuXFuStZBRT74YJr/H+6K8FMjhm9xu1c4LY+BwfW6ch
         2pNfR+ZgYfuXoMlxZmyJ/GT6Auv93d3NxAI4pfgns0EaGEiwA2HkXpKO0tPFrioCSOQp
         gZbrLVpfPsOrOvb/MkYxlalHTFPGOg36bSxOemUmBi4F0E8lDC2CAUswF8unie5kXZOn
         HfHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762452699; x=1763057499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5NgunL5KwvJK+2gOf+mj57OQ2fhqgmw6auCXGkvoKy8=;
        b=O5anU+bPw97slPlSQxbo9+O6YsyhI37cWb+6mcNZvlwLWAYoX3PWqd86L5A5ZjmAOR
         xyhO/RU9X/hLkNi/xc6VOS7+naUmtcFyIahVUiyjAd4ULdUiPWvH5id2ps345cM5JqQY
         cEqNwbyAtAEbVqfJ2RhiItvPaW2bCCIu5yUb04IKfhjLOxk5TfGD5i90T/xx8bL2kiB9
         0ccu+7EksGuufVeeyu/SuPbGOzyxVOVpYxGk31pkvoo4yDOVvlOJbbpZEgoITv3GBx+B
         wa6ZSwbVHQbicU258R08jNvGevtWcUsOfsQWyVG5VsOwdCapFFEDBbVTVeg2Eq8b0uq1
         BZHg==
X-Gm-Message-State: AOJu0Yzz5khx3BK8/ZNsdu4nbD3iYYwxqDd0u/pff/PgNowTfoVA96As
	TZz+QRFioTX9uy0hnbQpuC8CXN98xXRvM6lX2HSzGZhm3FazUjDDKt4FsU5NOA==
X-Gm-Gg: ASbGnctMj/WVUtHW4HfZEAVOk+sVdGYKZmoaSBOgJOdlodhwqFhbGixM/atI3j3BKXO
	cOD/BR4cKylZNhCXGUWElPaxydnuajZ6XoCjf/DKVNuAtsMKFE09TVJ6n8Hur0MgOGsIqrNLC86
	gR9SYi/pJ6d8CZWW9RJLRldwm2xw0WOwOUjecHU0FhGk/XP6Vs61uXvXnGDIwq0AF8c07KzxQIN
	YOJzCM3Y/Boj8ytu0Ux5lJfWZRUDXpKC8Z15XIEEAP2E8ynByYXsvmAezRYHXzXDQRlEHg/rM3B
	i7vHHfIsMPGgwjKbKnqp7IScdypFJbplSJSnwRaLb7zeO3fWKPM3Sy9hGbbv9MVE+bwPi1xX2xp
	Y7ga8NIDUYMXc5ZrqSPzKb1LVwHGNg0JvJojEAwHgQ9ZBC0sS39lIZC74SGr+fAiJqjIftDeaQd
	JczeGyOYngzRFiXdCUN/c=
X-Google-Smtp-Source: AGHT+IHma/9oT2QhA0Uh2NSevURHZ6LEIHNkUwqOc+ooh6n5wL5HT6VMsKbcFKmAmJ5kNfBQsS2VOA==
X-Received: by 2002:a05:6871:5b0c:b0:3d9:2fe2:f5c8 with SMTP id 586e51a60fabf-3e41e608999mr373400fac.32.1762452699528;
        Thu, 06 Nov 2025 10:11:39 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e41ed0aa06sm137739fac.8.2025.11.06.10.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:11:39 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Date: Thu,  6 Nov 2025 12:09:13 -0600
Message-ID: <20251106180914.768502-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251106180914.768502-1-macroalpha82@gmail.com>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_101140_852229_C6B2C822 
X-CRM114-Status: GOOD (  16.93  )
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
Cc: mripard@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>, rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, heiko@sntech.de, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
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
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 35 +++++++++++++++++---
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 39332c57f2c5..b221f797de3d 100644
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
@@ -1074,12 +1095,18 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
 	if (ret)
 		return ERR_PTR(ret);
 
+	if (of_property_present(pdev->dev.of_node, "no-hpd"))
+		hdmi->no_hpd = 1;
+	else
+		hdmi->no_hpd = 0;
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
