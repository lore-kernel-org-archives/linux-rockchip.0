Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4CAC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 11:27:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9189660F56
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 11:27:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9189660F56
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DiRgqogKfj8f+LVGlN9MThkK8KNfcL6GYuyqrn01rsI=; b=qkeLZ7vMTFVsdN
	V3Utbf8IbxZekCDZR8BxEWNnFp+OiMjYoOLs8Iw8vEUVmzc14PNp27FAgOcfJQ6sLn3+XqeTniVEg
	BEV+IQ6NNu1JBsmHvr7ldSQKpjKQBWm3awYnfLbDjAHD8Ih3Zs/yTVyMYlJCF7BprWVJKXlWbH9fz
	TLmgwkWJnp4a86Zlwg9HM5cdp4MPamFV/SgTSlMN2uozbCq7gJANRtAKbiOwvox0bi4EPwrk+o8UH
	orpw9+1xGiSrl8STzmRtOpqdYs3UUqvqeEtPVtvDfOm+FAand0/O2zcpwSQX4brYAi0jjvsUUQnw5
	fTTO8Yd431xCQT2qYiYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbLNQ-006iuf-W7; Fri, 15 Oct 2021 11:27:53 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbL9d-006eoM-1r; Fri, 15 Oct 2021 11:13:38 +0000
Received: by mail-lf1-x130.google.com with SMTP id i24so39090608lfj.13;
 Fri, 15 Oct 2021 04:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=96jnA4ej/Uzri1MzuZ9UoSs3Fw1wfRJ3Z/GoE9dIJXE=;
 b=QorjoxGzfxWLxsFjAE+2QAcprbyddJkXxfvG+tUBRIWWMbQkCZJ0L72XWxTvcrYTR+
 7sxnnPb+nXNGhcwXEmZAb7aspra0lXbt0YdfFAzhKusySohB/3VM4Dw43S75sg2xpQ2a
 Y49OMqsGlX+nDiDF2bUX/s5K9qTuAErMhYOqbYA60liaY4sIIZmMM+vVujZt/y7/UHe7
 3kooHCFoXNMi4VFkndM7Sh+XoMNLGU9vwEEdL/N1RgrwMkx/RK8TovMGueViiJoPM8A9
 m+qgzpkWJa2rUopXCd9cROY2SopzmqiLQ+215B3TlxYbRbZWIoN7o7UNCXeue3l5TQqF
 WS7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=96jnA4ej/Uzri1MzuZ9UoSs3Fw1wfRJ3Z/GoE9dIJXE=;
 b=uouHmvX+mecaCGcfgJx/JhBhfpGqmvwcZ4K2hh/lJ/CC2zsnVac23jbx98Qn1hZ4U2
 DaH0q2CTLwrkdAsCd3nBVku1XeaJtuabmCqc22CZpsbjCiz+Uj8IXn5KqFoMUzNQwSsQ
 7+I5jyfyZe1h6sJK5KqdfI24XmnU85bvvJeodVoHntKUZgltRyvbfTXWh8gSMraY51AJ
 s/NKO4SCmfURJ0ttBc9brWCA41ZpL0qLXEB8MyujC9ZY0kf+EQXcdoS51Da7uBDtXDD8
 sn+AujHLZ+s07zlcMJpg61hE1nYUwrJozCfdVdatK6MleorOzfcmBtbdT4NwMJX3nkbu
 MN7w==
X-Gm-Message-State: AOAM5331enZ4rluAQCiX+6iHtrym8/Mr1GRUZrqgScw1NW6mZnegUW2k
 nilxMmfK6fqRwd1Fm+r4tr8=
X-Google-Smtp-Source: ABdhPJx+ctQa7OfRWwCG5zVAX/y0wrmmRLdqUITithI8O9z8oH8ze1L6DTb8XMoQEHCzGx4BF9Y/rg==
X-Received: by 2002:a05:651c:511:: with SMTP id
 o17mr12577381ljp.441.1634296414372; 
 Fri, 15 Oct 2021 04:13:34 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id s25sm534647ljd.63.2021.10.15.04.13.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 04:13:33 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: add spdif node to rk356x
Date: Fri, 15 Oct 2021 13:13:01 +0200
Message-Id: <20211015111303.1365328-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_041337_201378_5B6093DE 
X-CRM114-Status: GOOD (  10.79  )
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

From: Peter Geis <pgwipeout@gmail.com>

This adds the spdif node to the rk356x device tree.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index b721a34ffa8c..f0e3fe445ace 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -608,6 +608,20 @@ sdhci: mmc@fe310000 {
 		status = "disabled";
 	};
 
+	spdif: spdif@fe460000 {
+		compatible = "rockchip,rk3568-spdif";
+		reg = <0x0 0xfe460000 0x0 0x1000>;
+		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+		dmas = <&dmac1 1>;
+		dma-names = "tx";
+		clock-names = "mclk", "hclk";
+		clocks = <&cru MCLK_SPDIF_8CH>, <&cru HCLK_SPDIF_8CH>;
+		#sound-dai-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&spdifm0_tx>;
+		status = "disabled";
+	};
+
 	dmac0: dmac@fe530000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfe530000 0x0 0x4000>;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
