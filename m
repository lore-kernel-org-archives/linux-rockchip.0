Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2FDAC10DC3
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubLjEmhl+3fw+2iSC44+d0+RJQL5PvwRxnOmLpwmnKM=; b=CQ9YfACyhuu6h8
	S+BXmof3KlgJWnQLvVOQZ1OXV6OyOe8eWVCHHxBFJpTHJ89eGha6Obbk2Xwq3FxerMfVG1rSIWNV4
	aFlGBtzEy9MK7Al4pZ7L/LbolGNCGlugZoELZ1yZCrVGUE2a2byaU17tfbtxY/1NVrk/AXuPxPcQo
	X4/al5XBbru8FUYbJPbUCsJKWQgtGpKB0mfwOfoojBzEzDuoiU0qD/NJl4vM9um9COR8FzHR6LEka
	1s5FVuX7URJv67xDtrNFJmgA6H76f5/vAI4zW7axRrA2jC46pnE5k3yNdf8z0e80cpI2ElCtOiInw
	igoCGq8yzGbVb35kb1JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8P-005NtI-18;
	Mon, 04 Dec 2023 18:57:37 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8I-005Nn3-1r
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 18:57:32 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6d858670630so2560328a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 10:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716249; x=1702321049; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cqG2snvAFFOieKorYhuNC1Brzfr2ap7NECEbi10aNlw=;
        b=VzVDomN1D8BbJ1+w3G3q3u1BbqVHFsF3tfO54SMeItAdZdGPZROGScaSlbBCVogRSG
         hKRR3jbYv94iAju8G9877SuH0bqy8HpFrdgufYrH7fxlw03+yXZz35IRX5LSp/XUocRd
         rfJy/i8Zdzv1bvgUvhUfkamn1V81Hxuhe+96SZR3bRndyHGDx2d+e8rv0kK61QD6y4n9
         kD6+XDf7/SnOc/3jWFu0b9IFB0RdEHkxudkLSA/3IfNU+IrSI92QTAA8qnWZUgKGWnn8
         A6JAnC17Jnqq/GH2lLOF4oS/VT8L3u7OO1tZLpsDVXD82PQw8g0TzODi0ifLi0h9uzZa
         oLQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716249; x=1702321049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cqG2snvAFFOieKorYhuNC1Brzfr2ap7NECEbi10aNlw=;
        b=YlMbp8deJA1DJFwnIh903BInMMM0220x+oh0l6l6UZKYpslL1S/zabQ5r8Zrqd0JOM
         1+Cr/IOdR5f7wQyQ0CCcaJmejj5JhO7T8RQPoBMeTw/DvZrm2U32KHg8Dl+vKccGSoXo
         zDnX5Fk4FO/BbO/mvtqXWcn34OtFQys0UM99/HRhRmQnh9W3/SBcYWTKVsFKAm5TEROP
         Phjxbuk3JvWJbzpiF23PTAEgU3IIG9sv3BoBcdwGltQ9ji9CeuXnYZoIDzBWGIQL+4Ji
         ELv/EwzhT/y4PDyvmtT1S1LB0AvgtgqJ22RGWjTXDOBc/9p0reyzmgdirQA8vfoswwtP
         fvJg==
X-Gm-Message-State: AOJu0Yx92DsIi4PDRtZXLvx3HlgszdfZfmf8LLsjL74385/pqO1SzjpZ
	ea86N7PutOlJJ+lgtn8VUd3N1bD/bUQ=
X-Google-Smtp-Source: AGHT+IFzW6+z7C8Ml2LbohiIxnhnkOFSqVt0Hu8XhACQOMYCMXYHj43Tp5sgAxVYwW+HAwtsrHue1g==
X-Received: by 2002:a05:6830:3b84:b0:6d8:8077:8017 with SMTP id dm4-20020a0568303b8400b006d880778017mr4050327otb.4.1701716249072;
        Mon, 04 Dec 2023 10:57:29 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y25-20020a4a2d19000000b00581fc1af0a7sm2073303ooy.28.2023.12.04.10.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:57:28 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 04/10] drm/panel: himax-hx8394: Add Panel Rotation Support
Date: Mon,  4 Dec 2023 12:57:13 -0600
Message-Id: <20231204185719.569021-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105731_004465_3B0E3730 
X-CRM114-Status: GOOD (  11.77  )
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

Add support for setting the rotation property for the Himax HX8394
panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-himax-hx8394.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
index d8e590d5e1da..b68ea09f4725 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
@@ -68,6 +68,7 @@ struct hx8394 {
 	struct gpio_desc *reset_gpio;
 	struct regulator *vcc;
 	struct regulator *iovcc;
+	enum drm_panel_orientation orientation;
 
 	const struct hx8394_panel_desc *desc;
 };
@@ -324,12 +325,20 @@ static int hx8394_get_modes(struct drm_panel *panel,
 	return 1;
 }
 
+static enum drm_panel_orientation hx8394_get_orientation(struct drm_panel *panel)
+{
+	struct hx8394 *ctx = panel_to_hx8394(panel);
+
+	return ctx->orientation;
+}
+
 static const struct drm_panel_funcs hx8394_drm_funcs = {
 	.disable   = hx8394_disable,
 	.unprepare = hx8394_unprepare,
 	.prepare   = hx8394_prepare,
 	.enable	   = hx8394_enable,
 	.get_modes = hx8394_get_modes,
+	.get_orientation = hx8394_get_orientation,
 };
 
 static int hx8394_probe(struct mipi_dsi_device *dsi)
@@ -347,6 +356,12 @@ static int hx8394_probe(struct mipi_dsi_device *dsi)
 		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
 				     "Failed to get reset gpio\n");
 
+	ret = of_drm_get_panel_orientation(dev->of_node, &ctx->orientation);
+	if (ret < 0) {
+		dev_err(dev, "%pOF: failed to get orientation %d\n", dev->of_node, ret);
+		return ret;
+	}
+
 	mipi_dsi_set_drvdata(dsi, ctx);
 
 	ctx->dev = dev;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
