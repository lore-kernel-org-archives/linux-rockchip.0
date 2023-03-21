Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FAC7C6FD20
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 21:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRl3gSajtosVXEQdGQ61uW8CIh8tLq0dIFaWdgWX7aw=; b=ylHImws+kJVhGX
	t0AqIAmtmqeNnpd6xX8tQ3wVPdzF8kirqkKsZW9FGPToe9FeHlXd3fAfVhfNOGfAIjKwN9Cwhp0du
	P+PeZVJ2/Hk8/QOYHyK1XKfUjBDYtDuXVvMT9EANc6DT0CW20NjUY4Zy1cu2WKIuhSJAqMvmyRCeF
	sZb5iYhe/eU4WRyeLxSg1ptOrByfYw2yFV1RoUCt2Q64GVzLq11X6UBtmPyE1JhiEnh7/Gp4KhtUE
	5sUPHQH9wYg7C7YhEQRPVP+B/8eFuHb72lIUrPEzFjFtQuprcoKsBDIFFoxIy+mN9rldvbIMCGEp5
	aH6ULkZdqarn5PZRQMmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pejyk-00DsNX-1t;
	Tue, 21 Mar 2023 21:57:14 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pejyF-00Ds4R-0w;
	Tue, 21 Mar 2023 21:56:44 +0000
Received: from localhost (unknown [188.24.179.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4D88166030DF;
	Tue, 21 Mar 2023 21:56:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679435795;
	bh=mOpDclaDTJeSc83M1BpXEgL629g/qm2tDMsr7YhSSc8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=awyxbDIsZyjAwYN9hxxUriRmqW+9fKK3KifYSd90eQKgfubhh3FXVkSlmVsDhFI+f
	 dTfCi313rWYgbgXXvPGyVQwU9dcHngG41SVzUWCV/i7/c69nyhFLgsIM2ZbH8PFwGz
	 Kq0y9wD3Z5h9EZDX1Ed7TD4ZjsftVy90uZFp1v2joZGtZyma/b8I7tg52TBeWkAEyl
	 5RK3vH8OY9hAnhSYqPTSVWWyibxGgY7LvQEmGcPJ75yT1Vt6ZD2Gcsd7Io7h2rpGYW
	 4msJTtB0YrCPBnV2+vrcYj/OaCY6MMFVTiCvp9kmfn8SGI1E8fdPv4dEmDg4iYEkYb
	 jQv5QTkzDTm7A==
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
Subject: [PATCH v2 02/10] ARM: dts: sun6i: a31: Switch dma-names order for snps,dw-apb-uart nodes
Date: Tue, 21 Mar 2023 23:56:16 +0200
Message-Id: <20230321215624.78383-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
References: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_145643_495087_57E5A920 
X-CRM114-Status: GOOD (  13.26  )
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
 arch/arm/boot/dts/sun6i-a31.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index 6cdadba6a3ac..5cce4918f84c 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -822,7 +822,7 @@ uart0: serial@1c28000 {
 			clocks = <&ccu CLK_APB2_UART0>;
 			resets = <&ccu RST_APB2_UART0>;
 			dmas = <&dma 6>, <&dma 6>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -835,7 +835,7 @@ uart1: serial@1c28400 {
 			clocks = <&ccu CLK_APB2_UART1>;
 			resets = <&ccu RST_APB2_UART1>;
 			dmas = <&dma 7>, <&dma 7>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -848,7 +848,7 @@ uart2: serial@1c28800 {
 			clocks = <&ccu CLK_APB2_UART2>;
 			resets = <&ccu RST_APB2_UART2>;
 			dmas = <&dma 8>, <&dma 8>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -861,7 +861,7 @@ uart3: serial@1c28c00 {
 			clocks = <&ccu CLK_APB2_UART3>;
 			resets = <&ccu RST_APB2_UART3>;
 			dmas = <&dma 9>, <&dma 9>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -874,7 +874,7 @@ uart4: serial@1c29000 {
 			clocks = <&ccu CLK_APB2_UART4>;
 			resets = <&ccu RST_APB2_UART4>;
 			dmas = <&dma 10>, <&dma 10>;
-			dma-names = "rx", "tx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -887,7 +887,7 @@ uart5: serial@1c29400 {
 			clocks = <&ccu CLK_APB2_UART5>;
 			resets = <&ccu RST_APB2_UART5>;
 			dmas = <&dma 22>, <&dma 22>;
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
