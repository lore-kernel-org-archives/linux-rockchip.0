Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9AF8C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 21:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJl47YSznNvPGMuQOWxnPIv6YbbnzQO3WuolarQdtQM=; b=EGN4po/8++PWe0
	GNIUrFwmM4nljWZQIKjAdRNnxlz34sSaKvzSbBn7yRCdUakzd44k2dNX4O3OBU8BcUvkcMg6XkpKx
	B8gK9wJjkiwCjkJDyxQxlbdugyKuJV7t6WVEZL68gzRGXR2ihNGoOOVVerZ9ySW43r5tBqjNUgy9i
	A6HDDuWHb/9V7JC99oHZJEvczi/xWHORfONkHiczvmrdHaSGmkDZZFtfyq8drhzt0cppC7ZNwBvds
	n/sDWg8eKCvjLL2YgjBroKMSYD8vkmQh6Zyuc3bTaJMOtbxvo+in2gzke6ppA9SRVdQUR0szGcC3h
	tnnVZLinpOr7Af56qxCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovPlO-0084SH-Nh; Wed, 16 Nov 2022 21:16:06 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOc8-007TSi-6n; Wed, 16 Nov 2022 20:02:29 +0000
Received: by mail-pj1-x102f.google.com with SMTP id l22-20020a17090a3f1600b00212fbbcfb78so3360274pjc.3;
        Wed, 16 Nov 2022 12:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gWHeg8M1ItPKLADHrX13a52utCw4BMmhpRsIIQk2Fck=;
        b=XMsHoBVwkTCzyxRUnxAnS4OFKDbb1cNra2uUSHWdYCfwL9DGCbnSB80aMn0s2RiSv/
         dzgPX4ZLZz7WWLKdqaz/iMX3PYvnXcUaA+GfcKYixqUqO1KRF6V8B041ZZiWqWvWJyRs
         KjxLQ3Vfcjq7dCBSBret8vz3d2bVmpMplOdSDnlrtGBX7rhcfTReRFbwKa2w6z8qipXe
         oNNaCNmgrlR5CcasYxh5HGGqk8bm9yBmpMm224JG/biPZESuByYdmSlCtPPPHnZAyWmS
         e1T9vGJOgXrxPr/+rnxsgCAuWmUYP8EJHeiZxmeC2YJN+4J1NmjeQn3fX8/s2XEpeBfr
         XUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gWHeg8M1ItPKLADHrX13a52utCw4BMmhpRsIIQk2Fck=;
        b=WgE5o1wGggTMKyhfuqH1kPIjYWnPte+Ruo8ZXJlgLAharpIK4Av2ku7DMJEe8dW0Lo
         Yw6xxCADu7tQZHBf9jh3wobmnQYYJoE/oaEsJdzp1GP/wHLZFuYzwGQrO8dkIQ3GqvMY
         l4MmSa4JY7H0q+xu3TIasL8DK2iqZdIZCSx6KbSEKoJKKU47bAUEIndT2YY0l8qHDBLV
         uywTwKK4ctAQY9Ohrx8ZXeNqInUjrAxL1X2rJthQrSQFOgA63+wgDQbr8e4ZPzpJV1Uu
         VG6orxL0a+vcuTv45KH/MyAsmazhvqWOWlcWF7gjtJ2S5g177/ujog2yhGcwIRh1AmFB
         J/xw==
X-Gm-Message-State: ANoB5pkeYBuenpAtazpQB40LYOQd5Q9M07VtnT1/1aIJYtH6wZYncEsq
	OHNEw8fwXfULeaVr2TeE+C0=
X-Google-Smtp-Source: AA0mqf5WKCdpBqS0le2On+nkdH9MkMJqW/Gj1R/YMS4+BiCNzeC5zLTPe4lkmEF8PNdG2C5SYXspFg==
X-Received: by 2002:a17:902:c94f:b0:188:712f:dfa5 with SMTP id i15-20020a170902c94f00b00188712fdfa5mr10049999pla.140.1668628945118;
        Wed, 16 Nov 2022 12:02:25 -0800 (PST)
Received: from localhost.localdomain ([103.51.72.182])
        by smtp.gmail.com with ESMTPSA id s18-20020a170903215200b00186a6b6350esm12423950ple.268.2022.11.16.12.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 12:02:24 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [linux-next-v2 1/5] arm64: dts: rockchip: Fix gmac phy mode to rgmii on Rock 3A SBC.
Date: Wed, 16 Nov 2022 20:01:43 +0000
Message-Id: <20221116200150.4657-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116200150.4657-1-linux.amoon@gmail.com>
References: <20221116200150.4657-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_120228_261272_D95C8C95 
X-CRM114-Status: GOOD (  13.35  )
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

On rk356x ethernet phy support reduced media independent interface (RMII)
and reduced gigabit media independent interface (RGMII).
So set the phy mode to rgmii to support clock delay, also
add TX and RX delay for phy-mode.

Fix following warning

[    7.365215] rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
[    7.365219] rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
[    7.365224] rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
[    7.365228] rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
V2: Fix commit message and added the RX and TX clock delay.
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index ea74ba32fbbd..e1c75532dcee 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -253,13 +253,16 @@ &gmac1 {
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-id";
+	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac1m1_miim
 		     &gmac1m1_tx_bus2
 		     &gmac1m1_rx_bus2
 		     &gmac1m1_rgmii_clk
 		     &gmac1m1_rgmii_bus>;
+
+	tx_delay = <0x4f>;
+	rx_delay = <0x26>;
 	status = "okay";
 };
 
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
