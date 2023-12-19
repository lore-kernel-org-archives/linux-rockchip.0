Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7FBEC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPp5vwrouzENsvwSNsOco4fkRXUINLzqWCgdSuZjEGw=; b=KMNcY3+1WWErCH
	H4DzmPwjpO7xOX8u4jqCrll0GHVEQB+Wqn2qy/Upk7xVgu/Ms3tc3psZrW4U2jFofMbYKPms00wib
	6AUVIIMC9SY2Pm34csxQi+wS9YqTJ50Si+d+kfVio6cXDihZyV9Vh2lMV7DBHFPdyL4UnCgJNo36b
	cSo3uSlckx2kKnmpuGxS9JuGtYpttfoLgFgCxLujwjKKcqd6fOdqlrOeuPixgcTztU3GwFTMeG1Q9
	B1sQLX3pdpRvyHsZV29oFDT1AZNR3dMIGmZAtQWWzH1lt5FlbM2JDhVOlipygGtn3KWykfhaY3L4R
	cZf7he+Y43uL2vV5oODQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTg-00EohK-0F;
	Tue, 19 Dec 2023 17:01:56 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT2-00EnxA-0Z;
	Tue, 19 Dec 2023 17:01:19 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c39ef63d9so52485495e9.3;
        Tue, 19 Dec 2023 09:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005269; x=1703610069; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tvxDLNOYjKdWlkXmI7fVu1cGUQmdpgYMh9GlbetV5JM=;
        b=QA+Or+0l9KX9nZ8tM7VGoTXlbrhkr+vU/XuvnVP9DElUwYhTEGemO3HWHB8WsgqT6X
         j8NluhqXHnLLrEmX/3LjYRWHrp37E8dQDvyHJPt1fpplvG1mgcI2ghP/rVLp8iFq26yQ
         VfvCS2ynnzGDb7ReAPTXiyrAQ79CJMkj7u70FIXx5NgZHynnt1ITrVAFJ/zHil+M8Egd
         63eeTrk6BIzJtHXR46wf2baST3YqlR5kEJ990ykpWuH0hf7gS/ITFWETVwuRmOw25c9s
         2EJ4GfkpKmsDEmtIFBX5r01wcRRgu2R2hSkb9/kdKRbVrsv4mXKZx/603snW/fK3+bSI
         jMZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005269; x=1703610069;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tvxDLNOYjKdWlkXmI7fVu1cGUQmdpgYMh9GlbetV5JM=;
        b=lkkRVJe219M/6vAW4JGauyTMdVvLLgaEWItg+mmVda/nYwqbvnzi+z13kQaJbQtIgP
         UU2czLXIYz7jdUt07I++SEigxPxu2uz2eMlpF/guet04Lr176CGN2X0NAG5FRHwyYMFe
         gSaQk/a1PF7FOmXr3I9OTMCA0PKxX/MI0/6HA5T6kGIwws+EJTVpG9d72ZBRanhvgO2O
         iqIOJqedVNG9wHwH0po+lkn0ZAI56txyfmd110uGB3P1Oq/txlskyLu9CPSmWI7Nxjdv
         ZIfDzlqdiGS8yWIqn6zA+/Je+zQL2OBLTywM2qBtuiZ55PQuSxGz+ukUOJSF9xIiYSU2
         afug==
X-Gm-Message-State: AOJu0YyrnGt9brVQhvZWgkLxlPMxQ4KwC/CuSpOxCPuKm6QL2WP+AAvw
	XbTIAA21Wu6oLE1CjwKfuQ==
X-Google-Smtp-Source: AGHT+IGsWNsaajXe5v4hjIqM1EZLyrRrx1NOmjW0Jf66/vPQv93o4u79++vXB9ZEkUXdq2ViVM1Bow==
X-Received: by 2002:a05:600c:1d1f:b0:40c:f7b:67e5 with SMTP id l31-20020a05600c1d1f00b0040c0f7b67e5mr8969956wms.37.1703005268722;
        Tue, 19 Dec 2023 09:01:08 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:08 -0800 (PST)
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
Subject: [PATCH v3 02/29] drm/rockchip: vop: Add output selection registers for RK312x
Date: Tue, 19 Dec 2023 18:00:32 +0100
Message-ID: <20231219170100.188800-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090116_274480_461FCC29 
X-CRM114-Status: GOOD (  13.04  )
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
