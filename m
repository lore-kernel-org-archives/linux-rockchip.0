Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11C2AEE57FD
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 02:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtNkDny71BUuujouDwBC5HINhOUfPVeFbsRzUOEOvPQ=; b=SLX+/YXldfidPv
	b5vmCEObj6yFgefRoWyKtufx1uiLtHGr2hPVV3RPcEOO6QN+9bo7SgQIyMTusgQEo0AIFulGqnaM6
	F2T5s6xB6byRRucOatY7edneSNpIZCtsDGnauCS127BLBUZsqAEsB7G3/EX2JjFllOAdUvA6x5BHn
	ow/mxveVXjoHGAS74YHnn4/4BlJ59+2T4BBP/TrjuqqXEFBrDqhbk0/CbENkj++emMRueQeihbikO
	/jUAX7rl1G50wYXceET2DTZFZ7UWiOwxYQP5ISGHvCeO+76W5WD3IKOg+GBG6A207uT73m2TJMUli
	Fpsq0oHVidNCE+VuA16w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZza-0000000Bg4h-0uaw;
	Thu, 12 Sep 2024 02:55:34 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZwS-0000000BfHe-3wyM;
	Thu, 12 Sep 2024 02:52:22 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-718816be6cbso348530b3a.1;
        Wed, 11 Sep 2024 19:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726109540; x=1726714340; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W/6wDT038m9pyQEZyE3iR606xVa5WMw7igyQP4+54lQ=;
        b=UPqLlFyJalZS3ihclH2p3TJG07wACEeETEVdkbVmW7oRYBhWuuWvUJP8Z5d2YR89/2
         vQC+vcJIKw0yt9KDi/jmSCZMbtYNbhmJrSEu6LBKKSItR/Kn3pxpU/sNhBCtTJcI65Vq
         hKU4KJw0bJ3Xbpcd3H1Ats/nu3q3hTcJEWij3Hz49iVp7OcbU2cvsknskNlsJxtlumkL
         nUzdapPjVzS5CmW0QeVliyg+pe9HLYRlj7Blumnlyjczcn5pAaCcCUDge25V2jLbffkS
         gN9/5ouGIJS3XO/RMxoddeMOOv+02hZc8C/t9CP8m7i36NdtH8x5xtY9dV0nh7EfESK+
         9vsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726109540; x=1726714340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W/6wDT038m9pyQEZyE3iR606xVa5WMw7igyQP4+54lQ=;
        b=Z8L8wK7WyzEyyNKIUsIM9ibtbI8zIhnmRoikgGqw+L7bQ6yuvZjg6AOfQYhTTr2Vrb
         MF6lC6aXn4uI78CqREHW3sBMqZb9ps+hNUtnyKw612OEzAk/AW/SKR2pZ0Jxkb/sKcF0
         zNh48rDshnS06Uil5MJJFBcwxbALrT5PsfR2CgFRfr1dH3tV84Dh/JHrtE5cIk0IwG1l
         aQxNN/kHnwNfrKxXfjkN6TNYXnFPVEwpqM9BYVDxCJOH8d5o0gXBmG8yzDCUSrPjrMc8
         j5ZF6O1l2taLXdUGYCCSKHr2dmrJ+YTsnC+AZ6iztrW2mmaNHG7TnWVoVcOU/JAQ3atb
         ZMKA==
X-Forwarded-Encrypted: i=1; AJvYcCV5KOe3vMYbiPa5ZmEyme+Wx7lZeYpfN83g6jbAFzx0Yk30xF26KI6aj4qXGgeDktPn8djF+1a5s/kLIXytDp8=@lists.infradead.org, AJvYcCW+4nqr5oMWwK3GbxCXDeOtsQCkLLZ6CCTWWqpffcaROU70m9qE9vd9bkGUdendiw29vz3ZtrxxegVcQu0kWREp@lists.infradead.org
X-Gm-Message-State: AOJu0YyNuc4zdaMaAfpE1K8zmfLA9v0Pj+OIWUtcoJPJSMP6p6r23Sb5
	LbMKAyIu3gYT9cN7zoxJ+V1Gc1KivKR2wv5Um9/hYZn40egT1Hsr
X-Google-Smtp-Source: AGHT+IELhmT8jSB9hWx2Rf1023+9YJ/U1SxinpSC0yVn1Ef2izwy2byLH1DNDEpEymLKs/BYyn8Tmg==
X-Received: by 2002:a05:6a00:1ace:b0:717:93d7:166f with SMTP id d2e1a72fcca58-719261fb2c4mr2073246b3a.20.1726109539684;
        Wed, 11 Sep 2024 19:52:19 -0700 (PDT)
Received: from luna.turtle.lan ([2601:1c2:c184:dc00::315])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbbf877sm569023a12.50.2024.09.11.19.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 19:52:18 -0700 (PDT)
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
	Sam Edwards <CFSworks@gmail.com>,
	Jonathan Bennett <jbennett@incomsystems.biz>
Subject: [PATCH 2/5] arm64: dts: rockchip: Fix Turing RK1 PCIe3 hang
Date: Wed, 11 Sep 2024 19:50:31 -0700
Message-ID: <20240912025034.180233-3-CFSworks@gmail.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240912025034.180233-1-CFSworks@gmail.com>
References: <20240912025034.180233-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_195221_006271_E243DB7E 
X-CRM114-Status: GOOD (  15.23  )
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

The PCIe 3 PHY in the RK3588 requires a running external reference clock
for both external bus transfers and some internal PIPE operations.
Without this clock, the PCIe3 controller fails to initialize and ignores
DBI transactions indefinitely, which stalls the Linux boot process.

On most RK3588 boards, this is evidently not an issue. But on some "SoM"
designs (Turing RK1, Mixtile Core 3588E, ArmSoM AIM7, to name a few),
this clock is only provided when the CLKREQ# signal is asserted.

The PCIe 3 PHY generates the CLKREQ# signal when it knows it needs the
reference clock for proper operation. Unfortunately, the current DT for
Turing RK1 does not mux out these low-speed signals, resulting in broken
boots and potentially other issues.

This patch, following the previous one that split up the PCIe pinctrls,
resolves this problem for Turing RK1 by explicitly muxing all of the
signals needed for PCIe 2 and 3 support.

Cc: Jonathan Bennett <jbennett@incomsystems.biz>
Fixes: 2806a69f3f ("arm64: dts: rockchip: Add Turing RK1 SoM support")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index dbaa94ca69f4..9bcb5acdea54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -211,7 +211,7 @@ rgmii_phy: ethernet-phy@1 {
 &pcie2x1l1 {
 	linux,pci-domain = <1>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_reset>;
+	pinctrl-0 = <&pcie2_reset>, <&pcie30x1m1_0_clkreqn>, <&pcie30x1m1_0_waken>;
 	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
@@ -223,7 +223,7 @@ &pcie30phy {
 &pcie3x4 {
 	linux,pci-domain = <0>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_reset>;
+	pinctrl-0 = <&pcie3_reset>, <&pcie30x4m1_clkreqn>, <&pcie30x4m1_waken>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
