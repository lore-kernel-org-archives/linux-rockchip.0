Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C0CEC07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 09:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1BlqizxwG22VMLb8BXRDGZnVUkaK3foJH4NgpAi8Jk=; b=35Oz3VAWD+POgu
	LGD52M73cHAEbPc3F9H8uyomjrTBpcZ1FcqAB5lINjLOb8B3iOfGspTGhyIyopEbIFUiQautMF9CF
	lBaTfVJuPpV69pWz8jyM/RKaCjeoc3gcfCohq0HPR486D9+0gzOaYze2rrn7VQh5ZQPAajWXU78UE
	sMmrokrYTjEr/SL9KDw/bOFyxzM6mwYWrSxzQCM4hJVTOaBkeDfEv/Acrc+B0oLpX4mgDr3GG4mLX
	bUNadwOLN9JD/At7b9E9BJC65hkNnIy1cnUUelWVQkpqk91rwme70gEac0SZaJyeQey3XN8At1YD8
	hojSAzW5p7Jb+Hmnd0AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6Vm-009Meh-2p; Tue, 27 Sep 2022 09:04:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6Uw-009ML8-Op
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 09:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=; b=XRtYJOV2cCg9Qro/06Dok7begF
	MmzjhqHaeOXf7AJKUMn+cXcvpocNaIxLCp7hHs6wM0bFdDFVf8Y2vlDrz7Elc0XbxxvbXNXXKoxS3
	3c+Yd5TuLOsDBhNfNayPG17RaGFMpRU9GOYBReK8cp+eCniPco9GoiI5NhWpDBLTgSXcE1y/tKj2/
	fLHM5eoT9pZ7LAk1ZYOxELsixVE8Y0lK15GUMSzqHkWoCDYmwmjzZVdvLPmXUhrtpNhNzwskP2ooH
	tuC1md0w/U2TRmcj3iV+H/upgw3rvj0peBA36myFkehGri3S3p7bh6vYExR5AZche60/kIYRleoOZ
	BV9zilEA==;
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rk-00GEnF-4N
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:08 +0000
Received: by mail-wm1-x32e.google.com with SMTP id n35-20020a05600c502300b003b4924c6868so390742wmr.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=7Z4Ya4FJF8izdlJJi0KOSJdYA3ci49E1lmr+MVg9ExH4Yw/daGRLYbHqoztQ0FZdrB
         xjpJNLPVkg8W/HiFxbqgE0IQ/1BunOKYfekMEtWIdLWIwIBjtUTfe/vgxqC5nFi+xuAu
         aXyUoidd6XaoadwuPJc3YLUowY1Peid71VpJrjEOXtRpFEZlUizKBE3WVKBUBKrFrVLE
         ZNjMBcMAwfFieUMKtd6iHcF4174GELX3ZRIO3E4sBpnn5mB1Qxhl+u2HpPBA39mgJsw7
         e7QvfbTXN6jVQgsXQkvuGx3HwCtUHeEIIUZjFE0WNR7tK8Vfoi4E9D0/tCaFaqWeH+gJ
         70Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=GHY2ne7pEoqlBe17LDqWa6/GP4h1s6gUpvNX4r5feFtVZ7TRzlMn09l8cg4ugueKA2
         8xnGZrTlpIx3nP9NgT2r8iOQAkts9fCAzV+u7LDH+w+5v++HN/fVeCXsG/6KGhR/jNGH
         xj2lnf21Y74IjiHlvhQW0wvveKdwrTcvyaRkBNensnHCdHQEmnjJ9tkU3bhgS9hlu3yW
         vEjS8XUp3lpYB202Dwvf31puLU4REfNUKIzdlWJX7BMXIL2cLpDIpiuMTFURpwzdPePp
         dDiFJPWpOiGTVIkjaWmuafCFxLbfC2AtXidwTlF9SmJ1s4cIMLsKfoNmvuGaBMuDa4u9
         VyYQ==
X-Gm-Message-State: ACrzQf38SQBFTPKkJarVkP+vl7PQuhoassNl1vexyOHHCBKCFJ7aUwTO
	+KFGRMtXsqDREy6735kNZ7Zopg==
X-Google-Smtp-Source: AMsMyM5nnhYhQwme3zvGgjZnP57vTakH5++Ar9MdcosaQ773rvsfR+o2LAUTSt89rn6+lT118m1cGA==
X-Received: by 2002:a05:600c:3591:b0:3b4:bf48:9f10 with SMTP id p17-20020a05600c359100b003b4bf489f10mr1721441wmq.76.1664265363834;
        Tue, 27 Sep 2022 00:56:03 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:56:03 -0700 (PDT)
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
Subject: [PATCH v10 27/33] arm64: dts: rockchip: add rk3328 crypto node
Date: Tue, 27 Sep 2022 07:55:05 +0000
Message-Id: <20220927075511.3147847-28-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085604_400291_B0242495 
X-CRM114-Status: UNSURE (   9.95  )
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
