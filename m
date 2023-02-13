Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F9FFC636CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 15:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3w6gc/OxtS61kQeoaX8RLAP7QGfmVvtHqK4dlus9XIY=; b=L24PUaRShshxZw
	9nWuh0ffKUSJ6OMy0R9owskGxbUNzRujEiH0fspEwmbeFlHWjhhIoBcvTlkhYqr5ysYsaMTUFNuZC
	hXmNg67xuB/Jw3sdPOKxXyyp5qFIIx9AcAELZJJh9uIqCqT58jE0tkwYTTgPJ98bPqv4U3ge06jDp
	7dLBk7yM+t4Qej/tyjABakiziaAFsgG7oK7zoiQe/+25aeevbIe8z+kXcFCAFSQnhRYrwDDnIOXVX
	NKEg2jJykCOCruPUjcHp6IsxXIDeYPxg2zfXK7hu1QKPTatHJl64Zx7LmAE7tfciKhz4W82f5yIEA
	M0sVNZXAe8i/e73vhudA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRaki-00FCRo-0f; Mon, 13 Feb 2023 15:28:24 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRakJ-00FCH2-TS; Mon, 13 Feb 2023 15:28:01 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B475D6602143;
	Mon, 13 Feb 2023 15:27:55 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1676302076;
	bh=p76gdDIYlAnUqSc9v+byWyTo408BlynhGQi7WPDp8Dg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CLPehRF3s20xu8SgedRdcWrPcpeiVox2kYhFzikI+xHLD9B8V1YDF/P/1phdgv+Ak
	 zOGd7/dpwkdB01+0r66aceIopm9AgaiFVFGxGzanDy7OSdZqLgce4Lc4F7ghX3/Bpb
	 neGnPKN4/5d1g335x0seDbOxD/YNA2HrOGq1+8Kh7ExMZVuDnHdpcQ8xeA8gUtLW1U
	 YTeSqU7WOt6u5kVu0v1XjqeGJFPpxV0uIiQQc+oD2dvdUkY0YgwndUDgLaGgADlc7K
	 mQkYGso/UrFX0qd78CLdMFK94aDgbcwArn2Ze3ey3xe2EdqRmTraCnplbvvwv0y7cE
	 bIwwOrSjm3uQw==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3588: Add sdmmc node
Date: Mon, 13 Feb 2023 15:27:40 +0000
Message-Id: <20230213152740.359055-2-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213152740.359055-1-lucas.tanure@collabora.com>
References: <20230213152740.359055-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_072800_120941_7001F531 
X-CRM114-Status: UNSURE (   8.70  )
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

Add SD Card node for RK3588s and RK3588.

Co-developed-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 005cde61b4b2..fca8503aed8c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1099,6 +1099,21 @@ gmac1_mtl_tx_setup: tx-queues-config {
 		};
 	};
 
+	sdmmc: mmc@fe2c0000 {
+		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x0 0xfe2c0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&scmi_clk SCMI_HCLK_SD>, <&scmi_clk SCMI_CCLK_SD>,
+			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
+		power-domains = <&power RK3588_PD_SDMMC>;
+		status = "disabled";
+	};
+
 	sdhci: mmc@fe2e0000 {
 		compatible = "rockchip,rk3588-dwcmshc";
 		reg = <0x0 0xfe2e0000 0x0 0x10000>;
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
