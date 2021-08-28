Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50643C432BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 14:03:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E76D60E8B
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 14:03:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0E76D60E8B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJBpW4EsvYkTSX67WvMoZumB8nyAjplmj5nQbTK3aug=; b=felaeYwunWL0sr
	4vByoglRDhvgbuvKoXV7Is5BpgLiFlxSIxjaJGU1rrtAJA0Dm/RenTdzZsU4+Q7+Mu99/FUOph8a3
	+5vcVjXV2Ss8pi/SBDbdiLm5wOUmjf8XmtWNihg+TOOsKn/UrFm4Ya1qG5dgszbeEpMW4xVtu47Wl
	7m5EC9+XmxVnYPVfoajBZ2g+Eq2qT08Npq+NbfGYUo0okJ+Ie18/LBqaf1+hAtA81GWcMK/UGEcnO
	GrYCq0GRNPHXaLclgjwDfElFf13U06zRtTSU/5jdcg03R5WnNzAMr1Pv9lfEbLpMSUBw/UkoU8XPX
	vRvxzrOIQCW6P070deSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJyva-00EJLa-1c; Sat, 28 Aug 2021 14:03:22 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJyus-00EJ0I-Um; Sat, 28 Aug 2021 14:02:40 +0000
Received: by mail-ej1-x62a.google.com with SMTP id t19so20301621ejr.8;
 Sat, 28 Aug 2021 07:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tyrOm7xpawJP+/ommIWD0ISWok2qoozg6cD1tMaZFAQ=;
 b=NDrqi0pnyBtaxic7U2vZv57APr6RKXS5EgGD7rDCG/23xL4GyGge2Ex/XFAb5TExTK
 R33oWBmooBhy1FQS9DAJTIYbi6Nki0gzBpDsgYPTdPRg06ZALAeXfplTWHfWmAdha77U
 gF4SQkk4kQ5wYyzhCGurEnzNVqHdUy/FZU0+qQIbYz47ExU1evoRIrVpgiIqN/VNO7LN
 gAhAuP1L0LH3wnfbq5wcSQv2D3XsyEiCAlNJmsSBj7JjT7OJzYPO00ymZN3F20HMaaZB
 7j7zjaD0uy2S6odf3FB9gAMYiHYbd9KyXgHsS+VkWmKFQUVwaHy+pHpm7kpi+wPfKCmU
 UNFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tyrOm7xpawJP+/ommIWD0ISWok2qoozg6cD1tMaZFAQ=;
 b=X50NY83U2dh8w27ZyHvPC37cE5bqoFxmuZ/FIJWf27+1V6o1JS7jJucLV+BMMSo2x0
 J8X7/ZiZo00Mw+la2jSI16oBZjB/Z+UoGjt94IN0vnPooeVpUTS+uzYocSy9HwVzz7ag
 S4HeLd7YGm9Ln/A4xYucwMZrzTOSI7a6JVjmqTpW5JBKRz3iPkK0y5b7lZVFrbFeyZP9
 v2TRzdufqun6ggzPwJeKKGuyd26woT291DJhamkqESBWOe+n+v+6xxdOU9rqviPtSfr/
 Wk5TXMCBeNHSIOGusjzEy26w7LW1b2TRx3l0UDB0gFwwlMJW5zn+jrcnHvVlIGjISjoh
 TLDA==
X-Gm-Message-State: AOAM533E5qmtXaeswlaTlhCZbpRSbiJozT+YcY1XZm9GuYs9z7GPWLHq
 DmDiUr+Xawqv5ij/kYAT8Lg=
X-Google-Smtp-Source: ABdhPJwqo8tWbX+5ybYyu3tB5S9rK0+kkjK/8nmzpCxt46RE0NK5Y/58dPTq9aFReCRqNM3y2mqEDg==
X-Received: by 2002:a17:906:fc7:: with SMTP id
 c7mr14814325ejk.333.1630159357831; 
 Sat, 28 Aug 2021 07:02:37 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id cn16sm4953982edb.87.2021.08.28.07.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 07:02:37 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] arm64: dts: rockchip: add i2s1 on rk356x
Date: Sat, 28 Aug 2021 16:02:03 +0200
Message-Id: <20210828140205.21973-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210828140205.21973-1-frattaroli.nicolas@gmail.com>
References: <20210828140205.21973-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_070239_037415_771FEB8E 
X-CRM114-Status: GOOD (  12.37  )
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

This adds the necessary device tree node on rk3566 and rk3568
to enable the I2S1 TDM audio controller.

I2S0 has not been added, as it is connected to HDMI and there is
no way to test that it's working without a functioning video
clock (read: VOP2 driver).

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 13b185e1dc5f..fce760996a64 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -559,6 +559,32 @@ sdhci: mmc@fe310000 {
 		status = "disabled";
 	};
 
+	i2s1_8ch: i2s@fe410000 {
+		compatible = "rockchip,rk3568-i2s-tdm";
+		reg = <0x0 0xfe410000 0x0 0x1000>;
+		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_I2S1_8CH_TX_SRC>, <&cru CLK_I2S1_8CH_RX_SRC>;
+		assigned-clock-rates = <1188000000>, <1188000000>;
+		clocks = <&cru MCLK_I2S1_8CH_TX>, <&cru MCLK_I2S1_8CH_RX>,
+		<&cru HCLK_I2S1_8CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac1 3>, <&dmac1 2>;
+		dma-names = "rx", "tx";
+		resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
+		reset-names = "tx-m", "rx-m";
+		rockchip,cru = <&cru>;
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_sclkrx
+			     &i2s1m0_lrcktx &i2s1m0_lrckrx
+			     &i2s1m0_sdi0   &i2s1m0_sdi1
+			     &i2s1m0_sdi2   &i2s1m0_sdi3
+			     &i2s1m0_sdo0   &i2s1m0_sdo1
+			     &i2s1m0_sdo2   &i2s1m0_sdo3>;
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
