Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1298EE6426
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 02:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ly18XwHrbhuYNJk+8g6HEA3p0HvBikzguUut2uErFls=; b=eMUzYbA5LcRui1
	zi1h6daotRh6osrcnX/9vJqVvJ/i2epTzYu05vY2kxg1dNW850Bbbqhg4pOFUXUA2Q/tWkoNUkIS5
	CWS+xgSDIGlaM+kLxm+ObsMQs/FBYCy9dHeskNmvlFZl9CcxIetGQg5XT6JFsqxUk7ZCwDfLvHF1l
	reqH1eH7YNYihtBfZxgrmL22rx1p8c16+zD7hETb7duokeNjLt53Fvx/5AMFsJSg3k8YC2DouT0OF
	3r1U2E4jxqP/9i/JwDXpT4EVOzhjBqXPpvqUAAA+4RVAs8Y7wXE/LpqK/LN0fsUy1dTpL+faCaDfq
	1BtFEfYnfYcEtvOu7PKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZyX-0000000Bfq3-1msz;
	Thu, 12 Sep 2024 02:54:29 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZwR-0000000BfGw-0MZV;
	Thu, 12 Sep 2024 02:52:20 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-20573eb852aso10717915ad.1;
        Wed, 11 Sep 2024 19:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726109538; x=1726714338; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q2m9Y7VEzIdtTTSozHQvuk3QbiCNAmrj9ISK6fH2bqY=;
        b=lZCMsJSqnJpariDvf9unNZQ3eUy8RX8MjX/vnIP6WgU33MiJ1sTfzY5GzwyjeZqeHZ
         6QswrCMlUAO4uoWZmxNkn5Ho91QregZYfry1cy88CsP5WzVpVg7JaVg3gHEJkFAPGRNi
         VRmPfiLB2JENqF0ImBa4z4uyyWVFhwHJ6A639BpaOYQIV3K9uOMaYM9wcUJNcER6gRBD
         u9488ksvloQ0x+4fLAWrE1ERGWadpO9DGPKYjlasAHyzp+HgT2+GQeHqIp8DHt2ObfZz
         Mhzz94w5M7QTagm/EWMoeoQP0pZNvMSlxYxqVLefnsycWD33wvznzfaxgq0CqQtUDZac
         rCww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726109538; x=1726714338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q2m9Y7VEzIdtTTSozHQvuk3QbiCNAmrj9ISK6fH2bqY=;
        b=pvJBNGVBfmaYoi9uy6Rv8+MgM3f+szLHrfKdyT7N0aTXHeVNF0vtTYeWdjeaBlTGmQ
         zWQcGA8jQ+kmfWk/gm2C63bXojta5oMLJ9bw5E8Ikvr/Ss258cnXcJbpAleQjBUnMPUd
         QYRfpRr0TxQQW83bbQ0btWS7e5uhdZ6P4Z227F721Zd6XGaBA8vgltAqJBte+8gDL9TF
         QSSiL042T6sj2kfh+HIHMLNpsOzY5CgnhZ/Mg3WLsq4DoUS0U4Zhi2hn8OPSd7YABjl0
         FGM2epvcWJ+NWWvqanF/AmW2z4Fo+v1PwR2bWeT8yBzvuqD5NoUFYjWlqljeH06xwASO
         xEJA==
X-Forwarded-Encrypted: i=1; AJvYcCU3XaVGpqOV7v8SzGVvf1+4Do2mxHOl0Ak1wvZohmmsu+T0K/vuhL89pBTp4jLo1D7gl72/MxwmhoaGYEqF+RU=@lists.infradead.org, AJvYcCUBWO6z179ZPqRk6SFfl+ro+hqbgz31WSz/RdsXafKnWImoIuC2UHiSJtT5d5+BSrgnkDQerssYehrkNGp8SP6g@lists.infradead.org
X-Gm-Message-State: AOJu0YxDI13Lsn4DIDo/mjChGypbKw0Zpn5PD7MCSE1oQzCeaDEv67Cq
	Alpg41FD6w78s8mOm85PxIFXP6kV9YWZnm7Qm5DCpQhXwoRnLTIyvhfp2c9vBjQ=
