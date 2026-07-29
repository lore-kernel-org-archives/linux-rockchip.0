Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E84AC53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=906ergxPFWV7f/JfxoSju6DNpnJPU7+kUgnHFTx5sMQ=; b=k0J6MhvJ3Z4YtE
	qqXBCKO+wmDkhVbTcQYqJzI+GrZkOhdMTNJMW2H52a1tIiDICsETGlEwLdYVPITODyUVTjoX100Mn
	WRtNV3sUzLITKUqt2T3xBJhX1QdYCA2oAbFUG32T4Lnfr0iWC/71t5no3QzQud6Bh1o5KSsox9fLB
	LTgIZuccxVB1/+LTLEIrtt0FZSbtTPRwAkKJriXv7iEquylEkLkcUT9M/5FVL1yzwDFxR1OoFvOIL
	tAYfIBffoPhV9s/+R7KQYsSOucR726eUkpEGYWJyxnvYi1Rk+KgArxIGZtvmKaWp0ZXt087mHmrLQ
	jVvTLfTQtD8hZ5u3TXMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4T1-000000088Cy-3NJe;
	Wed, 29 Jul 2026 13:37:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4Sf-000000087tD-0LYJ
	for linux-rockchip@bombadil.infradead.org;
	Wed, 29 Jul 2026 13:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4dAso1O4eZXUPf3B1KNAgO1fZX6/Qptu3e0In9zSoy0=; b=FHfc/q7R4mnb+ftWz/zfHuIkee
	nm+mMDs10ibD7VT9CUJ8BnRBDkI6rmDvkz5ZZ7lRlz+O8lZ0mwRcGdhx5V7kCZPImGApKM0GKK97o
	MlSxVNAhsybAhvdcLWzqt3c4Co8hq3p7cnvyLk2kx3MyjhLoN4DWo820GJyjkIJ1vTXzFGwIUjCD3
	MWNg9haqvqJJxLfTJppKwrTWDjU+V50Hr8iN5sVJEi+TkkUqULaNX9T3iGWrExhXu+VlwUtMKrn12
	bMFRzPVdfL5vOS+Tifq6xQ4S7IW0fJ/C44ctZ0LFh4iSqzWl48lvMVbR70kP+lROpiWBBZxSRM8va
	/gvHYWKQ==;
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wp4Sc-00000005r8v-0zqa
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:36:40 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-6aae11ddd13so651680eaf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785332196; x=1785936996; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4dAso1O4eZXUPf3B1KNAgO1fZX6/Qptu3e0In9zSoy0=;
        b=eU2ie0PNLVu7DPRCN7liS5BG4MyVtA5Rtt4HKCbo7NYJfeH5zwFmMGlVVDx4cmhGr9
         nvdeP6eF8D8o8Y0Sk8iZ+L8l/CzqC0zQdlvgki8siJT0WadhOkjVzBtp8ZXIEk7ezFYv
         REx2BXEiaj50gqzAL4JsJv+0N3ICdvQ6UmVd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785332196; x=1785936996;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=4dAso1O4eZXUPf3B1KNAgO1fZX6/Qptu3e0In9zSoy0=;
        b=rCR5rfHbVodpaQunjuqj9S/6o5RRyOrc+Jj4vs7rDFprKHUkVbvpqLB+HAIZeuILTW
         t09hHqwbZoqyx96KiJZLYMStS0i6H92ojn91wlv/nPaCLE7OTW27AgmmGThHmMybDvRS
         gAfRQ8YYRfXy/gUWYgVFeHFUtaGqq/OcLyR0wMN6KrX1OzvwFc9191YMWZwtbV5B8zsb
         +mCHhZyR9sDnQcmEx6U/R0dmNuOCgjm828fCtvC2GBH0F/BuezQ07Ir83Kla708sJVcB
         UoIkLAKjkAHQRFS+pnElNHSD/5oDKMD9RUliDRQGyf7iHJLiw4caHVffceC24SSBqWST
         tuvg==
