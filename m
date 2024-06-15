Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB09C27C6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 03:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiZ7DNWGJXh6mdhGyZT/DabZ9qlkmaS/MGzZ+T0wBkE=; b=HEiD7axw3Aq3+o
	AMmStVo4u/SPYmYpeZ4iV9oOMIpzpQ5kCTbNWa5Bk3H8y5gqRw1CGiBEv07ZADXFiNZMvA3osRHr2
	TGj03rLEZqsHcGganwyvdCZICgo7CPIk0Us6EqR6zBMASVTu65wTsMHsd3SKfgVlEDFgZdqjGdN13
	/gzHf2PJ+d1tr2/QikbW5dW49uzGXm1jC4m7VOu2GINmR+5co00GTwlKJB1S6Yy2eO+XJUo5TMdpB
	s5zpr3lq5+Li+p0CyTSGbQ07XlMa5lmN/6zYQvaQcpYPvNLUY0T2B5UBBwlHv7xPovwB4qTHJjjhp
	j5Pry3MsxwsgkKD53Cfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIJiB-00000004XMR-26Zb;
	Sat, 15 Jun 2024 03:04:15 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIIgW-00000004RWo-1fms;
	Sat, 15 Jun 2024 01:58:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718416707;
	bh=lk/SGaXH3eWpr32pis0Vh/iqYeLju2pSXUZws1AEuts=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=xX7O7lqlEpm3V8Y+fTQ0jjcCZVt3BsOgSg/Mpcpbtx2FBJ02E0eCC7ntl8vyKmJWv
	 We6bEMBmijAKJxMQm5wa+rEbie3bWk969L9S3Ys888TCm9EMN/4QBWgQGvFrJ2FNwj
	 10fxgLq9RbQj+ijOquaYrw+ZOTZaObiI0gnm2N5asz45PssmvkokvTpHSncNCd226c
	 bFx/RgDBQ8fow5a3SFv5eKleg5H7/4JWV4TquHryVFXEdNDv2P20lYk5j5yY2BU2zd
	 aTXnNc25K6eKd0YD/Wtr0UiaTD3dADSVUiyu0MHvg8XgAjNu2uRTkJzTrrUanKM/Tt
	 s+goGcga1ZXyg==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5187E37821C7;
	Sat, 15 Jun 2024 01:58:24 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add rkvdec2 Video Decoder on rk3588(s)
Date: Fri, 14 Jun 2024 21:56:29 -0400
Message-ID: <20240615015734.1612108-4-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240615015734.1612108-1-detlev.casanova@collabora.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_185828_603853_12F82B2E 
X-CRM114-Status: GOOD (  10.39  )
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

Add the rkvdec2 Video Decoder to the RK3588s devicetree.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  4 ++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |  4 ++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 19 +++++++++++++++++++
 3 files changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c551b676860c..965322c24a65 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -503,6 +503,10 @@ &pwm1 {
 	status = "okay";
 };
 
+&rkvdec0 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index feea6b20a6bf..2828fb4c182a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -321,6 +321,10 @@ typec5v_pwren: typec5v-pwren {
 	};
 };
 
+&rkvdec0 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 0fecbf46e127..09672636dcea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -3034,6 +3034,9 @@ system_sram2: sram@ff001000 {
 		ranges = <0x0 0x0 0xff001000 0xef000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+		rkvdec0_sram: rkvdec-sram@0 {
+			reg = <0x0 0x78000>;
+		};
 	};
 
 	pinctrl: pinctrl {
@@ -3103,6 +3106,22 @@ gpio4: gpio@fec50000 {
 			#interrupt-cells = <2>;
 		};
 	};
+
+	rkvdec0: video-decoder@fdc38100 {
+		compatible = "rockchip,rk3588-vdec2";
+		reg = <0x0 0xfdc38100 0x0 0x500>;
+		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
+			 <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
+		clock-names = "axi", "ahb", "core",
+			      "cabac", "hevc_cabac";
+		assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
+				  <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
+		assigned-clock-rates = <800000000>, <600000000>,
+				       <600000000>, <1000000000>;
+		power-domains = <&power RK3588_PD_RKVDEC0>;
+		status = "disabled";
+	};
 };
 
 #include "rk3588s-pinctrl.dtsi"
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
