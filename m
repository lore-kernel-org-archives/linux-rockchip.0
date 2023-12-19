Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D0A6C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNf9aSsES+bwmETS5IBykBd4b2HU8CHat6szl9CDAWc=; b=SVxkpa0/HLohyz
	mgFPekItRbxjbAvx/+oCaxioRrLz2okqepS+kGyL5buPibi4pvQDGes8TIwLBIuYCpyPWKZbPGbdx
	04irjpeW6Nn/V9QxJvq4NKpzh3FN9RKF/0r9u/GEcazwSxJxGs/k48yCqSixKHYFh77Rp09ktPWJ+
	AueQ1GICbY8fbIlRVOhwRma/W5L5FYHBPT5OCiDR3P1YkGp4EViqaCjeFaOXZH9StF3965O9hfN4R
	tiXVb9zi/xZmIbUg+ExpziNMGUWziWTTlqeICK75kSLyZMeuLH0Rvb3f8FyWAdzuguhSpl4gtYmT6
	hNYvy0UXkGz/y0bj0+gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTs-00Eowg-2r;
	Tue, 19 Dec 2023 17:02:08 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT5-00Eo68-28;
	Tue, 19 Dec 2023 17:01:22 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40c6a71e88cso60302625e9.0;
        Tue, 19 Dec 2023 09:01:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005278; x=1703610078; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pIuIHzK0qm/T7D2HzJVN2+t1kaAcSj5o4LHFrFwAH3M=;
        b=MbsisazqgKBVx02sgocIIDTvE5nCiD7GQFed60x28Y1ibjgq3MiiJ9q6OS/pkQ04EE
         D5ob7KtCcGOhSZmMpV6SYqKenpuVxBBjY577GdGtn3bOcKG630LDFzIu9lvdtTHq0ext
         /OIdrrDiwKKzmlVbDTq6Cj6qEIkriin+TwXiZox9exVRMNFzIppeVjcrefrQ1v3yZvFJ
         HIhq/e5R/wtvc6ShzT0Hi+qCsKdio/vH8irBIl5j0nXyFwmW+arUWs33SglVSSI5HV4l
         pGpG0wIE4K5KPUu2zQp+BB2aaxbQtlYDqrjbR0/29Le4kM3ZusnYXl+RZNSh+2hbuhOv
         zXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005278; x=1703610078;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pIuIHzK0qm/T7D2HzJVN2+t1kaAcSj5o4LHFrFwAH3M=;
        b=Sh4623ybpoUJLNg2SrJvgrqaDgu/A+dAb6caz+JyoSVXXhK1hJdxtFYBB86j/nxZm2
         9Xeaes4pimBKp+xx+K/1XWpRzgYbLQ/JJ4+AtIKpjf97wqB/ZgGmSEq6VNWEwipFb3yG
         RoqFv3jDv8wDXOJdAO5qmgswtkn+fRzYpQoAN7wU9s/LId/YX4l6wT9uMipxU83PdPnq
         tTYBIy0Dl2EmbSBnIqT7e86fDcVs/3thPU2inboqOqDffDchApIlg++3v+cWTLGz02Lp
         sYOVeIPclXJNhgnWzum3iEoFScLDSOuvMd9hfk3l741ofbtfsDwGbUaNk5gBxY1rY3at
         ncAg==
X-Gm-Message-State: AOJu0Yy3sZJCONPa3ddhumj4HmnIS0JeV9uEdyIqnpXIPt481V/MvSpx
	LZOKP4BuGbfx4wANDW3rLg==
X-Google-Smtp-Source: AGHT+IG+MKZvHdr0LdojEJTOnBVthAxDJ27zyg41YEqLHjuX3KtlEV2RPBM3XFk88GAaBr0tl3d3Kg==
X-Received: by 2002:a05:600c:a01c:b0:40d:2df0:ba12 with SMTP id jg28-20020a05600ca01c00b0040d2df0ba12mr458869wmb.83.1703005277928;
        Tue, 19 Dec 2023 09:01:17 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:17 -0800 (PST)
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
Subject: [PATCH v3 12/29] drm/rockchip: inno_hdmi: Remove tmds rate from structure
Date: Tue, 19 Dec 2023 18:00:42 +0100
Message-ID: <20231219170100.188800-13-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090119_749270_208C12FB 
X-CRM114-Status: GOOD (  14.24  )
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
