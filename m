Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98493C46CD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szAE3hLm8pXANZFDgDCmEglYRJMIxxdDMyRjm7MZE08=; b=ZQHpVT1PmYWHEg
	Wy0Bxaa+U3YCxkfC9D8YlUs9o8MYBw7o8LOyUrkRXpxOyP3E9+JYEwzXROf3EV0Jc6o95qMi576ev
	g8E6ba4hR1na2Ww8GCcoI8Zhn+/CnQYrm8PHveUDMYKomR6B5pjrhG01EAU0SefK67cXplUuotLYV
	bZNAlu7On+zmPWuv86Vf1n+HAvnAfPnIwWg+d8IAc0qZsfZM92+3eGUqYnjGo43v66kQ6tJhXGrKc
	TUmc+nXWFS0BiEcZbohPHnAJTMJhPYQDseW2frge+rbs1dwqKGo0Q8QXE+XMemYmCJeybTqHiWB9C
	2nd0O11gIJPtq6pl40LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXWj-006LEF-2Q;
	Sat, 16 Dec 2023 16:28:33 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVZ-006Jxk-07;
	Sat, 16 Dec 2023 16:27:22 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a22ed5f0440so204937266b.1;
        Sat, 16 Dec 2023 08:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744039; x=1703348839; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xquaKm3YPbbfHci/n27FNskS85Fe2FEHpYLHWs9wnrA=;
        b=PIUnFdpHgsm7H/3IHbHR83F16lsynnqHdAHBwb1lMvruddqyTg01KGX31fcy0J16AT
         B+a8AscEfIGBuendb1t33BGNCQraORtMTBqv1Gx9RbxdOP5trdROAcvZXAWlklqJZbGf
         mOHarELy0OA2p1U4P9Nvk8dPYw2zTOxWTOCSGhIMIuc55zX4yQymBzwP5JFcMo34QtFo
         WOMdKwCOr5nDvDJ/QswUsIfFFtgCuaOx4Nu5tvW6kO8sCrb8l+I8Gu4RjSPvgjtHf9DA
         pUu3x2N6bQlQO5ly1oki34rGph9rndFeZBq6HzuXTC1nZ0EQr3g/NhP++ewtbTXdA67D
         BGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744039; x=1703348839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xquaKm3YPbbfHci/n27FNskS85Fe2FEHpYLHWs9wnrA=;
        b=RlC30ekjj7J7XUJN0JWGFUvzqlZazWYHEeaxLXqgDMLkx5iYYRjaI6/lCYA8K24/yp
         F5Lqkz6+RT8ZAfl6XYwgXAyI8kLi36TQoxsyEDsRNf8suBvN31NiwcBrodYruF/PPUQi
         /0i23yuTbIFVDanplchPlCidJBat8SU9BvruL4azma+JmYwq9HrvwQncXKb21txg2emJ
         +Ms6vioWYFkuIYy4RwNNPqru7Jm8z1q/wt+BIS7hz/FuW/O1j3n4p8BVXNUgZUPx86M3
         ShGgTNsTIxYyU7NDMcEsLEuVLof7rmHsIO8/xxmEJcOu6TwPFfp6FYTQiWSVDVLrVnqH
         fbuw==
X-Gm-Message-State: AOJu0YwOuhPim/U0SYOLL/EbTi7aLbrKuDygnCNz/3N5PmUHZFQxBq8g
	cOi6mgmwMw6bCouhXfuBiw==
X-Google-Smtp-Source: AGHT+IFUzerbBkuL8ogyxF7tayR3DeWeoAa4xKPEYCPluQhDzstDriEv+K+qp24yTyj3tqDUtQcT3Q==
X-Received: by 2002:a17:906:2c7:b0:a23:2aa7:d48b with SMTP id 7-20020a17090602c700b00a232aa7d48bmr212918ejk.14.1702744039643;
        Sat, 16 Dec 2023 08:27:19 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:19 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 19/27] drm/rockchip: inno_hdmi: Move tmds rate to connector state subclass
Date: Sat, 16 Dec 2023 17:26:30 +0100
Message-ID: <20231216162639.125215-20-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082721_112413_8A1CDA54 
X-CRM114-Status: GOOD (  19.88  )
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

Similar to the othter members of inno_hdmi_connector_state the tmds_rate is
not a property of the device, but of the connector state. Move it to
inno_hdmi_connector_state and make it a long to comply with the clock
framework. To get arround the issue of not having the connector state when
inno_hdmi_i2c_init is called in the bind path, getting the tmds rate is
wrapped in function which returns the fallback rate if the connector
doesn't have a state yet.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - new patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 36 +++++++++++++++++++---------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index f9bfae1e97a2..6799d24501b8 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -47,14 +47,13 @@ struct inno_hdmi {
 
 	struct inno_hdmi_i2c *i2c;
 	struct i2c_adapter *ddc;
-
-	unsigned int tmds_rate;
 };
 
 struct inno_hdmi_connector_state {
 	struct drm_connector_state	base;
 	unsigned int			enc_out_format;
 	unsigned int			colorimetry;
+	unsigned long			tmds_rate;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -133,11 +132,33 @@ static inline void hdmi_modb(struct inno_hdmi *hdmi, u16 offset,
 	hdmi_writeb(hdmi, offset, temp);
 }
 
+static unsigned long inno_hdmi_tmds_rate(struct inno_hdmi *hdmi)
+{
+	struct drm_connector *connector = &hdmi->connector;
+	struct drm_connector_state *conn_state =  connector->state;
+	struct inno_hdmi_connector_state *inno_conn_state;
+
+	if (conn_state) {
+		inno_conn_state = to_inno_hdmi_conn_state(conn_state);
+		return inno_conn_state->tmds_rate;
+	}
+
+	/*
+	 * When IP controller haven't configured to an accurate video
+	 * timing, then the TMDS clock source would be switched to
+	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
+	 * and reconfigure the DDC clock.
+	 */
+
+	return clk_get_rate(hdmi->pclk);
+}
+
 static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi)
 {
 	int ddc_bus_freq;
+	unsigned long tmds_rate = inno_hdmi_tmds_rate(hdmi);
 
-	ddc_bus_freq = (hdmi->tmds_rate >> 2) / HDMI_SCL_RATE;
+	ddc_bus_freq = (tmds_rate >> 2) / HDMI_SCL_RATE;
 
 	hdmi_writeb(hdmi, DDC_BUS_FREQ_L, ddc_bus_freq & 0xFF);
 	hdmi_writeb(hdmi, DDC_BUS_FREQ_H, (ddc_bus_freq >> 8) & 0xFF);
@@ -431,7 +452,7 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	 * DCLK_LCDC, so we need to init the TMDS rate to mode pixel
 	 * clock rate, and reconfigure the DDC clock.
 	 */
-	hdmi->tmds_rate = mode->clock * 1000;
+	inno_conn_state->tmds_rate = mode->clock * 1000;
 	inno_hdmi_i2c_init(hdmi);
 
 	/* Unmute video and audio output */
@@ -823,13 +844,6 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		goto err_disable_clk;
 	}
 
-	/*
-	 * When IP controller haven't configured to an accurate video
-	 * timing, then the TMDS clock source would be switched to
-	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
-	 * and reconfigure the DDC clock.
-	 */
-	hdmi->tmds_rate = clk_get_rate(hdmi->pclk);
 	inno_hdmi_i2c_init(hdmi);
 
 	ret = inno_hdmi_register(drm, hdmi);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
