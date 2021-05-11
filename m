Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C62C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 11:29:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 19FBE6186A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 11:29:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 19FBE6186A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iWIWHoBkH4Zik1ZNYhiLpFTVVDvaCfgyFHCGvNI6cG0=; b=OFtV9YHhmyaGnj0j1Jvgo0u7Y+
	KF5r5BMiKqADSYENKOkiSsTW6XEmj94YTwDldv9psjcLFPoj6lExlH/BwPQkAAheG+nZC2t3+MZDV
	GtCqk68Jsld+ATAmrKh7Soa7dVkuLrxPlCwkOtxN5tEbeSS9ldylAML3e5dsHZh46gD4YXkcKqoFA
	UjxDkPNP1lXLmK2X2rIKfcEU+pdJWsdV/lw7lr/oZTdABNaACZXKwXIrOzz/qQkgQYVMGkF5OwShr
	1uRbk7cvAgS3pIMQob/artDUjpYs/Zt4ilSMGN6xV+e16fAIM8Omp6XatoBqLezODKDrbZWG2iOFN
	iG/jvUaQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgQa8-00H8JE-F5; Tue, 11 May 2021 11:29:44 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgKaE-00GJLK-Cz; Tue, 11 May 2021 05:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=iNqkCqnJS+8lE5A1JGiBhGJCy9lYCE4136JGur/Nmf0=; b=Eaz/yGfGxynh+VJMexBlvvntFr
 HhiRep171NehceibOoes2nG0NfCP0DJ7caXToGIbjj0SCm0bsNvIMtqVokvolR5Z3Uc4kX1I6AoOe
 4jOFBE/idsTetKUCWUuxlsaY+eTMpjj5sKu6ASrCXJQzklv6baqm8OKFBtZFuMmyooobH9fajRQKw
 OW5vHhK+/rg15MR0+DD6hbXhYLW4Uw29cq07NBhm2c/Q6cFQE7pTBVBNR1+3aL8OUx019hMFfpy81
 c9GguS+E/f8FugbqXapjIjp0auQ/ETb6YjPI9oEOPqL9L7BwIVRwgnYzDJ98f50p50kJo38vFplPd
 5dBdRgYw==;
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgKaB-009JC8-Hk; Tue, 11 May 2021 05:05:25 +0000
Received: by mail-ej1-x62a.google.com with SMTP id f24so27826594ejc.6;
 Mon, 10 May 2021 22:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iNqkCqnJS+8lE5A1JGiBhGJCy9lYCE4136JGur/Nmf0=;
 b=quL+SPqiEYn3FfPd9ZSF9t+LEznUw2O5+u8KA7juyl3npI+Djp+hq/gBkNa10WNHw2
 Blm/NUm+KNWmaY8RMu4sTz1+jVti7W9ZOI5vJBN96b/sDgKVCsNsslcxV8lEE0Cedgg5
 VrOnIYkbIExw8ez8rmor1yaXK0wa40f+gzPAeN64ru5R+HlTXyRsxkjOsJMU0hPvgctC
 wAsb4nhxRmEmq8zfiTN3u0htBYTDZuEptSxzkKpHTzC7rFYdaGClc2xpd6bzfXV11JL4
 JOMDNROe2QHTq6p1b5eXsQ5UBQFqUUVdXGEDb/1YQ691MIBIdDK8HFLalotWPdUFmEWB
 vaxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iNqkCqnJS+8lE5A1JGiBhGJCy9lYCE4136JGur/Nmf0=;
 b=aQzQRVeFZs9+NoCNWeafRPt/UcDoMawPEjA5UioD3louKgY9/3pb47mTq4sbBqF+Z5
 5kpWNHkQcaJCJ6yZELPKSONCb+308GNo56yM3FvDy+Xl3MmP9RMTEa+ACu5fxgAsDhAz
 On2h75sCh3AEUqDhOUAQ7ErWalKkzOuQPc3TVByoSJO5x5FFiEhZLplx/CLKtyp12SuW
 JD0yrWMWM7dUJGLtZWrIrZnX391gK1tMA+6t/sW1YF+WD7Prxzkmt5SF4xSfrzUBneFD
 teKuxcV2+YjAc3mP/pWUBU3fzguxlMDM+csiS9w5PDBy1bNU+jXT627arHqgrIAwqbB8
 uICg==
