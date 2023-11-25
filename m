Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEB16C0755A
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLtmrsHDwoS1LUbCiDqXNX4iPYHYpXicFrqoNRMyN+I=; b=s2uh4ueXzUvfGB
	l2CnImGWe2LlLX2ANYzPidUf2zjSFjNg0PGSFYJRfX/O/8hwR3XoP6Wv6LXRvN91sGC9MwKSzydCJ
	ucxCwqfZBJMMXoCG+uiPuPM7LAy1j69i+ovqrYZa7TfQazPdvESMmyOgAx3DYgHgQPAbXUbzThmlZ
	ujl0u1Qa/nnRSjOXs8KEFjdU3xkUUkeG7UoTboeB/ABW4WLtPYPCBI7G+i6fa33Y2ayUDOx/0KuAf
	T2YLumkBJhnVlh2W2LtjVgK1Q1bLSq8r7PI8vM4qj0LoyNjSLsNHgYu4X7iWDmVHr6+HTPV4V1SRL
	9lbDHx5xPzkwpzlBqoCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xye-009flE-2D;
	Sat, 25 Nov 2023 19:06:04 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyN-009fW9-1U
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:05:48 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6c4eb5fda3cso2843669b3a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939144; x=1701543944; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1+M+xM5bIBT1EaTjPTsgQ8EOjWK63avdGfnOq4UupLw=;
        b=wuDVZF3B4jKNZGkgfy3ySTckMQ4o1NF5/+JNMd0k6PCcaebqi9nlOW2cDTXRFBoT/a
         +xhmc1P64Ffm8RXJDkhbAI5m382Nn7SmPRGmx/LZ4D/koiMkZdr9f4OB7LT0InGdvjHU
         RQDltC+98MT/fgQ2AovCAFy5zirg38zgoTx6gvYH+Y5PPIQjSWtWMN7R7zE5wGhCMNqA
         kWV3TwG0jS7ifGKVV1PO7AkiwqitF7/3375QlrymYmeMPGtKMkeBEKdXsqNXFlJUI1LR
         kr4kc2wfKQo5GBIElSWDRNuOuphS/gvNzkYgwun+9ADHeoEqYoPIMW9LgH22/tm79Km5
         b8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939144; x=1701543944;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1+M+xM5bIBT1EaTjPTsgQ8EOjWK63avdGfnOq4UupLw=;
        b=GFBjsyOkOrhKfgq2+FPtIJsRjxGIhUDpG79g7b981RVL+hVwxzgoOGmojKHZJjVQAn
         bbQm93gCHGovJoCX194R04LYEsCWM/UVc5YS8By3YiRQbOeTZrr5aQJI4jW4+3kDDXVU
         /HSzMzK4efGEac2BFpWln5P4Kx81Mdu5O7VazJVAm4Fm5kfB3VzV6hqIaZnPi4SBjs6t
         bh0QT/XoTKUe1EFF6uYluhglULBGkdopEl040ac1CUdNhmRcg8XC627pGwx4gu+ALRYO
         9nEzvGz0Aa0DSUeDpm3XlH1XTcgipEs9Y7KthPJfFHNF77c6V6D1eskUJ2Alr34cWbOH
         M6xQ==
X-Gm-Message-State: AOJu0Yyzvp+WIZ9JVF/MCQR2K0k+5rE2K7a1ZuAAZvEgYBrm1riVE5De
	JDu+4h9uW/RUBrHH8xZxnLelYw==
X-Google-Smtp-Source: AGHT+IHH28McUAL2v61zAZrCsqn5EubVM4+PuAChqZrXW1F9+rNIyeIFbKDZgXUrS+fnmoaMaQ7Unw==
X-Received: by 2002:a05:6a00:1512:b0:6cb:e3c5:7cb3 with SMTP id q18-20020a056a00151200b006cbe3c57cb3mr10106238pfu.16.1700939144377;
        Sat, 25 Nov 2023 11:05:44 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:44 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 05/10] arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
Date: Sun, 26 Nov 2023 00:35:17 +0530
Message-Id: <20231125190522.87607-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110547_502173_5609A0A1 
X-CRM114-Status: GOOD (  10.52  )
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

The RK8602 and RK8603 voltage regulators on the Rock 5B board provide
the power lines vdd_cpu_big0 and vdd_cpu_big1, respectively.

Add the necessary device tree nodes and bind them to the corresponding
CPU big core nodes.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index e141dc84654a..961a80014686 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -38,6 +38,22 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 	};
 };
 
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -54,6 +70,46 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0m2_xfer>;
+	status = "okay";
+
+	vdd_cpu_big0_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big0_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_cpu_big1_s0: regulator@43 {
+		compatible = "rockchip,rk8603", "rockchip,rk8602";
+		reg = <0x43>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big1_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
