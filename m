Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07355C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 18:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvQJ2zQLCEYUqGw1Y6Txp5HQldQEL/+FfVLUdvCYBXQ=; b=qOzVevVPZJmoix
	FA3uEntFJDVJXLXS3jxaiIMFc7tWllM/ibc9/TLRArMojhJsRtMg+YtyC8OSUgy6OnHEEBBthKWl0
	s3sQ5+PPoxLsVm/4TmBF1pbDmTbbCuU4hWV05cIxb8DkRjc8TLFwGendXF2Gjh6PtS7qCs2Iep/av
	5okxdV7BsR7mBIUFgnrEmFwSCA+cIQxqohfRIgiKLGFKGSgEoOpBOnORE0EJZYueqAHO+uydMj7U5
	FOiMHVj4sFDwSjDgK+RYB7IUX8Dkf++U4r7pqpWHT05cSh04NwndVo0X70cOf18LpMf3cuXsNAS05
	sBMEYj7wb+aDdt/VGRJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neLj2-00FVg5-TN; Tue, 12 Apr 2022 18:58:52 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neLiI-00FV8l-Pn; Tue, 12 Apr 2022 18:58:08 +0000
Received: by mail-qk1-x72d.google.com with SMTP id bk12so14504114qkb.7;
 Tue, 12 Apr 2022 11:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=RcOBcyge8gEW8ksmv2HQErR8WAWybEJlUOFbo4QaXLgFpzSWCcz2HpLldyWyZDRf/o
 4B/GiE31GGs4G7a8Tvr6WpiA44ufpBHoxkDmEKFkUXTiW3JmPk5t61JYhhtWm27CeSI3
 UXO+4I9SFy5OdzF1sA7ljZjoxhBKT8HU0XJ08BrG2+dxkUjMpH19yhQlQmPbHhY2Vstd
 u/R74B8Bg80QFdaG2tQCvKVAY9yFZ31j2556dzztumPjttg3AP1GSRWHjxivFGIocohz
 q9sR9FxtFR5PQV8hgAbfHsM1cUtzj0W2c+IyfNckz4qBkRqfDMoH9k8JOjZFOnJSiw/2
 UetA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=iMnrBGFieTn6f23P89VcW5BlGPhHmO3yMy+tj1t0oColhYq1Lm28r/UxGAOSa1tJlz
 15Fc43chjiz/v5NVCjuSXs7H5NbvPLlb69n9qG7FnGh8CKF/ZimtgbMh0DETs5ZJcGdi
 RY6ZwSkhY2KWJojagpU6ALLm0fcA36bv773D5450PYoqIFgWcqBKB6ehHS3hdWJc7w/i
 Dk6TNzsLXPCx7iHJrnHCtdpyfGbdYxiJxDudVf8ut2seAqG3kt8AqPjCbODM3st0twl8
 WlpdO6vqyHsJmJSNnLM5SCD2PHxdzEml7Kfj1/mneS+IV8hmQ0Xo/KXZNVy9k0k6iR4J
 Wm8w==
X-Gm-Message-State: AOAM5311LJrl5c5klbb0R4wThgKCEJns6zLVHV96ytOWb7agN6og3UVe
 RdGQgctuDAY9uYVNFkNfvLE=
X-Google-Smtp-Source: ABdhPJyYQ0Cq+V1iYlc6ojDyOm4DcmTLilZwXR3xUcUPCgObjvW2mTuJxmGVy++nUaOzCscfbpTHpA==
X-Received: by 2002:a37:6004:0:b0:69b:dd65:3f36 with SMTP id
 u4-20020a376004000000b0069bdd653f36mr4238319qkb.487.1649789883614; 
 Tue, 12 Apr 2022 11:58:03 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d18-20020a05622a05d200b002f07ed88a54sm1820610qtb.46.2022.04.12.11.58.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 11:58:03 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 4/4] arm64: dts: rockchip: enable pcie controller on
 quartz64-a
Date: Tue, 12 Apr 2022 14:57:51 -0400
Message-Id: <20220412185751.124783-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220412185751.124783-1-pgwipeout@gmail.com>
References: <20220412185751.124783-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_115806_911906_CB499E68 
X-CRM114-Status: GOOD (  11.32  )
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
