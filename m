Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB95FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ll0qbP8C2e9u+G6yDkxlvTaWpwR501szn+mGuvxKRiY=; b=Zv4tdrf1jQ+dce
	QCE6O70bSBVfNGroZcOVkxjZSvLp4dzOFus4w3OtOYoY1kqtHcYc03a1trKpR8LaVvq285Y7N9HEV
	o1kR0Qe5PVWlkGoGVbh/3+ClP56t/LdxeP8vgCS2Wrrxs+/FLbaSdrGn/CYYSBSAYr2C/xm83Fv/I
	8rKoRg6EuAIr/qMLjXYIXKEjpf0sIVvQwA55gRRL1qwCpKioFXOxJSRCgB/CvtK61jJWxEQJRtvzM
	l6X0osCJozi6i/WI0HA43ZHFj4twB8mRh1ZWniENingJ94PUtL4Mo99mzmYZY2NOrp84jmSYiw6Gs
	hglCkaqfraKXg5eFMCRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbTd-002kIW-Ej; Wed, 15 Dec 2021 21:06:17 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbQc-002ibG-4M; Wed, 15 Dec 2021 21:03:11 +0000
Received: by mail-qk1-x730.google.com with SMTP id m192so21403486qke.2;
 Wed, 15 Dec 2021 13:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eZzjv6PEcKc8tKRxH0kjZUoCXyO3M8rdYy6VBQjMZIk=;
 b=j/cbQ7ZkNwbCC4EnPjBRyMUYWeEcRvj1dQ2i+c2ancEl6Kw5PCtNOXjz2wR25eyXoY
 WBKYz6vds2J4v7pSSAx6xqfGLhUvuHYBa/KeVHXlsNIJTiCDY6Y2nkFV+m7Rn9RfhEt1
 Y0E/bkmZZdY9mMpZTM0fNEaywocnxf4FmSm11UOnBBKLFGhm7FzI4YsePYARb5mxAibk
 ueujdVekwICe6DthNPzT42QAWB8mlhY1Yxik6i2ugk65ALKVM3skLDsiael+IF023Evo
 ncHq2G0b7HOiETEHH/GpbL52PtuxqsC6Y860j3jIezesYi525qkx/hYDA77Ukra6HiHp
 U1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eZzjv6PEcKc8tKRxH0kjZUoCXyO3M8rdYy6VBQjMZIk=;
 b=2ht9G2rBJ1+yEJ85JRCPbEs597k/Gd45XKrRIMfr46P0NIZrgIPEpWxse9QIHcT/iZ
 X2usbYV90qTAlsQMG4dzQRylMu8W8hG8BFSsmYqgr29JVwlVqYLo9+XLXm1B7ag2wzgE
 KtJ1DPW8lWlmgv7kVyARfQl4mEqB8kynDlIfwKcFwaJwz0RuwPvMCIV2tX+LuqHGf9+7
 V4zPlPfEUXhUkzXaXQozuOhc3sLhp1AM5UrEZ8KaKq5BDNKyP5LQ6CMucOsIhKklshMl
 ni53deX9CS0Kc9SFm6YEnfPmbbAeuuYuNLFrUYGiOZ4BCN6B41SCpKqqxEUdTr4sDeKO
 sKRA==
X-Gm-Message-State: AOAM5312qA0YVGJR602qnNzM1+yqsm+5JNid62H0s1CvtDLaZgcbP8w/
 SZttYLnMmsyBYwn9rbCJgzs=
X-Google-Smtp-Source: ABdhPJzR1emnZ2WdfeP0+0vXOW/jlCE4yfiLz/eq6GEZ9SkRx5xm+EuQbaRIYJbqmRQAUnEFLhHvtA==
X-Received: by 2002:a05:620a:1253:: with SMTP id
 a19mr10174631qkl.293.1639602188652; 
 Wed, 15 Dec 2021 13:03:08 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id a20sm1644356qkh.63.2021.12.15.13.03.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:03:08 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 8/8] arm64: dts: rockchip: add Quartz64-A usb2 support
Date: Wed, 15 Dec 2021 16:02:52 -0500
Message-Id: <20211215210252.120923-9-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215210252.120923-1-pgwipeout@gmail.com>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_130310_207934_1B0901BB 
X-CRM114-Status: GOOD (  11.51  )
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

Add the nodes and regulators to enable usb2 support on the Quartz64
Model A.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 4d4b2a301b1a..e5a70ff4e920 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -124,6 +124,22 @@ vcc5v0_usb: vcc5v0_usb {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	/* all four ports are controlled by one gpio
+	 * the host ports are sourced from vcc5v0_usb
+	 * the otg port is sourced from vcc5v0_midu
+	 */
+	vcc5v0_usb20_host: vcc5v0_usb20_host {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb20_host";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb20_host_en>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
 	vcc3v3_sd: vcc3v3_sd {
 		compatible = "regulator-fixed";
 		enable-active-low;
@@ -477,6 +493,12 @@ pmic_int_l: pmic-int-l {
 		};
 	};
 
+	usb2 {
+		vcc5v0_usb20_host_en: vcc5v0-usb20-host-en {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	vcc_sd {
 		vcc_sd_h: vcc-sd-h {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -546,3 +568,33 @@ bluetooth {
 &uart2 {
 	status = "okay";
 };
+
+&u2phy1_host {
+	phy-supply = <&vcc5v0_usb20_host>;
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v0_usb20_host>;
+	status = "okay";
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
