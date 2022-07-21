Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2F40C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jul 2022 04:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PtblRjkLv+lD5goRz7eNehLu2msS+4ttZ6Y52sLg5x4=; b=FRmfcKsVnplcak
	w51RamSRE7hv6boHw0c7UjT7Wq7opiOKIqF2pqpv6KTKoTQP1uDqBFJYycqVlVbkTKOpD1CVv07WM
	5SgAkahVmx9IgtOvdrHSN+kNUdjIKd8HUoNlEQxWuu+Ho1Db2YfCHUAde30cQklnnZJvh0agp9PsE
	L9Ovxc5j68JXsRoxKwgyjzE8dnTlYoh8GDJmrziKRHVrITa6QJAn+JR/DS70/TluVGVpdhfDtswmV
	y6XnXIQmwdwXGUUVGiAqgyjGK9/Yt5pBV6vastB+55+YVyEizEvD7DeANzs907yhl8M8AVZQQB334
	i5pflEqgVmS1pdRX7kwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEO2F-00Gh3P-Vb; Thu, 21 Jul 2022 04:43:39 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEO21-00GgcF-VU; Thu, 21 Jul 2022 04:43:27 +0000
Received: by mail-ej1-x631.google.com with SMTP id va17so1180497ejb.0;
        Wed, 20 Jul 2022 21:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7lkbSCl4WMVF6PyAIugGhujYGS6F9o1+Rht1abC9LWI=;
        b=IKRYc7LfN4GhVKTKzErBqYb7m8h6Ng81Ugm728RiNIz3q23m9Octz3Zf6PPs6fFZvL
         ln2/6eQqsc27Z7BuqGWq0aLdViASTIWZe+GSdt+jfxKF0DOjyzjQyW8UFbfh5f84KqQx
         Wvrbk8ePrZDvJoE2HwkC4rN1W7Tg4TzWNd0FHhFgg7DcxvVRl/UIXdlvRcMu7TT5Vgw8
         5RNGDDhpOWJS/Y9p0Ow/ex/E8ZlaMT4E+QcqTeHjSGHsixld+GAlmd/rsyctjk0RtrW5
         +ys+yPZ8HjQJboTMPhclEB43fQFM1TwP4LuUzXvcjQLl9zZ34op/ZO2hZm6I/OVvsC2P
         1JVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7lkbSCl4WMVF6PyAIugGhujYGS6F9o1+Rht1abC9LWI=;
        b=tRsVsyPLjtCz5Z/KzxAVwKuCtd8sk5IOUTWpJ98gPt0vlqrqObYoVIaDJlH2Q2mPBY
         N9Hh2Tls/Akz9ED40SELX5dYIAdjDLr6p5opKP0eM1Rh7UGZmngTDQxXaoIP8AVQuu/z
         iAvOY6JjLiCmpuwNR8FPw6Oy8kV98QwmUsiavEXrfWoGJ2xCpdpYzNC3K5Y0lbQ3dnLz
         QkpTn/5MHdUpSmIBcIOHqfUoNhnncrggasRLufwrFwjbCfCX7RP2s8h8s90FVEEjvQ6P
         4zOF/igki3YTMra2mkOH/I0/+OgPCMEa1rfbiPyuT1smBjjM48RuCRGJEwNAdRSu1DKm
         yFww==
X-Gm-Message-State: AJIora91goquBESP4Fu4KQ0UGaCKcYBqOt6K835kNqNqTBCFmpTweW1U
	m1dUc9Zka9SAZq8Wk1gmHD4=
X-Google-Smtp-Source: AGRyM1sM/rYuTMl9+p0TqfNhZ8iyCI/Gk2d1yYw0EQj2ga4lxAw3AQPVNPIbEqreVwJRGoIeAGTexg==
X-Received: by 2002:a17:907:1def:b0:72b:33e6:46d6 with SMTP id og47-20020a1709071def00b0072b33e646d6mr37885988ejc.414.1658378603202;
        Wed, 20 Jul 2022 21:43:23 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id p8-20020a17090653c800b00726c0e60940sm379575ejo.100.2022.07.20.21.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 21:43:22 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Lower sd speed on quartz64-b
Date: Thu, 21 Jul 2022 06:43:06 +0200
Message-Id: <20220721044307.48641-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_214326_074259_0CFCC6D0 
X-CRM114-Status: GOOD (  12.01  )
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

The previously stated speed of sdr-104 is too high for the hardware
to reliably communicate with some fast SD cards.

Lower this to sd-uhs-sdr50 to fix this.

Fixes: dcc8c66bef79 ("arm64: dts: rockchip: add Pine64 Quartz64-B device tree")

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 02d5f5a8ca03..528bb4e8ac77 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -506,7 +506,7 @@ &sdmmc0 {
 	disable-wp;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
-	sd-uhs-sdr104;
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vccio_sd>;
 	status = "okay";
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
