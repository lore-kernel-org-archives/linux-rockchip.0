Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6120FC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Nov 2022 09:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SV7BmJenAMIWh20jbuK6dsSiPgUqLkGWS7mnF58Zxeo=; b=Hzw3DupGSlqJsm
	ElkbN47rUatA7TgjndYz/6Wz5HsraIN+tZHRXXrLGDYXUJ01t/Jo/7WgtwbIk/5UPrI/isjIVlG0w
	aZupf1OY3EfeKNPN5lCJl1Uk8wFPX+Taosdh/rlR8Dao8TRSPkDcUGhEBKEC6vka9FNObhFq192L+
	f1LBvHX8oPOKJe6s+2UUMI9ykuwWdTWGQsk35jQj8VjYyeVw9hTxz6A3dyhwF2c1Nehz2RPmB0iom
	uJhU0HaL17Kb3ABMOQZud6PSwpe8bLlaB3bU0sRA0SQpLE0rKO1qQaXOPqfii263CyO5GsCiOfsHW
	a1+czM+McoozM0sRrxfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZb-00EgGi-H9; Fri, 11 Nov 2022 09:43:43 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZ9-00EftM-22; Fri, 11 Nov 2022 09:43:16 +0000
Received: by mail-pj1-x1031.google.com with SMTP id q1-20020a17090a750100b002139ec1e999so4292154pjk.1;
        Fri, 11 Nov 2022 01:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OJCmo94b1oJ9vc0/hCwgxQah+/q6uvuZ9wtDIOuRZ/A=;
        b=ni+fvzQCq6/9nD9W/JZrMrtM1lUktOy/aSft4Q/Qsd7BxmT4A8kPvgtrhKu98w1874
         UtqN7jPJsOq3PvlCK0/lRnM7/uVZSHteJHOGoCXQjHHxHpWaA1dbUUFih+Tezat7JNfT
         vVJG8qnHkHxRDrSl8eR8NZRuM7cDPOP8a8po/S/tJJzumvc7bH07zbUHr+G+Fo/kWLHj
         Sl3EiIknP5T+14bdwNEhYANFgwRt9feWSrUl8SYLrXclVhmG7lJP5oZTXdEV/VnBfEmL
         O4Rb3ynKqxPSqp4KOXIu83Hbqo2zMc65IntCrcs+tg8ZXTVZLBAij84n36zYIRKLUSTB
         DJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OJCmo94b1oJ9vc0/hCwgxQah+/q6uvuZ9wtDIOuRZ/A=;
        b=Be7L2yTT5Xq5dJ+HgXjASKDyHtAPOsk9vRMBBGM8qDa82Qiv5ol12KWRQzkY89u+8P
         5d08l6+kFqjyZuQfysFPcmVTkqsKP+K1hhXg+WMB6VngKMmPU6mWoBkO1yWZZFqOtZNO
         8EZdt5EXAw1XQfpEc3O7XHhrFC3+2TRgKbeW5uv/EvfiOvu3LbV14I8KJyAGPdOkqhzR
         qQXcdpba5FqXVWOL5CiFvRPmutdcRapoWRuHLiaclu6QU2qRgcP8+L+HQOafClTuEM8T
         DHX1Ofv3vuiRZIdB4ksZd5FUKpN9RaAaIkkYxgoy4Fj0DBvB8VfLx8g4NJxBHe5Z5Qhw
         IkdA==
X-Gm-Message-State: ANoB5pmXelLSaavn5cEVAU3aN5Fce20dSHXH2x7Zhmfh5bpZbUkn7Yig
	c8RvTc6pBvsSzJPS/d/T9Bo=
X-Google-Smtp-Source: AA0mqf5H/u8fFcWTrP/MrfNUDIYjFsgnm/vxcngxEwxttD5qYOnMHkpF+EpdyRJEPUbDKSiCmNZwnw==
X-Received: by 2002:a17:90b:2710:b0:20d:48bc:6666 with SMTP id px16-20020a17090b271000b0020d48bc6666mr1053055pjb.98.1668159794615;
        Fri, 11 Nov 2022 01:43:14 -0800 (PST)
Received: from localhost.localdomain ([103.51.72.74])
        by smtp.gmail.com with ESMTPSA id fa13-20020a17090af0cd00b002086ac07041sm1188450pjb.44.2022.11.11.01.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 01:43:14 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [linux-next-v1 3/3] arm64: dts: rockchip: Fix ethernet reset node Rock 3A sbc
Date: Fri, 11 Nov 2022 09:42:35 +0000
Message-Id: <20221111094238.1640-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221111094238.1640-1-linux.amoon@gmail.com>
References: <20221111094238.1640-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014315_122008_4CF1DFF1 
X-CRM114-Status: GOOD (  12.32  )
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

Add support for snps,reset-gpio reset ethernet gpio pins and
drop the mdio reset code.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 16fff1ada195..9172cf60b867 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -258,6 +258,11 @@ &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
 	clock_in_out = "input";
+	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+	phy-supply = <&vcc_3v3>;
 	phy-handle = <&rgmii_phy1>;
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
@@ -267,6 +272,9 @@ &gmac1m1_rx_bus2
 		     &gmac1m1_rgmii_clk
 		     &gmac1m1_clkinout
 		     &gmac1m1_rgmii_bus>;
+
+	tx_delay = <0x4f>;
+	rx_delay = <0x26>;
 	status = "okay";
 };
 
@@ -583,11 +591,6 @@ &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <0x0>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&eth_phy_rst>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
-		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -625,12 +628,6 @@ vcc_mipi_en: vcc_mipi_en {
 		};
 	};
 
-	ethernet {
-		eth_phy_rst: eth_phy_rst {
-			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
