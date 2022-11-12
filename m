Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6DD3C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 16:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlJn9AonzfcxBW2lDgmJ4T6iuRphgbs1aY3RNKDPkQw=; b=0yFU1+poawV2YR
	RI+e2Yp0JzXUFhQiXnAazWGLDX9etgQhY3O4kI3HV9dOyO1Wn338/swsHrfWTzFRkrQoLvkhvLrLs
	sgDM9aZ+HUyZvMy2GcWJSP6hGQ73rj+XAZnEsMc6ZeHN7h1z7Q42wil3Uoa8n3yO6+pEU4vBa5SPz
	X0MH6J3n6UJVUQnTn42IM2KhZCeX2g1ydYnNbXWFgJS5oiPeIUhaVQbXguLFseQvzgm19kR2eM7dx
	zZivXFenpk8PPOmsAw9BgjQ+RTpH2PGxoBCa2LVEHapHLoPEIrlfiMe/StJSh7ImqOGa2yV/gN47u
	Te2pPYw2W3aPOWD6dqwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ott0f-006dMK-FC; Sat, 12 Nov 2022 16:05:33 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otszi-006cl0-CL; Sat, 12 Nov 2022 16:04:35 +0000
Received: by mail-wr1-x434.google.com with SMTP id y16so10154194wrt.12;
        Sat, 12 Nov 2022 08:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oJ27VAZylslPL3euOsLLalZQXH6wtWYg2Z/Is/uMUw0=;
        b=HKKk23/nYx4DzhMOBDXtEJ3NKcPfdpwCTM3sBx8NmGDUwGFSQeFAq6goYAq8CgtD2H
         Woq/th/pi/l9XsIFlLg2yV7Z+aDEQ+4OpMx9Z6Tnbu+QrSqubiPGyo7w3IzX9rsCdC4d
         TCssYdAC1rlqCk0+DkL9k7x2tFd2PPo4l0/q8nj8AR8oXUWC4VA4lJxTApV1GIHe6IOj
         /U6oHgDf593VFuHct8gBMk6JoXAeICQSVOLXAM+gu1zOm9BdKPJELZC/hfJ5hHUhTxXO
         wmVBqSKQtmONK4g5+EVlk/hvJ5x7nab4ZZBs3Nt/bWa+x1o0iXJ2X7RF1RPjsElLf6Nr
         m8zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oJ27VAZylslPL3euOsLLalZQXH6wtWYg2Z/Is/uMUw0=;
        b=1M9fVTjmUkCFD8DBc4eiCcU/pDqClodaZRstjTkbxsbAycR8ZeoVXpJP80W1kKdl29
         5DjB0xhl/cjo6zon7uR1wcmh5LEsYyr8vemgkMZcxatjegiDZOEf6qS3JSLHNY+SHXM3
         etjYktP6FdtbmWxqPPB0qIVwns5rp0EykzBO3FnXc9EaAW1J815etMo035WiIVx/XgdT
         t5VGV04qEEefBNa9+Ai2YZ5C+FQr2sfv6pZ+bO5/657gNBR5pSSjEkL0H7TRj9RBr9bd
         fZ28L5zGd8LGDntf+96jy9CEdsEWrIglZ24Sh1TjBowbJ/W23zS4OKuRSS8A6EKbncV7
         xkfw==
X-Gm-Message-State: ANoB5pnNmtJ70lJZcYpcFW0SfX3DEB/KACAiEFEgYqyTuFCslu5mEQix
	MsoMsRznwSt+jRuGgSIN1lw=
X-Google-Smtp-Source: AA0mqf4LLDY4KIu9pV27y1Mc+ZPFwpD7rdhFe1DVUzoLHJLMxxyOLvmhrL7M3GBqWzoOAhHTrlBGEQ==
X-Received: by 2002:a5d:4f05:0:b0:241:8103:766d with SMTP id c5-20020a5d4f05000000b002418103766dmr911326wru.386.1668269072512;
        Sat, 12 Nov 2022 08:04:32 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id iv16-20020a05600c549000b003cf87623c16sm14605752wmb.4.2022.11.12.08.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 08:04:32 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] arm64: dts: rockchip: Enable PCIe 2 on SOQuartz CM4IO
Date: Sat, 12 Nov 2022 17:04:01 +0100
Message-Id: <20221112160404.70868-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
References: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_080434_476571_7BBAB329 
X-CRM114-Status: GOOD (  11.60  )
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

This patch enables the PCIe2 on the CM4IO board when paired with
a SOQuartz CM4 System-on-Module board. combphy2 also needs to be
enabled in this case to make the PHY work for this.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts     | 11 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 15 +++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
index e00568a6be5c..263ce40770dd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
@@ -30,6 +30,12 @@ vcc_5v: vcc-5v-regulator {
 	};
 };
 
+/* phy for pcie */
+&combphy2 {
+	phy-supply = <&vcc3v3_sys>;
+	status = "okay";
+};
+
 &gmac1 {
 	status = "okay";
 };
@@ -105,6 +111,11 @@ &led_work {
 	status = "okay";
 };
 
+&pcie2x1 {
+	vpcie3v3-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
 &rgmii_phy1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 1b975822effa..ce7165d7f1a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -487,6 +487,12 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
@@ -512,6 +518,15 @@ diy_led_enable_h: diy-led-enable-h {
 		};
 	};
 
+	pcie {
+		pcie_clkreq_h: pcie-clkreq-h {
+			rockchip,pins = <1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
