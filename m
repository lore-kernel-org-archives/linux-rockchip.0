Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C37C10DC3
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 15:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubLjEmhl+3fw+2iSC44+d0+RJQL5PvwRxnOmLpwmnKM=; b=WlegeBIUioH/Lo
	eTmV2OtJPY0WkAXoB1TZHxM1gJUNP8uY0w/94U+R9ZzkHKt0E49xLLXDpYcJchV8CKp2osDmyHs4w
	TkHBV8R1YQXNnsbeQ1iMbO/IVYoGAICPrua2u0OWzMgwWSSRJrdnpg2jc2dgNJWWaIU/I8qjFJkrt
	Rq59RdGe3w3Zl2YPcdVobhDSOyOb6QZpRMSNq188Lc7HjdQzrHlTy0jqX6xRw06ybQlBRSzagmr8h
	VQ03ew8uTOWQ/2t/p2sFy76EUnLSD0/s/HRz6IcrsetOaDV9ihguN9+vzdg8ZetHQSkWyXZ3X70UW
	10KKyFbuBYZGKG7ypk0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jPE-00BGq6-0r;
	Thu, 30 Nov 2023 15:56:48 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jP8-00BGkS-2H
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 15:56:44 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6d80245b6easo647521a34.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 07:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701359799; x=1701964599; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cqG2snvAFFOieKorYhuNC1Brzfr2ap7NECEbi10aNlw=;
        b=KI5iK3D6XdTbbI0ZUWdNS29mseD5YSGe6isqnteXgv1Gg+Z27jm7dpiUgl+MocRgB7
         IyJiePrGWLzpVu00jZU5amZ4SnWm9gcUiWWlDWojmfCANOkNZH7GR6wh62njmNOK2BGY
         DOcwUPoyB1SvEAFs2wJ8vs0N6TEbbUJLt9DF8KUd/pTyqKaSYbLo7Qtun5l/ega41QS3
         obGp5OQ52Yqo2LuRrylRExi27gVLHBLQpx4oqZU/L18e/J2w3FvDxE/iD39lik4yZqty
         yv0xgoLpSxZBYGUXqMr9+GMt5Vd0pmi1MmbxI3hsge/c+f/bwdz0xVsD80T0GgHZqnRG
         Ef4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701359799; x=1701964599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cqG2snvAFFOieKorYhuNC1Brzfr2ap7NECEbi10aNlw=;
        b=w2MLvC88UOU3LrllYIRs95btAEjSwrLyORgKUubSWOpTXA0o42UQwMncXbWuCjBFYs
         0hELSl1QOw6G9pIsOXx2tnu/IrJz4h2AR+tpA7WQ56ZdF7oTBmz80BJocjHVKmvYeFp5
         kOadSFy+/2Auv/IwMIlnNWngF/3wn+TnnvK7vnQRqaT9/4h42kAPYPl7B3WYjxOG0MUy
         GUJZGyb7RjgpYDCX0+WGYtKtfasGxt/Pngd63VfIztuBaCwCRAyAmuynCklXfEYUkDBu
         VNkv/9UNPVhIXtaWWEnCAXIh2uV7Zr2Ud7sF4m/gFm6ZBYZFMikjHyGNHeSL8TVQVPLY
         Jn6A==
X-Gm-Message-State: AOJu0YxO2uTEFnJ1s85dlow2Fz2gCeX9586L6EzkxLmj/PAIlkRgUitb
	Thpol9gvJv66MN4wC6Edya+9w62c01I=
X-Google-Smtp-Source: AGHT+IF5jM0pqDMvI16N6bFujnbVlKLkC7G5DaqBhEmXPRDkOyCV7zG2glIlQbuFemOOUGzoI3p2mQ==
X-Received: by 2002:a9d:6b18:0:b0:6d8:2883:cb5a with SMTP id g24-20020a9d6b18000000b006d82883cb5amr14210032otp.24.1701359798769;
        Thu, 30 Nov 2023 07:56:38 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id n25-20020a9d6f19000000b006d7ff27a47esm187852otq.77.2023.11.30.07.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:56:38 -0800 (PST)
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
Subject: [PATCH 4/9] drm/panel: himax-hx8394: Add Panel Rotation Support
Date: Thu, 30 Nov 2023 09:56:19 -0600
Message-Id: <20231130155624.405575-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130155624.405575-1-macroalpha82@gmail.com>
References: <20231130155624.405575-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_075642_743562_A3D9495E 
X-CRM114-Status: GOOD (  12.05  )
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
