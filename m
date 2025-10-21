Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16B45CCD1B9
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 15:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31hfsjPj6RFpEUrMOwEKoueXojn41vjSvWNT6s8Jyn4=; b=le+S4Gc6lJTaDu
	Svy5PX84Bcdh64wXCtELiA731NSIHWPQLwmy1FSTQ1j/HZaKCRtf/xlOeHx1nJiYuiwBc6vINagkf
	L/3d5JhQj8ph7YtI5PI+7U77o+L4BBtumEhqPS575X45NzeebipEOH2PVSkNJm5OCazD6zlsU4ppa
	uzqp7QhE1ADrPO+8+AfaMhR+tUx3elmcl0TeRqH20BjFhVUa/YbrUiEQfcjF6JyaQ4ZZfW+CUjAUo
	FI6B5SLJsx8PuRTfC+FZS01Ingr4RAbpGydmCBPGNNDdmFdXI+AR4gnl2dokqfJnhVFlQSZJHfulP
	3bJt3kp5DzLMITxVgijQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECm-0000000HUBD-0SAi;
	Tue, 21 Oct 2025 15:23:20 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECg-0000000HU2D-1iFP
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 15:23:15 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b54f55a290cso870083166b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Oct 2025 08:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060192; x=1761664992; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d9adNp0vIB1m6cHMOI8TscYP77iYGGA2dR4MofxfiQU=;
        b=RxFlo6mdqmpX/RZILVqCz31VzTpcJBbfFrLlRUSRs4pSby3s6RMOZojoVuuxy+1xxf
         ROUpB+sIP+gtwVaXz4hsUU0aFvbL6I/OVsb+3APN37oy2pJUKIwDY3UGoxoDjZg4T3YB
         VfIRC4nMZA+HZAQfU2fkGKt9trOginJc/HVc4jRQ8UYbcRiiqLLwTS2TZgE6fzX6vW4v
         7uGtWMy4eEnGLjHj9bNH8ZUEzIKPKgNaR2kXfJhoqKAq4m47BCOPWIl3UEY2egm3kufi
         HKVN65HYrx9IeeoIWrSytckTaqtn3GBO1XI3F1u3fJ1PmEe9Ls+FTkwIRtoF3WSQH+xX
         wpTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060192; x=1761664992;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d9adNp0vIB1m6cHMOI8TscYP77iYGGA2dR4MofxfiQU=;
        b=D3yNa0js+HqT2ED16p49S+n9iEwWAwO3PjxBcTYl/O9v/WiBO3m5rnykSO3JnAYBqZ
         3GGhd05UIz0Agy3IC1i+/6hHTQIbPHPCxIbJllJ7R5hnv/xacWcVCG2C3bVxFGHjLfU9
         4ODe+1mLy8c4tDDU/kax4iSjq4R9Pw+jzqA8fs4tFlZN6scAffBlBwR6GP+O1yw885yc
         NLtv0chfQ0ObV7dL473xkl4+ZN5OAtJUXFe139jm1wjDrnrI/xV9M/59i1Nwsq7B+kYF
         Fv4VWOX7IYsug0kRTgfob0W4U+nJDm8Ut2eULdAZbl2utVd9UH29XopAlsXX0m6bBvyr
         gqnw==
X-Gm-Message-State: AOJu0YzaUZrz9mF5RUMB8NeCsCjcd488c29z05UWg2ZV19Igr0/kzoEx
	VBAc+BFufadIdbarQblv6miIh8DEbeHWFGx6x+sa9Rw5BCNUh4KLTe9FP6rA1nlb
X-Gm-Gg: ASbGnct8rg8oodWNibe0cfiRPrXKQZXZcP9LdLDXwp5Me5nHsVxjaEVzo94J0aDOI9X
	5E69i+XwR2QNfq7Jv0uqaYf9W4hDehRUxPFk4Ye/rsP8o9o/yZEFU1hvIkbEi1RAp0EoCOLyUOD
	sTRZ6w0uOTun4+sAe+FE264p0EthO0pUCq/pqhIyw/gi+WCbBnctU5RzPl20Skb/WDn6qYSIKGz
	X3HdCeloZYlZKV9Ewy86RTKH7sgw8KoIqPWSjV9FGCNT+Tg6c3daYOD8OZT3uZjJk7rNc9J1ZuE
	RXi+h17NH3XYdpCesl9LWPDGcpB49KKO7jOSUaylSl4mt6BUj4Na+gxbRLLb1k4peOLSqYZOkhR
	kuafUPQcZIHJ01X3gQ/6XdIz6csTqC/ErutoGlBWO/UMvUBopA80WiGv3YCEQJGdwY5TH2JzPgK
	TdbJAe+peI4ul6KBhmKdE8HRpwC66ZxajtY+Joig==
