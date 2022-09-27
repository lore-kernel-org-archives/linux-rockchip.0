Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13B98C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRkm1ZPH98LsQ/mNsTZLCk8fYhu48rwVDI1OPLstJ7A=; b=zhp2RHlBVDcnp4
	ZXauasK06ClSNK0UVklDurfC4xy0W9IA9pMGvYR0/0gkQcX+52a9UdAUEFYwfbbFJlEh6cLpOjyx6
	iOWRuOFI1bRm/3iSqJGrMSOCPleA0jsZB5Ixr6Ch/JKPOKkt5jyHKdeWu9nqFDwSSEdXxF3f4nfRN
	44AzMjx2q4lIcxse11qe7D9HGL06jl9lbsb8i26DiodVTO/8WYfbyngnblO0LoH0WMFykfs25/jBb
	S9BCJ3DxTubZV9IQjzkUwBHvC66WgA91AQ3dWdgo+L/70MQqlYJfz7b8eOD9lUlpBJh3RGZkaCm1e
	yrsd3D39JXJnGjmzkfmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5ra-0096sz-Vj; Tue, 27 Sep 2022 08:22:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5kO-0093wH-60
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 08:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=U4G0XoR4OtiRi5wvEtvdLd6HFOllsQWXwedib2I2XRI=; b=rLC7R5hpeMtbn52OuGVPquMl8P
	IeLY0BnVxND+D7OTwMm+QBxib8smH5b2dvGOuSBoOltMaeJi9EzFsqhytDHqw2aVynufUmLBrobzU
	LqmvoxLXi/JCeP585stJ1HsB5KIX4Ezorr+MmxRvBuQNFdcqauKUl56Sw5BazJM99Krpho2S9fsxJ
	LfBDP0ZNhG5WZyA4GSRljm0bxjQ8FdI9MCrTZ2Hl+qQu3O8nhTO5N0hIkZ+yfgoYfxcyT6Rbg0vM3
	BFOLWoAA8SI6UoTdpAsa/qXTZW0YR+VRXwiyfZo8ofVZTsTU1X6y9X6IL7iiFvd6gXRYMz0GhVqDv
	kobs7TXg==;
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rp-00BFa7-V6
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:13 +0000
Received: by mail-wr1-x434.google.com with SMTP id cc5so13690399wrb.6
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=U4G0XoR4OtiRi5wvEtvdLd6HFOllsQWXwedib2I2XRI=;
        b=FwA/ieJr1TKaFR5LKDFY3s/yBX9tqhQuaKMyBWipgkHFDq7GRX86eJR+E8pqtJo1BT
         kn7z6ZZ/UqUhsY15DfOPzk+URV1Q+A5t1IIRx0VcQfBMdEbxMgN5TDtQtcM5/jLr4XTs
         I45DCRQ1uGVsFf7dSz7biWKsa5VhZy9ZImpKkceMUGXjeyJVTY5svF8K2InJdrQP8Yy/
         TnYbEeR7fiq1RyWPNBkGuABBNRwQFVA6a84V6VuuZwJuMrZdHe7iqAejUUcYeqtRwe1m
         JnCkshPDYzzlwmdxy9zAq+aC/9jzUIX6ofBxSr2TaXuFpJhLMxeYhhG5kL3SlV0RMnDr
         K20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=U4G0XoR4OtiRi5wvEtvdLd6HFOllsQWXwedib2I2XRI=;
        b=AtiFTHI032eAbNwXMFKYMhAbBg+h1CG6AWpOuQwYODnuZ1NkrHkOYAYwwNvAyLPTCX
         SbzmsgEkcDhsZZNqn/AnTir01OlKCnF8A53OEbI68lcEJI010uol1uht7dFjOmhdcmar
         u8FJxQW/oPyTb07qGcDoggRVxwYpizEzfykJJO51MJ2IZfgyOByxInwNaAoyBnsqqWbN
         Y/DarmSlD4e7aIiRwFMinnObv2BALw5xwDfxkE9xdIAXtaFh7Zv4RSGuWSXrVU/+vQDY
         fy263vJBMMbcN7GR1Ng/vd4I17Z7RK9pVSCpNRAtnlI8LZNMGLMFtg3h0n1ocSJo8bDb
         V5tQ==
X-Gm-Message-State: ACrzQf1DPswmGaEU1XQN3uKKYPDTKX/UaAXoR0si5jvMfTjxeaeTrAW7
	A4vUcC56tT1ZL/7O1+57RFqjng==
X-Google-Smtp-Source: AMsMyM72xxcbDl2X+QT2Is3zqpSPwfG5om66b6BrUcHJHVTz8wEZCd6Saf9lq9jbqFld0R5E753rNg==
X-Received: by 2002:a5d:45c4:0:b0:228:9248:867d with SMTP id b4-20020a5d45c4000000b002289248867dmr15858905wrs.474.1664265365119;
        Tue, 27 Sep 2022 00:56:05 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:56:04 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v10 28/33] arm64: dts: rockchip: rk3399: add crypto node
Date: Tue, 27 Sep 2022 07:55:06 +0000
Message-Id: <20220927075511.3147847-29-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085610_012424_1635D7DA 
X-CRM114-Status: UNSURE (   8.58  )
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

The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Tested-by Diederik de Haas <didi.debian@cknow.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 92c2207e686c..4391aea25984 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -582,6 +582,26 @@ saradc: saradc@ff100000 {
 		status = "disabled";
 	};
 
+	crypto0: crypto@ff8b0000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>, <&cru SCLK_CRYPTO0>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>;
+		reset-names = "master", "lave", "crypto";
+	};
+
+	crypto1: crypto@ff8b8000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b8000 0x0 0x4000>;
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>, <&cru SCLK_CRYPTO1>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
+		reset-names = "master", "slave", "crypto";
+	};
+
 	i2c1: i2c@ff110000 {
 		compatible = "rockchip,rk3399-i2c";
 		reg = <0x0 0xff110000 0x0 0x1000>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
