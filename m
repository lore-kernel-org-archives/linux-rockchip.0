Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB38C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dM8W+B3zLRLMJkGkd6HjW6rprgx2KZrTLALE8IQZjmY=; b=UQ8Df6L7+AY4TV
	EEVuZAZwMPVuY9fryW4Q70uiLQCigJbfG75tuTYvHnwwfQ8TLwPd8mK7Ni4tU6Qldskjhu3dnDb6b
	eaHKSE2M6A6LotgUNRPFpCFR1HDJoZMQbhqCrXfbKgimYpd2v5XUhC1/Pe/Rj/4OSe/jsaEJJ/Uy1
	ElGU4gw+fK3Qsr5UmXrxWU6x0BoLmKUzkZDpQunnypYE/hqLw6CtRGRidOt0QYct9IlZ7LkDE/DxF
	NDYe6UytxzpKnaoolAtGGkOmIER9EVJx5MWEfqth5xLl5EopPdQbQAF1a+KMiaucLnmt8u1OXjBdb
	btK0CulmmqRZpIkcZ5yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGY-00FsWq-0S;
	Wed, 13 Dec 2023 19:51:34 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGU-00FsTM-1F;
	Wed, 13 Dec 2023 19:51:31 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40c38de1ee4so51156685e9.0;
        Wed, 13 Dec 2023 11:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497088; x=1703101888; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FrtW0qmKYRNQLQV31syGJ5EsohgiI927CfneGFLgIjg=;
        b=de+p8NiMoiIxZwP7XO48uni5Fk3GyAQKpvvilrM+RA1UOpl4MfKCe/tK0LdNrvPOH7
         xGx0dTyiEFVRD3GPtjrHBKdpzSoz2s5IXyjixTVo9wjpK+ex74WY66/hxLmjm4PRkuWG
         j7jeWOV3u/0XWTS4Y+ugQNDoFhQNPKVKsnapHlgh8Erg99g7ahVgD8oHZovm68KFN0kM
         NOxWGUCHSLQJqNX2ItYXogKIp/YNEqKg731xL0TK5JJmbcwNdHEfdzG6WsDwnYUXAeeA
         /kfaPSdQ38PU83nd+Q82HdywGWGYZYoWMZXX7CMVU+833gtcSnDT53yhE2PgX2pQqG/5
         EvKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497088; x=1703101888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FrtW0qmKYRNQLQV31syGJ5EsohgiI927CfneGFLgIjg=;
        b=oJW/xs9RhpEkIq8DBmKMsKD0L4ICClUW1/00AMCZvJxL1qMsU/ClaBc0KkTEJxjFf+
         RIAHjsp5yBiIKXq6sswU8JZ+jSkv+7hBrwVGyTXiOich5NeLJz4//SyBqGWCZ0JN/fsk
         1RUgVcdQTpYK+F8es1LuGk5+wePIz8zjZbYU/MB7GrmR7kF3cDaKvGbLqzsbnaOBtMMX
         x46JnYUD+r8D5/LkTBI3VwqYeFEVmUKs2yhlze4HEefRyolATNStq7u5EelIvCyCAZq1
         Y4dx3g4x1Jf9Z+5CCUuP5YSxcwbQvBOYAMvHXr+1TngYh/cbMpcRUO3U6202Tv56Uw3+
         mrlg==
X-Gm-Message-State: AOJu0YwBAqxH+DCHBAEtOkmlykBRExt34wibhzCHOutor14n9ek24PlA
	4BcW1nFpxjrRxrZ4hK7S+g==
X-Google-Smtp-Source: AGHT+IHR1mhbvtfmEHVnytGHmx53+I43r/Hf1Na5JA56piJCh0CXRoRhmTkjC+PLrRTxjaxT4a38fQ==
X-Received: by 2002:a05:600c:3b29:b0:40c:3290:7b80 with SMTP id m41-20020a05600c3b2900b0040c32907b80mr4610268wms.138.1702497088224;
        Wed, 13 Dec 2023 11:51:28 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:27 -0800 (PST)
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
Subject: [PATCH 02/11] drm/rockchip: vop: Add output selection registers for RK312x
Date: Wed, 13 Dec 2023 20:51:16 +0100
Message-ID: <20231213195125.212923-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115130_424158_B5404309 
X-CRM114-Status: GOOD (  12.48  )
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

In order to support that, this adds a new vop_output struct for rk3126_vop
with the registers required to enable the appropriate output and setup the
correct polarity.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
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
