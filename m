Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E1C4EE6B4D
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 19:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2A7sIioUGb2vmcF1L5+p+fvcPT32BQIdrUNZhhtBks=; b=deZPs2F9osE2Dd
	rFagMuihyWj0dPPHjdGxMdOU4A7xaGV1eZb6diLmVotY2nUlnHvLPH3f6k1uIGO8Rp8HG9ypDhZD+
	b3NqWamRHsd8pLFjAdGbCo4w7PyTHMGtNfg9r9fYzKCUR7iMVlPL9Kcv1bALKH7kgmDe+ZUBG29OD
	6BRFj6lABuJDnLhZKoI1Ugl2lcq+Mw0yIbgdd9BfO3x94f4S75cD3vK1xzzLAifll26rLAEMbpu+1
	/74JG1No1kjpiD5o9gJGR0I99M9amHpO4CCaki61vODj8ptKW+y8ebjUkL9ZMfq/sgO5xDyOcb4ka
	ySDSSILoNJj5IgHtfYEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voRxV-0000000Blk0-1klN;
	Fri, 06 Feb 2026 19:57:41 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voRxT-0000000BljW-1han
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 19:57:40 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-81f4e36512aso1141008b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 11:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770407858; x=1771012658; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lOn3TJ8VDiSndOjVHpbjRor/zx6dF6y8oFuDewRL8ck=;
        b=kd76bISlik68bz/XYiqp4Xqij77PR6vMjjSckWcaVnbZ74LfYIqw/GMsBrcDO58cOr
         gSQzuofsuLSu2A5Cfm8T93VRHti4Ak+Q0Z7ZvNcAF+95LGhEsKVUj5sPWSRzN6swTOQh
         HB1YeTssUX6JMTEEkP3FTIp/Y36A0gu0LD7T1KSxylrYtn/KLkY9sh5bwtVLH1eHQJtN
         8udxauo48Rlag6NGQ8TDPw/kLnd/0h93H3U7BIbhIm/didK3qgV5IPGGxGZM/Oc8jHUL
         PPBM/Qygm6zW+Sf8qIa2lpYS341yhvmt232I21i/79WTitL4lzfV7uA7PVKMWkx1/Rua
         pJ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770407858; x=1771012658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lOn3TJ8VDiSndOjVHpbjRor/zx6dF6y8oFuDewRL8ck=;
        b=Rs9snkWMCfDR1G6Nt+ES2zxE237co3GIoyZUOQQeUh24N46JxtZAdHdBWSAbbmm8lM
         msGa9uoK7v3drL/sJBqTKnPXEgHNj4hfKLnKzN72DYvJJ0tQNk6XA/DuG6ivfqrwoWgQ
         siqzCkVz0getKC3fw49WRjBrsCCPbrii1oJj0lNyEZFbaR2L/+qMWG6OWEVVbNwhrkZg
         QOp+D9WX2T1Qicx9LKFzL3Ko6JRgmbVaKrjQld4UMulrEOQZtCFWX00p9B6T/OQtA7M/
         oaqXTVeMZ2xXZnmLCFEGQPGtcviGxQt1gajgRI0xH7gAkt6/D6pIPVMrz2qz6TMJ9+SB
         vrIg==
X-Forwarded-Encrypted: i=1; AJvYcCXkt36Fzt+dgbIyv6eoR8N+bjc3uZF9PZpj32JGJ3ztEPYvUey0+ZtdC8g823W2EdujouGWkrsK7o+B8sJpSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQWV4DQLGplkV4Ssa0/tssqLTjnp8LuIcHs5468FP1wZqnRfuV
	rPKzM1NglMx5ohnEZ8KoTqaKxI/ZvJMCe0NoLf6z1vJIMY57fRzqpmQ4vRfhuA==
X-Gm-Gg: AZuq6aKt8jsgrkFLHS+dfSEzbvb/ZdxUixHQBr8n1WNKO7msMpPEhclSOHUL86F8luK
	L3BD/k+Fo5UFZArBxuTzKkNq8WaaxsxOaCSwvuiej3G5zxHcdE7/9KEFHw7OUmrxGqn3mmN1Dmo
	XnIMDgl+3Rdtx/TnaNnpCj5No8v3VhZKrYfFHcWo+dTr+th0oj8ZFwri6LCoPXhibWxzV6CLpP7
	9kVRJX8HdjJ9FyQI1JbzrTX0XEDXvln359yhF4t7+rXTU/CfFF40QNvMoL5psc77mCgDsjYTp92
	Ilug773b/DJBm7qeJuRgKgyR4eC6pzLjUs0mD9L2GsIE4NZ7y9Gr30lmLXuGHXZGxX20aGJOiU6
	OFhaZ3cHXeukLu368AtN+O4vBijRcLbAjHqTDBmGgyrtEemJUb624ADO/vOaPGQZ9RNAkbyGHPN
	M0+rP5uKku5JpsiRBTfbRXcxew
X-Received: by 2002:a05:7301:129a:b0:2b7:1243:7790 with SMTP id 5a478bee46e88-2b856a531admr1468477eec.40.1770401633925;
        Fri, 06 Feb 2026 10:13:53 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:53 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 11/11] ARM: dts: rockchip: Add Onion RV1103B Omega4
Date: Fri,  6 Feb 2026 15:13:09 -0300
Message-Id: <20260206181309.2696095-12-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_115739_656258_F2216A9B 
X-CRM114-Status: GOOD (  16.89  )
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

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC that has:

- 256 MB of RAM
- 256 MB of SPI-NAND
- Ethernet
- USB OTG
- Wifi
- SD card
- Camera connector

Add the initial support for this board so that it can fully boot into
Linux with the root file system stored in the SPI NAND.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts | 92 +++++++++++++++++++
 2 files changed, 93 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 716f5540e438..d8cd5df138cc 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	rv1103b-omega4.dtb \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1109-relfor-saib.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
new file mode 100644
index 000000000000..512b063bceb1
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 plan44.ch/luz
+ * Copyright (c) 2025 Onion Corporation
+ */
+
+/dts-v1/;
+
+#include "rv1103b.dtsi"
+
+/ {
+	model = "Onion RV1103 Omega4 Board";
+	compatible = "onion,rv1103b-omega4", "rockchip,rv1103b";
+
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x10000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0	{
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			label = "sys";
+			default-state = "on";
+		};
+	};
+};
+
+&fspi0 {
+	bootph-all;
+	status = "okay";
+
+	flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		spi-max-frequency = <75000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "env";
+				reg = <0x00000000 0x00040000>;
+			};
+
+			partition@40000 {
+				label = "idblock";
+				reg = <0x00040000 0x00100000>;
+				read-only;
+			};
+
+			partition@140000 {
+				label = "uboot";
+				reg = <0x00140000 0x00100000>;
+				read-only;
+			};
+
+			partition@240000 {
+				label = "boot";
+				reg = <0x00240000 0x00800000>;
+			};
+
+			partition@a40000 {
+				label = "ubi";
+				reg = <0x00a40000 0x0f5c0000>;
+			};
+		};
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer_pins>;
+	bootph-all;
+	status = "okay";
+};
+
+&wdt {
+	bootph-all;
+	status = "okay";
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
