Return-Path: <SRS0=/XqT=PP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F07A7C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 14:38:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B53B960720
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 14:38:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B53B960720
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6echN21rer5VDDii4NDk3QouKfNPS1jEA9725mjfeuY=; b=UbcZZxu9N/34Bz
	z+OfdhbYA8ZaF3l1y2RjsbPQ3DNHcuaDEnb8lbnlzDZtepr3oCbW/QcoU9HBSje8L6GNLXJyQdvC5
	yFimKTjQ1wsuWtIk9iSZabvdpAThS4aJ2QDTVqqqh/YMYduMIVwqeA5x8Xo/2fbNt1LnVoK7t5waM
	OoAGmJZ/prKTkozBuCKrQzjYLSjkxgPWkYpCpI2pNb718KxXMp075DOK7y7K/Nq/igCCCT9aAyBtl
	YdydyeJm0lQWzPL8GJHS6TYl5hCUY8aIEaThUU8kACWJJ8eBjPDH/yLCVqJsn6PcGg3rxH2HWZ5rX
	/5KAOu21K90HwiXdvO/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfk46-0058s7-2o; Wed, 27 Oct 2021 14:38:06 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfk3l-0058kn-1s; Wed, 27 Oct 2021 14:37:46 +0000
Received: by mail-wr1-x435.google.com with SMTP id s14so1657724wrb.3;
 Wed, 27 Oct 2021 07:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ECYBC4YNujNcfruFWFj5cKTQLy3jB52lzNAq73G9ODI=;
 b=WbLTG5z/2bX7mQkpZ20I/XHwbLEHWBZUHGye6qS7zMYsl85xenrtP3igf3w8vmbGZl
 yQ5DU8T0FcbKh2bL3uIZLPTsW2SbJsPu3F178yLzQEmUGO+g45XfTcFynvFwhqv9OO2v
 qixGGNpRkpGDhuYKCWDSIhJs9gXuKu5t4Pr8R9WmR0Y83mG3mvzsDl5hR0wIX4fOsEjr
 C87J+9EtyqwDvQ+UrWdlecbtUKDEpQYtmt658iRhoulvUo7mNVWF1lB9VqoSnkJkSizk
 YAwyYnNWsfrN24nbuGy4eoD9lLzWTbLFfD5dRiVnjQs4hW4A9NduSaDbXIDWbd27+gpt
 OKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ECYBC4YNujNcfruFWFj5cKTQLy3jB52lzNAq73G9ODI=;
 b=NX0FMtOYpHzjEUpHwDfd5kHCOkiOKB5ikOAhftyyVhegn3OP7kbaoyc0V9XUv4bhSd
 nX1zXIlrNQ3Bec/MdaqwRclrugmC4CqPROajtEty0VBJKy+Mf4y0vqfYwDx2uPnNdJWv
 qk678YQWeDTtusqkEQIZJeQOSNBwg1Oe7tmTu3DnUfupALp0PWr261gxY7Ywy+Ew74no
 h6R07ydlixssAUgpnfpQWO+76BaEIlXqzUeSyHKidIgJX681KV7WCQhU9mowyO5N9v0Y
 iEUmT/bn44BIP2UwlZGJLlIYCplldmFxGlif9Vkknm2cfhoWZJH/dpBfLoPYuwz8oxmz
 PYgQ==
X-Gm-Message-State: AOAM533C/lYnGE7EJ7ccnjMX4JOV822iSGWSH+O+59xij0xH9T/43qZ2
 JjTtyq6UMHRuiTUnE+50OQ==
X-Google-Smtp-Source: ABdhPJxM2xWFRcYqepvLXxjzgmiMicba79H5c9p5JTK4rrrGKSDr9cU4H9ZbipquZRtbuWCNQuZc6A==
X-Received: by 2002:a05:6000:2a2:: with SMTP id
 l2mr34083026wry.109.1635345462964; 
 Wed, 27 Oct 2021 07:37:42 -0700 (PDT)
Received: from alex-ThinkPad-E480.. ([2a02:810b:f40:4200:8072:4c96:3e48:9ebf])
 by smtp.googlemail.com with ESMTPSA id
 p21sm25866wmc.11.2021.10.27.07.37.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 07:37:42 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: add interrupt and
 headphone-detection for Rock Pi4's audio codec
Date: Wed, 27 Oct 2021 16:37:26 +0200
Message-Id: <20211027143726.165809-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211027143726.165809-1-knaerzche@gmail.com>
References: <20211027143726.165809-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_073745_127735_FF22461C 
X-CRM114-Status: GOOD (  13.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

As schematics at [1] and [2] show C- and plus-revisions have interrupt and
headphone detection lines of ES8316 codec connected.

Add them to the respective device trees.

[1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi_4c_v12_sch_20200620.pdf
[2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4b_plus_v16_sch_20200628.pdf

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 12 +++++++++++-
 .../boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts     | 11 +++++++++++
 .../boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts     | 11 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts   | 11 +++++++++++
 4 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 6a434be62819..92acf6ea299b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -36,7 +36,7 @@ sdio_pwrseq: sdio-pwrseq {
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 	};
 
-	sound {
+	sound: sound {
 		compatible = "audio-graph-card";
 		label = "Analog";
 		dais = <&i2s0_p0>;
@@ -543,6 +543,16 @@ bt_wake_l: bt-wake-l {
 		};
 	};
 
+	es8316 {
+		hp_detect: hp-detect {
+			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		hp_int: hp-int {
+			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	pcie {
 		pcie_pwr_en: pcie-pwr-en {
 			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
index 281a04b2f5e9..f5a68d8d072d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
@@ -12,3 +12,14 @@ / {
 	model = "Radxa ROCK Pi 4A+";
 	compatible = "radxa,rockpi4a-plus", "radxa,rockpi4", "rockchip,rk3399";
 };
+
+&es8316 {
+	pinctrl-0 = <&hp_detect &hp_int>;
+	pinctrl-names = "default";
+	interrupt-parent = <&gpio1>;
+	interrupts = <RK_PA1 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&sound {
+	hp-det-gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
index dfad13d2ab24..81bea953c891 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
@@ -17,6 +17,13 @@ aliases {
 	};
 };
 
+&es8316 {
+	pinctrl-0 = <&hp_detect &hp_int>;
+	pinctrl-names = "default";
+	interrupt-parent = <&gpio1>;
+	interrupts = <RK_PA1 IRQ_TYPE_LEVEL_HIGH>;
+};
+
 &sdio0 {
 	status = "okay";
 
@@ -31,6 +38,10 @@ brcmf: wifi@1 {
 	};
 };
 
+&sound {
+	hp-det-gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+};
+
 &uart0 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index 99169bcd51c0..0ad7b6e22f70 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -17,6 +17,13 @@ aliases {
 	};
 };
 
+&es8316 {
+	pinctrl-0 = <&hp_detect &hp_int>;
+	pinctrl-names = "default";
+	interrupt-parent = <&gpio1>;
+	interrupts = <RK_PA1 IRQ_TYPE_LEVEL_HIGH>;
+};
+
 &sdio0 {
 	status = "okay";
 
@@ -31,6 +38,10 @@ brcmf: wifi@1 {
 	};
 };
 
+&sound {
+	hp-det-gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+};
+
 &uart0 {
 	status = "okay";
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
