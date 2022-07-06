Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 464CCC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H321X8HU8AaKEs0TKy0EVrM84Pt6F97kQmbLE8Rtg4M=; b=sa4iSnXMnZM1nG
	QmEoXPrRnlVRNbM0GjPVcwo0eJ/o1hZPDaZ3KJtfXeNv1BUjFJr5xqpwAFu1OKCbc/rqhhFc65V1E
	UWrYVGCmSubmyVkthq2FJXHJccdV1ewH7zi3pY1sUuw5F7niMg8asXZ9xJGTEEB7yt8jnM+otkg99
	cKBAm4lAFWIeiy+vZ2XMSUtsuYWEl1Kr5frbaZHA0HvUkPBJ+8dhkp0gspVc8+X0sHGiEZRKOjKi1
	3uz6EmzSYt0fB9fZWFvz0LeMeQH3owRxzUyjHUL/rXz7GsxJanwNnNliQUHPem7jp0q2BposyMGvA
	ciGDLlWXJPgqJnyDa8Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91e0-007vWE-Oa; Wed, 06 Jul 2022 09:48:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91Uu-007qGk-Fi
	for linux-rockchip@bombadil.infradead.org; Wed, 06 Jul 2022 09:39:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Rj/Na2p2CdSqeZMTsRP9N7r+JNYd47iwYks0u+hdyhY=; b=Dk3IUdUXzFl9LkosXUtEU1tijY
	QZvxwzIJGcjsE2WOTkvYAqRKAzyh9Fnjs6/y8JscI9YX2kSFpaA3Kc7RTdlluVjIABKlQEJPfYtHs
	gZHz94GH8xFDJKwYH0yiYuFo47cxiegcuPD2Ze2UKoNjCkhKlnN+tjs5BC0I+RSUsCMa9xrfj0T+u
	6PUtfclDXAkXZBwaGPtq+fP92xqhaqmrDqz2tzEcOFrZ7gSPI0Yg5UyhWuQHDkBBAnPaIkWfobG+i
	V5cT7UVF6tbjyUgVTl8o6Thx0ZfLx+iKykyD7uWneIJdF9CPdziXhQbfjb7UADv0XGhdSbD6NBOmO
	dlIgMBUw==;
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90yD-000NGq-Sl
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:05:22 +0000
Received: by mail-wm1-x32c.google.com with SMTP id h14-20020a1ccc0e000000b0039eff745c53so8588139wmb.5
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Rj/Na2p2CdSqeZMTsRP9N7r+JNYd47iwYks0u+hdyhY=;
        b=mKtq9ve1yeoQVoxcX9vU8Kzc4lD26BfGnICxDQSTU+FaPGF//iOE0yhM54oCSAigK9
         nw9+9IBaikZ7fIBfJL5/xRtLdv6VunAaQ1NIogOf9pia8Ily3Ben5QVis32InM4k/D5T
         AfSj67218HVN2+GtVGePlqM0jgo2354uQNXUsMyuZAioIP9MGKGscKVmvyklsbm3pcON
         /aKvGA8XIweKLAH1x5YWdI/17e9p+Wtui1phg0hDbSSYqdPcnc4L6WRBNE+otZiCFUvK
         JXdJofacBazG0blo5TNTGr+Z/z30kJwYylSc0JUYrIBbnTaLTKIAVKYdnWsrhvS09EC+
         G5kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rj/Na2p2CdSqeZMTsRP9N7r+JNYd47iwYks0u+hdyhY=;
        b=lbWxmC6CtxdCCzAv1n9dHSlvQR0QmdcrZANgob1Z35OKIKNtbojkuRsxirQiTU7sLT
         M2yPcgFfyeGLGX487pRzj/xKAf32a7fHCWD6pgeTxSNLohN53uCQCCA9hEDvu7/PNWfb
         kgkLZ0s4CL4E0Ol07qgK2jpF6BFmH17+az6nExFgErFgPpvWK4wSpMe09s9SQuSHFdN7
         1ADF5zIhZrzoGTLpdLLzI8K4jW/5DWmfFZSwHiYuQ0vUSqcbcAMxxSrGQzSxpBYRtwPZ
         sDpGynpT6eIb3fB7mVXMPNF1GSsfg7d0Q8ycNxu2v+UlxvXVmnLwIxriYf+3F5mX8vDu
         o8jA==
X-Gm-Message-State: AJIora9dm+EF+yPL0Bp3IcxMjzSvQBXfUAI02t9odRcuprlmZzOUldU6
	ihINodyEyvbqOORvD865fGLOFA==
X-Google-Smtp-Source: AGRyM1sAnoPrBg6uJutH5ajAxHTIlpAdgFxVpIOIcQSoVgdpXp9s7DoczGILgzfePMiGZltE3rbq0A==
X-Received: by 2002:a05:600c:a18d:b0:3a0:2c9a:b3de with SMTP id id13-20020a05600ca18d00b003a02c9ab3demr40212216wmb.147.1657098302032;
        Wed, 06 Jul 2022 02:05:02 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:05:01 -0700 (PDT)
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
Subject: [PATCH v8 28/33] arm64: dts: rockchip: rk3399: add crypto node
Date: Wed,  6 Jul 2022 09:04:07 +0000
Message-Id: <20220706090412.806101-29-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_100519_988071_B1C2DF26 
X-CRM114-Status: UNSURE (   8.97  )
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
index 9d5b0e8c9cca..8e5aa1ca62d1 100644
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
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
+	};
+
+	crypto1: crypto@ff8b8000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b8000 0x0 0x4000>;
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>, <&cru SCLK_CRYPTO1>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
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