X-Google-Smtp-Source: AGHT+IGIsypAwH2BfcUev4iLPKNgb8VkdfI4kXvmWoMdEIHBfdzIHbtUfJ9hIl78NJDzFO5X8+CtTg==
X-Received: by 2002:a17:903:183:b0:205:7998:3deb with SMTP id d9443c01a7336-2074c6dcc54mr92045545ad.19.1726109537951;
        Wed, 11 Sep 2024 19:52:17 -0700 (PDT)
Received: from luna.turtle.lan ([2601:1c2:c184:dc00::315])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbbf877sm569023a12.50.2024.09.11.19.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 19:52:17 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>,
	Chris Morgan <macromorgan@hotmail.com>,
	Alex Zhao <zzc@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jing Luo <jing@jing.rocks>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH 1/5] arm64: dts: rockchip: Split up RK3588's PCIe pinctrls
Date: Wed, 11 Sep 2024 19:50:30 -0700
Message-ID: <20240912025034.180233-2-CFSworks@gmail.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240912025034.180233-1-CFSworks@gmail.com>
References: <20240912025034.180233-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_195219_153320_71E1866A 
X-CRM114-Status: GOOD (  16.52  )
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

These pinctrls manage the low-speed PCIe signals:
- CLKREQ#: An output on the RK3588 (both RC or EP modes), used to
  request that external clock-generation circuitry provide a clock.
- PERST#: An input on the RK3588 in EP mode, used to detect a reset
  signal from the RC. In RC mode, the hardware does not use this signal:
  Linux itself generates it by putting the pin in GPIO mode.
- WAKE#: In EP mode, this is an output; in RC mode, this is an input.

Each of these signals serves a distinct purpose, and more importantly,
PERST# should not be muxed when the RK3588 is in the RC role. Bundling
them together in pinctrl groups prevents proper use: indeed, almost none
of the current board-specific .dts files make any use of them.
(Exception: Rock 5A recently had a patch land that misuses _pins; this
 patch corrects that.)

However, on some RK3588 boards, the PCIe 3 controller will indefinitely
stall the boot if CLKREQ# is not muxed (details in the next patch).
This patch unbundles the signals to allow them to be used.

Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 .../dts/rockchip/rk3588-base-pinctrl.dtsi     | 271 ++++++++++++++----
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   6 +-
 2 files changed, 228 insertions(+), 49 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
