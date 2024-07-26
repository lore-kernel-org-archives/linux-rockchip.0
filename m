Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94015C3DA49
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 17:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSq6TGoq/S7sDncrxMQrkMBaLa7opSphFnuRE84mG9o=; b=oHMemT58vKP94H
	a2bfElKw0lyyrTjs8BRh6bvZ8oxKKNsU/hvcYwNlprRQ7NOBTR5eChf1jH5zZF1b7ruBpud8rMFLV
	mnd/aFftlklrJxpgKfIiUykQdc+KONaUams/pCmhVE9laU6hL4pQvT9WIdfOVI0llpuuDWQh/bHVY
	iHppxUKyiZzVlEp2sDNeY4YU+TWJFavBlIu/muLIvhLU8+Alcwa3cznM9T3nXZymh5DfGJ7dT3+l7
	cADSDHL+Er5ZCharLx3vhhmri8wYmH6W9U7m8S4TdZBTeYv4w42uH8udpq3dXzrjQtOKSatGveI2X
	5hFFbAu/56+CZhuu/eiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXOXs-00000004VZD-04EZ;
	Fri, 26 Jul 2024 17:15:56 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXOX7-00000004VIH-0xPM;
	Fri, 26 Jul 2024 17:15:10 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2cb674b48ccso852669a91.2;
        Fri, 26 Jul 2024 10:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722014108; x=1722618908; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IC8niKQLK2S9klSSRUjzxiqGLLkZ5D69ejUAD25RXeQ=;
        b=WoBz5teXl6nbV/3+Os6ktdvU9T2kB3VCujENHh+XS8Vc/rCd2tokdNzd/yLti49xBu
         CtdEb1Jq4GlE7gVHneHRA1L6HNh8SYcVUEoz0zUO5cDA4meeslVS7DyKDT7vCwyr7DKm
         KDXBUPQ/hQRNi1nwpwifl2GHkuRSQ4K14D8SM8huUhSiPgc324tYYLEKy+a68mrEQy6P
         55tQOAFNqqHCym952TbQa0XY+vK7VIucOF9vZU1A1ZV6qyGekX+4Un/xhdiFR90TD6K3
         q08momseWoXgkpoaN6vwOLe8l83AEYHQ3dja01aERC7FT//NasuSdNlm9f4GoA76yw2C
         jmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722014108; x=1722618908;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IC8niKQLK2S9klSSRUjzxiqGLLkZ5D69ejUAD25RXeQ=;
        b=gnabFn9bl/GT1RDNomql1cZdFA/bm4TuzbEVeUDC5ovxuSql316SR+L+0EKOIZNdsO
         h2C9yC4vyaZWa5vXPRn0sBYEm+WD8TMSBeHAEzgSdFVXh5a/0fGoC2L+cdeqopW6aokx
         lXniKjQcyMKRUHVpz+Z/FC1o37lVukslUpLyUuSqe4ASXOBj4CT/yFhafCMW9unLmhVt
         odpSKLPD6qw52K09iLhaSwXypuhbr2jzUalDgYn0cyBTONdaUiW5Z5PP7bgnOw+fEKDu
         ++VKYOyhBKWOZhFKxfpbQzk5fNFQ/fiVus7Nu+uJA2NVTAnoBw5hYVWCJ7kJID/ZXHiz
         +GnA==
X-Forwarded-Encrypted: i=1; AJvYcCVpC7fc56W6HbMOlkfolHBkqCkRYkL4mDcj9UB8cHsaIfVy6u2W2wnB9ovQjxbgpyzRGjHxC0vTpikrwWQC8X5VP8erWrtNdSdfeXgDd8w/RqnU4JdsCAysRYNswM3mYp+QtzPoJqhbWNf3paLyfk6KVVqsiB1eY7w=
X-Gm-Message-State: AOJu0YyZpQ1vR2bzzfQHYaHp3Mgjk7Ry3gkGQDnc8Oy1aQxfNtbUYf3B
	CpDNBNAxJyBNGRhsnDFaLYVA/F+AOfsJ4+/LfkEhdQagwnelGsWK
X-Google-Smtp-Source: AGHT+IGevshhNnR1uDre3Jqcy2R5OX/tUZ6EUret7quFk8oYW//qmIpavooBD8dW51AVNNhGGzkZMw==
X-Received: by 2002:a17:90a:66c9:b0:2c4:b0f0:8013 with SMTP id 98e67ed59e1d1-2cf7e1c06e4mr155614a91.11.1722014108250;
        Fri, 26 Jul 2024 10:15:08 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb73ededcsm5718855a91.31.2024.07.26.10.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 10:15:07 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] arm64: dts: rockchip: Add missing pinctrl for PCIe30x1 node
Date: Fri, 26 Jul 2024 16:30:45 +0530
Message-ID: <20240726110050.3664-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240726110050.3664-1-linux.amoon@gmail.com>
References: <20240726110050.3664-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_101509_289980_C3857B81 
X-CRM114-Status: GOOD (  16.53  )
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

Add missing pinctrl settings for PCIe 3.0 x1 clock request and wake
signals. Each component of PCIe communication have the following control
signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
high-speed signals and communicate with other PCIe devices.
Used by root complex to endpoint depending on the power state.

PERST is referred to as a fundamental reset. PERST should be held low
until all the power rails in the system and the reference clock are stable.
A transition from low to high in this signal usually indicates the
beginning of link initialization.

WAKE signal is an active-low signal that is used to return the PCIe
interface to an active state when in a low-power state.

CLKREQ signal is also an active-low signal and is used to request the
reference clock.

Rename node from 'pcie2' to 'pcie30x1' to align with schematic
nomenclature.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v4: rebase on master, used RK_FUNC_GPIO GPIO function instead of PIN
number.
V3: New patch.
---
 .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 1c7080cca11f..eeae14842b71 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -318,7 +318,7 @@ map2 {
 
 &pcie2x1l0 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_0_rst>;
+	pinctrl-0 = <&pcie30x1_pins>;
 	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
 	status = "okay";
@@ -364,16 +364,24 @@ hp_detect: hp-detect {
 	};
 
 	pcie2 {
-		pcie2_0_rst: pcie2-0-rst {
-			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie2_2_rst: pcie2-2-rst {
+			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+	};
 
+	pcie30x1 {
 		pcie2_0_vcc3v3_en: pcie2-0-vcc-en {
 			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie2_2_rst: pcie2-2-rst {
-			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie30x1_pins: pcie30x1-pins {
+			rockchip,pins =
+				/* PCIE30x1_0_CLKREQn_M1_L */
+				<4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_down>,
+				/* PCIE30x1_0_PERSTn_M1_L */
+				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_down>,
+				/* PCIE30x1_0_WAKEn_M1_L */
+				<4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
