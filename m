Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C002C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 21:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/WHB7rqT4BZynGsNXSN22IEKzZCCizeXu0MZ5L2j38=; b=k9JYi7wve1gPWX
	W1ZwC/YMCx7YOUEG1UPkdHrZTEG/nSDJVwLMOlbxdTPdtFX3jMLwkCU4FfpKIe58Jqz0viKfhfc9S
	jof0y035NWirPOFLiCYrL/kQOJ/qFjd9rcwyOZ82Mvgqf5YFBwtwWmnpM8eUF+gqSZvzklo8w9onX
	u39Ei75TdMF+klSzjzqzUx797NLx/Hs4PBBPVyHnVVFkQdCqC/vtBWC5H6mSWVmQ8Llqbm3wAAvlp
	qH9HW0+Lk1vXaEotYUNS7qcz5Tz4K57nhX1m+pq6Bv5PElaeHxAOEHQCrOOul3t2rCd3uw67pRuGg
	FPbm8YW2O6Gf5+zMO4vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pejz6-00Dscj-19;
	Tue, 21 Mar 2023 21:57:36 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pejyM-00DsA0-0J;
	Tue, 21 Mar 2023 21:56:51 +0000
Received: from localhost (unknown [188.24.179.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AFA8566030EB;
	Tue, 21 Mar 2023 21:56:48 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679435808;
	bh=ebvOxKanu6MoxWyeCbmEv5UBMJrCH6Tv4wEIv8LZNec=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eXz8t03pxfzBmsapf6cd6G89Or+RWnz7/e2HJoapOb+cUUDYdDwMyV9nyMWjP7bXn
	 gPDfpzmv2AxOh1y61tizCPX3P9uH8Lbt4gg22UWdt3BUS5YKBfpbyrvpxCk2lkag2a
	 AkM84D91q8aSZ043ov2UWIy/pu15jpHinmBbwGYR6Z6zVyi6ZfnnwbZTL8EJgBCNxI
	 RCoZbpeTKhzcHmoYIgZzv8HZU+Uz4iQyGrFl/JmXjnWcsP8F7OIoMGQEbuRN8YlFcJ
	 OBqs+jRyHHtUdX6bN1k7qpFjs1pXpMjXtIXbD9PR9LilSpqX6/yv7/zQaJzc5+r6BO
	 cjffKcVVyD63g==
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
Subject: [PATCH v2 06/10] riscv: dts: allwinner: d1: Switch dma-names order for snps,dw-apb-uart nodes
Date: Tue, 21 Mar 2023 23:56:20 +0200
Message-Id: <20230321215624.78383-7-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
References: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_145650_267229_114B8258 
X-CRM114-Status: GOOD (  12.96  )
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
reverse of what a bunch of different boards expect.

The initial proposed solution was to allow a flexible dma-names order in
the binding, due to potential ABI breakage concerns after fixing the DTS
files. But luckily the Allwinner boards are not affected, since they are
using a shared DMA channel for rx and tx.

Hence, the first step in fixing the inconsistency was to change
dma-names order in the binding to tx->rx.

Do the same for the snps,dw-apb-uart nodes in the DTS file.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi b/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
index 951810d46307..922e8e0e2c09 100644
--- a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
+++ b/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
@@ -211,7 +211,7 @@ uart0: serial@2500000 {
 			clocks = <&ccu CLK_BUS_UART0>;
 			resets = <&ccu RST_BUS_UART0>;
 			dmas = <&dma 14>, <&dma 14>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -224,7 +224,7 @@ uart1: serial@2500400 {
 			clocks = <&ccu CLK_BUS_UART1>;
 			resets = <&ccu RST_BUS_UART1>;
 			dmas = <&dma 15>, <&dma 15>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -237,7 +237,7 @@ uart2: serial@2500800 {
 			clocks = <&ccu CLK_BUS_UART2>;
 			resets = <&ccu RST_BUS_UART2>;
 			dmas = <&dma 16>, <&dma 16>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -250,7 +250,7 @@ uart3: serial@2500c00 {
 			clocks = <&ccu CLK_BUS_UART3>;
 			resets = <&ccu RST_BUS_UART3>;
 			dmas = <&dma 17>, <&dma 17>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -263,7 +263,7 @@ uart4: serial@2501000 {
 			clocks = <&ccu CLK_BUS_UART4>;
 			resets = <&ccu RST_BUS_UART4>;
 			dmas = <&dma 18>, <&dma 18>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -276,7 +276,7 @@ uart5: serial@2501400 {
 			clocks = <&ccu CLK_BUS_UART5>;
 			resets = <&ccu RST_BUS_UART5>;
 			dmas = <&dma 19>, <&dma 19>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
