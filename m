Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0DCAC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 12:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIrXM/IdQoaNwna78XMCGSdvu0CGIhTQJZe/5mtsO4o=; b=0TtUJsThRtgIKJ
	StVFuitpzgcEEiU8WWFsJpY/uW9x+E+muN/Ufxq3KD6jqUo1p4MT4oFVP4pGOOUi/O19AvGUH2fJE
	iXTG53wMSyfBuxEz+o2evGdyLuJNjLmOdrZ4erMzSWyClc3+RizWitDJaIBAyHW8HGzAqRHeQ7Jq1
	LX8rtXPYcsJ5V8/mCJkqyvyF8Myaem7I/HwZdCYdC14MdiZbd/de4AUUL4QuwvaPYcyE6h3s1Ebqm
	InjsgzRDTOfK7Sv6KN7uQvfkWbUKsAvKkpQMe3Q40wi/7+B/EGBGiPYJX5vNqUTWvHMXHxY+SfZhC
	eUnjjV29AY6GHgwSBcww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPua-00BBs8-3K; Fri, 29 Apr 2022 12:39:52 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPti-00BBJL-6j; Fri, 29 Apr 2022 12:39:00 +0000
Received: by mail-qt1-x836.google.com with SMTP id hf18so5577496qtb.0;
 Fri, 29 Apr 2022 05:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EQBPMVh4KxNRh9skZ41FjxLu1MoZCNVrj1TK5/sD6n0=;
 b=j/ndKRSFYP7buMqMGMQiCJU5XRdg77IB9UVShw7egWFQmnIk9pK99P+eyjC3WLXp7t
 0ctpKbP4HMNyiZx0+6q0gYVuF3fN604ffVjFbUuWYiCFBiIY5DXFCFGw4BVSYBJyXkj9
 nOljcWMvx1zYFunQ427lF8be/y1vw57oJiv1b5hcnfOjNyCQr8f9mL/2vNIvr2DFdfUM
 +9E+MPGCdtmE3syuOh2bEYtewpHwgxRdIoyAg7AxS452S4FWkZqq35cS8N3WHI97o8hT
 go6jr62E9XFlZaYYkZo80YrXKxFhpWvtVeSOSUMbUpMehZ4/fAbWJgx+t2Trp/DHsmRu
 rRXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EQBPMVh4KxNRh9skZ41FjxLu1MoZCNVrj1TK5/sD6n0=;
 b=bH17n9kloCbQpBI5SuRIbDZ6nNjqjzSIZK5pLGi0HQ2jCDTJyvVwk7AWceEncKFCTk
 nOKiFkHoNFYE2y9njDNW72XuLk4Umqk48xR1ifkst7nsHiVuiOqox7gz3q0mXzQOQyHg
 UiXvUYtheiq7WI8NFFkJcAWYUcw8RiXwhWrwP0WGFfoAZRtFQSN9LOH2DV3pPBs8ScXT
 PZiOqc8D4Fv+MEh50SDApuoSd8/YVR3D+4wgcVYgou/3Uv45km/NgJBGn43uWm5zJB5M
 fLyYyboMbpvzhdys7LsCHEbWbrRW7WL7WbkliJuB1kDFMWws1hkq0PHOke2VLW6cNkpi
 z5yg==
X-Gm-Message-State: AOAM5312L/hFRwm/kU9NdDOTXQH2t+IjWYWfJlwCqwJeBdC4jX6qtjl2
 CK6oyD25xWh8O5okd+/3xzIAtTms26eJoAKi
X-Google-Smtp-Source: ABdhPJyJaJYrd4MzvWoNOelwgiutgFGzr/zwhlrF3q+PLQOFMKom71HPMDPQ/jtf5nz0GM3H05DMzg==
X-Received: by 2002:ac8:578b:0:b0:2f3:53a3:33d4 with SMTP id
 v11-20020ac8578b000000b002f353a333d4mr26724642qta.376.1651235923927; 
 Fri, 29 Apr 2022 05:38:43 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v126-20020a37dc84000000b0069f9c375519sm1431644qki.46.2022.04.29.05.38.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 05:38:43 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Marc Zyngier <maz@kernel.org>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 5/5] arm64: dts: rockchip: Enable PCIe controller on
 quartz64-a
Date: Fri, 29 Apr 2022 08:38:31 -0400
Message-Id: <20220429123832.2376381-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429123832.2376381-1-pgwipeout@gmail.com>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_053858_301487_36600BCE 
X-CRM114-Status: GOOD (  10.68  )
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

Add the nodes to enable the PCIe controller on the Quartz64 Model A
board.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index dd7f4b9b686b..8b0537744a60 100644
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
@@ -187,6 +199,10 @@ vcc_wl: vcc_wl {
 	};
 };
 
+&combphy2 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -495,6 +511,14 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie_p>;
+	status = "okay";
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
@@ -520,6 +544,16 @@ diy_led_enable_h: diy-led-enable-h {
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
