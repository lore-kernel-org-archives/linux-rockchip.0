Return-Path: <SRS0=D5mo=PM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 036D9C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Oct 2021 09:44:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD59E60F12
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Oct 2021 09:44:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BD59E60F12
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STJho8m+FmoEcxCPrmFVLn6GLj90812QGoyQpFmVMd8=; b=1tbfvS584FvVRG
	E4fliIPSalcZw0xO4qLxM+poxGOSvlnhmNS/cYp7RgsXrpiY7dQW685XPqS7Oei2s9l1YnFsaVbz4
	Taux20P6sApk2/QVYl0dtsKtxWgEGt4MvaUyW9D/97m5SBiKaeLdPL+Lmbby0wJd6YPwVoav+iWf/
	4Kq9jGLotPhb3SuBZ2ImcdUPWfY43jpE2F51GnAVUjywHQqLYfJ4JwWQTYU6q3B+upLF5sv1tUYVo
	hPzeI8z1fZooM+tZIgNXtHhu/FBaHL0R8v0qQP+2U/uT0t2qMZM9SzHPNZ0p8iAiJ6LeEXyNXn5WS
	2aPEbU+65BQ3yAUSK8Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mea2m-00Dr3K-W9; Sun, 24 Oct 2021 09:43:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mea2W-00DqxG-HF; Sun, 24 Oct 2021 09:43:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id e10so5849072plh.8;
 Sun, 24 Oct 2021 02:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lqm98wEFYJSr54W/wNfWgM+OWyfT9zNKGkY/snl5uHg=;
 b=TlcuVmmnJYhlSjtz2sWfeqC0pHcK97U/MkU/2q94d5vDNKKj1yTUUtlnmUgmgYIhES
 1wjP2NpZ7tNvFk4I5qDTnoZQWtdaqnTJbSE8pxjHeH3XlMzVjV3vxg0bS+eKhKzYJboO
 Xc6zTZ7dlziDgWJsW7DgRtlWdAlTsoPV7tab+x4wTmNZ08xv7iV5/ThSGlQhw8nALCF8
 zvWr/VcvmOqP8ce8xQh7db8HQvPdMRPCPEOfj69Xw0DVRoMY+srKe/7NVPwn3a6+l8l2
 CePm/HjaMxSGxeao2ASsNVNucP1cuJzEcAMWOXiBXe5OoBYBl3wAZsQweV+vj7NfCJ3w
 8uHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lqm98wEFYJSr54W/wNfWgM+OWyfT9zNKGkY/snl5uHg=;
 b=rTSEHEjOxYq63TxNL8gMKsfXjcjkGEpesqdAei4e2YZKSq8f0vNY01GPHvi4AN5FvC
 aGs2Wd3aHkoQJ45jnY7y4DQj0KoVhsRwksp7A+KPQQNtPs88n9vTky2+L4X1C3Mr4ecl
 3VOvrSoR6T/ia4NEM2eGNmuYQe5HpIED+4yHdWaaLDIAkdcqwcFB27X2VirgrGgdC0JP
 conxnhYV1B5E2slZVL5YZdgCZmNYVL0UVTaTWReRmCSvC8jD84Fz9xAWxOq9b2a+lXeE
 7s2dOcplRgTnRlQi/L5f8YrwVP5gryDalpdY4xpQ1KmpNOE8P5J/o6MkBb4OJRIczC4/
 UvOw==
X-Gm-Message-State: AOAM532jWZKAXNsb17KOQb0hBPkrKErjzxlgBWPu1WJlMCRVtmVAWetE
 h8GTVs0jmCOBhvaFTT00axI=
X-Google-Smtp-Source: ABdhPJyiey9Yydyrsr3LNLq9tQqCFFJuBfLGyiF5iUoGYbMc5sKz2Cefd+gB7j5JKsIwhdqePVtEnw==
X-Received: by 2002:a17:90a:2a8e:: with SMTP id
 j14mr10106348pjd.227.1635068620020; 
 Sun, 24 Oct 2021 02:43:40 -0700 (PDT)
Received: from lxb-server.lan ([2403:18c0:2:7e::1926:817])
 by smtp.gmail.com with ESMTPSA id p16sm17636619pfh.97.2021.10.24.02.43.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Oct 2021 02:43:39 -0700 (PDT)
From: Yunhao Tian <t123yh.xyz@gmail.com>
X-Google-Original-From: Yunhao Tian <t123yh@outlook.com>
To: Mark Brown <broonie@kernel.org>
Cc: Yunhao Tian <t123yh.xyz@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ASoC: dt-bindings: rockchip: add spdifrx bindings
Date: Sun, 24 Oct 2021 17:43:16 +0800
Message-Id: <20211024094317.1641949-3-t123yh@outlook.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211024094317.1641949-1-t123yh@outlook.com>
References: <20211024094317.1641949-1-t123yh@outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211024_024340_608082_A93AA569 
X-CRM114-Status: GOOD (  14.54  )
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

From: Yunhao Tian <t123yh.xyz@gmail.com>

This adds the YAML bindings for the Rockchip S/PDIF receiver driver.

Signed-off-by: Yunhao Tian <t123yh.xyz@gmail.com>
---
 .../bindings/sound/rockchip-spdifrx.yaml      | 80 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdifrx.yaml

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdifrx.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdifrx.yaml
new file mode 100644
index 000000000000..fcbbc3e8786a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdifrx.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip-spdif.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SPDIF Receiver
+
+description:
+  The SPDIF receiver block allows the processor to
+  receive digital audio via a coaxial cable or a fibre cable.
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3308-spdifrx
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for SPDIF bus
+      - description: clock for SPDIF controller
+
+  clock-names:
+    items:
+      - const: mclk
+      - const: hclk
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: rx
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: spdifrx-m
+
+  power-domains:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3308-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    spdif_rx: spdif-rx@ff3b0000 {
+      #sound-dai-cells = <0>;
+      compatible = "rockchip,rk3308-spdifrx";
+      reg = <0x0 0xff3b0000 0x0 0x1000>;
+      interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_SPDIF_RX>, <&cru HCLK_SPDIFRX>;
+      clock-names = "mclk", "hclk";
+      dmas = <&dmac1 14>;
+      dma-names = "rx";
+      resets = <&cru SRST_SPDIFRX_M>;
+      reset-names = "spdifrx-m";
+      status = "disabled";
+    };
\ No newline at end of file
diff --git a/MAINTAINERS b/MAINTAINERS
index a2bee2166a39..82e0fa37c5b1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15985,6 +15985,7 @@ M:	Yunhao Tian <t123yh.xyz@gmail.com>
 L:	linux-rockchip@lists.infradead.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/sound/rockchip-spdifrx.yaml
 F:	sound/soc/rockchip/rockchip_spdifrx.*
 
 ROCKCHIP VIDEO DECODER DRIVER
 M:	Ezequiel Garcia <ezequiel@collabora.com>
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
