Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB6CC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 06:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itE6gc2Z/DrLHxIhaYR1Rs9s2HCnVTCwGGGvT9mFREg=; b=nDdaJ5zWtptbJW
	qUc5Tf19qelJCr5vh9a0a/u4n2sTMW2LnoFT/GOCsltpvTaIYQolTcYHOEiN+QKpGza9GsmhV3x7V
	8XqfQVDOtXooUI1/feRdi+nIQz5dvvtI0PK6Cm7+Ol62AZS7m3otCVzI+yG0KjCFn2G6KYYLmN1Kn
	EALH4+KHhFGwddBR8cGNo7LBOvBIGDmd99NfG1afiXMyj0dK4uAbDyGoM3fEJP8Uf9wV2hx683Tgh
	o2sSm3cUqnwkTRlWBinkzdITfIkDFs75z2j1Jfc+q5eUUJUy+Po03RVfx+sN41PSjoNaEWlyN50gD
	zLUdsTQKZ/NYl8PlICZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9h7P-002J10-7s; Mon, 26 Dec 2022 06:37:51 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9h6R-002IZz-CV
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 06:36:53 +0000
Received: by mail-pl1-x62a.google.com with SMTP id s7so10044746plk.5
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Dec 2022 22:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zRydJoD+3l5BbQJGYGzK94pJXqmLy5AkAXCFfnzAak8=;
        b=BFKUYDcDi3wJiuZe2q7RhU8Ttz5/yi1pUbqQclFaweXlBEp/WqAB8nILCvIWhw/Ljp
         bedu0Ey77KV4ihqj2K2cN2YqIO15O44OogbyVhFhzzHZaLxoIAitNkdqucOPEhv2jlIi
         UrkSEQafSVHrGMtwZycsUn8w0jHX9WlsHbZg/IMdhgYzcn+xfB2PuOhb7Q8FInRZuB4o
         D1hRwpcy5kOAsZZiTitt/JNsKp2CLLMDMdaI1lojwdsq5H+ZWMBJI2bfBiicfLMJopp9
         cpus5BZf7g9N+aA2ptDcdEBC/uvCexvfJMiQcnBZc2hJ+lit6eBpvMdkVGiFbKu05QDp
         PA1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zRydJoD+3l5BbQJGYGzK94pJXqmLy5AkAXCFfnzAak8=;
        b=I9uzyCaV1b0Mf30NDRypc1eG48JV6AxGRzpwKfBw8ExPCJnWfBcqllXdW/pJ9pFdfb
         +qc4XvPkMlLty8LiOYa0J7xQL5j0X2Hjdyc2887FkZFcRYCpYcewkwnV0O1w0ID/uxpU
         qpHma3dZ+lcbTHZqB7iDmXuiW/2AUeCOAhcFlIVIpoDm2ZLv/YLVzLcOQ9tDosY4IifE
         RbkkokwMnYk8GzBaqvgbSgKgCf31jFdBg7usjethpqSEn9stZRMnoBKc/G1GM+oOgyFc
         8B8sVKfyhrXXqXwBjuoGmB0f9LLEHbk7NXMM62oG6OLTrVtv5dta1jD76hHW3fWw+agq
         5cyg==
X-Gm-Message-State: AFqh2kouqt9QUxQTbfO/EUMcIjXobczySrBkGz7XEbXrVtlYo5fPj7k7
	RXiq28nbX//D4ddTp/dPWliZHg==
X-Google-Smtp-Source: AMrXdXvW7ZGz0p3A8h2MncIToc6h6JK5uh5DjZOAx25rPJ7yJsQI2fj/1Ma3hLFakhZZ83eXaZUb6g==
X-Received: by 2002:a17:90a:ce07:b0:21a:db1:d87e with SMTP id f7-20020a17090ace0700b0021a0db1d87emr34264398pju.8.1672036610156;
        Sun, 25 Dec 2022 22:36:50 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id 31-20020a63145f000000b0047048c201e3sm5730659pgu.33.2022.12.25.22.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 22:36:49 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Cochran <richardcochran@gmail.com>
Cc: Anand Moon <anand@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCHv2 linux-next 3/4] ARM: dts: rockchip: rv1126: Add GMAC node
Date: Mon, 26 Dec 2022 06:36:21 +0000
Message-Id: <20221226063625.1913-3-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221226063625.1913-1-anand@edgeble.ai>
References: <20221226063625.1913-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_223651_563591_8350C133 
X-CRM114-Status: UNSURE (   9.22  )
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

Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
add GMAC node for RV1126 SoC.

Signed-off-by: Anand Moon <anand@edgeble.ai>
---
drop SoB of Jagan Teki
---
 arch/arm/boot/dts/rv1126.dtsi | 63 +++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
index 1cb43147e90b..bae318c1d839 100644
--- a/arch/arm/boot/dts/rv1126.dtsi
+++ b/arch/arm/boot/dts/rv1126.dtsi
@@ -90,6 +90,69 @@ xin24m: oscillator {
 		#clock-cells = <0>;
 	};
 
+	gmac_clkin_m0: external-gmac-clockm0 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac_rgmii_clkin_m0";
+		#clock-cells = <0>;
+	};
+
+	gmac_clkini_m1: external-gmac-clockm1 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac_rgmii_clkin_m1";
+		#clock-cells = <0>;
+	};
+
+	gmac: ethernet@ffc40000 {
+		compatible = "rockchip,rv1126-gmac", "snps,dwmac-4.20a";
+		reg = <0xffc40000 0x4000>;
+		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "macirq", "eth_wake_irq";
+		rockchip,grf = <&grf>;
+		clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
+			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_REF>,
+			 <&cru ACLK_GMAC>, <&cru PCLK_GMAC>,
+			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_PTPREF>;
+		clock-names = "stmmaceth", "mac_clk_rx",
+			      "mac_clk_tx", "clk_mac_ref",
+			      "aclk_mac", "pclk_mac",
+			      "clk_mac_speed", "ptp_ref";
+		resets = <&cru SRST_GMAC_A>;
+		reset-names = "stmmaceth";
+
+		snps,mixed-burst;
+		snps,tso;
+
+		snps,axi-config = <&stmmac_axi_setup>;
+		snps,mtl-rx-config = <&mtl_rx_setup>;
+		snps,mtl-tx-config = <&mtl_tx_setup>;
+		status = "disabled";
+
+		mdio: mdio {
+			compatible = "snps,dwmac-mdio";
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+		};
+
+		stmmac_axi_setup: stmmac-axi-config {
+			snps,wr_osr_lmt = <4>;
+			snps,rd_osr_lmt = <8>;
+			snps,blen = <0 0 0 0 16 8 4>;
+		};
+
+		mtl_rx_setup: rx-queues-config {
+			snps,rx-queues-to-use = <1>;
+			queue0 {};
+		};
+
+		mtl_tx_setup: tx-queues-config {
+			snps,tx-queues-to-use = <1>;
+			queue0 {};
+		};
+	};
+
 	grf: syscon@fe000000 {
 		compatible = "rockchip,rv1126-grf", "syscon", "simple-mfd";
 		reg = <0xfe000000 0x20000>;
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
