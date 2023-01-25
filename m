Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A23AC54E94
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 16:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnpz8yW1llKxND0r9/mGBceq2gDIR+Lhw6oQbZ7AEt4=; b=poOaMKOK0aVx6V
	UlD2MbWSWiLJJgLgzXH0GcEL9dZGiyd8Kl+iARa86kwmyFrq1wxIs2LxgjwxJdxScbD63xDdqA+Rr
	/kSFxxbUnpPkkV/Ipli/Fkod1W6ycXDhDDA5dmfnAhlRi9BkoXoSkdAb6ANsZ4X4RmqTDP1ND2xI0
	5eopLGsVJtWYjo4HKmcCSwc557KYt8XE6TZd/KKJ7quET9S5alNXsyWhLD1gJuBb08p4hp7Z3aRy4
	qnuJgBeXSEId1RUumubO4h14CKPzDwqFTYY9WsJaQqwnjzw/T6DLz4nWimiRIJHlF1clBXoXr+h/2
	a6dzgdrkMU36EasL56Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKiMG-007uuR-HR; Wed, 25 Jan 2023 16:10:44 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKiM5-007us1-Bn
	for linux-rockchip@lists.infradead.org; Wed, 25 Jan 2023 16:10:35 +0000
Received: by mail-pj1-x1032.google.com with SMTP id m11so7173256pji.0
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Jan 2023 08:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqGU3wJDMck0hXctP8UU1PV+5x18nPVs244//C4MGVw=;
        b=dTySioobE8TdQKBH6lc6LWHFTTNTkEXJLgy97QDnTIj5UEzY8QS/PqjYyZBYXBTByg
         YUuwZXmMw9SeyAPgwfJZyowKrKWH9+Srckmyhwij2CQ7SQ57F71NNxyslx2FdzScmnEc
         dfxA5ZWNmkmECARukK5gN1d02WquRj7a/V72c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZqGU3wJDMck0hXctP8UU1PV+5x18nPVs244//C4MGVw=;
        b=ViYdbdahxVsT3qQX4uqDgcOlrTpWRoDm5tn6pluKaMoJyPzci1WWnoNaKTXXr+zd5p
         XWtXFQqp24EQcCR7HazXgieJAqbVbu8i97tVcj3xoFc1FLNZFxLdI222WbgZp8Ta836L
         QIYBUvMb2QkmpwGdxgtug4e2t5YWtiPHUZqvwOVIpT0nGNYKR0T6Yx8Poaz/iKLRFgjU
         S9Twbz8G2d3P1d9m+tAQxTCiobjKq2S2HJsIIIwq9D+QBjdw+/wCDZqm5CNZqICh8ZzH
         sR6O4oVjjT3AAsUP9nf+sgWdeC54lkE2omIt1A1VZBTgI/OiUlbVIMQ1bpRQUJovTiRt
         DtmA==
X-Gm-Message-State: AFqh2kor+kpCygIdSv24cfIdnKbD3j7R8mP7pkM/iRsvatOrTnwdXGot
	kZoPKL0KS6ZBgEjGJltiRARXow==
X-Google-Smtp-Source: AMrXdXuD52QWY23VyKrzu75dZZ2SbzMvglaxF2fTNgQpl1FDQKTDpLl2vrR8wSMJdFuVAuwBDPbedg==
X-Received: by 2002:a05:6a20:b71b:b0:b8:965a:ccb5 with SMTP id fg27-20020a056a20b71b00b000b8965accb5mr30301826pzb.24.1674663032871;
        Wed, 25 Jan 2023 08:10:32 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a238:3cb1:2156:ef87:8af5])
        by smtp.gmail.com with ESMTPSA id n29-20020a638f1d000000b004dadeb4decasm14929pgd.53.2023.01.25.08.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 08:10:32 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3566: Enable WiFi, BT support for Radxa CM3
Date: Wed, 25 Jan 2023 21:40:23 +0530
Message-Id: <20230125161023.12115-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230125161023.12115-1-jagan@amarulasolutions.com>
References: <20230125161023.12115-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_081033_418910_56CCDE91 
X-CRM114-Status: GOOD (  11.54  )
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

Radxa Compute Module 3 has an onboard AW_CM256SM WiFi/BT module.

Add nodes for enabling it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index 23a85a13311a..3de3a4f38756 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -66,6 +66,15 @@ vcca_1v8: vcca-1v8-regulator {
 		regulator-max-microvolt = <1800000>;
 		vin-supply = <&vcc_1v8_p>;
 	};
+
+	sdio_pwrseq: pwrseq-sdio {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk817 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_reg_on_h>;
+		reset-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &cpu0 {
@@ -287,6 +296,20 @@ regulator-state-mem {
 };
 
 &pinctrl {
+	bluetooth {
+		bt_host_wake_h: bt-host-wake-h {
+			rockchip,pins = <2 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_reg_on_h: bt-reg-on-h {
+			rockchip,pins = <2 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_host_h: bt-wake-host-h {
+			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -298,6 +321,16 @@ user_led2: user-led2 {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi {
+		wifi_reg_on_h: wifi-reg-on-h {
+			rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake_h: wifi-host-wake-h {
+			rockchip,pins = <2 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -318,6 +351,34 @@ &saradc {
 	status = "okay";
 };
 
+&sdmmc1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	disable-wp;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_clk &sdmmc1_cmd>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+
+	wifi@1 {
+		compatible = "brcm,bcm43455-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <RK_PC1 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_h>;
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
@@ -330,6 +391,25 @@ &sdhci {
 	status = "okay";
 };
 
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1m0_ctsn &uart1m0_rtsn &uart1m0_xfer>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&rk817 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_h &bt_reg_on_h &bt_wake_host_h>;
+		vbat-supply = <&vcc_3v3>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
+
 &usb2phy0 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
