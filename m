Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 529AAC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 03:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EhwM4iEUQ0++NYAQqy5oihcV/E2qt4Bx22MGs/vCnis=; b=nW4+G1iShNeSX3
	Ac9nNoVH3bY9d2GzK/y0RNOwnE+Po/IXIE7RK/YG1Q/dIcAl93jkWPxdKxqzyfkv9wjR83qKRXLoq
	huyXQVmW73SqjCn8pltcedKwx9AEbDu9SeMOjrj8hpCc82rB5YUDn1kKVRZqd5oMVGoHXvoBqrcsj
	32J52Bfs/eh1SZID/26fSHed1SR7KdjQV1h7Fye0do9t4xsrcANPh49pEm5JPVf3uDLbh6sfVQ6N+
	lca7x85e7WE7A4qlpFVsIhd+y2WTisPtl86rmMsFuB7uLg5TCgpYIP99DRw6KIVIcX1P8m5qIlMvF
	KsMe/abdWLu6RrooH7Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neU7t-00Ge14-Uq; Wed, 13 Apr 2022 03:57:05 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neU7A-00GddU-II; Wed, 13 Apr 2022 03:56:23 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 7E8CD5C0219;
 Tue, 12 Apr 2022 23:56:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Tue, 12 Apr 2022 23:56:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649822179; x=1649908579; bh=Fp
 hEGeu2TKs5vrPfK6f45SzuLyN0QBXdvH1zTwhivJo=; b=baW0b+RpuNN2H2Vxi1
 MMXpw+XcqM1AgkazBgfVkZRH9ktKe+N5FE7XeC6QmyQS0I9WEq5xm+UIw0dbU1nL
 da4P7mBqCmCFgXxz6lVDcVSLJ17t3cW/wIl2ReOP64hrMPl8EjkcRy6Yef+fGBwg
 o49/Oj0vHLzv9T5h3DtK28MbjHY3q9gHOge2SJPQLhZEUb2ciaTCY2wUlXFBNKYR
 XZopA10DQyLLVnXTCtOuXbxyRpdq282+/7coM0Vsd9my9O4CnS+avvv2wjXiu1Pc
 w8dtxapyWRAeVb7fJI4+mb6pTDUEnoJqiAnMqe8T4w3YI6g+VC/9yYqjmNJiiprT
 qD5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649822179; x=1649908579; bh=FphEGeu2TKs5vrPfK6f45SzuLyN0QBXdvH1
 zTwhivJo=; b=OrzQU1+t/IQ4ke5pVMjODv71ZUVAmqgKqvBNR+Wt1JA0fU24j49
 yZozH6FvFa0IX4nIQKZD/s7yt0Fh7D0ABvslJqHZ2f6/a8lZbE/nRzPOa2URBueW
 AbdDuH1oENdc/zlhuws4OtDWlCbPtJX+XUHvsyDhD8+rHSIMQPJvfu2rr2vY1Oak
 POzstT2lQ4Il+mQLZl7F9Oo/dKbX2IZe4YkNu/0+E/0leHiE0b/Af0+PkkXIPJdY
 Uhw3rslX5XIqHf7FqD5IaZHaOVSFugi0XmzJPlOF40I4G2Nu+Hz7jyPa05Y9lMak
 epjGoGaxdpUKTHIc8SaxQSD14aeS9xEZ8cw==
X-ME-Sender: <xms:40lWYpJDiSXEt7WysQlbDDjtq6Z9QH5QH2U9gKeY5_Ta3kwg0nG97A>
 <xme:40lWYlINtXwSFJvfkh3hiH5lCrJuT8nC0wpHERITiVETyrQ7WtlQrWukyM7RnY11K
 mi4eVg15vJbGK3HkA>
X-ME-Received: <xmr:40lWYhuwBh4ZVKbztHIbH6_LASuoA5rcFNqCG1D9FQA3anuiBTShkx31Np1pJmfrOVZrurq8NNZuaMcu6iNGUXTeN0WU0UaoQXwc6_dez1wRNZOKLM4fevJ-l4eLqCppN3Hz_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekledgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:40lWYqap2NKEUJt1dX3UELB7Trah-pG9ux2Vz8irTslCNIHBUcdgmA>
 <xmx:40lWYgYk9wPIb_NThFm3tZy2SVRbuksyPOoOtaN7yBJHr1VG8havkw>
 <xmx:40lWYuBWBqXiegJXWpjZnBT7PYHgreZVp6OApiNdnV9-2z3tgJvEfw>
 <xmx:40lWYlOx9qPtDW69LBwZttykHQoYNAmQnh1wUrIQtqiPo8TDwhUbGQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 12 Apr 2022 23:56:18 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Samuel Holland <samuel@sholland.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: pinenote: Add USB and TCPC
Date: Tue, 12 Apr 2022 22:56:14 -0500
Message-Id: <20220413035614.31045-3-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413035614.31045-1-samuel@sholland.org>
References: <20220413035614.31045-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_205621_129331_16896E0E 
X-CRM114-Status: GOOD (  10.25  )
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

PineNote has a USB Type-C port connected to the first USB 2.0 OTG PHY
and XHCI controller via a Willsemi WUSB3801 Type-C port controller.
Add support for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 .../boot/dts/rockchip/rk3566-pinenote.dtsi    | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index adc0e7d39fb3..e01668e6e5f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -466,6 +466,39 @@ led@1 {
 			default-brightness = <0>;
 		};
 	};
+
+	wusb3801: tcpc@60 {
+		compatible = "willsemi,wusb3801";
+		reg = <0x60>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA4 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&tcpc_int_l>;
+		pinctrl-names = "default";
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			vbus-supply = <&otg_switch>;
+			power-role = "dual";
+			try-power-role = "sink";
+			data-role = "dual";
+			typec-power-opmode = "default";
+			pd-disable;
+
+			ports {
+				#address-cells = <0x1>;
+				#size-cells = <0x0>;
+
+				port@0 {
+					reg = <0x0>;
+
+					typec_hs_usb2phy0: endpoint {
+						remote-endpoint = <&usb2phy0_typec_hs>;
+					};
+				};
+			};
+		};
+	};
 };
 
 &i2c5 {
@@ -572,6 +605,12 @@ wifi_enable_h: wifi-enable-h {
 		};
 	};
 
+	tcpc {
+		tcpc_int_l: tcpc-int-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	vcc-wl {
 		vcc_wl_pin: vcc-wl-pin {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -659,3 +698,22 @@ bluetooth {
 &uart2 {
 	status = "okay";
 };
+
+&usb_host0_xhci {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	status = "okay";
+
+	port {
+		usb2phy0_typec_hs: endpoint {
+			remote-endpoint = <&typec_hs_usb2phy0>;
+		};
+	};
+};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
