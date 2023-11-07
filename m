Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E87D4C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 15:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbAiyEGmaCurqTRLsKdvnXe4OkjGCbYp+kNvdd29r/g=; b=czlsxEcSwMyMiN
	wHrq4S0aOtP2zo9lBbbayjZ1tPiUszropgWsl050tP2G7pvDMJPQAlcQ0MW3iHC0/oiU/I4HoerPP
	x2kd/DAShcHo6ABoDz1aANu2iq8IINf2XXWykWSPy++ceH6tipdVBzmjzjGhktRJZyLpj+sGHvfFA
	psYQfUAtOKnqGMM+QDtr+4LdmdjHrTKwtodNgdrOb8HyiSJagTRe02MSCPbffIpIYdELFcdw97qZM
	uH7OUZdtpSq3/kAnW3EH3VnoMYW2nBUldQ2Oew1EF7w+rSdzmOsZSjZhjAWiBXdkj/4Hjn6r2eB05
	PylA5SU6npa5p6HrsNTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQr-001vPF-1t;
	Tue, 07 Nov 2023 15:56:01 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQk-001vHz-2f
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 15:55:56 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-507e85ebf50so7242361e87.1
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Nov 2023 07:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699372552; x=1699977352; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZdPLm4V5Hkn6PmKk4G4TX5qad8wgg2qashR0qo8Jkhg=;
        b=nDWeFY0jHP3ZywU70n4l+fjK0y86ZmccTp61AeTY/FsGetCx6lzzldbDG9eKkcW5rb
         2B8YoVwt8A9Ouy2oK8ojktCmsRuYOxXvOho0Z9mTNm4MzQd8+4+SpOeuUJIx9/JE8XN0
         mA8BS/GjZ4zD6Lx7rXzi4P+uGgoDnhwEveOKweKzcEdQ6yPryexlKyRQSGYsJJym6GVt
         wBlpW7T75wqsm5855xf3TrfWOYQWjjazfL7RJCC1JDduKHp1K6dUsj+ZF6HsGuEEfukt
         5B6TLAPjZmQ56wkpJla/gymNUT8EoadkzRKG9J02MqA0B+DKxWqoL1lf/wmDIpAocsxq
         JrXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699372552; x=1699977352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZdPLm4V5Hkn6PmKk4G4TX5qad8wgg2qashR0qo8Jkhg=;
        b=jZfCaQ4RmqYkkBa1SVHkVA/Od06k/+Sdz6uXWcur/l6CAHcbbMlVEwhWsB61aufkhH
         OGGAPFjnaSyCrwqmkkQEglSLjRFhukmolYeZ4AAAlYieS/PjpDai+8O4u//HEdiGG+PY
         KghLd5HrX3RPgsXpnR2ZSOk0zxZv9ZR7iHbOOd9l1Qgh5g3OyjkzbXqndrAVidg9RENZ
         PuZJQ+MEU0D5EAiDrtqQHy5speXOBTSP7aBSRdfrP54A1d625fIpK+nN1Extuzl5zVHE
         EJKFUwxqVgaKZmLijnDmc8lwzLFPKf88k0MtYBB8PQ/FOr/izYf7ka3Waeyr0LMVEEyl
         D30w==
X-Gm-Message-State: AOJu0Yzu8jI0ZhkwsrcVOfPSam/5axaqR3i7aWySM6dGRaFJQp/s5Bjz
	31fVZ/kgdLKXBZ9q0QWXzkhvpA==
X-Google-Smtp-Source: AGHT+IEdPqFLLB97FsJn9HE6PuUCXYD1MUIYJLqs8/8KgotwzZO95QNjFhJZQBPn7vpBWJhUDXeo1w==
X-Received: by 2002:ac2:5234:0:b0:508:264e:2ded with SMTP id i20-20020ac25234000000b00508264e2dedmr24676229lfl.38.1699372552470;
        Tue, 07 Nov 2023 07:55:52 -0800 (PST)
Received: from arnold.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f6-20020a05600c4e8600b003fefb94ccc9sm16579085wmq.11.2023.11.07.07.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 07:55:51 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net,
	heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: ricardo@pardini.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 4/6] ARM64: dts: rk356x: add crypto node
Date: Tue,  7 Nov 2023 15:55:30 +0000
Message-Id: <20231107155532.3747113-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231107155532.3747113-1-clabbe@baylibre.com>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_075554_867089_A1516490 
X-CRM114-Status: UNSURE (   9.11  )
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

Both RK3566 and RK3568 have a crypto IP handled by the rk3588 crypto driver so adds a
node for it.

Tested-by: Ricardo Pardini <ricardo@pardini.net>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 0964761e3ce9..c94a1b535c32 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1070,6 +1070,18 @@ sdhci: mmc@fe310000 {
 		status = "disabled";
 	};
 
+	crypto: crypto@fe380000 {
+		compatible = "rockchip,rk3568-crypto";
+		reg = <0x0 0xfe380000 0x0 0x2000>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_CRYPTO_NS>, <&cru HCLK_CRYPTO_NS>,
+			 <&cru CLK_CRYPTO_NS_CORE>;
+		clock-names = "aclk", "hclk", "core";
+		resets = <&cru SRST_CRYPTO_NS_CORE>;
+		reset-names = "core";
+		status = "okay";
+	};
+
 	i2s0_8ch: i2s@fe400000 {
 		compatible = "rockchip,rk3568-i2s-tdm";
 		reg = <0x0 0xfe400000 0x0 0x1000>;
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
