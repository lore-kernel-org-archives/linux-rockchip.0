Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE11DC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJcuFr3/199F52vZi6gikyMJEMK9tJ+61VkbN5wMxV0=; b=YqtC3Uja7i6Yx0
	Rp6fNV7xBhkPq3a5XwSuRpkrdMnj3pr5lVtkjRHggQbT2jsSOy6u4wvUsztdao8Mub8B+gKgrVDa1
	6NhJS+M2Jf/O7PyQfYnQoShxI0JA/nRFHY/fgejzqJUq6CbKIv6IAWt2u4CoVnP/MewYw5vbZpQN4
	G4FMlVJgQrLtMNCdzM5ubq2YfTbZHCpSw33/hs+7ZATVNO2fH5NnSN3rbc7jObY2Xh+J4/jjYcQAL
	qwT6nkyjp87LWl8uY4nX6Jlh8O4QXXKZzzWhGNEYJ10K1eKQAA6ZS7T+T1OvefGbB8XxJDK3Gz8uR
	Xf4JpK6Mw8v6Z0oWIyFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJiuY-00H1Kr-R2; Mon, 14 Feb 2022 21:29:30 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJinW-00GyG6-Pu
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:16 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EBA7040340
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873732;
 bh=11HYmRlx8dE2WpuAnKJ9eGJzYR6C7S08K2HSgZ9haWY=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=fr04qjrrxUauNd1FJ6WegXtqMXpnW1qGAw62alimM6uv44sA8sk0q4nA3HeIYpYw6
 b+sk0NDE2kjaUIDycJM9qjFJbYixXvgdRtcKuuQrKCJy7LheIleroJ0vCNDCvXgr57
 mAfVp3t6mpCPKMBy4RsXMESP4RANl0ag9RxCOgKK1KRXNMD1Arrb4Lk3afbNnEjqMD
 yRZ5dh0Pvlkx9Xpy50PmVenm6LFqdAbbOChfyxwqfCjumUELp4e7OZLrcTyL1fgmPv
 QYk7TUwP08HNI0fYh3OucYMCRs6FIAheT8esqB1beN1AugBARuIU0/Zwuy1qNvtL5+
 fEOR4yrA4B24Q==
Received: by mail-ed1-f72.google.com with SMTP id
 z21-20020a05640235d500b0041092b29ad6so4815316edc.19
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=11HYmRlx8dE2WpuAnKJ9eGJzYR6C7S08K2HSgZ9haWY=;
 b=Lzh7S1LKtsrs0kr+vEwlPefYyoEhSPTQMlmJpjL2GpqGHW8w9/+HX4lFNt1Q8EjVhq
 MJixnKLkezEpOecDgyatCcVwRPSM1NUy2XpeSe7e4jTi4RMy+R6HkueUMPPLVmhwLBGA
 MQzRT1eQwDtgy/MDkkCuKYUTjO28g5q9ZniwjZmIZlR7xWsgq3dekPydXcKNotVbQBku
 xQQoWtwZvK3ZYwbTdsypPEwWL0gwq3jd37oVL6aeOAE82rsSyTsYUR5yTpR9A3ASQmOb
 wYuAHwm2T9qjACPpqYWCQOygU6vV5nLzAcZX28GJyWkUpz/fa5W3c0zGJZp197TMXZx6
 Jhgg==
X-Gm-Message-State: AOAM533xwMPLPdFOgy93ESc2/KxfH3/l6z5NAyDq2LHH9J5fxUldYODx
 b+DrqfS/elG/a9bPN3RTUq37ZAEc7Dq4sjQAe21dlxmF7wiB51JWo6i52V3RUZ962t6rFeB5Ila
 /B/ICx1IFpFzkiBtsbm/tL9RZJBl3rxGx+IVySfpP80lvd7VjKQ==
X-Received: by 2002:a17:906:8a83:: with SMTP id
 mu3mr507539ejc.699.1644873721204; 
 Mon, 14 Feb 2022 13:22:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzBRv82g+ePgMF2+U8SP74RMmwo7vMWesKHUBo0ELgxKNYYBtnBlWhrBbL5O1DcvkqWwBUiLQ==
X-Received: by 2002:a17:906:8a83:: with SMTP id
 mu3mr507532ejc.699.1644873721039; 
 Mon, 14 Feb 2022 13:22:01 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.21.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:00 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, Jeff LaBundy <jeff@labundy.com>,
 Yash Shah <yash.shah@sifive.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v2 02/15] dt-bindings: pwm: imx: Include generic pwm schema
Date: Mon, 14 Feb 2022 22:21:41 +0100
Message-Id: <20220214212154.8853-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132215_020020_40F3C3F1 
X-CRM114-Status: GOOD (  13.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Include generic pwm.yaml schema, which enforces PWM node naming and
brings pwm-cells requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/imx-pwm.yaml     | 4 +++-
 Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
index 379d693889f6..b3da4e629341 100644
--- a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
@@ -9,6 +9,9 @@ title: Freescale i.MX PWM controller
 maintainers:
   - Philipp Zabel <p.zabel@pengutronix.de>
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   "#pwm-cells":
     description: |
@@ -59,7 +62,6 @@ properties:
     maxItems: 1
 
 required:
-  - "#pwm-cells"
   - compatible
   - reg
   - clocks
diff --git a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
index fe9ef42544f1..8bef9dfeba9a 100644
--- a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
@@ -13,6 +13,9 @@ description: |
   The TPM counter and period counter are shared between multiple
   channels, so all channels should use same period setting.
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   "#pwm-cells":
     const: 3
@@ -34,7 +37,6 @@ properties:
     maxItems: 1
 
 required:
-  - "#pwm-cells"
   - compatible
   - reg
   - clocks
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