X-Forwarded-Encrypted: i=1; AHgh+RqQTVfN431mEQmcTdzUqn4ELZZMTKjsiScvaITStsYJhBwmi1Nl/72vbWn+2ZiOoDE02bn9AtjPuIsFja6M2Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/q6cumm9KN+eEMNxfLmVk3o30V/pSLih78r1l7Opo6Isi5C+i
	b90j+mPKnTG1ThPy/6cjZgewYx+iquEdpS8I3X2A8m/3Wg7HJXLVe0cvbqAg1LOBpw==
X-Gm-Gg: AR+sD10L+XrFy9MftoeN2S6+YdvK79h5qMNXCGIRNumVbJzvrcF8RN/FMQfHCOYsGnU
	MFC7HdGhYuiGG3wI1vhJDwNFE8xNXJB71hU2XGG0f6RW+0EEQINBGor3AVuxpJHdTxC2EtwxyAr
	R+SUCPt5m4sblQ6li7yDFMtouAPHHUYF/1w+5kLl2I0yO9O9ntxztKGwg1vswX8saxyaPIlpCgW
	ehanRPBlWKeznAtDIMClAk5j+vJO2CHULG2DCkEDIaXL/pXO47M6uG65gGEAzO9dX41tdnSD9sr
	rKiKM2nleV16xf2c49iEb1i1O/LmgZsPMnqS+dPU1p2dE6HchpXD4R1Opo1Ndvfp4dTVNaMulm1
	BIfchpYhLa19+FDumyJwJYSBIo/C/upoPlOn/h+CWwEt/PvT0nKhvCrY5U14N5HPH0bXBliIBB7
	p35fUWFWAM3SL5M0AgdBkNjVBlZWbkh1/JmfW5VO1piEDSdq3cp8PNVT8=
X-Received: by 2002:a05:6820:1ca2:b0:6aa:fc67:1b4b with SMTP id 006d021491bc7-6ac9699da00mr3333562eaf.12.1785332196270;
        Wed, 29 Jul 2026 06:36:36 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6aca527fe83sm1956196eaf.6.2026.07.29.06.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:36:35 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Fabio Estevam <festevam@nabladev.com>,
	linux-rockchip@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/6] ARM: dts: rockchip: Add Luckfox Pico Mini B
Date: Wed, 29 Jul 2026 07:35:53 -0600
Message-ID: <20260729133609.3465563-7-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729133609.3465563-1-sjg@chromium.org>
References: <20260729133609.3465563-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_143638_394886_A0F6A16A 
X-CRM114-Status: GOOD (  15.08  )
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

Add the devicetree for the Luckfox Pico Mini B, a small board using
the Rockchip RV1103 with 64MB of in-package DDR2, a 128MB Winbond SPI
NAND and a microSD slot. The console is on UART2.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v1)

 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 .../rockchip/rv1103-luckfox-pico-mini-b.dts   | 93 +++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index d0154fd7ff24..62a2ed96dd9b 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	rv1103-luckfox-pico-mini-b.dtb \
 	rv1103b-omega4-evb.dtb \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts b/arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
new file mode 100644
index 000000000000..287dbf1307e8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Luckfox Electronics Co., Ltd
+ */
+
+/dts-v1/;
+
+#include "rv1103.dtsi"
+
+/ {
+	model = "Luckfox Pico Mini B";
+	compatible = "luckfox,pico-mini-b", "rockchip,rv1103";
+
+	aliases {
+		mmc0 = &sdmmc;
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x04000000>;
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_det &sdmmc0_bus4>;
+	status = "okay";
+};
+
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspi_pins &fspi_cs0>;
+	status = "okay";
+
+	spi_nand: flash@0 {
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
+				reg = <0x00a40000 0x075c0000>;
+			};
+		};
+	};
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
+};
+
+&wdt {
+	status = "okay";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
