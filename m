Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6100C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03opGh5jx+hXCRl51PAo4yfLLaNHsdWIE7d/2nhtyE8=; b=GS96P56p8APleV
	XpcIlWzu5venu4bM/2W9Jx1HN1ouRLoE27N3qru03yMMtnA8eXUs1kNU98rVQVQatJP5knFlBHYNZ
	yeYWogqEY5kbJ790qbaVTCTQ3APCponyaf2I3GB8C+UgwyC7lnyXO0lTebw9xHiuusjKWpPkLrBvq
	5RqWbFzkYZwabT/OnwUR/wAf4bBJT2aPK0ZhWi0V+fjl8KXipqYN6J0ua/9WoXE5lrWS+/Uv8xdy2
	xmH/+4/8caHUkUWUS4JFVBqXw7e6GRYWBibFP49aQEDSEx5Xs6UUcuzqdKuneWMjEHMMACClwLfwd
	IXw7b/6CegR12hJu3wqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdVY-00EqbB-2C;
	Tue, 19 Dec 2023 17:03:52 +0000
Received: from mail-wm1-f53.google.com ([209.85.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTI-00EoKX-1B;
	Tue, 19 Dec 2023 17:01:37 +0000
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40c60dfa5bfso56963365e9.0;
        Tue, 19 Dec 2023 09:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005290; x=1703610090; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yPHQ4Axf1Zj8/9D5WH9YQvs+oHeh2coMc0soFZ2d7Pc=;
        b=h3iieqLdEceAAVF59rg0yhTHzi2AIGWYqhUcZ3HllqLUT2dJE2oQZQnZLXvu0cAYju
         oo/Ex7pYq2IXk8rRxGbZaHsJRO6XVWaTVhfKTzm7PjxqEaxdyS46AkcSogwAaaCPbRXI
         LJhKudAqinDT/jrW6pan3dd4yDAUKvU5ZGcmu9FdEl8RPArcvm0Xn9r2YgyVey6nWmV+
         phUdHY6I5qSFRftpNc4LIM/LIOCDcnV0jDP2ZZfXUsdFF0wyg8aGCyA9GjMAJc/5OiID
         qURinQ+HZLLSlFzthrxGr2d0uy6dkkUXbv1wrGv7HB1u6e2XwQi2fkMqnnfHXe+lTQV1
         72Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005290; x=1703610090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yPHQ4Axf1Zj8/9D5WH9YQvs+oHeh2coMc0soFZ2d7Pc=;
        b=fR9dZ2Dse3NWFOOjeEJyPDpYLGjvEtSWPXmymNobqRhffvmWZ9YV0LXg5Q2HVQQG/r
         ip1zfxYz7tG4B2ucvCzgiZ/QE/gRo/RL0S9Jx9pNqrtH9G3fHZ+AjcHK2U0i7RjsPi3z
         xq+75W/Mh2atNC7PiEKC6cUF3kmyTAfodVvzDhiL7j99HPVIt7kr+s9D34c6MgSd7SD1
         bDMd8IVXKFNLFXH/qphQ+1Q8CfMflRCKLnM5ELIF9FNeBfffP3wISjQwma881/cdBbJS
         NoO+wSWUJ2canggQvSL83lN+lBrcqhtMZokmI+XrbvQUdkmk6Z8nge3bxj5AJHDSCwDF
         zgiQ==
X-Gm-Message-State: AOJu0YyCml/m5usWgZ3Pb/M/Rv3O4PJvYKq0meTBqNyrTjecvaOi1uyK
	6qEnGra0gOBlF0JtQAqQ2Q==
X-Google-Smtp-Source: AGHT+IE4eDamrkaqHIRmRipnXIk9NA5k22v04gAX2DztUoFzEGsVq5zIRkBu0fqdPB7W0SQaCaXYPA==
X-Received: by 2002:a05:600c:538e:b0:40d:2055:8088 with SMTP id hg14-20020a05600c538e00b0040d20558088mr938934wmb.158.1703005290201;
        Tue, 19 Dec 2023 09:01:30 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:28 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 24/29] drm/rockchip: inno_hdmi: Add RK3128 support
Date: Tue, 19 Dec 2023 18:00:54 +0100
Message-ID: <20231219170100.188800-25-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090132_473221_0F5213E0 
X-CRM114-Status: GOOD (  20.94  )
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

This variant requires the phy reference clock to be enabled before the DDC
block can work and the (initial) DDC bus frequency is calculated based on
the rate of this clock. Besides the only difference is phy configuration
required to make the driver working for this variant as well.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - no changes

changes in v3:
 - no changes

 drivers/gpu/drm/rockchip/inno_hdmi.c | 46 +++++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index df979bab9abd..8a1a2320749a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -51,6 +51,7 @@ struct inno_hdmi {
 	struct device *dev;
 
 	struct clk *pclk;
+	struct clk *refclk;
 	void __iomem *regs;
 
 	struct drm_connector	connector;
@@ -132,6 +133,12 @@ static struct inno_hdmi_phy_config rk3036_hdmi_phy_configs[] = {
 	{      ~0UL, 0x00, 0x00 }
 };
 
+static struct inno_hdmi_phy_config rk3128_hdmi_phy_configs[] = {
+	{  74250000, 0x3f, 0xaa },
+	{ 165000000, 0x5f, 0xaa },
+	{      ~0UL, 0x00, 0x00 }
+};
+
 static int inno_hdmi_find_phy_config(struct inno_hdmi *hdmi,
 				     unsigned long pixelclk)
 {
@@ -905,6 +912,20 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	hdmi->refclk = devm_clk_get_optional(hdmi->dev, "ref");
+	if (IS_ERR(hdmi->refclk)) {
+		DRM_DEV_ERROR(hdmi->dev, "Unable to get HDMI reference clock\n");
+		ret = PTR_ERR(hdmi->refclk);
+		goto err_disable_pclk;
+	}
+
+	ret = clk_prepare_enable(hdmi->refclk);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev,
+			      "Cannot enable HDMI reference clock: %d\n", ret);
+		goto err_disable_pclk;
+	}
+
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0) {
 		ret = irq;
@@ -921,12 +942,16 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	}
 
 	/*
-	 * When IP controller haven't configured to an accurate video
-	 * timing, then the TMDS clock source would be switched to
-	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
-	 * and reconfigure the DDC clock.
+	 * When the controller isn't configured to an accurate
+	 * video timing and there is no reference clock available,
+	 * then the TMDS clock source would be switched to PCLK_HDMI,
+	 * so we need to init the TMDS rate to PCLK rate, and
+	 * reconfigure the DDC clock.
 	 */
