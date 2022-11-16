Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63043C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 20:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbJjW2eycIvyw4+UFOteLYp67m7ritT9LghvlXBgRnw=; b=hIPLoI1QR0nDsH
	tjhwA6p3aCmOyKR3/XYo2KMtOJYaRognTTUm/TAAWK5P419oXEzz3TwtPmlbU2ON4ZCdJLUc9jhh+
	eVXurbl2X9/Ad6RHkuCvYdJTctyKzPghqeua0bqLSc7OF7F8+Y2hkuBIDU2doioDXmEZ3d/+fpFh/
	ZDgYvHuFMYpjpFAMJu176dop5LetdgoTLxNRaQ5kqzcneCD7zqwyVTTmAKFWXumkD644fd2tlTaE4
	r19gwd4UxUEXtYmQOy8lU8baFIgChNAaHiVb8lw/i2SCKnh4dYQDCBLUDqwnx48YF6waaLh64glGi
	2a8U3EXRiJ44ceflPmvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOdz-007ULp-OG; Wed, 16 Nov 2022 20:04:23 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOcY-007TcV-H0; Wed, 16 Nov 2022 20:02:58 +0000
Received: by mail-pl1-x62b.google.com with SMTP id g10so92876plo.11;
        Wed, 16 Nov 2022 12:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hlf4RPnys2xlptR6hKKlXQBW5qSMO1/p3GZVaaL5DEk=;
        b=p1xoRO47ZrZ1DdmzZr9wv/ZEi13KH85MY5IcJaX02FD68/K/cmdmHDvzNED+iQn6fi
         b/BywVdnyw7bc1gzPutqrwvD8uma5HbPaN9VxphqGCIXb9Oi1B0cCgbkoobNrkjbaYe7
         nN5k/BCr2axXuXqOWPhfsVw/0ldm+p2Qz+Ni//ONsEcVAAZiGlqV/odH2z4xuqy4gAI1
         YL67GKHiSw63d4ySeeWwOlXjWAKS8bK1oPHYv3zp2EybFz58fl28AJHD9Xqm8dmpaHLN
         eW81F2sIX89Df+kGKWG2KvKyO2744SmkuuquwI35IOh8l5MNJx5ETidYVQxKmuVi1cCD
         AkGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hlf4RPnys2xlptR6hKKlXQBW5qSMO1/p3GZVaaL5DEk=;
        b=FLMb0ju792C7WseVzzTqXaq4pXqfUD2OQOV6AJa6QdKpbbkd4c983jct+S6EBrbGui
         3hRgGB08B9Wcezv6j9wAEuwaVapP7SXyUW91Us2nlfsSbkvc2mKgNbniRZ36i/weFodr
         SRf6BApKPcP6oMNON1ux2P92TKLoqZmkCstOi8oUhNGzcV/ax+jeOPPVVMJmGav1LSVo
         /uHqa0sT+w6qNdHQWdxH64cScGNPyxx5uKTiVETz6T3eT+RTcgb9knAhq9v6GtFEnC2Y
         rWvlWctxkrRaupIajcvsMHAv7CY/99+5GNLsRYORutD6EueM4bczqeeC4xa5Nx1UBflV
         RPjw==
X-Gm-Message-State: ANoB5pnjDPw4FXzKhQvyU01FlBT05pJmZNTbdoGT9qvelzOh9A3062Ax
	nIRFF8U0Iw6tA4Al++zXPC4=
X-Google-Smtp-Source: AA0mqf7C+XsGFEi9GeihjTn5V5WPZwj9QlHhQ6Xr1g1pK9CvcEqH7Zj01PlVmvLBIF1bcTXt+nB5cA==
X-Received: by 2002:a17:902:e791:b0:186:9870:506a with SMTP id cp17-20020a170902e79100b001869870506amr10439418plb.45.1668628971684;
        Wed, 16 Nov 2022 12:02:51 -0800 (PST)
Received: from localhost.localdomain ([103.51.72.182])
        by smtp.gmail.com with ESMTPSA id s18-20020a170903215200b00186a6b6350esm12423950ple.268.2022.11.16.12.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 12:02:51 -0800 (PST)
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
Subject: [linux-next-v2 4/5] arm64: dts: rockchip: Add support of interrupt to ethernet node on Rock 3A SBC
Date: Wed, 16 Nov 2022 20:01:47 +0000
Message-Id: <20221116200150.4657-6-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116200150.4657-1-linux.amoon@gmail.com>
References: <20221116200150.4657-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_120254_625206_5CF527D8 
X-CRM114-Status: GOOD (  13.96  )
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

As per the shematic gmac1 support gpio interrupt controller 
GMAC1_INT/PMEB_GPIO3_A7 add the support for this.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v2: new patch added
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 5378254c57ca..9f84a23a8789 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -588,10 +588,14 @@ rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <0x0>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&eth_phy_rst>;
+		pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+		interrupt-parent = <&gpio3>;
+		/* GMAC1_INT/PMEB_GPIO3_A7 */
+		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
+		#interrupt-cells = <1>;
 	};
 };
 
@@ -630,6 +634,10 @@ vcc_mipi_en: vcc_mipi_en {
 	};
 
 	ethernet {
+		eth_phy_int: eth-phy-int {
+			rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
 		eth_phy_rst: eth_phy_rst {
 			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
