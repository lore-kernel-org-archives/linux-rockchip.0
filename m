Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF4DCC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 18:30:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AECD461247
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 18:30:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AECD461247
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsR6bqlSYBggtC1CwB4x0jULqE/pQcGIxRg/Wl90/WE=; b=Zxh64k6bopuLVY
	sLWXxuo16O5fufgwMm/n8DafXkjF2/QnE3mMTEA+8sfepfersh9JQtdbh5HI85fntPxaV1CLnXYPN
	dpFOoE35gvclFQQgJ0HpWc1/txhS3akwaoD0zuWqmViva/H+fFzxfxSRo7D2NUS08JADj/Anh815R
	1eyXZQ0Pujd6OnDsMHuJXm0p2aUR32gulC4LGs2koFdI44/88zkAwNZjGkrZDZLb52VHJYtz2rSgR
	ZasUNeNW+gpLp9GuWk+JPZimfvlnEbG12DwZG5icX8//ALEKdn7VnWhWlMXm5C7cEtM18QMXaPUTN
	Yko1JZDmJ18P0yR5qTXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH9Hm-00Brg6-73; Fri, 20 Aug 2021 18:30:34 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH9G5-00Bqpm-TQ; Fri, 20 Aug 2021 18:28:51 +0000
Received: by mail-ej1-x62a.google.com with SMTP id mf2so3414806ejb.9;
 Fri, 20 Aug 2021 11:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cENZLLHwvvAfM8Bz4wGMWapvwPbQelm5zUSRTGsu2cU=;
 b=YgqbJh+/0L5gXYDdr+o23/i/axG68ZmUx2va6Gy2WACDnZuoLfS06sWobv5qmAW0+w
 gdNZcsJP4LTQcH/jlmzkOLrAQcOdBUFc5bfZfOgLKg7RTCWosWyMoktYcy7ldD/d22nW
 hmZc+cMQEILYYtKDZN7miPZrEnQux3BUCBWZE9CVhKIvCTg/CfAgP2Hl8UkJhiWOsGML
 l0rwFF41lh2UNkpQ88tntyR9agKqQshOWKHe1e9DxszUf1oIX7iwWcrzT3nwt9493zUD
 fUqpZkhHIlHUXGVOMrFpITF/gCohkf/MtKUbP44+9G8/+b/lsS/4gr//Ovr0KifatsWV
 sA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cENZLLHwvvAfM8Bz4wGMWapvwPbQelm5zUSRTGsu2cU=;
 b=OSVT80oEHbPnH3YGcjJi0yHAJbNQJopFwnvx5KelBfJREh4sJS2/M8UqsB2ceZjG64
 ZFYbmOLR6IB8M65RQMQsh3ptq0kDGXSyDE8U/bO9zNRo4cIIGgNZcL6XmDyar8O4eT0B
 aer5bE2GFdyLDmGUghd3uM4ImOr0R565HoWRnpEk//MSn/s5zvWZ3bCpED7Kj1iSnjq0
 pgZ8ZxxXTztTdy+McTZewOAChT8evZh4/4yt0AmI/3LsED/ool3ErpeWjTpP+yNRWNk9
 ToEk7ZH02Gx/kyIhw4WPlLWEl/7UR6WsXrG6GOLoJxMMoftibbycKoI1zzUW5NkeeAj7
 D/Cw==
X-Gm-Message-State: AOAM531YgxNestGfDbcVj8+EPLjQsIqXUyjzqzgvo/MTa5dx7j3Ly5/6
 mdH3aRKULWGubYQvEcJhC5ZhS9X6HgumsDwU
X-Google-Smtp-Source: ABdhPJzzDAmM7MkDVx9k6BD8jNsrHQmaI3IcXGRpV0WTAguxnyM2hdb4BYvVc3cMI6DcD4ojJXY7Hw==
X-Received: by 2002:a17:906:3854:: with SMTP id
 w20mr22731050ejc.537.1629484128360; 
 Fri, 20 Aug 2021 11:28:48 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id n10sm3255724ejk.86.2021.08.20.11.28.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Aug 2021 11:28:47 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: rockchip: add i2s1 on rk356x
Date: Fri, 20 Aug 2021 20:27:30 +0200
Message-Id: <20210820182731.29370-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
References: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_112850_025357_BDAD5B3C 
X-CRM114-Status: GOOD (  12.56  )
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
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
