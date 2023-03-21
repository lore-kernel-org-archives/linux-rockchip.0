Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E756DC6FD20
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 21:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKYT37AASPfohOAVv9aQE9XHG4QUVPMk9bihYOh0eU4=; b=KydATcb4JPJUkL
	Y+cp+gM1Mwd38uTKPPUxvpguI/4csWe7GOD9n/Dfn48i+U5hlsUUCftDWdCukMIPFkHHcWIC3zLeb
	LQvUWiOAJ/5qssUaFhgj9vPbp3yY5h9Hmqu8cg1smB6KmY9QMv0AdnO7L7Ji5D1gabnQwdLigSuNU
	uC9t7XHR1Ali1ffp/J8kI4mtAqzlq0ejC3pvBb3gihhjqHbLq1J1uXAbYkBVKTeEdDkt+Rb0YeluA
	5Q3mD9Fd7uSnR4g8gjvPYWfrvhJRl3x4wmhiEzaUIkWQTJizrWok9UJj2UNq7bI/JEKZULsXgdIMz
	TSvaMtHTbDhSfUZQBPpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pejyz-00DsXY-1R;
	Tue, 21 Mar 2023 21:57:29 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pejyI-00Ds82-2e;
	Tue, 21 Mar 2023 21:56:48 +0000
Received: from localhost (unknown [188.24.179.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5EEE266030E8;
	Tue, 21 Mar 2023 21:56:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679435805;
	bh=6Pn4h5hBqV5Mx/XTEaAivfDdSRY70HW5NEjSKaEvQGU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HNds7UKN7y1p2cduDi0Vgr7IKmadoc+8Hc0tJb0c79MWm7R0s4opLuHs9TwoxtAmP
	 HqXP7iL7BftmWxaT6TpsF9TD5ivwgydc8VfBkvEE1L/e81wA8KFCM/6F7Rw7h2Ogyd
	 PmWhAgcID/M0MILvYzd0j9JZQ81qMxKzQqVUlaxm0QwLuEn/gTH1CrN99M8cui7guQ
	 NP1Go7ZFsn8utZZDAY8qxLf+BnWkcod2hBexQwdQaRuZamQZYlCjFIKiGROw4Szqli
	 hZO3afvFXq2q2vaQZqbd0Ywwg+hTRgQyi4jwsaonJ9e5KPwiRgwXVJASU3LxR9LThy
	 977C6DdG5csAg==
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
Subject: [PATCH v2 05/10] ARM: dts: sunxi: h3/h5: Switch dma-names order for snps,dw-apb-uart nodes
Date: Tue, 21 Mar 2023 23:56:19 +0200
Message-Id: <20230321215624.78383-6-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
References: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_145647_025480_5704B148 
X-CRM114-Status: GOOD (  13.06  )
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
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 686193bd6bd9..ade1cd50e445 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -710,7 +710,7 @@ uart0: serial@1c28000 {
 			clocks = <&ccu CLK_BUS_UART0>;
 			resets = <&ccu RST_BUS_UART0>;
 			dmas = <&dma 6>, <&dma 6>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -723,7 +723,7 @@ uart1: serial@1c28400 {
 			clocks = <&ccu CLK_BUS_UART1>;
 			resets = <&ccu RST_BUS_UART1>;
 			dmas = <&dma 7>, <&dma 7>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -736,7 +736,7 @@ uart2: serial@1c28800 {
 			clocks = <&ccu CLK_BUS_UART2>;
 			resets = <&ccu RST_BUS_UART2>;
 			dmas = <&dma 8>, <&dma 8>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -749,7 +749,7 @@ uart3: serial@1c28c00 {
 			clocks = <&ccu CLK_BUS_UART3>;
 			resets = <&ccu RST_BUS_UART3>;
 			dmas = <&dma 9>, <&dma 9>;
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
