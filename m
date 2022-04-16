Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC99DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 10:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvQJ2zQLCEYUqGw1Y6Txp5HQldQEL/+FfVLUdvCYBXQ=; b=W3lOuLDaqR4sHs
	Lg63ijw8pjq7lpvW5sLR/y0l6tERFpHH3M2MUMYsZ8QfDK8W+63mrRaC9ixeJRomMyQ4km1XxApjz
	rt5vI6E/Sr7Wkpr4fzLjjb+UYrea0+C/caeZdC/O9QYeSPTqEJgKi1xU7uuf8ETf9EEH9iyQWHFR3
	Xlivy5H+twfz0e+cims6387J8y8iebOfoZGrfI6R1bY1ClJagMmTZWVqrt+8WP4QRmEmNHO/xvFs8
	q9WxWW1Cs2ZWnIu7VOyHgYH5QajceiZlaAMabY52idaaVBs8bVUTY7WX+GM4Obh822mNT1JBtNsQW
	eJ3Oly0tAQK/2HRVkuIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nffJR-00ChWx-Ii; Sat, 16 Apr 2022 10:05:53 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nffIk-00Ch93-GN; Sat, 16 Apr 2022 10:05:12 +0000
Received: by mail-qt1-x82e.google.com with SMTP id t25so231958qtc.10;
 Sat, 16 Apr 2022 03:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=NmjECRbNdaTFdptYyv+cT8YO6KgWYqyiRjn3aibeKUp3EQBDD2NcV7OofgJP2t2wbn
 b/QBiZJE8xdXANqH8Llqmsfk6O9PjONhNiud9k+vIsEjDwI84M8k2Zs+GRJGU5Tgxyhy
 7CiChZMI32Q5LN2AsKPvze7zl2ays10WvBPyDnxAJ28McIjBawpUrYoY98AhWJTR3ACL
 /XZWzzYUuhkNgUig8mEYWTCzp5PxE1ZYJRZYL+mTnzVzYvHUVYq4s0kTT8HtA0qUUTNq
 oTOU1owRZUzDqWotkBnovzJUlJvHs69w3of/oe+pDVF4x1zcJJXWQECiUiHjv17NG+af
 5uwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=nPJ6Hx53rCtUxxQ8NXxk87lHTOA2qVvqcmQvVLB+xjVXzj/mg1PfCSXW3joJqPdqBm
 YzbdifAZhR1Q0UWAqOYDRoPA+LQzTtHqY5rmTgdNUhsT4nh5BZ24K9cQGD5xj7Sl3QwE
 EIisC3HJbnnh89nfmpruOie+awuRHEhE714gBHbVKiPBbid1XC0c4KuEwNdkn/sSZ82Y
 xBLMuA0Ak226E3ggp1qzyQ4Iq9gj6yGjpcCrPdXpgEelerDPHl2HTT/v+G+V60XfpG8T
 jP1oLYqdV3zIOhJ5yFpqxS24GU/vROOg037MRlxaaa/ORv0ES88gk39yiBchvoqyVsr/
 aiKg==
X-Gm-Message-State: AOAM5330I5UZdeELL3EqaEqXBxueybiVYcEuCsr4abPjgqK6zh/A1iyI
 Qs8b7rQQCnTPJ6Ir6GekOrI=
X-Google-Smtp-Source: ABdhPJwAIjr/Op2S340fMuRIJSZECSC6mxe/6hv16S1HahOfF/1ErIjyLEW5iXethYJhxZJ5rm0X2w==
X-Received: by 2002:ac8:5855:0:b0:2eb:87af:ab50 with SMTP id
 h21-20020ac85855000000b002eb87afab50mr1822539qth.406.1650103508262; 
 Sat, 16 Apr 2022 03:05:08 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 n22-20020ac85b56000000b002f1d7a2867dsm4263188qtw.67.2022.04.16.03.05.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 03:05:08 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 4/4] arm64: dts: rockchip: enable pcie controller on
 quartz64-a
Date: Sat, 16 Apr 2022 06:05:02 -0400
Message-Id: <20220416100502.627289-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416100502.627289-1-pgwipeout@gmail.com>
References: <20220416100502.627289-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_030510_592914_D2F35983 
X-CRM114-Status: GOOD (  10.46  )
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
