Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E633EC25B5C
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 09:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=109Dkkuvh6s6eO5QGkZbde76rMr+nErwCVBYXLOGACI=; b=XQ79TsF6W05Fy0
	TDn0VttZ8rTKYgH4VBXyY8yjdF0qFRTnnVVOzdqWszrjVTssII/WBVCW/a5Lkiv4/wGaAO2TYDE6+
	hCJRgKazwKz/bV0C3MaOIWQsD0BI5w4zT6I6PKiyViP11fpRCwj+Gzzf2uV0X54KkrdNusU7H9Lwl
	LTuWgDKxxCTTeT9hCHy/K77lpvmZJCKEovPL1NWdDFuaxZ1/IRZKTgDX4JVV2nMgiR/9NRKiEBoP8
	PFw/KmTWFbUHxxqKg4umMfosnjirow8tS6AH0884Yywv78Fo9SN8BFL4jZPly0fZVYKPNoBvwX0aq
	J0FEmGXnb/+NSAVf5vcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umf-00000006oZ4-3py7;
	Mon, 06 May 2024 09:37:21 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umd-00000006oWT-1HUF;
	Mon, 06 May 2024 09:37:20 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a599af16934so384509066b.1;
        Mon, 06 May 2024 02:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714988236; x=1715593036; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6QUAJdxvdjJF0g4Iedvv3W5jbeIoEk4V3HwGZq9hD1M=;
        b=lTsZHdihvP2Rh1tef6xJcs5RGLn4ZjucTYAvZsa19BtaE4GGmFUuERgA1lchBXcF+E
         FLKlf6jhNOYPL+agPYfGLQaEXKV2odxJIo2w6xOKADqSyfxMe4xPpn80EJaOSd3BoxSz
         +5j3FRUTfAxOJDM079ci6ZNCOIyVGY1jfAq9Eb6/Md8pOkAKMVG92q8VC9rg5DgV/QNY
         Nuq7vUNn3+fUxnS2ejueWkOs6LzsVA2YYb0YZFyCpHg0P0PZy8bBf37YOKyQJIu+Rvf2
         S6agO17DZG9kTR/WlZZwthET9y4lxRVJIm8dlyTlu6wof9RcPL7KvMy3nO70XEIP5HLq
         DZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714988236; x=1715593036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6QUAJdxvdjJF0g4Iedvv3W5jbeIoEk4V3HwGZq9hD1M=;
        b=IZHtLlzXcTS+0ufdIqFWdflyIkGRX8rLG6VA6UqBpImeBT79I9E2OTtUGnLJjzCGwI
         hIx9D3hEslUVGsJnwWDEHSZd3U6lHVzifpVYzXGowYHZyAtYHPV0AZUP2PUYqLZNrra/
         tGIFSnIj4xc1EoCowjH2qGOmNnAvxTlR1bzM8CxtBvShSyoIRHNcAM4gV2xsfAa2DlLD
         F/O7whoXFkPrEWK3wvtSWUdpwcDPJIZIGIJkjB+NMJVVnXLw3qYsq8oBbKB74+1hqccj
         f8EUH9TwIKxO6HnAsDS+eoTiqk4XDuuHua5QyyQkzTx6h7TwdKiNG0PwV71cUAQ17N3a
         WU1A==
X-Forwarded-Encrypted: i=1; AJvYcCXZ+bfo5eG0MN1NhyiB2t735852pWNJDbE1hPrpl8i7pD1vQFvDNOCLaNN7+8Mfp2ssk8B8i53TQcO36/u4Eke93ehLmUd0wRlcURp4Qqr7z3HDRls5N14F7hCFAR8xoGn4rg0RxzR9N5Ncsfq9vlvLfE83ABvMasE=
X-Gm-Message-State: AOJu0YzNtxKYjc/c2P0jYgauUOlXSLPSZEscJ/gBiOa39YpDY2Z84gwb
	NI3pOn7nLvhwUH9U+Cj/eq3+XcpyMVHScwvZ2Hhin3k+I8slIYzLeD96glHToQA=
X-Google-Smtp-Source: AGHT+IEpoDThqBrXD8AVnT5RjXcFvvech0tAE2sx6cAOPOuHnZuctTfwzvyaGhf+wUdbkeccEPLO0w==
X-Received: by 2002:a50:a699:0:b0:572:42ac:9b19 with SMTP id e25-20020a50a699000000b0057242ac9b19mr6652365edc.0.1714988236054;
        Mon, 06 May 2024 02:37:16 -0700 (PDT)
Received: from [172.30.32.119] ([2001:8f8:183b:f2c::d35])
        by smtp.gmail.com with ESMTPSA id f6-20020a056402160600b005722ce89ae2sm4983647edv.38.2024.05.06.02.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 02:37:15 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 06 May 2024 13:36:33 +0400
Subject: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
MIME-Version: 1.0
Message-Id: <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
In-Reply-To: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714988224; l=4390;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=lraF8Hbej6o/vzD2ibMl+sD1o6QIvu8qx6CUPylhTS0=;
 b=L+SmgqiZUWX1QlD1lAl8Fvx6rg3te0i8Dfivs/4C85qKwq5x8IqH2l/yBUMfv+hG0SscnqBb5
 /rqtiXXtC+xCIsVzjy5l4iHbWTkC4rlKbTBgxQjs9K1pcoxUz13N3BS
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_023719_533568_B109B545 
X-CRM114-Status: UNSURE (   9.89  )
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

This enables the on-chip thermal monitoring sensor (TSADC) on all
RK3588(s) boards that don't have it enabled yet. It provides temperature
monitoring for the SoC and emergency thermal shutdowns, and is thus
important to have in place before CPU DVFS is enabled, as high CPU
operating performance points can overheat the chip quickly in the
absence of thermal management.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts          | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts              | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts              | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts               | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts           | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi           | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts              | 4 ++++
 8 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
index 98c622b27647..c667704ba985 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
@@ -673,6 +673,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index 709d348cf06b..03fd193be253 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -466,3 +466,7 @@ regulator-state-mem {
 		};
 	};
 };
+
+&tsadc {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 7be2190244ba..7c3696a3ad3a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -1131,6 +1131,10 @@ &sata0 {
 	status = "okay";
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
index 009566d881f3..230e630820b4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
@@ -376,6 +376,10 @@ &sdmmc {
 	status = "okay";
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index b8e15b76a8a6..21e96c212dd8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -742,6 +742,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
index 9090c5c99f2a..d0021524e7f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
@@ -648,6 +648,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 6b9206ce4a03..77bcf0f6b028 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -601,6 +601,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8e2a07612d17..c671a61d3aef 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -697,6 +697,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy0 {
 	status = "okay";
 };

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
