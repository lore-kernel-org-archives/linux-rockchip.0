Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88EEC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:56:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C6676108E
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:56:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8C6676108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHLAadoyy1C6Pif+kz0rtLaxa8zG0NYZUQnuay0abJY=; b=mLPvlbGtMSCHDQ
	8mCCQHRkKU5X/7dCB1+4Lri+70mtuDQZqtByRY0JaNqvmzHrhffRsyfjNS/iblZZ2xTQPjYk6dEs2
	SBG9gAXLtqAM78Baxot01rKRL3E+a6OIeaA1Wzg/LXmWvEWk3Icbs3BOnrzKUMIiiEmdVQTEph7+g
	CxER7LyCO8XJAJyulyEq4uOOM+LoUHBq3XrLYlT1YPgtpBk9yaEtVoc3MgNV4RJIdEF26QKOZ6fRU
	R24u+jMO3JA+kF/X7t6jaO2OJxnpAHRBsWcA7Z+u2SfX7cN+0P99K7ttuUBv4FyAcq6CPpKX0Barc
	5uVkXJoHFgixbcMNgcqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbhML-00APi9-Pt; Sat, 16 Oct 2021 10:56:13 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbhL1-00AP1R-FH; Sat, 16 Oct 2021 10:54:52 +0000
Received: by mail-lf1-x12c.google.com with SMTP id r19so52066304lfe.10;
 Sat, 16 Oct 2021 03:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wi/go2f54ZbFfXhsHlUc3orIWIsyjFbHjZPbW+7SsAo=;
 b=mm0NoWBd/yh40pLFmYxh4KC3h1iEnZuhD97go3OXuJu2tfNMkRp5zufOro5MtTKo80
 IVk5sOPQKgMaIKtZQk7xQJ88+qGdfeXuMI/RRN0qoZ5qhl1i6h82btNMHwV1KHpYvQX1
 sFY1Rniuur2YtuXXrWx4n3jC47xoEv9ff/N+ZFRqyRMmUrOD4pDSxU8XYXz9JCpDdBiU
 2XObNpz9YGikcj3ilQxdfJhpBsI4JIfNkYAI+d86XrJV55EL6fzBJr7iWAet/pIxJr19
 /G8iZUMFuEAYuCiX0n7GoimqD75H6Lm+afrUBznQmO6M+zdsPNgjGA5M6U3Af/Uufb3l
 9QZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wi/go2f54ZbFfXhsHlUc3orIWIsyjFbHjZPbW+7SsAo=;
 b=CyXL82S2kSkKzCI/PZ+ZZX5kLgWgQvMIYzGHSDWnxdI2XfYUuEHDPIG6KMSj65nA6c
 0JC1NCEjdAOacsiPKH5Q2X94iSaqCm88GVRS83KOHeC332hQu4dwnfQd8IzJw9W1Rrug
 veCgSlfM9yWFtDjlhH0zj59gA7sE4ESgyU8o0Tbxl3Fbu8rg+qy8zA+QOEoS3lOiwO39
 KsWxtBxXxYT4V3kLMzIpeA9uwwMujRVJ6RiWkAM9aAAohQb4EV9JTsUimxIjQhXyQkza
 YtwHxucJX8q6E2PB5VQfnoJPEgWd3iAAWSdKK/vZ2CJfWasNbsqQsWat1JHY3qYhHyhw
 NamQ==
X-Gm-Message-State: AOAM532PpODVlHrmF7pKaEusM0H7WYiKYqUsQxffB+CdmRqvN7Dtnlnz
 BzofNOFwca9q8spPw9vS8rg=
X-Google-Smtp-Source: ABdhPJx0lDdpb3RXSHcHSQ++uPgL5lbFYzlr1mpV7ObRZ57GyoodD3AUn7zkOb63SBfoN/XoNEbOdw==
X-Received: by 2002:a05:6512:150:: with SMTP id
 m16mr16762581lfo.331.1634381689825; 
 Sat, 16 Oct 2021 03:54:49 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r3sm814224lfc.131.2021.10.16.03.54.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 03:54:49 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: Add analog audio on Quartz64
Date: Sat, 16 Oct 2021 12:53:53 +0200
Message-Id: <20211016105354.116513-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
References: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_035451_587558_BCE42861 
X-CRM114-Status: GOOD (  13.52  )
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

On the Quartz64 Model A, the I2S1 TDM controller is connected
to the rk817 codec in I2S mode. Enabling it and adding the
necessary simple-sound-card and codec nodes allows for analog
audio output on the PINE64 Quartz64 Model A SBC.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a244f7b87e38..f1261f25cb35 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -58,6 +58,20 @@ led-diy {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK817";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vcc12v_dcin: vcc12v_dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -199,8 +213,13 @@ rk817: pmic@20 {
 		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 
+		#sound-dai-cells = <0>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
 		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
@@ -392,6 +411,16 @@ regulator-state-mem {
 	};
 };
 
+&i2s1_8ch {
+	status = "okay";
+	rockchip,trcm-sync-tx-only;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx
+		     &i2s1m0_lrcktx
+		     &i2s1m0_sdi0
+		     &i2s1m0_sdo0>;
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
