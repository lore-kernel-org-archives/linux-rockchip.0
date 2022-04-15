Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC8A9C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 21:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvQJ2zQLCEYUqGw1Y6Txp5HQldQEL/+FfVLUdvCYBXQ=; b=bWt9fTqrqFveLQ
	IOTP7OpZ3pktoQ2UiyTqzGajlMcdfBpE7YPQ/SFhh6Qwm9kcLkVPzPSiwkleU3HbADzgsSFSkWq6u
	KeI9FxynCzQ9WyJgnY9zeLHXv8JHCV26crnOAijmcP5W0DYU6yifnA3wy/9UZUkmDSvCG2NIjYRYo
	3GbEGIDfYuQ2M2CyCjmXTFqojhZrhbav9rWabroYB/8ILzIeZtrmAR3rZduRPIXwd6ALUENvQwnkB
	bCAiaTSscygOYKxwq4h8CDZfsoqCrjjZzkd76/C/EJ9Qt4gP8yy6I64Vh5BIv2hAOWcjnBMfo0AhP
	M2Lp3Wu1WGsPteavRF+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfT9l-00BK38-Fs; Fri, 15 Apr 2022 21:07:05 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfT9E-00BJhK-6C; Fri, 15 Apr 2022 21:06:34 +0000
Received: by mail-qt1-x835.google.com with SMTP id a11so6606670qtb.12;
 Fri, 15 Apr 2022 14:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=VikkCoAUvLC1ubmrDIIV+nyiCkBGV9Pl/byIqsOybtzYPMcKNDPfx/XL181ahe2GIi
 q46j8YpQ9t/zJURTqdBt2hI8XvgZ1/mMK/hSg2bSq3t7lI5GjUE2Eik8WvxT7gxpbeBq
 UKwAYOl9Qcd6aoru5sB3ra5q3ni3kHiGNX/jcgC34JTsfs/kVHhdgeEITeC6AUrBVZnA
 MhjHfeBPCOtFE5Q24iUeXQMjmXqwG6eUBEJ6B4GT9KJZXE4cCtMDZ6/HblPPVtE4t0sf
 qjLIifQRvMJXAXJ417O6AX/VMfbW0jGpWbeCPP9ofc9IgQdREUVuMOFcdO2irK4loNbh
 zD6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=58Jvj7AtSflJn7Fr1IFh+ad81mwohhk92YrJYa6f+/i44+OhI1Ou5qgkr61VUwj1lf
 rhyQwoFMOvf/9zMCxpbN06bD5ec8fjpnKgN3mY7DZRVtoru5oGJd3GwUafxiosdjOOtT
 6Nb7WTKJNSrgKCelm6b9V5WZkrVpznxcQcZYyr9R7h9NuiGh61BWzEiLKT3j59xQnhfq
 mJv5mrg+7XyJpNq9pYjFqaQRYmWHF76m9GigKQLV/5ksgDBdZftThatlsMEaFVvMlBG5
 RMj+EPEuoOMRi0B2mnPoH7FxJD5KZ1L+WBGKsS/9cFIvFCi5UUSeJFV3S2ETjabgv6yy
 cT1g==
X-Gm-Message-State: AOAM530cGxAy59YjgsXQGL4O8f5mUj0rMmDQeA8j8qpRpS9EZZyyoXfX
 8MmfqGYn1uV/fFA377PiiuE=
X-Google-Smtp-Source: ABdhPJzLedWnFnNqrv1TQhWt9BpMbdSJ/gRbFqSAse32530sbMvkDxImMfNQDN8aMJMLhl6YMWWjnw==
X-Received: by 2002:ac8:7a8a:0:b0:2f1:de6a:c044 with SMTP id
 x10-20020ac87a8a000000b002f1de6ac044mr686043qtr.243.1650056790708; 
 Fri, 15 Apr 2022 14:06:30 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 w8-20020a05620a148800b0069c4884c990sm2838664qkj.108.2022.04.15.14.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Apr 2022 14:06:30 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] arm64: dts: rockchip: enable pcie controller on
 quartz64-a
Date: Fri, 15 Apr 2022 17:06:21 -0400
Message-Id: <20220415210621.538109-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220415210621.538109-1-pgwipeout@gmail.com>
References: <20220415210621.538109-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_140632_289650_4ED9681C 
X-CRM114-Status: GOOD (  10.86  )
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

Add the nodes to enable the pcie controller on the quartz64 model a
board.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 141a433429b5..85926d46337d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -125,6 +125,18 @@ vbus: vbus {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	vcc3v3_pcie_p: vcc3v3_pcie_p {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_enable_h>;
+		regulator-name = "vcc3v3_pcie_p";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
 	vcc5v0_usb: vcc5v0_usb {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
@@ -201,6 +213,10 @@ &combphy1 {
 	status = "okay";
 };
 
+&combphy2 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -509,6 +525,14 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+	vpcie3v3-supply = <&vcc3v3_pcie_p>;
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
@@ -534,6 +558,16 @@ diy_led_enable_h: diy-led-enable-h {
 		};
 	};
 
+	pcie {
+		pcie_enable_h: pcie-enable-h {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
