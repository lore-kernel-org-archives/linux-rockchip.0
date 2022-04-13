Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21FB8C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 13:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvQJ2zQLCEYUqGw1Y6Txp5HQldQEL/+FfVLUdvCYBXQ=; b=fOl5x93OBD7mmi
	jdZQNOO7ZrrjXlKRB32nZjT5GxFfZr7XThGUMLWyUJVc5oBcvGPV0KE6DniflTqsaJDiQbdFxfrP2
	JXtCXXwy7/Q96+NULFfUS6KIQEdeKyX4bXUPxjeuJdiiLhTIwmwLB1K41J84Se+7l+3D9GL+YOZ00
	H/ijfHdt5cWlitYnWzsjNnlz1Xw9GYeB2LZo26eW6DTiuLuKT1k31XzkdyudSP5K2bqFAlNpfiot4
	QrK3eB80tgZllUlaDDU8nXUB7g5xIjnhxsY/AWechwImNLkVPtVz8eWP+aNu5PLSBzH15q4XekjN/
	pe48qPhjfAlel6NooHNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nedCO-001CSV-9i; Wed, 13 Apr 2022 13:38:20 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nedCB-001CLK-KC; Wed, 13 Apr 2022 13:38:09 +0000
Received: by mail-qv1-xf29.google.com with SMTP id i14so1567100qvk.13;
 Wed, 13 Apr 2022 06:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=QVWku54j+UAXoEMpnZ1vv7gQuCMEln37OGTReSXY+KDFySd2yXriskDocWaYYDoi16
 R1DEchhdtrw58TIj16nF4Dake/0VNdzRAcLysRzLCKefxLPM+NTyY1AnatI3Z8J6kf6P
 nzAdeh7SEeO5UvvljFB+hk7xxCTMbx6F15dTzaYRd9NzML2taBWSDbEao2JJ2VQxwufs
 +sq/41Pb95oMjpJ11dOfj9VP7pD4a21gDC7qdQIEYIPfyUQwAzWOWkE1AMOmowxi0lPh
 FSUGLYWqw6tZQDkzeuReqlLMOoqQUaRqXJx1vlfO71j0EoccWOCwE6Cu8pOSnqBKDcaL
 lGVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=b/ZL24DUwrAaxfG/q+EJ+tw+So6YnwaIvsJc/7J6iaMXog4XMDD5S83oxgaW4MQLU6
 XWurjHNSeaHwgR7qrYALv2lclq2t2vJh9j5I6HHHC0SlYhmPeUVoKJs02aLEmVXKPiHJ
 QOtomTdWiF5i866varZzljV5YH+18Q8wQuX05oPv3OdlZaNRVw8bvuMqu9XkRp5RbOY4
 dVI8qUB4/gSD6KHtlnNUyqrReTGsDGA71Y78BidGiGz442h7crQpcKsoBvevxVnbX53K
 oigT1U6/DHxF95pz/iztr1CshhZSVy656FWGWqZ+zFzhRu821ehv5sPOGYqF3eDp2Fbn
 j1PA==
X-Gm-Message-State: AOAM531MC8DhXqXeQRBjzcHZsA2pZBBf+2DgE8zxM8za/Mm4wDQ4pYSo
 sV8axjM63Zrl4Kx4+6I7HhY=
X-Google-Smtp-Source: ABdhPJxvhXF0hMoO3IPsR9ctAISTuf1qYFUU0vcqTreM1lIvwx2wqzJSVw45r9E3LRkANSxrLVws9Q==
X-Received: by 2002:a05:6214:e4f:b0:442:88d4:ecc0 with SMTP id
 o15-20020a0562140e4f00b0044288d4ecc0mr35807143qvc.47.1649857082566; 
 Wed, 13 Apr 2022 06:38:02 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 143-20020a370795000000b0069c59e1b8eesm790584qkh.10.2022.04.13.06.38.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 06:38:02 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: rockchip: enable pcie controller on
 quartz64-a
Date: Wed, 13 Apr 2022 09:37:31 -0400
Message-Id: <20220413133731.242870-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413133731.242870-1-pgwipeout@gmail.com>
References: <20220413133731.242870-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_063807_688901_1F73997B 
X-CRM114-Status: GOOD (  10.93  )
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
