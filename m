Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA81EC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObXnOoIV+OprNwsqlu1dyXwCOLkrJniTFQtB/SNpipA=; b=aZXbYxoAad/+9V
	5WdznCOfh5snARyUDr7Mb6tTabHdkyIy0HavsNua2ymt3w1W69RQRLStCfW9kQWwrOf+4oKxua3QM
	efffeKInCCWniBbw6pSdSv9Xz8qRPtwyj/zcpAG9Gfrvp0o4pvNssUXqF92Qv/mhorRzb2GcAJArc
	PjnjAEUNV6kC6nCDv79xfyTkRkIcgiGaY5huDnrxCg9NVnDN6FoLTentWSm7//kTxZW9wddt73q29
	GJJIjYtSOIXa5WSDEatR4jIIA0yZdXewDgaOxGzQ9Q+fnEtLINVQ3okzlDhk3YaHCUkITidOmHpmw
	9qZUpSUnq87LDpxmSldg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tq6-009MfE-01;
	Sat, 25 Nov 2023 14:40:58 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tpn-009MTg-1i
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:41 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-5bd5809f63aso1693815a12.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923237; x=1701528037; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NzlBnLufD7oVNcRvY6JWcDhMriiui9QvM7K18mFiWxk=;
        b=iK0mvEDCvv31mzdNjjTLQcKC3Rq1ztmIbMoBq5T4r+Qm1msj7MMym7GBur5vLBf/EH
         tLo71oeAoj0tsf82BeWGxDWqoZRo1KTZRkRAipbBQq9XjmDl9+I2SITMGJ1ZRdcqmhSl
         q2I5DDPSTPUH7jjiHVGjEV/9Rv8ZIB2XZhVqkadwElzrnWbPKkpFDwVIKd/M46JTqYqW
         Fb22Zfwavo5NrqbrcxPpxcH/XoGTuR4vYATNRG8EEe+mzd3SjjltnabsWtSxU4yqKTFS
         7HjHqyVVztsfzbeOA9jUVNViaYDnNZ2GO+nj8jhPVjFHmfsUmejBvR9y/JwEZrCIX5lR
         19Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923237; x=1701528037;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NzlBnLufD7oVNcRvY6JWcDhMriiui9QvM7K18mFiWxk=;
        b=j3h3pP/PmIttTurRfcl3h7ZawaLnikI7ApWIsrFDGb+QxGRtJjWY8xEmVXu6wZowLq
         8pF0WA/6IToPTTHXHtmzjZlrZUTNGWCEzdtsbv+slT4nBLVVE/xQTylpgiytF/OPNA1e
         HNeTbhujBNygOtCZK+aVo8FXFLGzzMsitASUANTwaZhOp+morwI8w6UD9K6uIKRfl7S1
         /3PAV9WifoOEWaVKYBcNSkWOzd7BN66xP89n5vkjvQdAiuP2tHVBY8uQvwYO+t1ZH+7E
         +QqGvdy9Gb91Ilx//1rsweEjzxvsmVAciF0OgjVIjxTUzlh6gFUON08/eHhIWjSyrhWT
         QW4A==
X-Gm-Message-State: AOJu0YxOQ97b9eylpJE7hwOpuTBCklebjVnwhsoyi9pV+TgYwQCTTi/P
	tB2LN1IA4Qmpa9x/9CWtHqILqQ==
X-Google-Smtp-Source: AGHT+IGUpx2dWwwIti3/hitS3s5W0kZRx0FGyaL5LsZeccvgh+YQXkgHvKMCz7C8b4W9uHNPBzOZJg==
X-Received: by 2002:a17:90b:3c2:b0:285:772b:91a3 with SMTP id go2-20020a17090b03c200b00285772b91a3mr6280913pjb.27.1700923237448;
        Sat, 25 Nov 2023 06:40:37 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:37 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 04/10] arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
Date: Sat, 25 Nov 2023 20:10:06 +0530
Message-Id: <20231125144012.58668-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064039_595526_73FBA198 
X-CRM114-Status: GOOD (  14.53  )
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
