Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B38BC46CA2
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQeda7LwE4kWBa7Dip24OXHsvkqof7JGHLXXQxylL4Q=; b=k+ZBQ+KcOIRKMM
	/KnVFbsbwbNiIfcNCWvbygTKYyIMrWWSAGAV7pEOtLy3V+5vRSuoHV3dinBN+DlRGGg3xFKT+yFJ2
	EN9QrJ6Kriha0ikitYSYpfvHlnA59biHhA63fcJfbQyRnVN8Z54R14UpbzVcOSMDsrUWh+Pd5E9NJ
	mfhKPtj2eZLrbi72HS/qB6nHBN8nbT+ue4gf2xQtTObWvo8yhVWvEloiUXSmMifw10dqraan48P1z
	ZuN+i3PWV1VkToNFelShzgrCi54r0vl7eBhnK+A9L1tHo5efA2RO2yMwt8dBTPAKJp78IfOhAsdQd
	zpgbvBN43aaDyV3EKHug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVf-006K5U-1h;
	Sat, 16 Dec 2023 16:27:27 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVQ-006JnC-08;
	Sat, 16 Dec 2023 16:27:13 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a1e2ded3d9fso193178666b.0;
        Sat, 16 Dec 2023 08:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744027; x=1703348827; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Lm26+4tm6Q9dy5TiKyQzH1wZ/PMiBfYpwbeTXzDXzY=;
        b=g9g3rr6irULjB9mBOwDHq3VNJFtOIuae5gTZCNEDtOJFQfEv2KaGyO7Lqn6LaLU6av
         W4uN711jNQ9Kh/kdU0Y/ElOpAPjZ24CbhWrAi6urC8YwgNOrcg76kaEf1WBiPuu+Ejc8
         3T/eRTuAzE75iYUTKzZNeArC2fhGnDVMGeTx+9Qgp9VFzb+MD3O1Viy72dkvtONlORGC
         Wnt26P2NMy7UsqVBit89DC2Weywa9OX19RWfx8nQ4ugc33KvKnIsRWQm68hYzXHBibas
         9z7RwZGKsPg2Z3WsOUVnEB2uDcDlXChgaNExxoIbrfCucNH6QiEHgHuiDr33NsBOo36U
         bPng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744027; x=1703348827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Lm26+4tm6Q9dy5TiKyQzH1wZ/PMiBfYpwbeTXzDXzY=;
        b=avOM4wDvyxUtuMWCaS4Xm9DC7CAO7x4XyTDSoroMFNefYV7pQiFJvS+R3iHTmHZSCK
         GKKook6of4WLTrnvnwfdR65BBgRUqbwZihcrQ/HSbBsD7H7fFJAirGtwdExmjVZZj4Pr
         i4L5X02YjcY5tZk4KcBMmeWkSC6G2YEf7QzzmrftZAZTQ7J+gjU42nv00835eIzeHX3M
         ZyELUkTHBfhT3gr5CmRZthX3moWAbnSyUzxDK9ObqOV/8sf6dXl7iDR0q2pkRutuq4ra
         0a/gyK+/3WTBvyanC+1NWyt/AEZ6qgVmEe5afwhjxgmaXdRsTjyEG8H2UNHul79EROIR
         50BQ==
X-Gm-Message-State: AOJu0Yx4AsOG6kvZe76K/TKsr/jXFqAqycWA7PDSbhl53wueA+tRdftJ
	g9CFKQ6P3XyK2HvOjZcDFg==
X-Google-Smtp-Source: AGHT+IGZ7VeNHGWq+1VZP4LYh9qX3NgWRdPWJnURnN0HnbB2LJH1KRm9aL1BAMwgow9ZPeylMhQF8w==
X-Received: by 2002:a17:907:208f:b0:a19:a19b:78a7 with SMTP id pv15-20020a170907208f00b00a19a19b78a7mr7159079ejb.106.1702744027021;
        Sat, 16 Dec 2023 08:27:07 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:06 -0800 (PST)
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
Subject: [PATCH v2 02/27] drm/rockchip: vop: Add output selection registers for RK312x
Date: Sat, 16 Dec 2023 17:26:13 +0100
Message-ID: <20231216162639.125215-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082712_108313_DAD06D55 
X-CRM114-Status: GOOD (  12.71  )
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

In contrast to RK3036, RK312x SoCs have multiple output channels such as
RGB (i.e. LVDS TTL), LVDS, DSI and HDMI.

In order to support that, this splits output from RK3036 and defines an
separate one for RK3126 with the registers required to enable the
appropriate output and setup the correct polarity.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - rephrase commit message

 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 13 ++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  3 +++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index c51ca82320cb..b9ee02061d5b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -227,11 +227,22 @@ static const struct vop_win_data rk3126_vop_win_data[] = {
 	  .type = DRM_PLANE_TYPE_CURSOR },
 };
 
+static const struct vop_output rk3126_output = {
+	.pin_pol = VOP_REG(RK3036_DSP_CTRL0, 0xf, 4),
+	.hdmi_pin_pol = VOP_REG(RK3126_INT_SCALER, 0x7, 4),
+	.hdmi_en = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 22),
+	.hdmi_dclk_pol = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 23),
+	.rgb_en = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 24),
+	.rgb_dclk_pol = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 25),
+	.mipi_en = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 28),
+	.mipi_dclk_pol = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 29),
+};
+
 static const struct vop_data rk3126_vop = {
 	.intr = &rk3036_intr,
 	.common = &rk3036_common,
 	.modeset = &rk3036_modeset,
-	.output = &rk3036_output,
+	.output = &rk3126_output,
 	.win = rk3126_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3126_vop_win_data),
 	.max_output = { 1920, 1080 },
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
index 406e981c75bd..fbf1bcc68625 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
@@ -872,6 +872,9 @@
 /* rk3036 register definition end */
 
 /* rk3126 register definition */
+#define RK3126_INT_SCALER		0x0c
+
+/* win1 register */
 #define RK3126_WIN1_MST			0x4c
 #define RK3126_WIN1_DSP_INFO		0x50
 #define RK3126_WIN1_DSP_ST		0x54
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
