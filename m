Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC57E7717D
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 01:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vNXAmVPEzTSxrPoJlH8HYDnEZ4JGEsynNV+WhsmvkA=; b=hOcx3AW/pXwLvb
	bUTKadhZYj7jBSFVgf3FiI5tTphJtVVgahLj01L5eSKObSCw0WlnYz9NnlW5eL36bHokx9F3KsPjp
	EBj0nfw084wMRR5mzHFVlVieS8Z+l640FruqFlQ9CB/MfguX7bZlxROxerb/G3z7oKV3LN8jYRTSS
	ZpSEkFsrX/aN2jrkIDxcLtyvLcVlTtcFPccGG5YXB8nAlklOj6qAwnsRdXMJwgG7eriaU80EQwUoS
	xB9ljurjEQtTwUp+qedyzm/qhQS8eKBEYaNYKtFtF3hyIwtqDo2F2xQYWMEf0hiqYZ3goic9qg3Vo
	CtAhj0+XHHuSOVB7YnIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKpB8-00000009qu5-3LlD;
	Tue, 10 Dec 2024 01:36:46 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKp5A-00000009pw6-1txl;
	Tue, 10 Dec 2024 01:30:37 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-6d88d3d1eb6so48207116d6.0;
        Mon, 09 Dec 2024 17:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733794235; x=1734399035; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fC9D6bBSfVEUhHq7Trd28DiW5CSpsRgZ8oSjVO7Uwcc=;
        b=Qs2FYrgVj/DwLkYMuTHa1uJ7Ht1dc2PEb+df+mbkWKBCCBdATrhoo5dFd+onWDwesZ
         zW5hIBpEi7SiNONH5C8PjpD8QFF8scpnucsNcmNkJIwpnFnqRwZhtLuubxBN+1kJRlZu
         CajFGarM6qU1ilTNXuMMCF/LqcmtkwGIVq6R0oFNBKaWdvCBzeapBQINUK5F2TD9KbZ/
         HHxmh1lURxZZHL3432pjPB3fHVhkAxe02hlSmwBdzdpkTXPENtjoXLP+oktmxvpwz1sc
         WTAp1dsV19+p70WqnunjvOg+VnAGrRsC2VJqdfiIqJfozW3bJk9JgLlBeceAJkWnNMdD
         RjMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733794235; x=1734399035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fC9D6bBSfVEUhHq7Trd28DiW5CSpsRgZ8oSjVO7Uwcc=;
        b=teDC/zZ//Esy1aPeCovcCydNHeGoHjT7hNSxsmkkeRxNIKCUGd2BBTcUUG0+S2SAbS
         QzZpGwshLX3GOZ22tARf3Z8kpepggDEDnDV+dgu/hxk/zttGEPzsa2MrHEjphZ9KcW/m
         fYGh47QbrEhYKsFEbBXuwIaz55GMDbCOmnzwhwUstAy+po7eji8KcGA+hz8gs/d1icPu
         GgEX4TvFd1M4Nemf+Sb+DsKvCAsPluZJxHXnbnzlH2lvzJUAwmVYhocYmm10IfwVUp+B
         XuBzfxprJmNzPqWow7ME1RDrvnli7yl2oP28FMp/X8Ofoq0VzqzHgLYhKqeGwFjUB5eV
         tgxg==
X-Forwarded-Encrypted: i=1; AJvYcCVs79OxYNFPWnwvUpdrQvBTygxtdfLSwBCShyXZg/LtC7yDRFc4wgtwWVM1uzY9UzdMncXfrkSCy1I8Hqubjew=@lists.infradead.org, AJvYcCVvFc6MzdGlDcUKwst9zjuyOk0UbllPWxCAQX/2w5td7wivF9UE1PdwamQo0epAG9BXBudf72z8sWzqjWwhuhXV@lists.infradead.org
X-Gm-Message-State: AOJu0YyqgLl9/Q2iYwoTEzyLGXb9o5/gv0W9KfTnFdY7GIuZw9/KH2G+
	EOHoarhpR8f5qT2p5sK+TwsdDPTyO2ZXMbGWj4oZKS22s8EiqEMJ0IUp+qR8
