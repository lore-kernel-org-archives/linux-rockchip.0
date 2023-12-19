Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A72BFC46CCD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2csyVMNy6Q5xkCQUst5rap6kIiTtkzNbIsXB5Sqbzqw=; b=A/OWV1tybyHJLo
	9U7cCi6s7YRFGWaj/sVxtF/dKPur/BBFXsxz2q/hIrDRN0uhjenly35ys7PeoZr+qFRLw6LDOAJcw
	9xYkjThTnh7EzzTUQvXXcW/WiDBvXDcnBqV2RrCjjyQxQsn80UT7Kc1a3JyrUMc716iTsVxyEREE7
	//7DlGPs19xifh4lzru/U+DQp4kzICkykyL8pnaHYnONtNF7AfU8/C89yqJMnIyN0Lsfrt1H4WiKY
	r7rifeTVOXGGzAWpN1JKk2QJ/UInvQ2Rq30TaVK47OylBaiy4gsgU5by5yA4nyorjiyqCSxFliHB1
	pwQ3Qca6qwYDNFH8NyqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdUo-00Epvn-1B;
	Tue, 19 Dec 2023 17:03:06 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTE-00EoGf-39;
	Tue, 19 Dec 2023 17:01:33 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40c69403b3eso47782495e9.3;
        Tue, 19 Dec 2023 09:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005287; x=1703610087; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QlneokmKF1TajoqU6rsqTKLh9Q2KoTuUiBV9HAc+RDM=;
        b=ZpNRA+iiqCPJ+f7+QnHWtwtg3Q18y8vd91KsE0j79La2jTX0/FrCTsDvTREA0YexCY
         0ePwQmrevChXaUi42E4TKs8RTQq17Q36h68vM77hUidZpwPpTS6BlewYa2DpSwj+r/y0
         hZcdveibiiN6GunQFhM80dQzVG/PyahBQ/1gLg6noBC6z8fw3DYVSPjA7ghLg0+Mwh3K
         117Antj4v+ikQYERuwf2YdOKsKKQNGOOKPKyeR8OzJl1jgHH/mdu4ftp43voH0bfLwGc
         V2GAUsQ5gmOhQIhL6Jx3m5G+hWrizOBmMq3SU9yrP+NSloL6D1cjSNOxNrY+YfrhGObt
         wSnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005287; x=1703610087;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QlneokmKF1TajoqU6rsqTKLh9Q2KoTuUiBV9HAc+RDM=;
        b=Wky+tiSDSZvsj8wQyhpp4uz+mS4oolQZh+vBfhgDEkzk/WV/WgIzG/gT2jDA6WOxbX
         H2BMJF4G31ksbn/Am+vqj8ookbodHqV75/EGWQIny3A1mWkMTpLCEiayvV2cr7P1KMGd
         qvtHxt6qDg+klmEbkDnnxtXP11V6SVreXHvdCZFIVR8MJjGum7PWWae1OXN5qCRkmRxp
         SPqfHopqbfWga7Ml+bGztCcdM8/Nts+0lbGPMzwUnPIgPCXHHmM+FZo934wklKBtpbMd
         SVpAbbTinI/1GPKtJa3V09FJfkknr8zc05hUI6Y1zLd41s+Dk0z1eRG2CEjmPYFTW8ZS
         nNSQ==
X-Gm-Message-State: AOJu0Yy8RAtIRd11DDB5IMHoF471EZO39m5YiZnKRcYmyaTeKFhcGRXd
	6Grq7JzItsljL01q19VADw==
X-Google-Smtp-Source: AGHT+IFgNag5RzBVfRt1FyfNQwZdIW7ZbFhF5a9fbzOs0v3zV+7ntZcb1IJiL0G1mPdw1hfxZoM6rA==
X-Received: by 2002:a05:600c:3502:b0:40d:18e2:895 with SMTP id h2-20020a05600c350200b0040d18e20895mr2209578wmq.98.1703005287566;
        Tue, 19 Dec 2023 09:01:27 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:27 -0800 (PST)
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
Subject: [PATCH v3 22/29] drm/rockchip: inno_hdmi: Split power mode setting
Date: Tue, 19 Dec 2023 18:00:52 +0100
Message-ID: <20231219170100.188800-23-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090129_036177_2DDDBBC9 
X-CRM114-Status: GOOD (  13.07  )
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

