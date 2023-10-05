Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6D32E92706
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 14:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ieLsPFgRI8V7J6HtuYCVuL+hG7O4pFdg0HeeJ/MGFI=; b=vLAF+MyGEnvoZJ
	yUvEKbYvZk9Mm3LoNU1SfSsxmuDdwB4rIcaU3sZ7oq8O8bPB5rZFqcs00YV4ohmK2b3bsrf9d8jaL
	+PO2YBqHRT1NsA04X3SUdr4GiDuzUD6Gc7Jj0qi3Fckrq95zeQ8KMhFqqHlY+SbZ6fLUAwBuhXIS8
	GR92jgX5Mi4fiLYg9b9imqbPEOy1fIVrbvai3DqoLoLItrzM5OTRTq6ZZcUTtYxWx/lu29ZHwv4i3
	1LRMJNlw+Hoyrf6OuxHaZtc6Rpqc+zLeSXEJkRm2PbgfybuBavFT9C15jM6ygg6mgtI3e8ocwCjB9
	7Fb75jNDSJwMGIIxlDEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoPkF-003o8Y-0r;
	Thu, 05 Oct 2023 14:54:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoPkB-003o7U-2k;
	Thu, 05 Oct 2023 14:54:29 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C73D66607331;
	Thu,  5 Oct 2023 15:54:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696517664;
	bh=F9sFnhe+57/E8C+QJ0cI/glDDOJt5cWzzhvbcEd44Ns=;
	h=From:To:Cc:Subject:Date:From;
	b=lY3vUzcEyIqRx98mguxeDEJLRoc2xL7klMc1LBGuC653yii12PciBPF5PEimHUnbR
	 MKPLkJEtS9ccGR1SKXhg0b2dfyzqozJ89GR5vozII0IcelwEKmVHWAM9jsDfP3NglF
	 Cw6pv4hSEb6fWn+yZKJs3VeB4WChmm1l9iXCb7qcarQddV7tMhMP9ncnYQ1S66tKH6
	 FLPSaD6ze4mLAQGVHrW/yadqJJ5KxrmrYU9Bo+RizCH7Yz9NlRvQMBUa41czZFGZ7r
	 K1bxll2ZGNLL3Skd7+h6FMCW9AqXSwgcSGRrCyG7KBpHcGKdSpCdZ+eHnr49y1EpOn
	 w12VoIzIUY0zg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: rk3588is: Add AV1 decoder node
Date: Thu,  5 Oct 2023 16:54:20 +0200
Message-Id: <20231005145420.169594-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_075428_036945_FE016F6D 
X-CRM114-Status: UNSURE (   8.15  )
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

Add node for AV1 video decoder.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..835e66d85d5f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -2304,6 +2304,20 @@ gpio4: gpio@fec50000 {
 			#interrupt-cells = <2>;
 		};
 	};
+
+	av1d: av1d@fdc70000 {
+		compatible = "rockchip,rk3588-av1-vpu";
+		reg = <0x0 0xfdc70000 0x0 0x800>;
+		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		clock-names = "aclk", "hclk";
+		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		assigned-clock-rates = <400000000>, <400000000>;
+		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
+		power-domains = <&power RK3588_PD_AV1>;
+		status = "okay";
+	};
 };
 
 #include "rk3588s-pinctrl.dtsi"
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
