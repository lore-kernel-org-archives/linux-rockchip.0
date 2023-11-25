Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C2AC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kcKZ2dt8qsJzHQrm+Oi05RwZv75SSLwXWcH0LqSiYfY=; b=XTJoDOVbj2y50d
	2Aaj6mZpAAmkoNpmUiul/il02hc7t0/I8xg357nbh7xwNEy0L5Zklk8jOOw8MHCtEsn/cPkvaqz+j
	j9U8PhP+R0YHiPObrydSvFGInmeoNPSbNS9yBMaAXdl2QWUkkVoAWmKy8hCVGrDX+8ehH15pWLm9F
	+xb0/DDw835B4clqjx62KbHu+cU2Gq75OFwohMFdixXke1DRj7Wu3Mtk0iNgd5mmeQUHJ48S9+CnI
	+cHbM76whI8Rhw6HhcNcDDi1LDFQXR5eNE/EuTU6ruE/heH/yp715HB3KiTHswarx3PZwbDK1SDJF
	qkjelHrjBz4blYFQ9Wtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyR-009fc2-2N;
	Sat, 25 Nov 2023 19:05:51 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyJ-009fTd-2I
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:05:45 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6bd0e1b1890so2352041b3a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939140; x=1701543940; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdVkvthdIVkScPCk6uaNxp5t0aMH4kHMdH7v/R/c8rw=;
        b=gQS1IgynT51UIWXZH0jDD5mObuVxG5NOSG5DeUQny6jZefcgkSYVQS4bLAFOTkL28A
         Qz9P6YuQ6iuD5Dc7UDYNH2hoD2DkP70baqAQeU05OBQHEJhzpRGuYvYsQItVSrHy9sLA
         09c24eE748ALEfT7J/9bqC1CsyaLOQ5QRxr5dSQ6ZifrYbbpGIHJbEJqA8BQI8U71T8o
         CLgbp2b6PJFl7aHzWhH0Lo0bgQv2x4TFC0PpetWU2srlDsPvzGZUzan5es8AnU/iivl3
         gMIloF/sw32MjsllcFRDnELPD/wiHwm5xWGClQ2HY9ByCtYIVNcI1312uILEHjLHBoRX
         5eig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939140; x=1701543940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MdVkvthdIVkScPCk6uaNxp5t0aMH4kHMdH7v/R/c8rw=;
        b=vTAPj4oT2L/SlGMcOyvI8twXLlLvJvj4V4+AzIO770tuoN1CPHAu/zWnaqCwbjuDCl
         8NfWQ7ZKwDN6BrEJbtWQHbSMBY6ypKz+lwZWjxW+7J/BO48JGEa/BVmJqogjuOgCObiE
         RjiKrcu2o8clk3er1XptGTFVzR9+BfWRx73AJX/nhSt7LsZBqkpPcIeOlzCg/75XTnHy
         IRWwIDu49zVWfZxS7Ukn7pHIbHOTv5O5yJA+/vQC2O6dNYVyE5QjJQuWKgzAuVT3UGpT
         g+kcgprhFNCjlAPJbj85MlQeFbr10F7saaSs17V0qm69v+0ZV+HjNHkXRDaP3YXlJD9w
         0cVg==
X-Gm-Message-State: AOJu0YxZLZDEAIof4ojXrpDhgQU57qNySDirAvzsbzId3Y2CrNMw0N+s
	dXZwI9kHh5PehRNJrb+KFI1PSg==
X-Google-Smtp-Source: AGHT+IEqmebTveiQ1F0ELuQfY6eKJuPtFrs3P14fMstb/KKBUIKc3rD/orZfkNMBCLPcqRpv/P1JEQ==
X-Received: by 2002:a05:6a00:2196:b0:6c6:9b11:f718 with SMTP id h22-20020a056a00219600b006c69b11f718mr7138624pfi.4.1700939138428;
        Sat, 25 Nov 2023 11:05:38 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:38 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 03/10] arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
Date: Sun, 26 Nov 2023 00:35:15 +0530
Message-Id: <20231125190522.87607-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110543_747442_9BA39DD5 
X-CRM114-Status: GOOD (  15.21  )
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

Edgeble Neu6a and Neu6b are compatible with common IO board.

So, maintain the IO board in rk3588-edgeble-neu6a-io.dtsi.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  | 14 +--
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 85 +++++++++++++++++++
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  | 80 +----------------
 3 files changed, 87 insertions(+), 92 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
index b51543892078..46d5e21d4d27 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
@@ -6,22 +6,10 @@
 /dts-v1/;
 #include "rk3588.dtsi"
 #include "rk3588-edgeble-neu6a.dtsi"
+#include "rk3588-edgeble-neu6a-io.dtsi"
 
 / {
 	model = "Edgeble Neu6A IO Board";
 	compatible = "edgeble,neural-compute-module-6a-io",
 		     "edgeble,neural-compute-module-6a", "rockchip,rk3588";
-
-	aliases {
-		serial2 = &uart2;
-	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
new file mode 100644
index 000000000000..845f90c302ca
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	aliases {
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&i2c6 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+/* FAN */
+&pwm2 {
+	pinctrl-0 = <&pwm2m1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&sata0 {
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	no-sdio;
+	no-mmc;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
+
+/* RS232 */
+&uart6 {
+	pinctrl-0 = <&uart6m0_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+/* RS485 */
+&uart7 {
+	pinctrl-0 = <&uart7m2_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 861067b5d707..0d6f1be69ac8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -6,88 +6,10 @@
 /dts-v1/;
 #include "rk3588j.dtsi"
 #include "rk3588-edgeble-neu6b.dtsi"
+#include "rk3588-edgeble-neu6a-io.dtsi"
 
 / {
 	model = "Edgeble Neu6B IO Board";
 	compatible = "edgeble,neural-compute-module-6a-io",
 		     "edgeble,neural-compute-module-6b", "rockchip,rk3588";
-
-	aliases {
-		serial2 = &uart2;
-	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-};
-
-&combphy0_ps {
-	status = "okay";
-};
-
-&i2c6 {
-	status = "okay";
-
-	hym8563: rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <0>;
-		clock-output-names = "hym8563";
-		pinctrl-names = "default";
-		pinctrl-0 = <&hym8563_int>;
-		wakeup-source;
-	};
-};
-
-&pinctrl {
-	hym8563 {
-		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-/* FAN */
-&pwm2 {
-	pinctrl-0 = <&pwm2m1_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&sata0 {
-	status = "okay";
-};
-
-&sdmmc {
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	disable-wp;
-	no-sdio;
-	no-mmc;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_s3>;
-	vqmmc-supply = <&vccio_sd_s0>;
-	status = "okay";
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
-};
-
-/* RS232 */
-&uart6 {
-	pinctrl-0 = <&uart6m0_xfer>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-/* RS485 */
-&uart7 {
-	pinctrl-0 = <&uart7m2_xfer>;
-	pinctrl-names = "default";
-	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
