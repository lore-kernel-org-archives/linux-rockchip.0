Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74D2CC7EE2E
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jun 2023 18:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOlFx3k++P8kheb3rbObb6VSXlys6TBAZ5GPrMcbKZA=; b=xdukQrNnRuipxy
	kN9fwu2FHPmSquxlO7PERSPbO5ukJIDnujb3SgiA9B2U9PGKHA+RKKMq1D/gpZ43ESlLArwIMNgjH
	IMfAwCw/WwaQGmGtP0LROVHvFV8fLpeRbYnJgB8Nc1W5/sQQ/zNpPasrNRalV6TTKVbWZH1K8tu8e
	xHOP2PqfhmefhkugzwZ8cfdn8Ea36HKu+14/5hrsk/yB8jsAEHDFFEfJSA6opf3QPKDjliWuSaVOR
	sgc7Vfb+HGznnYy2l5FSHdmSKOt2j/4iCBKy/35Lbm2Vg48PliWvm8fV/dUN9nBSv3ZATU4bRRLTK
	j7Q4rrph2jC/J92SNesA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WPA-00AMI6-1H;
	Sat, 03 Jun 2023 18:55:12 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WP1-00AMBC-2h;
	Sat, 03 Jun 2023 18:55:05 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D621066031BB;
	Sat,  3 Jun 2023 19:54:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685818502;
	bh=jSXs78i99G06gintRwSg5+8JsDLxQU7hBBHV8+/cw28=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YrTmPgT0nSO/i2DjLbZUkzrVO16s+Toq3RBgc13mU2Tx5NsBYKV1v7q/1A6qYxnO5
	 D42btqX0DnC7nwxrv4Nl4l9m0SjrERXdCVK1cg4JxH6CEtBA7reDG6wEnw1/uzqePn
	 RqWvL7hkKxhphFSkAU3KhaBRGICbO7oiRuEZ0HGSoiGalEOf+mK2ZGHP7WC4ZVEIHT
	 lIJqXqL1ZSAUMa9gat4ux7DUaqFByOxbnlgzgd29XTb0kieH96v98h9XTlufUeuB+f
	 vFB6DopJjft/kHxRDQUZV8E/B+JMUOgi17gQR9iZ0P1v2r3ZM4oA009jXiGqhb/I2j
	 rc1E+JisZRj9w==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	gustavo.padovan@collabora.com,
	kernel@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v3 7/8] arm64: dts: rockchip: Add DT node for ADC support in RK3588
Date: Sun,  4 Jun 2023 00:23:39 +0530
Message-Id: <20230603185340.13838-8-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230603185340.13838-1-shreeya.patel@collabora.com>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_115504_246079_07C23F48 
X-CRM114-Status: UNSURE (   9.19  )
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

Add DT node for ADC support in RK3588.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---

Changes in v3
  - No change

Changes in v2
  - No change

 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5d010f34a7f7..9cfa7ba97461 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1913,6 +1913,18 @@ dmac2: dma-controller@fed10000 {
 		#dma-cells = <1>;
 	};
 
+	saradc: saradc@fec10000 {
+		compatible = "rockchip,rk3588-saradc";
+		reg = <0x0 0xfec10000 0x0 0x10000>;
+		interrupts = <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH 0>;
+		#io-channel-cells = <1>;
+		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
+		clock-names = "saradc", "apb_pclk";
+		resets = <&cru SRST_P_SARADC>;
+		reset-names = "saradc-apb";
+		status = "disabled";
+	};
+
 	system_sram2: sram@ff001000 {
 		compatible = "mmio-sram";
 		reg = <0x0 0xff001000 0x0 0xef000>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
