Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B394EC32771
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 06:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PFF16Wf9J/cPv76ZyvT3xtqVg65ahpVSlPxItQ5EqE4=; b=CrBA6HXQUbHyCA
	PaBPOwW5dJwipHG1sBvPo923553qra55K4Rm6WAZc9yuNJJxuVpa2U3yzji1R8afOFOULhsIDF8en
	nE+vUquXaEuyKjAQXq4LFj7zpu7JlImbC6bvUvQ3aQEQU4C33mepI92MvGz0NWzXQgE5pM3Lq3/ND
	VD6IZocHgcNXAnpvkFAVo5b86B9qxGi0Zx19hn9CFMzGdY4JwEsT8VcNz15ALNnzDFvZQSu7nKvaL
	P1HSvddJ+I0vwWW7l6D0I39Rjd5fPyky9KmFAklIRvIKlI9CmbRszfcGlRfqGlDnACGXWNopizZRF
	uYD+WAeXpYgFbQKYv4fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochOB-002FRp-Jr; Mon, 26 Sep 2022 06:14:47 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochO0-002FPG-1Z; Mon, 26 Sep 2022 06:14:37 +0000
Received: by mail-pj1-x102a.google.com with SMTP id y11so5299585pjv.4;
        Sun, 25 Sep 2022 23:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=u3nLpVSXowX3rY5mvFDQyFHEVz4RbjCN/EeC9CxVEXM=;
        b=O9Zb6TVedGugUuBPEOt6OtmTc70TTgWKuLyN/hBmRD+4cipFAJbJvhD4CdAf16lbqt
         PqwSJ9dCutiUj9JxDPyPVEGcul+PTFXxiHgP5jo+z6SHqrAbHjy40ioZZnJTwOu+55TP
         AEX/NCiynyE3sTkzBVzJOuPlNZ7+nLIyB8CA/m+acq6FApFFq6dd5NkWiJZjr5dUKyYT
         L4LxLEYabc+llQb3IP+d7fTO67WxOpoaQ84ctYWzRGIlcw1JwwuUAOqFhO03zcJ5pBM3
         tO3F03eMztS3Pu7E1oLEhq3GGMSQ0ERB/Z6bdCMR5xV5eh/ccZI8VLbpH8fSJXyNU3zK
         x21g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=u3nLpVSXowX3rY5mvFDQyFHEVz4RbjCN/EeC9CxVEXM=;
        b=1i+tsPWRNBDTrydmyPa0wwglSlpdM4lCJDiwuUk2++2xNyVtNt3rdQ6ARc2zi3qBno
         /2BtUyVvogSA4dbAmoRqzFtVOuPlKpacmse6WD+k55lDiUJX43DyPTQtZ4GRLl8C+4Wn
         pJ57CpB1itDRmiO6ht8w6X91k7Fr02hgk8JakvZd6nsUmnxyWpP1U0h7w3HERV28d+5Q
         YghtF4FgMv3S4pR9aNp6THJgWH43ggkFCOcwiihdohrjSv0vWlIcw4DtNRnMzW8eZ4/b
         nU7YO7W4v3Ec/UQp2W5B0etOOqmTpKocuq98VQ+zylVNKWS2jhf9/Tvk1+fc5KdMnCEl
         vmeQ==
X-Gm-Message-State: ACrzQf1Gc8HCa+cUTMbupHgUznMIEYdNiR6l2qCqUlE0IyzWbdAyqPhE
	3pr18dKzhs4zQF0P5H7OjHM=
X-Google-Smtp-Source: AMsMyM7EF5wCkipmmB9Gze2hm8udmEMzaxKg4BnwW746W1XwJL3Y3DSUNK2yI4uKAjKtS2ZcjeBF4Q==
X-Received: by 2002:a17:90a:a09:b0:202:ab93:2afb with SMTP id o9-20020a17090a0a0900b00202ab932afbmr34175863pjo.60.1664172873343;
        Sun, 25 Sep 2022 23:14:33 -0700 (PDT)
Received: from archl-hc1t.. ([103.51.72.15])
        by smtp.gmail.com with ESMTPSA id l10-20020a170903120a00b0016f196209c9sm10479191plh.123.2022.09.25.23.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Sep 2022 23:14:32 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH-next v1] arm64: dts: rockchip: Enable NVM Express PCIe controller on rock3a
Date: Mon, 26 Sep 2022 06:14:18 +0000
Message-Id: <20220926061420.1248-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_231436_123942_19180F9E 
X-CRM114-Status: GOOD (  11.82  )
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

Add the nodes to enable the NVM Express PCIe controller on the
Radxa ROCK3 Model A board.

Cc: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
alarm@rock-3a:~$ lspci
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3568 Remote Signal Processor (rev 01)
0002:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3568 Remote Signal Processor (rev 01)
0002:01:00.0 Non-Volatile memory controller: Micron/Crucial Technology P2 NVMe PCIe SSD (rev 01)
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index fb87a168fe96..44d85ee1631e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -79,6 +79,26 @@ vcc3v3_pcie: vcc3v3-pcie-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	/* pi6c pcie clock generator feeds both ports */
+	vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pi6c_03";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <200000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	pcie30_3v3: gpio-regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "pcie30_3v3";
+		regulator-min-microvolt = <100000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		gpios-states = <0x1>;
+		states = <100000 0x0>, <3300000 0x1>;
+	};
+
 	vcc3v3_sys: vcc3v3-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_sys";
@@ -546,6 +566,22 @@ &pcie2x1 {
 	status = "okay";
 };
 
+&pcie30phy {
+	data-lanes = <0 1 2 3>;
+	phy-supply = <&vcc3v3_pi6c_03>;
+	status = "okay";
+};
+
+&pcie3x2 {
+	/* mPCIe slot */
+	num-lanes = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x2m1_pins>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&pcie30_3v3>;
+	status = "okay";
+};
+
 &pinctrl {
 	cam {
 		vcc_cam_en: vcc_cam_en {
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
