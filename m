Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEE64C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 11:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAC854EYmDCyHwe11cFBJMjLODGwqx/hqb6XsH4vUYw=; b=BPqOPJnQTNQCLR
	2q5dBWXiw5ZLOEEh6MGNTg80FPNiZtpj5biFLouYuZ0WShETVVCFJBYhm5XO5XAUcCZjW+EAGDfXJ
	eeDIXeEA+pXBizST9g+WleBtHYw9af5pL0J2SdQLCLF8/PlrWsHgrEo3A4ngX81sxJK8AHxwzUhm/
	CmHSb0GVbWRXifhdgaSFqESUm2za3aukAAdi4lvG6WOf6k9vjNXOT+maTuuIIIEILftzdHNtq3hyh
	XNNSQi2OsUx/Uf0pImzcgI0YX2UqZqa2JEOMO/yVLhAtCrAyTGiHKxoyyrJrI/mcGrcxSciCruKfT
	GK75+nVcFB6dAktj57Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd9Ay-002wBs-7H; Sat, 09 Apr 2022 11:22:44 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd9Ae-002w5S-6x; Sat, 09 Apr 2022 11:22:25 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout1.routing.net (Postfix) with ESMTP id 7DBE84018C;
 Sat,  9 Apr 2022 11:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1649503341;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zkq2bxwItwV7ZiHOcxMVzv2QIp4bSzwtr06iHqBY/+8=;
 b=OCbIGhjXabYctSBypkAOTJZpyaF+90eN2v56qcUDbfhzEY8KniJ5tZ1H0e7ArFlAROPfZY
 Qp7mnzSr+OpXmFm5HZBdnpCwnRn99+KoHroP0CI4rhY3Wjx5FpS860XavfJ4GZoRbAZBRC
 rqUs/AYoW9bTAyWjEQjVqEYXbBXJ3/Y=
Received: from localhost.localdomain (fttx-pool-217.61.154.105.bambit.de
 [217.61.154.105])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id CAD2A36062E;
 Sat,  9 Apr 2022 11:22:20 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: Add USB nodes for BPI-R2-Pro
Date: Sat,  9 Apr 2022 13:21:35 +0200
Message-Id: <20220409112136.164481-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220409112136.164481-1-linux@fw-web.de>
References: <20220409112136.164481-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: dcb0c52c-8a9b-4f7d-8fa3-639cbd8b5ded
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_042224_416415_170C8D9D 
X-CRM114-Status: GOOD (  10.09  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add usb2 nodes to Bananapi R2 Pro board

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 067fe4a6b178..879557595a64 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -73,6 +73,50 @@ vcc5v0_sys: vcc5v0-sys {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&dc_12v>;
 	};
+
+	vcc5v0_usb: vcc5v0_usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc5v0_usb_host: vcc5v0-usb-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_host_en>;
+		regulator-name = "vcc5v0_usb_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	vcc5v0_usb_otg: vcc5v0-usb-otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_otg_en>;
+		regulator-name = "vcc5v0_usb_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+};
+
+&combphy0 {
+	/* used for USB3 */
+	status = "okay";
+};
+
+&combphy1 {
+	/* used for USB3 */
+	status = "okay";
 };
 
 &gmac0 {
@@ -368,6 +412,16 @@ pmic_int: pmic_int {
 				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
+
+	usb {
+		vcc5v0_usb_host_en: vcc5v0_usb_host_en {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -485,3 +539,42 @@ &uart9 {
 	pinctrl-0 = <&uart9m1_xfer>;
 	status = "disabled";
 };
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
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
+
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	phy-supply = <&vcc5v0_usb_otg>;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
