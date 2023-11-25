Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB3ADC07D59
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zl5i7CaHOEhglfBGx43cCAd0GuFfzxw4hPYsMIClDag=; b=IA4ltpxYLGTlLk
	rCCqiuGWnE82O59bUXvtgxgLmIYM8eaS/qul2ZYTfzIjzXHxcrvfGwBDWkEK1n3y+IAPicPqMruiU
	HrITGwgWpS/8r7AmpFHdY0nixcJZuzjRS0yZz+v5W0+ZPShGTBTcDULd/0snQUgamzRKSaRp/RLzl
	gqoh97gc7/bu3CVi2+NBLfvl3zRu6mHrNK4nGYpnIQQaKk9ktYZfrLpONl3naf6HvxaYzAWg98gMJ
	GQfIRQKXk6w7hIqYxj8f15P3/JHAp7C4jUgIX9KmEde31A4vqm9UYuN7urHwjsCxed54ps8zUWbID
	X4uat4HpL2JHebrnVGmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xya-009fi7-1w;
	Sat, 25 Nov 2023 19:06:00 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyK-009fVN-2q
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:05:46 +0000
Received: by mail-il1-x130.google.com with SMTP id e9e14a558f8ab-35930447ae9so9922215ab.2
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939143; x=1701543943; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DvuwrCeF04BFFkMvqZ1QiR2hthL4MoPo0rmlb95gpko=;
        b=pAJ8ZaXfrHstaiby8GHTAp/XT/dayK4NN1mGWaJM5Y76FOddfJq3Rf8CG6zhk6tkvF
         B4cXR8rXefZygbcFLEmBAmvxpDoKEmjOd/s0qXpUd2XfIzW177/REFVPbJK7tUi0p8R+
         QAjE8t1LE6sIBnPRk12vvaj1BPUlqM8/Y9nTtcVTlh5/aIBeteZ+Zg87sHh+zdQlA1w1
         YjA4rtuYBsO5klbP9E3rQvw/Yfc1efMv/7tdLRCKt6i+FAAX8J9EcT0RJZk+lf9k7p7E
         SesLJWcyl7shDe7Bi2FLYEZ1VM9gRm5f5PLBHu8w/IkzdaDSE8SAsl8B+0OtblcUtkTx
         Sm7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939143; x=1701543943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DvuwrCeF04BFFkMvqZ1QiR2hthL4MoPo0rmlb95gpko=;
        b=K/+O8K0TRosldUFTP7WQlWwubHnxM6PC4eoJ+8qpBBZmStydcibX0kC3TtDBw90oTe
         EXYowlI6toIncBszmkt6VMJcxW/XRp/b/YUB3acKuUGGrCaTOoBwOR513cBanmCXb7cv
         Fyb3QCTyCXisokoxhi0iaLjo+ZN7kzlVbgiXarGbE/37P4Dy4EXAn25kqpHl7B1+Mcxy
         EsYW0HZpqAejfF+wZs/ofsYAjG9cqg7gladvKiY8mGhn7gz6fVjs76r12VESGqzwWfc4
         QoS8PxeUUTSfDjwltnhJHeGmiCZ2ImQz1Hne95lmrXjwcHgs3dkdN3K2YFTP/zT49Ct+
         dklA==
X-Gm-Message-State: AOJu0YypMdUP8nXIZDz0NxVjgsn+cO63nssMA0vU6QWL+KY7O7cnVovL
	YWo/wqjepTM9wj2e91gxHYxRuA==
X-Google-Smtp-Source: AGHT+IH471zsp9ZCfqzQCm6FnhQAVF2Z8L8x/RKYC5P0dSeO1A/wBrLIAQr4jlQsEm/JhKbjuhAzYQ==
X-Received: by 2002:a92:cdab:0:b0:35b:112e:60d2 with SMTP id g11-20020a92cdab000000b0035b112e60d2mr10185882ild.22.1700939141463;
        Sat, 25 Nov 2023 11:05:41 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:40 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 04/10] arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
Date: Sun, 26 Nov 2023 00:35:16 +0530
Message-Id: <20231125190522.87607-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110544_930881_8BC0B4A1 
X-CRM114-Status: GOOD (  14.39  )
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

Edgeble NCM6A SOM has on-module M.2 1216-compatible WiFi modules.

Currently, AW-XM548NF WiFi6 and Intel 8260D2W WiFi5 modules are supported.

WiFi modules are fixed on SoM, not pluggable M.2 slots, so different SoM's
for each type of WiFi module.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rockchip/rk3588-edgeble-neu6a-wifi.dtso   | 56 +++++++++++++++++++
 2 files changed, 57 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index f969618da352..543a2f68b654 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -100,6 +100,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso
new file mode 100644
index 000000000000..e9a3855e8752
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Edgeble On-SoM WiFi6/BT M.2 1216 modules,
+ * - AW-XM548NF
+ * - Intel 8260D2W
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	vcc3v3_pcie2x1l1: vcc3v3-pcie2x1l1-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>; /* WIFI_3V3_EN */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie2_1_vcc3v3_en>;
+		regulator-name = "vcc3v3_pcie2x1l1";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&combphy2_psu {
+	status = "okay";
+};
+
+/* WiFi6 */
+&pcie2x1l1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_1_rst>;
+	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>; /* PCIE20_2_WIFI_PERSTn */
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l1>;
+	status = "okay";
+};
+
+&pinctrl {
+	pcie2 {
+		pcie2_1_rst: pcie2-1-rst {
+			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie2_1_vcc3v3_en: pcie2-1-vcc-en {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