-	inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->pclk));
+	if (hdmi->refclk)
+		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->refclk));
+	else
+		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->pclk));
 
 	ret = inno_hdmi_register(drm, hdmi);
 	if (ret)
@@ -950,6 +975,8 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 err_put_adapter:
 	i2c_put_adapter(hdmi->ddc);
 err_disable_clk:
+	clk_disable_unprepare(hdmi->refclk);
+err_disable_pclk:
 	clk_disable_unprepare(hdmi->pclk);
 	return ret;
 }
@@ -963,6 +990,7 @@ static void inno_hdmi_unbind(struct device *dev, struct device *master,
 	hdmi->encoder.encoder.funcs->destroy(&hdmi->encoder.encoder);
 
 	i2c_put_adapter(hdmi->ddc);
+	clk_disable_unprepare(hdmi->refclk);
 	clk_disable_unprepare(hdmi->pclk);
 }
 
@@ -986,10 +1014,18 @@ static const struct inno_hdmi_variant rk3036_inno_hdmi_variant = {
 	.default_phy_config = &rk3036_hdmi_phy_configs[1],
 };
 
+static const struct inno_hdmi_variant rk3128_inno_hdmi_variant = {
+	.phy_configs = rk3128_hdmi_phy_configs,
+	.default_phy_config = &rk3128_hdmi_phy_configs[1],
+};
+
 static const struct of_device_id inno_hdmi_dt_ids[] = {
 	{ .compatible = "rockchip,rk3036-inno-hdmi",
 	  .data = &rk3036_inno_hdmi_variant,
 	},
+	{ .compatible = "rockchip,rk3128-inno-hdmi",
+	  .data = &rk3128_inno_hdmi_variant,
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, inno_hdmi_dt_ids);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