index d1368418502a..7f874c77410c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
@@ -1612,23 +1612,43 @@ npu_pins: npu-pins {
 
 	pcie20x1 {
 		/omit-if-no-ref/
-		pcie20x1m0_pins: pcie20x1m0-pins {
+		pcie20x1m0_clkreqn: pcie20x1m0-clkreqn {
 			rockchip,pins =
 				/* pcie20x1_2_clkreqn_m0 */
-				<3 RK_PC7 4 &pcfg_pull_none>,
+				<3 RK_PC7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie20x1m0_perstn: pcie20x1m0-perstn {
+			rockchip,pins =
 				/* pcie20x1_2_perstn_m0 */
-				<3 RK_PD1 4 &pcfg_pull_none>,
+				<3 RK_PD1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie20x1m0_waken: pcie20x1m0-waken {
+			rockchip,pins =
 				/* pcie20x1_2_waken_m0 */
 				<3 RK_PD0 4 &pcfg_pull_none>;
 		};
 
 		/omit-if-no-ref/
-		pcie20x1m1_pins: pcie20x1m1-pins {
+		pcie20x1m1_clkreqn: pcie20x1m1-clkreqn {
 			rockchip,pins =
 				/* pcie20x1_2_clkreqn_m1 */
-				<4 RK_PB7 4 &pcfg_pull_none>,
+				<4 RK_PB7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie20x1m1_perstn: pcie20x1m1-perstn {
+			rockchip,pins =
 				/* pcie20x1_2_perstn_m1 */
-				<4 RK_PC1 4 &pcfg_pull_none>,
+				<4 RK_PC1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie20x1m1_waken: pcie20x1m1-waken {
+			rockchip,pins =
 				/* pcie20x1_2_waken_m1 */
 				<4 RK_PC0 4 &pcfg_pull_none>;
 		};
@@ -1654,52 +1674,127 @@ pcie30phy_pins: pcie30phy-pins {
 
 	pcie30x1 {
 		/omit-if-no-ref/
-		pcie30x1m0_pins: pcie30x1m0-pins {
+		pcie30x1m0_0_clkreqn: pcie30x1m0-0-clkreqn {
 			rockchip,pins =
 				/* pcie30x1_0_clkreqn_m0 */
-				<0 RK_PC0 12 &pcfg_pull_none>,
+				<0 RK_PC0 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m0_0_perstn: pcie30x1m0-0-perstn {
+			rockchip,pins =
 				/* pcie30x1_0_perstn_m0 */
-				<0 RK_PC5 12 &pcfg_pull_none>,
+				<0 RK_PC5 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m0_0_waken: pcie30x1m0-0-waken {
+			rockchip,pins =
 				/* pcie30x1_0_waken_m0 */
-				<0 RK_PC4 12 &pcfg_pull_none>,
+				<0 RK_PC4 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m0_1_clkreqn: pcie30x1m0-1-clkreqn {
+			rockchip,pins =
 				/* pcie30x1_1_clkreqn_m0 */
-				<0 RK_PB5 12 &pcfg_pull_none>,
+				<0 RK_PB5 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m0_1_perstn: pcie30x1m0-1-perstn {
+			rockchip,pins =
 				/* pcie30x1_1_perstn_m0 */
-				<0 RK_PB7 12 &pcfg_pull_none>,
+				<0 RK_PB7 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m0_1_waken: pcie30x1m0-1-waken {
+			rockchip,pins =
 				/* pcie30x1_1_waken_m0 */
 				<0 RK_PB6 12 &pcfg_pull_none>;
 		};
 
 		/omit-if-no-ref/
-		pcie30x1m1_pins: pcie30x1m1-pins {
+		pcie30x1m1_0_clkreqn: pcie30x1m1-0-clkreqn {
 			rockchip,pins =
 				/* pcie30x1_0_clkreqn_m1 */
-				<4 RK_PA3 4 &pcfg_pull_none>,
+				<4 RK_PA3 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m1_0_perstn: pcie30x1m1-0-perstn {
+			rockchip,pins =
 				/* pcie30x1_0_perstn_m1 */
-				<4 RK_PA5 4 &pcfg_pull_none>,
+				<4 RK_PA5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m1_0_waken: pcie30x1m1-0-waken {
+			rockchip,pins =
 				/* pcie30x1_0_waken_m1 */
-				<4 RK_PA4 4 &pcfg_pull_none>,
+				<4 RK_PA4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m1_1_clkreqn: pcie30x1m1-1-clkreqn {
+			rockchip,pins =
 				/* pcie30x1_1_clkreqn_m1 */
-				<4 RK_PA0 4 &pcfg_pull_none>,
+				<4 RK_PA0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m1_1_perstn: pcie30x1m1-1-perstn {
+			rockchip,pins =
 				/* pcie30x1_1_perstn_m1 */
-				<4 RK_PA2 4 &pcfg_pull_none>,
+				<4 RK_PA2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m1_1_waken: pcie30x1m1-1-waken {
+			rockchip,pins =
 				/* pcie30x1_1_waken_m1 */
 				<4 RK_PA1 4 &pcfg_pull_none>;
 		};
 
 		/omit-if-no-ref/
-		pcie30x1m2_pins: pcie30x1m2-pins {
+		pcie30x1m2_0_clkreqn: pcie30x1m2-0-clkreqn {
 			rockchip,pins =
 				/* pcie30x1_0_clkreqn_m2 */
-				<1 RK_PB5 4 &pcfg_pull_none>,
+				<1 RK_PB5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m2_0_perstn: pcie30x1m2-0-perstn {
+			rockchip,pins =
 				/* pcie30x1_0_perstn_m2 */
-				<1 RK_PB4 4 &pcfg_pull_none>,
+				<1 RK_PB4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m2_0_waken: pcie30x1m2-0-waken {
+			rockchip,pins =
 				/* pcie30x1_0_waken_m2 */
-				<1 RK_PB3 4 &pcfg_pull_none>,
+				<1 RK_PB3 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m2_1_clkreqn: pcie30x1m2-1-clkreqn {
+			rockchip,pins =
 				/* pcie30x1_1_clkreqn_m2 */
-				<1 RK_PA0 4 &pcfg_pull_none>,
+				<1 RK_PA0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m2_1_perstn: pcie30x1m2-1-perstn {
+			rockchip,pins =
 				/* pcie30x1_1_perstn_m2 */
-				<1 RK_PA7 4 &pcfg_pull_none>,
+				<1 RK_PA7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x1m2_1_waken: pcie30x1m2-1-waken {
+			rockchip,pins =
 				/* pcie30x1_1_waken_m2 */
 				<1 RK_PA1 4 &pcfg_pull_none>;
 		};
@@ -1721,45 +1816,85 @@ pcie30x1_1_button_rstn: pcie30x1-1-button-rstn {
 
 	pcie30x2 {
 		/omit-if-no-ref/
-		pcie30x2m0_pins: pcie30x2m0-pins {
+		pcie30x2m0_clkreqn: pcie30x2m0-clkreqn {
 			rockchip,pins =
 				/* pcie30x2_clkreqn_m0 */
-				<0 RK_PD1 12 &pcfg_pull_none>,
+				<0 RK_PD1 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x2m0_perstn: pcie30x2m0-perstn {
+			rockchip,pins =
 				/* pcie30x2_perstn_m0 */
-				<0 RK_PD4 12 &pcfg_pull_none>,
+				<0 RK_PD4 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x2m0_waken: pcie30x2m0-waken {
+			rockchip,pins =
 				/* pcie30x2_waken_m0 */
 				<0 RK_PD2 12 &pcfg_pull_none>;
 		};
 
 		/omit-if-no-ref/
-		pcie30x2m1_pins: pcie30x2m1-pins {
+		pcie30x2m1_clkreqn: pcie30x2m1-clkreqn {
 			rockchip,pins =
 				/* pcie30x2_clkreqn_m1 */
-				<4 RK_PA6 4 &pcfg_pull_none>,
+				<4 RK_PA6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x2m1_perstn: pcie30x2m1-perstn {
+			rockchip,pins =
 				/* pcie30x2_perstn_m1 */
-				<4 RK_PB0 4 &pcfg_pull_none>,
+				<4 RK_PB0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x2m1_waken: pcie30x2m1-waken {
+			rockchip,pins =
 				/* pcie30x2_waken_m1 */
 				<4 RK_PA7 4 &pcfg_pull_none>;
 		};
 
 		/omit-if-no-ref/
-		pcie30x2m2_pins: pcie30x2m2-pins {
+		pcie30x2m2_clkreqn: pcie30x2m2-clkreqn {
 			rockchip,pins =
 				/* pcie30x2_clkreqn_m2 */
-				<3 RK_PD2 4 &pcfg_pull_none>,
+				<3 RK_PD2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x2m2_perstn: pcie30x2m2-perstn {
+			rockchip,pins =
 				/* pcie30x2_perstn_m2 */
-				<3 RK_PD4 4 &pcfg_pull_none>,
+				<3 RK_PD4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x2m2_waken: pcie30x2m2-waken {
+			rockchip,pins =
 				/* pcie30x2_waken_m2 */
 				<3 RK_PD3 4 &pcfg_pull_none>;
 		};
 
 		/omit-if-no-ref/
-		pcie30x2m3_pins: pcie30x2m3-pins {
+		pcie30x2m3_clkreqn: pcie30x2m3-clkreqn {
 			rockchip,pins =
 				/* pcie30x2_clkreqn_m3 */
-				<1 RK_PD7 4 &pcfg_pull_none>,
+				<1 RK_PD7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x2m3_perstn: pcie30x2m3-perstn {
+			rockchip,pins =
 				/* pcie30x2_perstn_m3 */
-				<1 RK_PB7 4 &pcfg_pull_none>,
+				<1 RK_PB7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x2m3_waken: pcie30x2m3-waken {
+			rockchip,pins =
 				/* pcie30x2_waken_m3 */
 				<1 RK_PB6 4 &pcfg_pull_none>;
 		};
@@ -1774,45 +1909,85 @@ pcie30x2_button_rstn: pcie30x2-button-rstn {
 
 	pcie30x4 {
 		/omit-if-no-ref/
-		pcie30x4m0_pins: pcie30x4m0-pins {
+		pcie30x4m0_clkreqn: pcie30x4m0-clkreqn {
 			rockchip,pins =
 				/* pcie30x4_clkreqn_m0 */
-				<0 RK_PC6 12 &pcfg_pull_none>,
+				<0 RK_PC6 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x4m0_perstn: pcie30x4m0-perstn {
+			rockchip,pins =
 				/* pcie30x4_perstn_m0 */
-				<0 RK_PD0 12 &pcfg_pull_none>,
+				<0 RK_PD0 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x4m0_waken: pcie30x4m0-waken {
+			rockchip,pins =
 				/* pcie30x4_waken_m0 */
 				<0 RK_PC7 12 &pcfg_pull_none>;
 		};
 
 		/omit-if-no-ref/
-		pcie30x4m1_pins: pcie30x4m1-pins {
+		pcie30x4m1_clkreqn: pcie30x4m1-clkreqn {
 			rockchip,pins =
 				/* pcie30x4_clkreqn_m1 */
-				<4 RK_PB4 4 &pcfg_pull_none>,
+				<4 RK_PB4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x4m1_perstn: pcie30x4m1-perstn {
+			rockchip,pins =
 				/* pcie30x4_perstn_m1 */
-				<4 RK_PB6 4 &pcfg_pull_none>,
+				<4 RK_PB6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x4m1_waken: pcie30x4m1-waken {
+			rockchip,pins =
 				/* pcie30x4_waken_m1 */
 				<4 RK_PB5 4 &pcfg_pull_none>;
 		};
 
 		/omit-if-no-ref/
-		pcie30x4m2_pins: pcie30x4m2-pins {
+		pcie30x4m2_clkreqn: pcie30x4m2-clkreqn {
 			rockchip,pins =
 				/* pcie30x4_clkreqn_m2 */
-				<3 RK_PC4 4 &pcfg_pull_none>,
+				<3 RK_PC4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x4m2_perstn: pcie30x4m2-perstn {
+			rockchip,pins =
 				/* pcie30x4_perstn_m2 */
-				<3 RK_PC6 4 &pcfg_pull_none>,
+				<3 RK_PC6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x4m2_waken: pcie30x4m2-waken {
+			rockchip,pins =
 				/* pcie30x4_waken_m2 */
 				<3 RK_PC5 4 &pcfg_pull_none>;
 		};
 
 		/omit-if-no-ref/
-		pcie30x4m3_pins: pcie30x4m3-pins {
+		pcie30x4m3_clkreqn: pcie30x4m3-clkreqn {
 			rockchip,pins =
 				/* pcie30x4_clkreqn_m3 */
-				<1 RK_PB0 4 &pcfg_pull_none>,
+				<1 RK_PB0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x4m3_perstn: pcie30x4m3-perstn {
+			rockchip,pins =
 				/* pcie30x4_perstn_m3 */
-				<1 RK_PB2 4 &pcfg_pull_none>,
+				<1 RK_PB2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pcie30x4m3_waken: pcie30x4m3-waken {
+			rockchip,pins =
 				/* pcie30x4_waken_m3 */
 				<1 RK_PB1 4 &pcfg_pull_none>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 294b99dd50da..87fce8d9a964 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -310,7 +310,7 @@ rgmii_phy1: ethernet-phy@1 {
 };
 
 &pcie2x1l2 {
-	pinctrl-0 = <&pcie20x1m0_pins>;
+	pinctrl-0 = <&pcie2_reset>, <&pcie20x1m0_clkreqn>, <&pcie20x1m0_waken>;
 	pinctrl-names = "default";
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_wf>;
@@ -328,6 +328,10 @@ pcie {
 		pow_en: pow-en {
 			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		pcie2_reset: pcie2-reset {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	power {
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
