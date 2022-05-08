Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF37CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1YDJjBF5mjnoDrj/5W6J3ZWfDuzhMobw4PCadP9TAbQ=; b=25+rkZlmSkboG2
	exal3LcsAQC9iTP+FcNdEl5VHtlURtdGqIXXRcdpMsdXszpKL1BzvYzSujX+SYOLbzwNnK+8ICFrD
	QATUUHlKilazrdGt93ybkKVyZA1PCFMIqk2EM0EU3LYK0Hs09mX3IiT5MAQlJFDDnkY8jaYCs7yoR
	mpw9utqAgBwqHrg8k3U/cCGv7nqE3BmUTLxFIxTVkkNGv/qZXxFleAyQWkE+iMdIDQIByFohrXgb0
	Edz95hc+FmE7mI8x8QSjhBZ3wzLl2QWHu9e4Ke59PQUUy7nZOWcAUzX0txqsBTFx/jU9zP2Cvl5Sc
	RS6yspgzefOExn8fCXrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnUB-00BL45-Q0; Sun, 08 May 2022 20:26:35 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnTl-00BKnR-R6; Sun, 08 May 2022 20:26:11 +0000
Received: by mail-ej1-x636.google.com with SMTP id g6so23310777ejw.1;
 Sun, 08 May 2022 13:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TSUnltcnxB8eV4VrYsSiSm4/tOdwwwPKXlxEHNw+w2o=;
 b=m6VYQkJuWb7ICTN5thHvelfUzu9+ccnwndD9rTLRax278oSgt0bZQQb3VO0i+pCd3R
 uyOfkYApc5ZyOq5ueuTmDhqqH96VUf5xTDLapsjMf12sfp9WTvWtEnzC4cT5D0JW5ZJQ
 /0EmuXTZKBJQbNTIRRRTvSTM7Eq7FxDH0D/OOuzKBcHxBXWTWXtcGtULPAfOWKlOe+z+
 RU8A6g3K9GmrQo0LpsoQB6sHkFy0I9Jua3CBOKyw+KafJqUq09d9WqrNaRmGIAXSsVUJ
 D62qTk05ZDKloElvhBM5AXuywrW417DI2+oRq7rI0yhMvomyxud5UcLivza634eBNsqg
 Xt1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TSUnltcnxB8eV4VrYsSiSm4/tOdwwwPKXlxEHNw+w2o=;
 b=nTYN4JG3r+wcv/7hq0xXhHqvEyFwhFn0zZskzZ4bm7Ba1iCDMPjnrszTBL6E+D0H0q
 r7bkboj9j+FlnR2PaU8SdkmO2mM3yJC09gk+5mI3xVq+XV1AYZ9W1k2qGXBNATMLhGBM
 trumiTrNqj+/tdpadktJP5Mj16wBkOAYcCL9Nt6wKJkc2NZVQdGoENDMdAXpyV4R/a02
 77zQ9GmNtBZQi+oO06wpOoDqiW/ZQuneyBRYMXO+iFHIJH/U23Z3xinMRYBghrycYXS1
 Zs1EEr40OVd5JwCk/e0dg2Y5NXuXuVPsJDjaKKZgi2k6D77HMjhC/dxoCBn7wVYS6eru
 vhJQ==
X-Gm-Message-State: AOAM531CrsWHkaClO3gYYsQCjWmoYGjrQcBN3mWfSOJzn4dmT4y8wbjf
 Z41P2EQNVEpc60zTB2RGcvU2sU+eDYYVJQ==
X-Google-Smtp-Source: ABdhPJzdMN/f7ZWaohfNeUNNXrNq/2c59BKKXWhM2P/3Puseb7ir8GLeyLApz66URMK4byTWlj4rxw==
X-Received: by 2002:a17:906:6a14:b0:6f4:78b8:39e7 with SMTP id
 qw20-20020a1709066a1400b006f478b839e7mr11662003ejc.309.1652041568682; 
 Sun, 08 May 2022 13:26:08 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 eo10-20020a1709069b0a00b006f3ef214e1esm4341459ejc.132.2022.05.08.13.26.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 13:26:08 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add Hantro encoder node to rk356x
Date: Sun,  8 May 2022 22:25:44 +0200
Message-Id: <20220508202544.501981-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_132609_922954_13EBE6D7 
X-CRM114-Status: GOOD (  12.62  )
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

The RK3566 and RK3568 come with a dedicated Hantro instance solely for
encoding. This patch adds a node for this to the device tree, along with
a node for its MMU.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3c..2e3c9e1887e3 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -508,6 +508,27 @@ gpu: gpu@fde60000 {
 		status = "disabled";
 	};
 
+	vepu: video-codec@fdee0000 {
+		compatible = "rockchip,rk3568-vepu";
+		reg = <0x0 0xfdee0000 0x0 0x800>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vepu";
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vepu_mmu>;
+		power-domains = <&power RK3568_PD_RGA>;
+	};
+
+	vepu_mmu: iommu@fdee0800 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdee0800 0x0 0x40>;
+		interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3568_PD_RGA>;
+		#iommu-cells = <0>;
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.36.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
