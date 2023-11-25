Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6F44C07D59
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMAnzzaNGwacNknlXEeRsAScwoOqSvg8mYxyu7qPMNw=; b=ChVMzfgaZkPjzm
	ujTsCfrgrSq29UIzQxSss0W/2haRqIOiOl8tmHfGF7chrY4SrWLk/1k7dElA+d7xHbq7rEfSPievV
	crXF+kAB03feaTny5rA85TWXynRscuq+M5ExE5wBGOj8dMhUD0yx8UewI8EyPD2g7IDkgWSv6ptFT
	N7tXjh6MEEsReOMQI6axap+hMhiduzU3+7sCQ1n74OOlemqhObD7TkjQqk5OtQAQFoftGObYBfCN/
	PpneStJx+qe1tkboG3DP7EoxDbWkeTV9+lVkfB6inS35lvW8oflZdIazJR2Cb2PMFu+Z0SUm+ADlS
	VSaItRhnJ+kR3XR+xbJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tq5-009MeD-0G;
	Sat, 25 Nov 2023 14:40:57 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tpl-009MRc-29
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:39 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-5bdbe2de25fso2107473a12.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923234; x=1701528034; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q77vFTikWqj8u6aZSDtWQS/5Oyjp4fDjXD5Mr5F9eOA=;
        b=zMYrEtaxxWmZfRAamKFDsUA+GwOQX8qyCWbvwQVI01CL3bd3wuXvnYF4hRr5qsJLeK
         Mg/fXY+Z5ftTkrFan58/GQ7poc6CqGu0BUaFx+pJty5zTKLV2gTaZqVDnpxyBxfrenVe
         1TGDS289CkcKt2M4/a4ScIGvhKqTw2GOGMBVzLySKJ/hUw8QcfNu5ID3672rYPlVUgKH
         bwBbPxnZ9F188aQqNgISBlj/RRODcbZjlkXOzaIT1jzpaEQO3yO7QaBBQ6ZAWTIj4pNI
         OvdZcM8P7Dx7RS6+duCSFyapxZU2+FDgxhXQpNny7TaHzAdScI/tMGMQWy7Ge+7ijY49
         M2dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923234; x=1701528034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q77vFTikWqj8u6aZSDtWQS/5Oyjp4fDjXD5Mr5F9eOA=;
        b=JB7NMnJllGPWnDyAiZUqUKS2paVGgx4U02akZ+LFT0agvFX7rPpgxkjxYKhmVkgRSU
         utsZsKh7Vht8zT9ahxaPB/Rdpk+kqY5qUXKZI/3jc7IkCJaeCMre4+9DjWqsLytCJCzt
         Vp0LJ2RGrLdW4x+yMusN+4wpGBVH4JRHhGk/Zg39NOevMnD/uutGJfhIrcEojYJIrZ/r
         DDH+HWW9ak14Vdzu4vjyAgkRzhKL03WEVTpVemG9tK/cuAQBozg8Zr3sTITUoXBmBZOO
         h8g40LExDExnfpgN9vNhbp1lpZY8CKSWr9VSVbe5O7kswi3STe/KvvYh6OYRxyCiSvE0
         JI9A==
X-Gm-Message-State: AOJu0YyB3FccyD/g9a1PWo7YiK7CIBmcYMBBkgYyLdu5UGmYZTEPQGAH
	+kPcUVWkWuw0DMbHZqfcfFV+8w==
X-Google-Smtp-Source: AGHT+IHsbgPemW+RJoXnnN0gRJzLF9/OjAHMwigjX2Ok/x5nRPhHqImeSm2PxpEei8npcUi4cM8KJg==
X-Received: by 2002:a17:90a:354:b0:280:18ba:f016 with SMTP id 20-20020a17090a035400b0028018baf016mr8196857pjf.47.1700923233866;
        Sat, 25 Nov 2023 06:40:33 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:33 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 03/10] arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
Date: Sat, 25 Nov 2023 20:10:05 +0530
Message-Id: <20231125144012.58668-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064037_705514_C3974E1B 
X-CRM114-Status: GOOD (  15.25  )
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
