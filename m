Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D77A1C4829F
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 16:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLRhgCkWgAxHGkFI2j2F+W+UEbYjDoweRtOz0kG1T8o=; b=4a9YOnupebtdtb
	GK5KKd+OTaONhf4kNrWYbg1Gfo9T5q3fxY9eSbhqYoajA8Tc23aC0Hu8LkCEb6Eu9F9FxORzndekU
	SZ857WQlgSP9h9kyxdmFhKTtcfnonBC2WOApKz5/Wjrd7dgxgwC2ra7IoFsO5dXADoHps8I2jo5ox
	P2CvH1bm9Lw0IKFkYxXU8tDfZGU6OZmfKs6QImD1cat+lz/R9S7Hw4jACHe54lkzOxYJMG52OjBU/
	6hNuiUXhssbLNXIB5sn5JDLwFq1dMLQMg4LtOONVit5iP+7+Axu7akb7/S4yAcGfHX1TbYHRJ2aeL
	LltWf8eTAS5CavipCveg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvll-00000009yRB-367O;
	Tue, 13 Feb 2024 16:36:29 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvlZ-00000009yFE-2XWH;
	Tue, 13 Feb 2024 16:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707842172;
	bh=6zOLQPXZQ2JGX+nNdATNogWmxrlrJE9gXcKsVLFpIy8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EPYcTtkJrgbIStNdKEbcbO/uNGcjCOJC0s+BqriKC40T76p+pWjDEfsUD68VHv0tz
	 4/GIwfESYdyBejqb9ZlUNxT4AfkPl61nXGTMqDSr6+Iw9JTtgdOxWfnWzFsyiTkQXd
	 nUjHlOkrATEVon83XFnVAv7DG19SVcV7LlppusJqI7IIVaQ47YvK7jyJMV6j517rb0
	 idud7MQawbKKEOT+n6prk+6XXSXbmflRZqjdcJcTuoLP+4AOlX/a0ik9q/1UwAWPbG
	 p2eKISMYgWPfGxriXgkUE8KOJJS/HM6hVXYkgxXcoVjdpq6NvZL4gWJ0a/K+A+clOq
	 0yjymIqoX7pOg==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F2033378207B;
	Tue, 13 Feb 2024 16:36:11 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 070314800D5; Tue, 13 Feb 2024 17:36:11 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 07/12] arm64: dts: rockchip: reorder usb2phy properties for rk3588
Date: Tue, 13 Feb 2024 17:32:41 +0100
Message-ID: <20240213163609.44930-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240213163609.44930-1-sebastian.reichel@collabora.com>
References: <20240213163609.44930-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_083617_933291_5FDAAB94 
X-CRM114-Status: UNSURE (   9.73  )
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

Reorder common DT properties alphabetically for usb2phy, according
to latest DT style rules.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 38e075b7b661..8708436dd545 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -545,13 +545,13 @@ usb2phy2_grf: syscon@fd5d8000 {
 		u2phy2: usb2phy@8000 {
 			compatible = "rockchip,rk3588-usb2phy";
 			reg = <0x8000 0x10>;
-			interrupts = <GIC_SPI 391 IRQ_TYPE_LEVEL_HIGH 0>;
-			resets = <&cru SRST_OTGPHY_U2_0>, <&cru SRST_P_USB2PHY_U2_0_GRF0>;
-			reset-names = "phy", "apb";
+			#clock-cells = <0>;
 			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy2";
-			#clock-cells = <0>;
+			interrupts = <GIC_SPI 391 IRQ_TYPE_LEVEL_HIGH 0>;
+			resets = <&cru SRST_OTGPHY_U2_0>, <&cru SRST_P_USB2PHY_U2_0_GRF0>;
+			reset-names = "phy", "apb";
 			status = "disabled";
 
 			u2phy2_host: host-port {
@@ -570,13 +570,13 @@ usb2phy3_grf: syscon@fd5dc000 {
 		u2phy3: usb2phy@c000 {
 			compatible = "rockchip,rk3588-usb2phy";
 			reg = <0xc000 0x10>;
-			interrupts = <GIC_SPI 392 IRQ_TYPE_LEVEL_HIGH 0>;
-			resets = <&cru SRST_OTGPHY_U2_1>, <&cru SRST_P_USB2PHY_U2_1_GRF0>;
-			reset-names = "phy", "apb";
+			#clock-cells = <0>;
 			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy3";
-			#clock-cells = <0>;
+			interrupts = <GIC_SPI 392 IRQ_TYPE_LEVEL_HIGH 0>;
+			resets = <&cru SRST_OTGPHY_U2_1>, <&cru SRST_P_USB2PHY_U2_1_GRF0>;
+			reset-names = "phy", "apb";
 			status = "disabled";
 
 			u2phy3_host: host-port {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
