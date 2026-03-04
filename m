Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC58FEF8FE2
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 13:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/veAeYbuqFiMfIaktbROSwAbbsRDXQb4leWr7Lir5I=; b=2AzOIueCwYECUN
	As2YQOvpCMzh/QcBSYqcYAWhNwZKEhG0iYx9yaqd45YOt3A/OSvoRX+96L8y2V5EqHdtU3H3eSzhH
	Ptc6TSGqF9/l90/sYPfg895M/GbFf5P+cqkaUbj7xo69gxHvnP0bPuCQR4jJzAGjTIWY0JmkCAi7+
	wNJsYs0eSQ7B3CB2lpAJBlKCZsMojBTcQFrx5z8WfSI/Cy3It8daPClo8UkFDFpMOEFve1u+yc8U2
	Mp5aaZkuL1yXSmpyv1OQduqK3h91XjZHteu1HK0eC7RM9QvLKoiwl6fqht0PW6scYcbmgijFEETeQ
	ZWM56Q//6W4GKSIUV8pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxmII-0000000HFQV-0i42;
	Wed, 04 Mar 2026 13:29:42 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxmIF-0000000HFPV-1RFv
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 13:29:40 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so80276995e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 05:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772630977; x=1773235777; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8mg++I7PIn4dt5AFv6kcvsSJIHq4QLe4L7ARlFnSbcA=;
        b=bvdxar0rp9CuNGj29kpvwQFBq3L23hijCV0FC+KwnxwyciSSkSJo3fdh+jwD7ZlUQu
         zK97336aMvg07u8+ntPvjVhmQuZVVX11H+snYW02CPiR3xqEPt+in013ec3AFHjOQyaF
         OlMJkjhQpdEH/e9FBxKjEiiVISE2yZ7MRl8P4Bvoxpruzo2ihlIq/N9bTV3go9NlgrQQ
         fBrw/1OJbyyVAvE9b4yIQSQO562NRkQbF4db00BLR3qxdW/dmxRSIGQHe/fUR1N0RPyE
         AnP5Y8i5vSIC8hFGezZEw6lsVoQ8XmDlUsf0DwYxzywMGf56Dk9k5MuIiSt4FuJw01DJ
         wZCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772630977; x=1773235777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8mg++I7PIn4dt5AFv6kcvsSJIHq4QLe4L7ARlFnSbcA=;
        b=Ko1Yc97f1oWUGrh+2jhXDH4ZSjxnUN37OJWG5yIMuCeFhLYr9it1adBoWl9GqcSWM0
         tZS2cd6Ot0T5W5kJ48uFe/7NYQ0x3+3g2OuaVljVAo2iezwe3gquK0UZrQuNzW2NCX7L
         ZPgC/rKpjeyH/OybfhswQCkIFSYe44A3ut9sj3teTaMNRwf4QWXzDtC/17wui+LiozLw
         YXxPzTdiYiyTQCYuXOsij52tF879h/sEf88Nnqz6zhAtZHLqtnU6AmRupeY3SKtxedtH
         E0D7O7+EVRPUEu5kFA16C1raCUYHJIuo293YswSPrzjPt5pGZvehtNS5wL4HlYSrUR89
         7i5A==
X-Gm-Message-State: AOJu0YyWv65ELHep2+fwGNEeaWmTP23BgPatCLpTBbsMRUmRvM3nguQu
	B3UxXGn/g7+8qR/V+7b3GUPCLu+WN5buEH93poCCQ4dbAqHIjg7io3axPQifLEN0
X-Gm-Gg: ATEYQzxyCXhJeOX4d02OtEQ7+iUInMsLmRcxyc96eSMjOOUFtReMsywwxwgZs6a8oey
	Su8FpBJJx7cv6l9B7ZyYbXST+jEcYM08iZFrm6G4zNHrfnTwO7PyVMsTWK4WJDnwnVRvvEC15Ew
	f8USRimwiYSiGb+t6iZg1vThQIViNr2eLGhBHCqGa3cGnrKwXVEWlyG2pXg8em5NeiBxTlMiM30
	EENSfenmdI5L35ffJkjSSxBedPVpaZInOeFt4e4O+ijqgk5IoSHkcMOCrts+wQfc0C/b1YecZpu
	lxp+sbiSZKD1KIz5GI7bSfhRLfTSfJruER2FMzfCuuer/5fdyG3XNUgng1ziWxsXgwgWsYbvNcE
	i9jRGCyPPWK82ngnbA1L3vYfW4RpsHpB0FTW8qekmF/tHe3Y9gAcQhez+JDVQ2QlN4Ya585unV0
	9+ILNr15Ep4expcinloPeG9f7UlKzH2sbI1PQ1PsLMqzoqiZfb
X-Received: by 2002:a05:600c:6098:b0:471:1717:411 with SMTP id 5b1f17b1804b1-48519888e49mr31558475e9.24.1772630976778;
        Wed, 04 Mar 2026 05:29:36 -0800 (PST)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851887fa9csm51283605e9.9.2026.03.04.05.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:29:36 -0800 (PST)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	midgy971@gmail.com,
	Claude <noreply@anthropic.com>
Subject: [PATCH v2] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Wed,  4 Mar 2026 14:29:57 +0100
Message-Id: <20260304132957.684616-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260213151452.535527-1-midgy971@gmail.com>
References: <20260213151452.535527-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_052939_389891_348229D1 
X-CRM114-Status: UNSURE (   9.64  )
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

The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to
provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.
This chip is currently modeled only as a fixed regulator
(vcc3v3_pi6c_03), with no clock output representation.

The PI6C20100 is a clock generator, not a power supply. Model it
properly as a gated-fixed-clock, following the pattern established
for the Rock 5 ITX and other boards with similar PCIe clock buffer
chips.

The regulator node is kept as-is since it controls the power supply
to the PI6C20100 chip via GPIO0_D4. The new gated-fixed-clock node
references this regulator as its vdd-supply and provides a proper
100MHz clock output. The pcie3x2 node is updated to include the
reference clock, matching the approach used in rk3588-rock-5-itx.dts.

Signed-off-by: Claude <noreply@anthropic.com>
Signed-off-by: MidG971 <midgy971@gmail.com>
---

Changes since v1 [1]:
 - Drop phy-supply approach entirely (Jonas, Shawn)
 - Model PI6C20100 as gated-fixed-clock instead
 - Wire reference clock to pcie3x2 controller
 - Follow pattern from rk3588-rock-5-itx.dts

[1] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy971@gmail.com/

 .../arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 69001e4..24befc9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -56,7 +56,16 @@
 		};
 	};

-	/* pi6c pcie clock generator */
+	/* PI6C20100 PCIe reference clock buffer (100MHz) */
+	pcie30_refclk: pcie-clock-generator {
+		compatible = "gated-fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "pcie30_refclk";
+		vdd-supply = <&vcc3v3_pi6c_03>;
+	};
+
+	/* PI6C20100 power supply - active-high GPIO0_D4 */
 	vcc3v3_pi6c_03: regulator-3v3-vcc-pi6c-03 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -553,6 +562,13 @@
 };

 &pcie3x2 {
+	clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
+		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
+		 <&cru CLK_PCIE30X2_AUX_NDFT>,
+		 <&pcie30_refclk>;
+	clock-names = "aclk_mst", "aclk_slv",
+		      "aclk_dbi", "pclk", "aux",
+		      "ref";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie30x2m1_pins>;
 	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
--
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
