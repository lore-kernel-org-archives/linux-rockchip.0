Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E6BC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFJH4fJuZUnhFQr+955fo/eiiOFqtSLHTLJgSVxZKHI=; b=eCXOpKC0ZNipCZ
	anm3Isjjj4fZYIPV3oagfYmZhcs4/qkTLCm6v9x2x49RK/ywOd4RV2OacvzqOux/ZwoXVTt5KFVlC
	l098MP4XH2WCg0O7fUtmGmnPBBamcMFKJpgTxbVib2Z0Bw+P0VCVo2x1CEx/23mTn6v40N4knpfAV
	v6pvGoC94BlNvtviinx7CJidpM/JOH5CvG0BLkHE6Io+RoIB6xU8hoW4NB7CEVsO/HUKCcrLNIR13
	xBEzrUTEQbbTpBNar1j/fzvSglpz3R/fVP137g3pj7SW/joD34wmexgW9bXg/IuPhGL85q7oIrvOL
	sCE48H5IDn5FWsDyjFBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjYk-006XYU-1s;
	Fri, 22 Dec 2023 17:43:42 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXe-006WOQ-2h;
	Fri, 22 Dec 2023 17:42:36 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3368fe3466aso983385f8f.1;
        Fri, 22 Dec 2023 09:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266951; x=1703871751; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W4073SJzbMTg0LalE15NpNk7khJfelMofNbr9L2QfJw=;
        b=JasoPU5JQq+gAPS0di/W6xEi4Jr57auGI7c26RWV0hSDf9dMLiPCm+aEB30EXF6wze
         oJ8sOe6/TWL1hHJgkiPWf4W4aW34+0PWo5SI2UGDd2ns1L/7q1Pt+QxZY4Onk9jpio1g
         iGdn/rMD6N7q4WW8Esh9/sC3/5PMOR6KvxXujD25QkrC3JA4N6cKZkmweg5FYHDh6pgI
         sbs5qjdQ9nXdTNfkjqNiFiPzLW3KKB6GTexvPu0XzcLk5C7scXk2wIZdz0k8pj/5aUsY
         B6KgYKxtl29HH9JwoTKeJeTl0NP2Hfi/hjAnn8Csk4edtKml/xZYY86VHaJPi6ZNEupr
         VFrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266951; x=1703871751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W4073SJzbMTg0LalE15NpNk7khJfelMofNbr9L2QfJw=;
        b=qsDbHe8+gDiZdVo+tUg5mzwy37ClOKO4UochgYbY7bq/+sW00fJ5aIFuC2+ujyHDqk
         QBUxANIiRTA25t0J0+DPadOhhMRQhTgLRBnkYV7yPwLJJ6LMR/Ddpp+Zzhqpxe9aLiC3
         9/DUPJubrmbJRkipcAdCxf75Uag9VGC+SP5mmqJau/f9kUxMjBr1Ye6tvqHovQM+CJqp
         L+FVtQ4ZuGu3S5MUoonyUhHUyWxgl53SvBAzOKFrDS6rBq2BoCS44lZEzQcyDWq8GvqJ
         GyDT0YsAm2hTTPxPDsuYLeCZT+7r8e+57EKyXHZfjhiORxB4hgKzb1U6w5mgN8+uXSAt
         xHRQ==
X-Gm-Message-State: AOJu0YwT60i2hHrj9Mw5LaHGWJYTi53DXFH0FhYVtX3wekxEVAoLQGEy
	aYTbo2Wm//O9m9Wvr7GLqA==
X-Google-Smtp-Source: AGHT+IFKE1CB3AU8VJ2Br9gEAWpX4rtGxNpDqQ9zPsAgY7yUcLcKeEvfj88neb+uEsF/9Yhz0hxezQ==
X-Received: by 2002:adf:e74d:0:b0:336:9067:c656 with SMTP id c13-20020adfe74d000000b003369067c656mr575213wrn.262.1703266950919;
        Fri, 22 Dec 2023 09:42:30 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:30 -0800 (PST)
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
Subject: [PATCH v4 12/29] drm/rockchip: inno_hdmi: Remove tmds rate from structure
Date: Fri, 22 Dec 2023 18:42:03 +0100
Message-ID: <20231222174220.55249-13-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094234_902234_79B3CC6A 
X-CRM114-Status: GOOD (  13.94  )
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

From: Maxime Ripard <mripard@kernel.org>

The tmds_rate field in the inno_hdmi structure is used mostly to
configure the internal i2c controller divider through a call to the
inno_hdmi_i2c_init() function.

We can simply make that rate an argument to that function, which also
removes a workaround to initialize the divider at probe time when we
don't have a mode yet.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v3:
 - imported patch

changes in v4:
 - none

 drivers/gpu/drm/rockchip/inno_hdmi.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 04344ee1265d..102195837206 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -56,8 +56,6 @@ struct inno_hdmi {
 	struct inno_hdmi_i2c *i2c;
 	struct i2c_adapter *ddc;
 
-	unsigned int tmds_rate;
-
 	struct hdmi_data_info	hdmi_data;
 };
 
@@ -134,11 +132,11 @@ static inline void hdmi_modb(struct inno_hdmi *hdmi, u16 offset,
 	hdmi_writeb(hdmi, offset, temp);
 }
 
-static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi)
+static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi, unsigned long long rate)
 {
-	int ddc_bus_freq;
+	unsigned long long ddc_bus_freq = rate >> 2;
 
-	ddc_bus_freq = (hdmi->tmds_rate >> 2) / HDMI_SCL_RATE;
+	do_div(ddc_bus_freq, HDMI_SCL_RATE);
 
 	hdmi_writeb(hdmi, DDC_BUS_FREQ_L, ddc_bus_freq & 0xFF);
 	hdmi_writeb(hdmi, DDC_BUS_FREQ_H, (ddc_bus_freq >> 8) & 0xFF);
@@ -421,8 +419,7 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	 * DCLK_LCDC, so we need to init the TMDS rate to mode pixel
 	 * clock rate, and reconfigure the DDC clock.
 	 */
-	hdmi->tmds_rate = mode->clock * 1000;
-	inno_hdmi_i2c_init(hdmi);
+	inno_hdmi_i2c_init(hdmi, mode->clock * 1000);
 
 	/* Unmute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
@@ -800,8 +797,7 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
 	 * and reconfigure the DDC clock.
 	 */
-	hdmi->tmds_rate = clk_get_rate(hdmi->pclk);
-	inno_hdmi_i2c_init(hdmi);
+	inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->pclk));
 
 	ret = inno_hdmi_register(drm, hdmi);
 	if (ret)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
