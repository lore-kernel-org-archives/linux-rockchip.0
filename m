Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7CD2C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 08:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTPZHB4rt7/v/MiTqfGN9oulBHCu4/VK7KpTr0+jCtk=; b=nzeOcRkX9erx/t
	jh/BOrzV/Xv3wURxHmND0RmZioNukg/km7dsKPN0hD45FWxfeYKz/qqFGf1M1A2JO60f15lpI9RcK
	iGvPjgGs/J2KPgxpMMJR8CYTOBV1iyov7wm+B8Rxgw6B1HHzWUxo7wh1mPEusyAtss6qzXcZAx5W2
	xdzjOdvEZqnR9V5G1dsP+f21x6W/K/Gm/kBEOK5WP0QK13X7RyIyHpc7UBUSielDEerl/sjCAEXBE
	G7MI0PBuwPoj+FLkZ0BiWV5aO/LPOnrXdE1jmP61RmGgj8Gm2HDcsDTxV4kZPoZdIZ5sqAGF4vsJJ
	qXC7Gx3B15mL4G9jXBqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSatH-00Fezs-BL; Fri, 11 Mar 2022 08:44:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSaii-00FZQd-LQ
 for linux-rockchip@bombadil.infradead.org; Fri, 11 Mar 2022 08:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=7zeVvcbLYWGqTMQaCmcxPpNJWb1uj10X6HwObpqh0BI=; b=fbjgy6MEuBmtPGc5jMwcv1u6/2
 V0eyQolJIP7nJEUu8iqSmmzNeAxzUclaYexeiU9LI6/7CSQ8mJfliCPc/JItCxJfNDszQqz8u2YN8
 Zese8tOCCfkKRLu0yAtBFpm5mAMGl34PNeUkXnSLx5XrpPThLl+PLd5n1bqFpskofvhaqoCPMYFR5
 rvTlag8xi0c3WS6i4b+w7YDI2NY79I66F3RJ6X/dqeLOb5fmvw1dIMBrkN5wrdDl1GOgtGmLczfhT
 Kj0VSu83YCvwa80bY7Ss8yRh3ArOR4DXzUBjwYP3eDdZeQ0fl5SSYboktE+RtvYIJ/88lpSvWcHt4
 3k6LTcwQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSaiT-00HOE3-Hs
 for linux-rockchip@lists.infradead.org; Fri, 11 Mar 2022 08:33:55 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nSaiL-0000aY-BG; Fri, 11 Mar 2022 09:33:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nSaiE-0040hd-Ma; Fri, 11 Mar 2022 09:33:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v8 18/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
Date: Fri, 11 Mar 2022 09:33:17 +0100
Message-Id: <20220311083323.887372-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220311083323.887372-1-s.hauer@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_083341_706978_CBC28D9E 
X-CRM114-Status: GOOD (  10.47  )
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

Add support for the HDMI port found on RK3568.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v7:
    - Rename hclk to niu
    
    Changes since v5:
    - Drop unnecessary #size-cells/#address-cells from nodes with only single endpoint

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 19d8e67c4698b..0a94d59b33ba4 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -502,6 +502,38 @@ vop_mmu: iommu@fe043e00 {
 		status = "disabled";
 	};
 
+	hdmi: hdmi@fe0a0000 {
+		compatible = "rockchip,rk3568-dw-hdmi";
+		reg = <0x0 0xfe0a0000 0x0 0x20000>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_HDMI_HOST>,
+			 <&cru CLK_HDMI_SFR>,
+			 <&cru CLK_HDMI_CEC>,
+			 <&pmucru CLK_HDMI_REF>,
+			 <&cru HCLK_VO>;
+		clock-names = "iahb", "isfr", "cec", "ref", "niu";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
+		power-domains = <&power RK3568_PD_VO>;
+		reg-io-width = <4>;
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	qos_gpu: qos@fe128000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe128000 0x0 0x20>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
