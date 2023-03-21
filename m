Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 342C7C6FD20
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 21:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9vVjWZ/tZsPSjqx+125ezWVhimGsrO13DYTrwjiVKQ=; b=HogoI0Kgkk8Q0I
	8jiQSjySJ8tXgpUBjtMPfrMsRXBeoqRrY/LNK3B8Dkxz7NGRChHdUlJhFUNtCNZfCKWXlDbQYFRCY
	EcmiPmSXn6Bt5KWFV/XCdmBPlFAkocdp415tad8OUOOiWpq1ZrAFOrRejtU9856Y0DxMuNrf5OF2y
	F6cjXXdxKbac2KhrMDR/3vJCr0kgv7ex8U4CUdoixMMHQzp0Wjd6PuMe3XX8N0AHbaT0/OjqQFQgr
	wwuDBDVTxr4IHznQ8LIXWvZvUqY77AejAtZN/t7q5q3p+w0wA3Qd1aZN9l2uKzBuO4JeFApjoaznm
	PByg9oflNJ88q32uMA5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pejyL-00DsA6-1p;
	Tue, 21 Mar 2023 21:56:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pejyD-00Ds42-2G;
	Tue, 21 Mar 2023 21:56:43 +0000
Received: from localhost (unknown [188.24.179.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E8FEC66030DE;
	Tue, 21 Mar 2023 21:56:31 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679435792;
	bh=xlJOx3+BWzJjnvbq3Qx6ToCI9eSAdqOI6uhZgvbAeZo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l0AqkVN95YJGx/ASGaao9kh++1IZeZLcCcM4JgDq7PgYErL5x0ArdP7IInpQclbkj
	 cspW85oZgxJst126hJdzYVTuwApoSXsPlPtk0y0EQK/Hbufitiu2g6Z+w2IWiHZLiA
	 dZ9LAEGyqKlqxkQW6joE953xgBlVA4Nc1DrMCVAnS1Kv70Hhfux+iFcVHti7oki50M
	 0dN6RtG8TTRFyfT1fV8ugic5scgfN95uBxkMT0ZwSM49l4ziz6qsAaPhd2eEikFd+2
	 Ybxhi27SL4CDyeb2BZ8YsKxECSHvxfb5oCWfkCZTzFVSXXMpqinnLhpmguE7D3YCdo
	 I6nLVsaA9cbKw==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v2 01/10] dt-bindings: serial: snps-dw-apb-uart: Switch dma-names order
Date: Tue, 21 Mar 2023 23:56:15 +0200
Message-Id: <20230321215624.78383-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
References: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_145642_024870_2DC6FA39 
X-CRM114-Status: GOOD (  12.95  )
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

Commit 370f696e4474 ("dt-bindings: serial: snps-dw-apb-uart: add dma &
dma-names properties") documented dma-names property to handle Allwinner
D1 dtbs_check warnings, but relies on the rx->tx ordering, which is the
reverse of what a different board expects:

  rk3326-odroid-go2.dtb: serial@ff030000: dma-names:0: 'rx' was expected

A quick and incomplete check shows the inconsistency is present in many
other DTS files:

$ git grep -A10 snps,dw-apb-uart | grep dma-names | sort -u
arch/arm64/boot/dts/rockchip/px30.dtsi-         dma-names = "tx", "rx";
arch/arm64/boot/dts/rockchip/rk3328.dtsi-       dma-names = "tx", "rx";
arch/arm64/boot/dts/rockchip/rk3588s.dtsi-      dma-names = "tx", "rx";
arch/arm/boot/dts/rk3066a.dtsi-                 dma-names = "tx", "rx";
arch/arm/boot/dts/rk3128.dtsi-                  dma-names = "tx", "rx";
arch/arm/boot/dts/rk3288.dtsi-                  dma-names = "tx", "rx";
arch/arm/boot/dts/rv1126.dtsi-                  dma-names = "tx", "rx";
arch/arm/boot/dts/socfpga.dtsi-                 dma-names = "tx", "rx";
arch/arm/boot/dts/sun6i-a31.dtsi-               dma-names = "rx", "tx";
arch/arm/boot/dts/sun8i-a23-a33.dtsi-           dma-names = "rx", "tx";
arch/arm/boot/dts/sun8i-v3s.dtsi-               dma-names = "rx", "tx";
arch/arm/boot/dts/sunxi-h3-h5.dtsi-             dma-names = "rx", "tx";
arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi-  dma-names = "rx", "tx";

The initial proposed solution was to allow a flexible dma-names order in
the binding, due to potential ABI breakage concerns after fixing the DTS
files. But luckily the Allwinner boards are not really affected, since
all of them are using a shared DMA channel for rx and tx:

$ git grep -A10 snps,dw-apb-uart | grep 'sun.*dmas' | sort -u
arch/arm/boot/dts/sun6i-a31.dtsi-       dmas = <&dma 10>, <&dma 10>;
arch/arm/boot/dts/sun6i-a31.dtsi-       dmas = <&dma 22>, <&dma 22>;
arch/arm/boot/dts/sun6i-a31.dtsi-       dmas = <&dma 6>, <&dma 6>;
arch/arm/boot/dts/sun6i-a31.dtsi-       dmas = <&dma 7>, <&dma 7>;
arch/arm/boot/dts/sun6i-a31.dtsi-       dmas = <&dma 8>, <&dma 8>;
arch/arm/boot/dts/sun6i-a31.dtsi-       dmas = <&dma 9>, <&dma 9>;
arch/arm/boot/dts/sun8i-a23-a33.dtsi-   dmas = <&dma 10>, <&dma 10>;
arch/arm/boot/dts/sun8i-a23-a33.dtsi-   dmas = <&dma 6>, <&dma 6>;
arch/arm/boot/dts/sun8i-a23-a33.dtsi-   dmas = <&dma 7>, <&dma 7>;
arch/arm/boot/dts/sun8i-a23-a33.dtsi-   dmas = <&dma 8>, <&dma 8>;
arch/arm/boot/dts/sun8i-a23-a33.dtsi-   dmas = <&dma 9>, <&dma 9>;
arch/arm/boot/dts/sun8i-v3s.dtsi-       dmas = <&dma 6>, <&dma 6>;
arch/arm/boot/dts/sun8i-v3s.dtsi-       dmas = <&dma 7>, <&dma 7>;
arch/arm/boot/dts/sun8i-v3s.dtsi-       dmas = <&dma 8>, <&dma 8>;
arch/arm/boot/dts/sunxi-h3-h5.dtsi-     dmas = <&dma 6>, <&dma 6>;
arch/arm/boot/dts/sunxi-h3-h5.dtsi-     dmas = <&dma 7>, <&dma 7>;
arch/arm/boot/dts/sunxi-h3-h5.dtsi-     dmas = <&dma 8>, <&dma 8>;
arch/arm/boot/dts/sunxi-h3-h5.dtsi-     dmas = <&dma 9>, <&dma 9>;
arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi-  dmas = <&dma 14>, <&dma 14>;
arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi-  dmas = <&dma 15>, <&dma 15>;
arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi-  dmas = <&dma 16>, <&dma 16>;
arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi-  dmas = <&dma 17>, <&dma 17>;
arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi-  dmas = <&dma 18>, <&dma 18>;
arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi-  dmas = <&dma 19>, <&dma 19>;

Switch dma-names order to tx->rx as the first step in fixing the
inconsistency. The remaining DTS fixes will be handled by separate
patches.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 2becdfab4f15..d28cc96fa8e9 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -72,8 +72,8 @@ properties:
 
   dma-names:
     items:
-      - const: rx
       - const: tx
+      - const: rx
 
   snps,uart-16550-compatible:
     description: reflects the value of UART_16550_COMPATIBLE configuration
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
