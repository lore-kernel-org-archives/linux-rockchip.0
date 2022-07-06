Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E2EC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1BlqizxwG22VMLb8BXRDGZnVUkaK3foJH4NgpAi8Jk=; b=utU+CrN/cFrdHA
	YrdtJJyNMZffk19ZlSWkVnfTCTDTsnmWzkVfSUyX1EAB9g3uJPEouhIiNktHz6mC31KaUGp+UeKI+
	EbF/qEQ/EBBnLsnSrrIo36vqIjit5HSbZVsHfIYAgehcIairtYxiQ5OmSB7zLZTa8uKweUrlhUAmc
	i3Ql1OHo46Ki0+BGwqjKamdEJomYZp2ihnXZZfVRLoFqqc405TYucjsGAmpnN7WvKGwRSWEEy2ZkU
	Qcx8VVKBmCOfxIcitdhw0T2mZd6nYo4FFDI3SjaLTc+EbafAcFyN5Csxi/SAHHnTyXxmR7wLfVkgS
	qm/qoMc1MVbVPL7Zegkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92L4-008ZHb-Qo; Wed, 06 Jul 2022 10:32:58 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xx-007bo8-EL
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:05:02 +0000
Received: by mail-wm1-x331.google.com with SMTP id f190so8423027wma.5
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=2KH0c9i5pRILecSD4cAr1i5IG81/CljsGJebd4GrlEu87GGF+p4iLvgg69UypD4DGA
         l545no2gU5djMfQXCkQ13fkRA6JgbOl04rIrM6ABTL0bmmCnR1jciczP2obeGis+6VaG
         v3YHDgcdTBNvuLmF7cDwpiCUQHw2E/SyNMjbz6/BHLG0R1x71jyIulfD0jboY1YyPPIM
         k9BAZp0vE4EF8p5/Xeho4rFX51MilcYI0SEO6UF+eTxIihL0BCZ5GdVEBIFl9mZV70m0
         m3hNv+FivGSRxvIYos1Wgq1x6JMp3lx9XVdmv+NO6xxmbgGCXd+0QaoI5xzy42DkYErn
         qIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=jUa0OnwYUpQclPzUAFHvFSUjTIA2NMAFqwmaBTBhpES68RHbjFSPrbe+egXRAUaISN
         mkzD+H21DpB0DCR7ftFfE09D2EK0E+rKhP1PeZCFFuhv+zs6PlpLaX1vTKV1eocaqase
         kh1zkv8kMNY91RDul6ZRMA4I3RFNSavazpdDOCoeRaF0NaX50JKJR5wOV3p27dfVyFLg
         AoNEG+xJnFm6xHIWgy1jN0A4ZnXWgju5noILZKO3xIUyGHp18tG9SANDA29hrfC2ACd9
         9Tm31jUJu8fksHvD16szFenNeKWm56VXl2s+GPV1GkWOHr3Y2YyTg82DV+PabBPOeDX/
         2glw==
X-Gm-Message-State: AJIora9bdrF4C7dMWfT1jddaKHiRRGzDM5OaiBy2t+rLcHK4+uxH+E/A
	PBfDpOh3ETbCYDSiK7Jmqh/e7Q==
X-Google-Smtp-Source: AGRyM1toIJ3bBwvAdPj3WgU9vUOPQT1BAvlEHJ5810B7GsO/4J25yaE+bYN0O90J2JbxvuU5axmchw==
X-Received: by 2002:a05:600c:3788:b0:3a0:4279:5142 with SMTP id o8-20020a05600c378800b003a042795142mr38248606wmr.21.1657098301075;
        Wed, 06 Jul 2022 02:05:01 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:05:00 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 27/33] arm64: dts: rockchip: add rk3328 crypto node
Date: Wed,  6 Jul 2022 09:04:06 +0000
Message-Id: <20220706090412.806101-28-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020501_540484_F333D9C0 
X-CRM114-Status: UNSURE (   9.82  )
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

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 49ae15708a0b..96a7a777bae8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1025,6 +1025,17 @@ gic: interrupt-controller@ff811000 {
 		      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	crypto: crypto@ff060000 {
+		compatible = "rockchip,rk3328-crypto";
+		reg = <0x0 0xff060000 0x0 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO>;
+		reset-names = "crypto-rst";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
