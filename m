Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB0E7E77180
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 23:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KN6qb4ljHEWjBFxzlGcMC8hwPbGtWIuwhUvWDe1kN2U=; b=obog6zCyQ+R6qI
	lVS4t8WP65dhd0HquLdvviW2VdimYAaKOwa77lspvsx/WDfRzkeVp/rEiBwJkTxY3mrZCU+FSE76e
	5miPkqurP3dokNM1167f79k23uA7zaCQbI0lsGAtr5FErLH4iywoEBRoNRi6EmcgVLdraL6m5W7fO
	diEQBMzhQBXUbg2wCewnCQbHP17ZVxIlnPxdRXBY5xcORXi2LEH3rW0qb8Tpv6ervN+jpaNRrMuch
	kT9oXfdVuy9QWBGJUa2zsbl55WWN6PhisnCmgXRu+SS37MLt+chLndZcwowbY8mXuS/wV1G5vLo8G
	/NctPAr2W2MjFexJoJZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL9L3-0000000D6p8-3Hm8;
	Tue, 10 Dec 2024 23:08:21 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL9Jy-0000000D6OO-3lB6;
	Tue, 10 Dec 2024 23:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733872033;
	bh=DuquKXFrrFxNB+/27gdv/HCQ8M7uGVTRTKsJMPlOXKI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=DMkHw+RPR534EjfaNihm7yVqwmAFsllI1aJJNjZEwR9oiOdaYNkJQBmEkL88Mz9/e
	 gHMrUkaHZ3gvxBVRJWR1mmcPktW/yNJwS6pv4ywz8nGYr2MrCY5cAiViUwKRMEpmv6
	 sCp1MuI017fimXj3IlhUvjuUlx0CEXHFO16WtKzWMD82POHnxsIGFdSmypDRqZKota
	 dV2qT4RK81l5AYaaNvC01NJsliTemLyunZb367hCukiJUcuorGtovQ5nFNLdQh529w
	 bF0kHhJDgB48P/2+MEBEdjKVx2QLhbQ+zlKRSjluk18KnUHfs0c49zEj2yq2rZrXc7
	 +ToK1TUyyWM/Q==
Received: from localhost (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 143C417E09C0;
	Wed, 11 Dec 2024 00:07:13 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 11 Dec 2024 01:06:15 +0200
Subject: [PATCH v2 2/4] arm64: dts: rockchip: Add PHY node for HDMI1 TX
 port on RK3588
MIME-Version: 1.0
Message-Id: <20241211-rk3588-hdmi1-v2-2-02cdca22ff68@collabora.com>
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
In-Reply-To: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_150715_085251_388C5700 
X-CRM114-Status: UNSURE (   9.40  )
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

In preparation to enable the second HDMI output port found on RK3588
SoC, add the related PHY node.  This requires a GRF, hence add the
dependent node as well.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 0ce0934ec6b793af45585f67d5312434d80357de..68fa9806164776cef8732bb776e958003779ba28 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -67,6 +67,11 @@ u2phy1_otg: otg-port {
 		};
 	};
 
+	hdptxphy1_grf: syscon@fd5e4000 {
+		compatible = "rockchip,rk3588-hdptxphy-grf", "syscon";
+		reg = <0x0 0xfd5e4000 0x0 0x100>;
+	};
+
 	i2s8_8ch: i2s@fddc8000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddc8000 0x0 0x1000>;
@@ -395,6 +400,22 @@ sata-port@0 {
 		};
 	};
 
+	hdptxphy1: phy@fed70000 {
+		compatible = "rockchip,rk3588-hdptx-phy";
+		reg = <0x0 0xfed70000 0x0 0x2000>;
+		clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>, <&cru PCLK_HDPTX1>;
+		clock-names = "ref", "apb";
+		#phy-cells = <0>;
+		resets = <&cru SRST_HDPTX1>, <&cru SRST_P_HDPTX1>,
+			 <&cru SRST_HDPTX1_INIT>, <&cru SRST_HDPTX1_CMN>,
+			 <&cru SRST_HDPTX1_LANE>, <&cru SRST_HDPTX1_ROPLL>,
+			 <&cru SRST_HDPTX1_LCPLL>;
+		reset-names = "phy", "apb", "init", "cmn", "lane", "ropll",
+			      "lcpll";
+		rockchip,grf = <&hdptxphy1_grf>;
+		status = "disabled";
+	};
+
 	usbdp_phy1: phy@fed90000 {
 		compatible = "rockchip,rk3588-usbdp-phy";
 		reg = <0x0 0xfed90000 0x0 0x10000>;

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