X-Gm-Message-State: AOAM5336PFUWjCqGsd6zypVkjRpyaI79aaSCdBXiwaJZMk+08SwUxGnL
 HpJxTtxUqEF36mP+6F4Z4wM=
X-Google-Smtp-Source: ABdhPJwAjQFcdxhxEwlBGZ748gOj5RIF/wA/NdEp2bkJ7fZ5bhlKMY50D9hoWtCdA54pOiJbMEzhgQ==
X-Received: by 2002:a17:906:4e93:: with SMTP id
 v19mr2126014eju.103.1620709522074; 
 Mon, 10 May 2021 22:05:22 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g24sm3620302eds.41.2021.05.10.22.05.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 22:05:21 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to YAML
Date: Tue, 11 May 2021 07:05:08 +0200
Message-Id: <20210511050511.5973-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210511050511.5973-1-jbx6244@gmail.com>
References: <20210511050511.5973-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_220523_610231_38F98C27 
X-CRM114-Status: GOOD (  20.80  )
/bin/ln: failed to access
 'reaver_cache/texts/20210510_220523_610231_38F98C27': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_220523_610231_38F98C27 
X-CRM114-Status: GOOD (  17.14  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Current dts files with RK3328 GRF 'gpio' nodes are manually verified.
In order to automate this process rk3328-grf-gpio.txt has to be
converted to YAML.

Rename 'grf-gpio' nodename to 'gpio'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/gpio/rockchip,rk3328-grf-gpio.txt     | 32 --------------
 .../bindings/gpio/rockchip,rk3328-grf-gpio.yaml    | 51 ++++++++++++++++++++++
 2 files changed, 51 insertions(+), 32 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
deleted file mode 100644
index f9231df17..000000000
--- a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
+++ /dev/null
@@ -1,32 +0,0 @@
-Rockchip RK3328 GRF (General Register Files) GPIO controller.
-
-In Rockchip RK3328, the output only GPIO_MUTE pin, originally for codec mute
-control, can also be used for general purpose. It is manipulated by the
-GRF_SOC_CON10 register in GRF. Aside from the GPIO_MUTE pin, the HDMI pins can
-also be set in the same way.
-
-Currently this GPIO controller only supports the mute pin. If needed in the
-future, the HDMI pins support can also be added.
-
-Required properties:
-- compatible: Should contain "rockchip,rk3328-grf-gpio".
-- gpio-controller: Marks the device node as a gpio controller.
-- #gpio-cells: Should be 2. The first cell is the pin number and
-  the second cell is used to specify the gpio polarity:
-    0 = Active high,
-    1 = Active low.
-
-Example:
-
-	grf: syscon@ff100000 {
-		compatible = "rockchip,rk3328-grf", "syscon", "simple-mfd";
-
-		grf_gpio: grf-gpio {
-			compatible = "rockchip,rk3328-grf-gpio";
-			gpio-controller;
-			#gpio-cells = <2>;
-		};
-	};
-
-Note: The grf_gpio node should be declared as the child of the GRF (General
-Register File) node. The GPIO_MUTE pin is referred to as <&grf_gpio 0>.
diff --git a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
new file mode 100644
index 000000000..ea169f6fb
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/rockchip,rk3328-grf-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3328 General Register Files GPIO controller
+
+description:
+  The Rockchip RK3328 General Register File (GRF) outputs only the
+  GPIO_MUTE pin, originally for codec mute control, but it can also be used
+  for general purpose. It is manipulated by the GRF_SOC_CON10 register.
+  If needed in the future support for the HDMI pins can also be added.
+  The GPIO node should be declared as the child of the GRF node.
+
+  The GPIO_MUTE pin is referred to in the format
+
+  <&grf_gpio 0 GPIO_ACTIVE_LOW>
+
+  The first cell is the pin number and
+  the second cell is used to specify the GPIO polarity
+    0 = Active high
+    1 = Active low
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: rockchip,rk3328-grf-gpio
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+required:
+  - compatible
+  - gpio-controller
+  - "#gpio-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    grf_gpio: gpio {
+      compatible = "rockchip,rk3328-grf-gpio";
+      gpio-controller;
+      #gpio-cells = <2>;
+    };
+
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
