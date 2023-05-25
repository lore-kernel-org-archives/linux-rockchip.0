Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75E01C7EE2C
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 21:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I13wF8quFH+oGzrI0mfnadCFyBW+uheqkv94im1vTFU=; b=5BA0UpZnF3Q1Ne
	C+ZOaZcaixO1SdtHftwkXoIYip6j5VH+jzFHdR8B7iKQ/x1M01fYC2zHNFng+R1loj6IQNh8PZ7f9
	DBHeSKBNQB29OC43Xu29CSxUUSvQ2NBRyGPsL5SMMIcHuiAzxAiaZ3Wg47yJslsAw+YzzlfQM32/h
	jtgXeddEP1bAp+nym7gq67rwuoUh0OuoBkFV2NC33LD9udLjTCxu8Mck8C0VNaENi61dKzcQCbxkq
	xa3Rs5XT3sR8SR1rJ5PXvsxg5RpLvw1IEcDwz/il/LHfpATOozUCY1C2JwV+8UhZrWWwZp+CTtXyL
	OZMzY7oDbs896hrKXzhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVz-000CC9-22;
	Thu, 25 May 2023 21:28:55 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVm-000C3K-05;
	Thu, 25 May 2023 21:28:43 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8A22E6601F54;
	Thu, 25 May 2023 22:28:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685050120;
	bh=++O4b/Q8RT0tumJ2kVSeNSDuZ1DIcVjmUFpZkUqRN3U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aTpxDm1BBLXlvwmXlmwDb98jxiFzYJMLKkKyRkTpKMGbZIAWai2ybe0nSO4IolJBb
	 gLEgW1GoZZoIhrPeJqMQR7ibC/Jcx+yPTUBGT0t2E4+pXyJbwAHV3pdJFceHi29R2e
	 RhE+E7z0AJZTbxcXHo4z2NTzNrptOg+nW4XR6l/X1olsQR+B1UvV1D39o7YVgLZeJ8
	 0bAx4zQz5lC/Tv2UyWMfXl0DCGNjVMnsQFv3txaQCuLpgdH8jUEIj4FkE97a0d6798
	 k/cxl84DKfbXAmEw+jnxlSgvESmWYDbV5NzXyp3QkA41/QyATMBnTIo7hLpxP12cwG
	 zWqVJpMCQTxog==
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
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v2 7/8] arm64: dts: rockchip: Add DT node for ADC support in RK3588
Date: Fri, 26 May 2023 02:57:11 +0530
Message-Id: <20230525212712.255406-8-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230525212712.255406-1-shreeya.patel@collabora.com>
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_142842_213935_CA46B683 
X-CRM114-Status: UNSURE (   9.39  )
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

Changes in v2
  - No changes.

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
