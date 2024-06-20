Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F1B7C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 14:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPvglNniXRbD/rskcSD+ZnvCFVx0HDNkHHLJhZN54UQ=; b=SyWrXewShdTvxc
	KV9YJtVs3uI4v9DgiM4tAwtlh4Re4LnqT5YPyGXK3MJJYH6LskDmnImgwqIVkN1bpX/+dH+7q8mU6
	CHSgeqY6SLKUEYHYCp17gMDsuobXsP7A/7+ggLhuBDqkKcryfk8yY0MJTX85cfl243HPbpUL6YYeq
	R3fPykNk9OjQi8QL8EMzfo05bMQbtKTB6XnuIceVRwqHhWp2DmSk49B7Vw7Pvz2vQQEg3jv8rD2zm
	gHisHlv2Sie7IjzD490SDACspPR/whvy4vXXMuYBQIqkYX/iDT0B6prJTfrWNrbTPC2rQPSB8nC4G
	5qVKIzy0QdlS2Nj3U9CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKIkq-00000005RRS-1D8O;
	Thu, 20 Jun 2024 14:27:12 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKIk5-00000005QwA-1Xhz;
	Thu, 20 Jun 2024 14:26:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718893583;
	bh=J4ZzHlMsU2GCNXR+PaXtuLPzMGTluUszmXuqmkPWX1s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hSCtGxVAqcL2jXdMLdAqo+79uJgPvFtYyvYYjSf3GAKnkPBGzVOXMnZjt4KF6UP4f
	 lA7jlIS3WpQZ+wOGbIIMT57IXHi+EZ00NPKBAFX9UzNHPrGN5CSOdIKeJ9HuJDU/LO
	 c2wHoSBg5s2UNfFBKhkYoycUqkjmp0/otfPFFh3dnWD93GFfJumWMcrPX/yp/l3qoi
	 DqQeZ2ME1kBqIpriMOzFbcaLAzds+DG/JabA39wHGzrfnxKx8QThTKv1y8qScwPWl9
	 gYFDqeA5/roM6ljkjnPzUDVofaPK3KlkmInSgACTzqYeIpGpTFP91jBEShAymECkZE
	 xIh3uhRyrq95Q==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2960837821D9;
	Thu, 20 Jun 2024 14:26:20 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Alex Bee <knaerzche@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-staging@lists.linux.dev,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Add rkvdec2 Video Decoder on rk3588(s)
Date: Thu, 20 Jun 2024 10:19:46 -0400
Message-ID: <20240620142532.406564-5-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240620142532.406564-1-detlev.casanova@collabora.com>
References: <20240620142532.406564-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_072625_750000_93ADE522 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 48 +++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 6ac5ac8b48ab..9c44c99125b4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -2596,6 +2596,16 @@ system_sram2: sram@ff001000 {
 		ranges = <0x0 0x0 0xff001000 0xef000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+
+		vdec0_sram: rkvdec-sram@0 {
+			reg = <0x0 0x78000>;
+			pool;
+		};
+
+		vdec1_sram: rkvdec-sram@1 {
+			reg = <0x78000 0x77000>;
+			pool;
+		};
 	};
 
 	pinctrl: pinctrl {
@@ -2665,6 +2675,44 @@ gpio4: gpio@fec50000 {
 			#interrupt-cells = <2>;
 		};
 	};
+
+	vdec0: video-decoder@fdc38100 {
+		compatible = "rockchip,rk3588-vdec";
+		reg = <0x0 0xfdc38100 0x0 0x500>;
+		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, <&cru CLK_RKVDEC0_CA>,
+			 <&cru CLK_RKVDEC0_CORE>, <&cru CLK_RKVDEC0_HEVC_CA>;
+		clock-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
+		assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
+				  <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
+		assigned-clock-rates = <800000000>, <600000000>,
+				       <600000000>, <1000000000>;
+		resets = <&cru SRST_A_RKVDEC0>, <&cru SRST_H_RKVDEC0>, <&cru SRST_RKVDEC0_CA>,
+			 <&cru SRST_RKVDEC0_CORE>, <&cru SRST_RKVDEC0_HEVC_CA>;
+		reset-names = "rst_axi", "rst_ahb", "rst_cabac",
+			      "rst_core", "rst_hevc_cabac";
+		power-domains = <&power RK3588_PD_RKVDEC0>;
+		sram = <&vdec0_sram>;
+	};
+
+	vdec1: video-decoder@fdc40100 {
+		compatible = "rockchip,rk3588-vdec";
+		reg = <0x0 0xfdc40100 0x0 0x500>;
+		interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_RKVDEC1>, <&cru HCLK_RKVDEC1>, <&cru CLK_RKVDEC1_CA>,
+			 <&cru CLK_RKVDEC1_CORE>, <&cru CLK_RKVDEC1_HEVC_CA>;
+		clock-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
+		assigned-clocks = <&cru ACLK_RKVDEC1>, <&cru CLK_RKVDEC1_CORE>,
+				  <&cru CLK_RKVDEC1_CA>, <&cru CLK_RKVDEC1_HEVC_CA>;
+		assigned-clock-rates = <800000000>, <600000000>,
+				       <600000000>, <1000000000>;
+		resets = <&cru SRST_A_RKVDEC1>, <&cru SRST_H_RKVDEC1>, <&cru SRST_RKVDEC1_CA>,
+			 <&cru SRST_RKVDEC1_CORE>, <&cru SRST_RKVDEC1_HEVC_CA>;
+		reset-names = "rst_axi", "rst_ahb", "rst_cabac",
+			      "rst_core", "rst_hevc_cabac";
+		power-domains = <&power RK3588_PD_RKVDEC1>;
+		sram = <&vdec1_sram>;
+	};
 };
 
 #include "rk3588s-pinctrl.dtsi"
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
