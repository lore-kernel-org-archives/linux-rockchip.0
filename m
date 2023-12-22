Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62F09C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJoZMURAeAlw4cxrnfkFmkkvOdcyA36nYVhZvKAmJVs=; b=jh9zwPxim4LF8Y
	3A2itGHKuIU8+HWM7iSqnC0Xc7CIFkaPl8q0aDaLlm62IxBDg6MlT84b7zMb54VTT2FggMSqNuHpf
	DPBi+P24cYsJr17PBU6n6935Rx9vdVGHtKJznyNVLPJwM4Q2pUYEmH5Zopl9dubHQSo6FnQIRml7R
	Pov4sDpexPagkFmasx1QHiKcPU7z0Udbit970ochRxi/c/YVRyguQIYULTro0pa2SihLLdQQsDKF2
	26gIhX9DBelxAA+qJy16kuHK6lgBba6VfhaZpJf51t72b33Kz8hD8OxOAt/GBvGPFls2Tr6HGZisb
	iHa8F6/ZVRdHFNCVaRkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXZ-006WMD-0K;
	Fri, 22 Dec 2023 17:42:29 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXV-006WJx-1T;
	Fri, 22 Dec 2023 17:42:26 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3368d1c7b23so1336667f8f.0;
        Fri, 22 Dec 2023 09:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266944; x=1703871744; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0neXejdyKcMYrQeMYfWnn6/UkX9PKjLjeZy6MNbiAE=;
        b=Vumgjr9fQANSOpE8saEYhVdJ5/+tIfSFuzYoY4SpCGf2htbPhN329mXqauh2LGYydz
         2s202a6p8V5H7i3IhCExbecKoOjh+pYiMRiF9hebQ7Kf7ELlAEPV8PQ9zOF6a4jBtXFr
         4/JQOhtCB3TfFnm0zrSDJDf3aVhXMnFwxzYmDiDGLZBle/d+TvWlYvvi+9RBdAOX74bp
         sIoGuaSFVwPjv3sCe6M2VTx///YjMpsxX2wwzGP92HYk6/rZc+1ixWdL2PkOgEHLcjAO
         8mpLUZKzWHn9e3+yEtyP/tcbtdbIPZZ2+7D0MGkamZHSslQBris+yRnPgRR7PGGO5HKB
         9x/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266944; x=1703871744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S0neXejdyKcMYrQeMYfWnn6/UkX9PKjLjeZy6MNbiAE=;
        b=ZNHVXsMFiEBkGJOsegfbx8HFyGVDmJNauhsV/nigMrtEo9CV2JSJ5kUoxchTvUMMUq
         kpKGQP82FPNsnjwNXkGkoGz1p7lPnVvx0k6CpQEzXp6GmKvJE5CfYc1h/ci58K78yL/Y
         MxVpNmjWJKvf1iEyRYsdE9lj1xv8RvRQIWOVRaH4Pp9bF321qOoatr+hneRbB2ZJPnGh
         Hsd6o/x14zPQ51LdcRq8VaP/5NupHbsUXdd9sHDG96DZa9aQ9+Ny1FQ0tVyrF1fmFxjL
         LwFieOdfG9N1MkJ6rluxApose0MeQTe54uXkW5A8oVJ0z1U2AGCq22DRAET5zEd96z3h
         s0qg==
X-Gm-Message-State: AOJu0YyezrTZQ6yBUij6diSNiZjZpQAioQrQnhTog6bNTaKy5KLu9sxj
	jrUSxwYnOPYu2LX1fnJf5w==
X-Google-Smtp-Source: AGHT+IHgMx+o2VEbHPVQJ4P/KXTppQFx3koXaTkd1ZRvghWFSrx8ldGUAziC02wAFGucwtqAJI5Y4A==
X-Received: by 2002:a5d:5341:0:b0:336:8485:d870 with SMTP id t1-20020a5d5341000000b003368485d870mr954023wrv.65.1703266943886;
        Fri, 22 Dec 2023 09:42:23 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:23 -0800 (PST)
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
Subject: [PATCH v4 02/29] drm/rockchip: vop: Add output selection registers for RK312x
Date: Fri, 22 Dec 2023 18:41:53 +0100
Message-ID: <20231222174220.55249-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094225_509784_6BE5A074 
X-CRM114-Status: GOOD (  12.59  )
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

changes in v3:
 - none

changes in v4:
 - none

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
