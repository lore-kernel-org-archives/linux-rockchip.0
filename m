Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6122BC77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 16:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcPYLmQknCY/p5SD/wRLqHpn9tlXaELzHkujILlhQTA=; b=Bnzd6qVs4ZnhkW
	sp7yef0F6wf6PqiLFtjCgz7CMUvLa2l2zPx0WBcpxrso4G/IAGeolvJxhAs/3wXCY0CwARwyQQyM1
	TyM2Jq20j/HE+ywoZRqIoYRv9KxSSy1ZmbuoJ6dse65wkGk4p5U6Cf8Yuf4GuN7hIWk3CqVf8FgsZ
	pLUa42r23NEjQBIuq98oXTKNC8ol6KoG0KUombu2kl+jSBYbgfSm72qFEZVi6szIaLOXQMEFGMVJx
	mw8hAvR0XUaz6PPYFe1gBmk3rOrX1g+O88g6aXKYB2ZQBCY2kKT6JWtT/v7HyPct+Sxo687N1/dXR
	HpO6O/OIj4eSBYAfO/bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxen-006UaG-1p;
	Tue, 16 May 2023 16:36:13 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxeh-006UUu-18
	for linux-rockchip@lists.infradead.org;
	Tue, 16 May 2023 16:36:08 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-6439f186366so9251143b3a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 16 May 2023 09:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1684254966; x=1686846966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ezjtQijoDVXErg3hmWyEVfCx0667IycZaqsDw1F5F8k=;
        b=h1bhJpU5LZMESAqY7xGRkiU1U/J9kvQbN5kGq9g2wcmA0iuC4zzv6xVvhI357rzANM
         90JDAwEBdoC8f7NJMoqmkpbOsOur4YkaIYPZ/ziYBL1Qr75X0JjKDW3noseAo5FsAKbu
         8LlMx+gX2zhiVLAemSHaEQUm2R4jKmJ1RbXsqhdXpAetKqSmVq2KJcYD1Gz5lJMpApoW
         bW19bIeJFeS6eIhucFz+ti6mYZx4tDjI/PBrbMdyd4g19/SuVPzdZOTE3/O0yhdGK+/U
         o+zg/x1MkSEaXbmo3LTP9qWuufYsGZHm4fgSA70pVwJN7WRYoK0EsnAgDEJMeDWdbnkE
         dUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254966; x=1686846966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ezjtQijoDVXErg3hmWyEVfCx0667IycZaqsDw1F5F8k=;
        b=W4ldyHE0CmEuu1eUrgAvXedOEmS/p5/H00ydMLFQQJN75Ap7PC/DsTmTBFLNPQqrSm
         Zc68gi23gtV9vH6w64P/8P0jvVs9wcLJFMV+j0nXXuksjPC6Pt7VWFsZ7ElcfHERU4HW
         D+tXTr4Kj+sm/TNyAhRzKGFoECPHOGA4sNo+G+Vw/BguP9Y04xRGy8rzjwGVANsab/k8
         cem/zw9LzT2xfN0+qZQ4K2FgafoFcOJCeDBFU0EBYrgsh18HlYyQzojys3x1sWIe0n9V
         pUcBQh313sGKL05CwBZJFIQIA0zS+pJM0Rg7O8Fy1vi3eAjlm7UZDobPqsgLQM29wdfo
         /qxA==
X-Gm-Message-State: AC+VfDyCplp6If1yPP7WOPWoYC921zl2mRe51Z6fC40Jh1lqcISHt3yQ
	gGhEOCJ3Lxi5QZnxO8jvEemfsg==
X-Google-Smtp-Source: ACHHUZ7CHB5Je4dE3jfSR9609+uzPXUkoP7609DIkQIc8Mb1vVawZQSrl7ELnGBJcU2fxGqc/vpjwg==
X-Received: by 2002:a05:6a00:148b:b0:648:8c0d:6e4e with SMTP id v11-20020a056a00148b00b006488c0d6e4emr30425665pfu.19.1684254965912;
        Tue, 16 May 2023 09:36:05 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a181:890:d993:6673:2242])
        by smtp.gmail.com with ESMTPSA id u19-20020aa78393000000b00642f527cd28sm13686983pfm.33.2023.05.16.09.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:36:05 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 4/4] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model B IO
Date: Tue, 16 May 2023 22:04:54 +0530
Message-Id: <20230516163454.997736-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
References: <20230516163454.997736-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_093607_386902_055F14F2 
X-CRM114-Status: GOOD (  15.81  )
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

Neural Compute Module 6B(Neu6B) IO board is an industrial form factor
ready-to-use IO board from Edgeble AI.

IO board offers plenty of peripherals and connectivity options and
this patch enables basic eMMC and UART which is enough to successfully
boot Linux.

General features:
- microSD slot
- 1x HDMI Out
- 1x HDMI In
- 2x DP
- 1x eDP
- 2x MIPI DSI connector
- 4x MIPI CSI2 connector
- 2x USB Host
- 2x USB 3.0 OTG/Host
- 1x SATA
- 1x 2.5Gbps Ethernet
- 1x 4G/5G mini PCIe
- 1x M.2 E-Key slot
- 1x Onboard PoE
- 1x RS485, RS232, CAN
- 1x Audio, MIC port
- RTC battery slot
- 40-pin GPIO expansion

Neu6B needs to mount on top of this IO board in order to create a
complete Edgeble Neural Compute Module 6B(Neu6B) IO platform.

Add support for Edgeble Neu6 Model B IO Board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  | 27 +++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 2d585bbb8f3a..f07f605749e3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -92,6 +92,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
new file mode 100644
index 000000000000..e9d5a8bab581
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rk3588j.dtsi"
+#include "rk3588-edgeble-neu6b.dtsi"
+
+/ {
+	model = "Edgeble Neu6B IO Board";
+	compatible = "edgeble,neural-compute-module-6b-io",
+		     "edgeble,neural-compute-module-6b", "rockchip,rk3588";
+
+	aliases {
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