This splits setting the power mode of the controller / phy in two
functions. It's done in preparation of setting up the phy based on the
pixelclock.

No functional changes intended.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v3:
 - new patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 54 +++++++++++++---------------
 drivers/gpu/drm/rockchip/inno_hdmi.h |  5 ---
 2 files changed, 24 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 9fea464b6234..e21f6d7aeee6 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -154,38 +154,31 @@ static void inno_hdmi_sys_power(struct inno_hdmi *hdmi, bool enable)
 		hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_OFF);
 }
 
-static void inno_hdmi_set_pwr_mode(struct inno_hdmi *hdmi, int mode)
+static void inno_hdmi_standby(struct inno_hdmi *hdmi)
 {
-	switch (mode) {
-	case NORMAL:
-		inno_hdmi_sys_power(hdmi, false);
+	inno_hdmi_sys_power(hdmi, false);
 
-		hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x6f);
-		hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0xbb);
-
-		hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
-		hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x14);
-		hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x10);
-		hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x0f);
-		hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x00);
-		hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x01);
-
-		inno_hdmi_sys_power(hdmi, true);
-		break;
+	hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0x00);
+	hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x00);
+	hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x00);
+	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
+};
 
-	case LOWER_PWR:
-		inno_hdmi_sys_power(hdmi, false);
-		hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0x00);
-		hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x00);
-		hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x00);
-		hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
+static void inno_hdmi_power_up(struct inno_hdmi *hdmi)
+{
+	inno_hdmi_sys_power(hdmi, false);
 
-		break;
+	hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x6f);
+	hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0xbb);
+	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
+	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x14);
+	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x10);
+	hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x0f);
+	hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x00);
+	hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x01);
 
-	default:
-		DRM_DEV_ERROR(hdmi->dev, "Unknown power mode %d\n", mode);
-	}
-}
+	inno_hdmi_sys_power(hdmi, true);
+};
 
 static void inno_hdmi_reset(struct inno_hdmi *hdmi)
 {
@@ -202,7 +195,7 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
 	val = v_REG_CLK_INV | v_REG_CLK_SOURCE_SYS | v_PWR_ON | v_INT_POL_HIGH;
 	hdmi_modb(hdmi, HDMI_SYS_CTRL, msk, val);
 
-	inno_hdmi_set_pwr_mode(hdmi, LOWER_PWR);
+	inno_hdmi_standby(hdmi);
 }
 
 static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi,
@@ -441,6 +434,8 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
 		  v_AUDIO_MUTE(0) | v_VIDEO_MUTE(0));
 
+	inno_hdmi_power_up(hdmi);
+
 	return 0;
 }
 
@@ -460,7 +455,6 @@ static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
 		return;
 
 	inno_hdmi_setup(hdmi, &crtc_state->adjusted_mode);
-	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
 static void inno_hdmi_encoder_disable(struct drm_encoder *encoder,
@@ -468,7 +462,7 @@ static void inno_hdmi_encoder_disable(struct drm_encoder *encoder,
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
-	inno_hdmi_set_pwr_mode(hdmi, LOWER_PWR);
+	inno_hdmi_standby(hdmi);
 }
 
 static int
diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.h b/drivers/gpu/drm/rockchip/inno_hdmi.h
index 93245b55f967..a7edf3559e60 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.h
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.h
@@ -10,11 +10,6 @@
 
 #define DDC_SEGMENT_ADDR		0x30
 
-enum PWR_MODE {
-	NORMAL,
-	LOWER_PWR,
-};
-
 #define HDMI_SCL_RATE			(100*1000)
 #define DDC_BUS_FREQ_L			0x4b
 #define DDC_BUS_FREQ_H			0x4c
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