X-Google-Smtp-Source: AGHT+IHurBcs/BvjTvbOQhGO+EbHIilgUbXuYs+sCrM7j/eTqSvavNvGUlTAR8coiGhQ9kPUDFiU+Q==
X-Received: by 2002:a17:907:3daa:b0:b34:985c:a503 with SMTP id a640c23a62f3a-b6474b36a19mr1999860966b.35.1761060191871;
        Tue, 21 Oct 2025 08:23:11 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:11 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 4/5] thermal: khadas_mcu_fan: add support for Khadas Edge 2
Date: Tue, 21 Oct 2025 17:22:44 +0200
Message-ID: <68fbedccd22459c3fb5bff8a41c485075799a111.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <cover.1761059314.git.efectn@protonmail.com>
References: <cover.1761059314.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_082314_452661_2ACFA997 
X-CRM114-Status: GOOD (  15.15  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Fan control on the Khadas Edge 2 is controlled with the 0x8A register,
using percentage values from 0 to 100, whereas there are only 3 constant
steps in previous Khadas boards. Therefore, i adjusted max_level and
fan_ctrl_reg when the mcu node is defined with khadas,mcu-edge2 compatible.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 drivers/thermal/khadas_mcu_fan.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/khadas_mcu_fan.c b/drivers/thermal/khadas_mcu_fan.c
index d35e5313bea41..e3ac4fb6d1f82 100644
--- a/drivers/thermal/khadas_mcu_fan.c
+++ b/drivers/thermal/khadas_mcu_fan.c
@@ -15,10 +15,13 @@
 #include <linux/thermal.h>
 
 #define MAX_LEVEL 3
+#define MAX_LEVEL_EDGE2 100
 
 struct khadas_mcu_fan_ctx {
 	struct khadas_mcu *mcu;
 	unsigned int level;
+	unsigned int max_level;
+	unsigned int fan_ctrl_reg;
 	struct thermal_cooling_device *cdev;
 };
 
@@ -26,8 +29,7 @@ static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
 				    unsigned int level)
 {
 	int ret;
-
-	ret = regmap_write(ctx->mcu->regmap, KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
+	ret = regmap_write(ctx->mcu->regmap, ctx->fan_ctrl_reg,
 			   level);
 	if (ret)
 		return ret;
@@ -40,7 +42,9 @@ static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
 static int khadas_mcu_fan_get_max_state(struct thermal_cooling_device *cdev,
 					unsigned long *state)
 {
-	*state = MAX_LEVEL;
+	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
+
+	*state = ctx->max_level;
 
 	return 0;
 }
@@ -61,7 +65,7 @@ khadas_mcu_fan_set_cur_state(struct thermal_cooling_device *cdev,
 {
 	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
 
-	if (state > MAX_LEVEL)
+	if (state > ctx->max_level)
 		return -EINVAL;
 
 	if (state == ctx->level)
@@ -88,6 +92,14 @@ static int khadas_mcu_fan_probe(struct platform_device *pdev)
 	if (!ctx)
 		return -ENOMEM;
 	ctx->mcu = mcu;
+	ctx->max_level = MAX_LEVEL;
+	ctx->fan_ctrl_reg = KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG;
+
+	if (of_device_is_compatible(mcu->dev->of_node, "khadas,mcu-edge2")) {
+		ctx->fan_ctrl_reg = KHADAS_MCU_EDGE2_FAN_CTRL_REG;
+		ctx->max_level = MAX_LEVEL_EDGE2;
+	}
+
 	platform_set_drvdata(pdev, ctx);
 
 	cdev = devm_thermal_of_cooling_device_register(dev->parent,
-- 
2.51.1.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
