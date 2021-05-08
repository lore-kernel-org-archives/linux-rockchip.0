Return-Path: <SRS0=55oq=KD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16C28C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 May 2021 12:38:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8CBD561466
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 May 2021 12:38:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8CBD561466
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iWIWHoBkH4Zik1ZNYhiLpFTVVDvaCfgyFHCGvNI6cG0=; b=I2j5CCcix8hEt1tpa4YjhqNHGf
	pot/Xo/BYwjqV1UY0UFNDnroS9lOTDxpINU51DvskqrP3VyI0/ppYZJW+fjBZDB24KPcjnnz0E2vS
	t/H9aCvDLyGP1kwoyV+BLdghvNFCDbqQFbTJD9rLgnUOMjrDbxhNKSpXItSFRYgdtM818uKqbQq5e
	uFC7CLLKX+fluUQzS49zX/srUkpwA61C3J30Rj46UfVAdWVUnvIhEIKkcUIv52PXWmEEF74nb0t4A
	MTTDCt2S+F2YlHFrs0fqzvSp/ZIyk3reJoI/wW67F243bv/geWJXB1q6YjcP39gjZfq2kn7p+trKQ
	jJnYn4JQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfMDr-009YL9-4I; Sat, 08 May 2021 12:38:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfMDX-009YGs-0n; Sat, 08 May 2021 12:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=iNqkCqnJS+8lE5A1JGiBhGJCy9lYCE4136JGur/Nmf0=; b=fzCx5SNw+qrt6YSXci00XwO2Pf
 17033O8nSaA8AcH1Ch2paPbx1rTHFANvCfwZ8LUHjuH1Hb7/SAiv41kfR5W1yhUlhHIhWgdUCQrsh
 iZbN5FvI8b7N8kuRSlsNpml2PeR4t0llueeBKUsoDi2cZjlE4ZmrFksxnQSZ14zHgLU/HNZSEXD7B
 hCG1piGW0TST+9lRh56EtHonyjHw4vpf3C00gSMP+GOLOPTyTsVhq31qVZ0d69FH5bL0AQT+NvhfC
 DiHxKqA6q+PVOF+lET4u/swcjxwMzl7VxrdzRFmRQMn2tSCGtC5FCf9FH2Ekymw4RD9s3zEf4fTvo
 XxeJyXCA==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfMDU-007XoR-4Q; Sat, 08 May 2021 12:37:57 +0000
Received: by mail-ej1-x62c.google.com with SMTP id gx5so17637918ejb.11;
 Sat, 08 May 2021 05:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iNqkCqnJS+8lE5A1JGiBhGJCy9lYCE4136JGur/Nmf0=;
 b=GrD8JRK+522fNYlkEt1wephxp+qIfWAukgz+ZtR9QQBBJmU8UMBNoII9pAhENA/Dqn
 BPYvkvHRqLuQ8M/QmCTPWlQCpJsr1YFJDP5fDkAGI9iQSJ9GTN1nhmGT7ay09F4ayHy3
 AryPHVFDs4/u0bf5Kp8p2ZUUCDvllhS9HBc3usTgCvWiJGOPqSzOVw1jFA39NpQuiHCj
 QNn0wVOaZwlunGQlRkggBg9nPVUWdVLRS7g8TiSR3U6LjVxphsf9ZVCpxok2JbeSmUeU
 mhFN268KcbNDrEPioKRemTDzNc3R0/xHg9oLfzX/6iU9hAo0IIezOihd61VksZlrq6Pc
 Hpmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iNqkCqnJS+8lE5A1JGiBhGJCy9lYCE4136JGur/Nmf0=;
 b=ICvX9w1fMZVphy1pF8EdQVXu+vkCdlcehn1BjQzuPTLBgL1JsD1HJ/0Jfe8tyMuWJ3
 5OvOcKoJPSpND1KY6fv23ChAfCTOOsIBc2dAf63l+Tv3xBfCCbRC5CMycj4MhIRpbFKL
 LZQC6RE/v8MXLaZ0oX/hlqTx9U8/RUa5QF8U+H8KWuj0AszyZ7K6Vd6wwR3+X2J2Pvxe
 qhhiFE7ZGjgLYmo/sG+GPxz1sf5DOTeIKZMXDa49hwZ2YlGW8IVlVjB9Kjb5D4Rdrhgu
 cAvPtJtWZx/RerQU/bmktlVx4MDzDS7PHwpThjOm0aw9WAUWttJrNnlpRhpwzshU0xcm
 g9cw==
X-Gm-Message-State: AOAM532cZMoIlueRs+vxXRLTzB0jvOb7t4ArO8FkjkRi6mYuBCnMXF9n
 b3CpqZcg1kmcx+s9fe4rUN8=
X-Google-Smtp-Source: ABdhPJyD2TlTXQs0MNwE0YD+ezkqnn74HPSMU2FvSNdSRxxEN/zVuoRIVnCbXU++Ub+gfd8txWLF2A==
X-Received: by 2002:a17:906:18e1:: with SMTP id
 e1mr15285777ejf.341.1620477474673; 
 Sat, 08 May 2021 05:37:54 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q25sm6262618edt.51.2021.05.08.05.37.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 05:37:54 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to YAML
Date: Sat,  8 May 2021 14:37:40 +0200
Message-Id: <20210508123743.18128-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210508123743.18128-1-jbx6244@gmail.com>
References: <20210508123743.18128-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_053756_194720_7BFECC06 
X-CRM114-Status: GOOD (  20.76  )
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
