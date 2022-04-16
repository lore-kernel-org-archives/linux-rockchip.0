Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B46BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 11:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvQJ2zQLCEYUqGw1Y6Txp5HQldQEL/+FfVLUdvCYBXQ=; b=eYmUKNbCgFBzV3
	Ehuo1NOkzwZF2oDawLUIkGan8oqU2mBTRf9vn7tNWcJ0FVQsZuMNPJNoaUL28pU49d57G7a74+OR2
	DdvO5jmzBkeiuRFc5h5fMoZ/3SQkZgY97RCnL3JS6qZHxvl7UIL08/yBaNy1/qogYIfatTJtofTiD
	MXoXPZFbIladr8Wbb8pYQF8rMoE6NxkCmEuWANI5BfXiAavjtRaQsdNNZDz+vAVS6uATXAzANMQLo
	VGbCEaymA1u8sLqf464dFgN4F3Zs9P9TWOis9E6SJgktM54bWdu1faEwW7NO59v0DVm6N3FbdZRLA
	YXT+VgeVmOhOsSKu4fHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfgFe-00Cng4-7Y; Sat, 16 Apr 2022 11:06:02 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfgEu-00CnI4-7C; Sat, 16 Apr 2022 11:05:20 +0000
Received: by mail-qk1-x736.google.com with SMTP id b68so3394402qkc.4;
 Sat, 16 Apr 2022 04:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=Ay1l2u7NSquF+9PFgxtbeBqNLhrl/1lHtqjekfmK+9qQ/SzNzdamOekZ0caVKln0z9
 GEWVMDqegY3wwkydYjmptujbX7Xomb9wkwHuDaH+i9bwlKhnr6VAKR0dFP5GIlbhjqbt
 JWM0zCBy8cF/YHITuVC7cU2pH5pC3Kojg7wLJf3scsmrGUimgssZ5bE0CeR02TqF4sVk
 pyH/jQoA1B0pG/DLmymtXOuPJaSK1MGmV8rQsukr5eFkGMcJ0xJmbqWHuOrzFWw3Ld99
 yPRbBFr6DkgV5xZBbab+kqen3JiTg0qyRNl8Gcc9YoQ8PJfjuCkdihuwQlFQyijn/NHs
 K6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=p5UbUE4W8sJU3KKLTfgiqQAobsG2X5CavDQoBouqLc+RqzABcQqm/sUDNO9viwf2qb
 QVYrf20w9mU30K3OiOihDFvbeYMvPCd01JCHfV4/xmb4yr6Bd3ZlPQHJNFlQ0pgKwsbR
 /RrN13SwS+lVpx/756rQTwkuVBk0H3e+hVAFyCUlG6di0RHKAX6co/AYxP9bL2LYJTw4
 MZ4Rg1zIYzEhR9eSqLjwXor3vqHHuZksgmoa7lWSGqasmF43oh6AHrJb5xKjZOX+1QwB
 /1ci301rJXn1IUhh/QWg9pTEBTXj6kMkTd/IFfkhx5QCZuMQeGj3DXHyks+htcbFcjuh
 hFyQ==
X-Gm-Message-State: AOAM531UtZ3n7pisH8Gw1vCjRM8pcUNZh/EBOq/iJFQK8rdqIh93txKY
 d7k1r7ajBsS7MIjVfZJMHKE=
X-Google-Smtp-Source: ABdhPJxmwpn+eW8bdaz975hRwX2JS+73deqtcOTIOVPwSnY4StdJw+G5r+6cVfuDeQ6dNs7KIKgE9Q==
X-Received: by 2002:a37:ba45:0:b0:69b:e728:34b7 with SMTP id
 k66-20020a37ba45000000b0069be72834b7mr1656171qkf.606.1650107114886; 
 Sat, 16 Apr 2022 04:05:14 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 w6-20020a05622a190600b002f1f91ad3e7sm97026qtc.22.2022.04.16.04.05.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 04:05:14 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 4/4] arm64: dts: rockchip: enable pcie controller on
 quartz64-a
Date: Sat, 16 Apr 2022 07:05:06 -0400
Message-Id: <20220416110507.642398-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416110507.642398-1-pgwipeout@gmail.com>
References: <20220416110507.642398-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_040516_321303_CEC9E700 
X-CRM114-Status: GOOD (  10.35  )
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