X-Gm-Gg: ASbGncveb3XUBxESKewQeQFQVrjBq3bNhFJpVMnsxtLnQsGiyj/0cp3djB2fTTfQWEq
	yTdEDK6UEBg3qgnGd43aMwz6/Lv07hZRPuWa90wPj1sKXGzz0uL6uy05K0d8raDUiSNWchGsV5e
	RUreiQIX5EUkiwdiLOf7bdqvKR6gTk78EKOGF/WKoUguIjsW0kOue2bSdKh1vf0udQLGLz7qrSz
	NsBtFHIR/izEoEiDIDFoNqxEdWwa2mtTzDp79UGKh8Y07M4meEA5piXWFAeuzNhgg==
X-Google-Smtp-Source: AGHT+IEljNAVBvyvJhfVHfvliBl66vtZbHIQPQl7CHgoQDBd6uJthPJkN2CurCsM+FLREOa8EJMyWQ==
X-Received: by 2002:a05:6214:c82:b0:6d8:b5dd:7699 with SMTP id 6a1803df08f44-6d92131428amr19515826d6.17.1733794235614;
        Mon, 09 Dec 2024 17:30:35 -0800 (PST)
Received: from master-x64.sparksnet ([204.111.53.234])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d8f429a79csm36834346d6.72.2024.12.09.17.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 17:30:34 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Levin Du <djw@t-chip.com.cn>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 5/6] arm64: dts: rockchip: correct rk3328-roc regulator map
Date: Tue, 10 Dec 2024 01:30:09 +0000
Message-Id: <20241210013010.81257-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241210013010.81257-1-pgwipeout@gmail.com>
References: <20241210013010.81257-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_173036_488933_1B00FABE 
X-CRM114-Status: GOOD (  12.42  )
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

The rk3328-roc-cc input power is sourced from a micro-usb port, while
the rk3328-roc-pc input power is sourced from a usb-c port. Both inputs
are 5vdc only. Remove the 12v input from the device tree.

While we are at it, add missing voltages and supply to vcc_phy, missing
voltages to vcc_host1_5v, and standardize the order of regulator
properties among the fixed regulators.

Fixes: 2171f4fdac06 ("arm64: dts: rockchip: add roc-rk3328-cc board")
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

 arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi | 23 +++++++++++++-------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi b/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
index f782c8220dd3..6984387ff8b3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
@@ -24,22 +24,23 @@ gmac_clkin: external-gmac-clock {
 		#clock-cells = <0>;
 	};
 
-	dc_12v: regulator-dc-12v {
+	/* fed from passive usb input connector */
+	dc_5v: regulator-dc-5v {
 		compatible = "regulator-fixed";
-		regulator-name = "dc_12v";
+		regulator-name = "dc_5v";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
 	};
 
 	vcc_sd: regulator-sdmmc {
 		compatible = "regulator-fixed";
+		regulator-name = "vcc_sd";
 		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&sdmmc0m1_pin>;
 		regulator-boot-on;
-		regulator-name = "vcc_sd";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc_io>;
@@ -50,22 +51,25 @@ vcc_sdio: regulator-sdmmcio {
 		states = <1800000 0x1>, <3300000 0x0>;
 		regulator-name = "vcc_sdio";
 		regulator-type = "voltage";
+		regulator-always-on;
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
 		vin-supply = <&vcc_sys>;
 	};
 
 	vcc_host1_5v: vcc_otg_5v: regulator-vcc-host1-5v {
 		compatible = "regulator-fixed";
+		regulator-name = "vcc_host1_5v";
 		enable-active-high;
 		pinctrl-names = "default";
 		pinctrl-0 = <&usb20_host_drv>;
-		regulator-name = "vcc_host1_5v";
 		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc_sys>;
 	};
 
+	/* sourced from usb input through 3A fuse */
 	vcc_sys: regulator-vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -73,7 +77,7 @@ vcc_sys: regulator-vcc-sys {
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&dc_12v>;
+		vin-supply = <&dc_5v>;
 	};
 
 	vcc_phy: regulator-vcc-phy {
@@ -81,6 +85,9 @@ vcc_phy: regulator-vcc-phy {
 		regulator-name = "vcc_phy";
 		regulator-always-on;
 		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_io>;
 	};
 
 	leds {
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
