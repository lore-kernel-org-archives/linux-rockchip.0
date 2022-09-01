Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26B10ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H321X8HU8AaKEs0TKy0EVrM84Pt6F97kQmbLE8Rtg4M=; b=Dn80Ji5CG1t2Qm
	A8cCEbe4B6BfhBsZyOx6+icMWs6d4hOuIPth1KuoCHZV/NKpFoh0nqlv4tVQhfiQsAVmgXnP6q5qd
	HugpEqmF6TvcqB6508hRpKk0CUJp+jXW0fVhiy6wwhclxC+Bj05r84wbtwQPZKJDa1wDXLNu1XvY7
	Zy3sjd22/eyXnefhMdXkZuhg3T9Mco6nx1pvCwiB0njxDjqQff7/VeXMzxmKYmaohZPivkgDeuxVQ
	Y3UOYlijt3kdMSJkWHzbZbC8IxbUBiTlNnMZ0+NAWBu1E3Rk+3DOdP07rFwzbvZ4KN13v2x9m6idJ
	VE5tqgg6JpBh4OLm71AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkGD-00C3HZ-Le; Thu, 01 Sep 2022 13:29:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTk7J-00By8c-TU
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 13:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Rj/Na2p2CdSqeZMTsRP9N7r+JNYd47iwYks0u+hdyhY=; b=Chp1wdbiFmIGznKUix6C7bs4N+
	b8dR2VTnoPe225V/HROxZwulNRignV8GPwBUM9v6gbJM7s4/eLDE3iXhMsmf/UKU4tI30P693UNv/
	gcG2dHfcLXK5JA+ePqQ3AmfbaePrg1r4gw63opc13QtufhbPhXwEOSvIZkNUfCeRjbVq66dBqsBe3
	/n1dpBYjMZj50zovFIrrWlsiEAmsg95KP4pZZu24pvAAimjtGfVPmOB4CPPKK85ic2w1McJ7/8EiA
	4OSRBfKs9Zs+DOFSog/msQNfGzNuvX7RUQGtG2dYQ5ZtYQxOketfVq1biGRTY9q5YaAQBw7/mllly
	ngW713Hw==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlU-0062dD-KT
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:50 +0000
Received: by mail-wm1-x32f.google.com with SMTP id i188-20020a1c3bc5000000b003a7b6ae4eb2so1309627wma.4
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Rj/Na2p2CdSqeZMTsRP9N7r+JNYd47iwYks0u+hdyhY=;
        b=nSB5MxRXG1HrU13CxyoiFeYyk9+Kmtibu4qeyazX1OrM5eg50fRBwlRyVzchgZYXzK
         pgVGRZwD0CPwuEX+bwRpYqd7JtkVm80jFwSvUKSgR/vTGuX9BEUzbVjSOjzS6+jN+Zak
         ozJ/Rnz6f7o4Uj3CCw2Gy4/vY9GMs0BBeel/bz0A3fu9Tm+cArUucavcodJa0ErGneRJ
         CSLbcsM8oeXs1Sg7va5P7Q5atGEw5z+TrI64tgUgaLSrPRii+PUbVJ79NDcjjLDxTnI2
         9qLQ+OCno2DMFWYi5sDqqzUdSRswn4rWHOQKviJSoqo7F9M0LETh5HPJSkk8fKZG9Iht
         xs7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Rj/Na2p2CdSqeZMTsRP9N7r+JNYd47iwYks0u+hdyhY=;
        b=5e7ehmZg927lQTApnZ/kASXqDdzBY7iO0I647OpjmFo4WBKXtudkDr1WYXmMLZxact
         NChkLgFBGk3NfE9QSeGFnWbLC5UPfz2YpMSomY0g0JAzUCz9hD58861roseCmeEhW6bj
         jogNVORPloGJslPa4sfq6oRSDycwhKUg7l+KkJL8JkUC89lTsej0sH6PawYLjj7N8WlJ
         NgyOMyaaZgrWIKF+vK1BcEx+7CnuZknTITS/q1VwyVroIdwMshIY2ZXpxbfEBcZUhhbR
         YTZSlqlwi9vce7EbWdQuh7hjvGuA0jA74ERl3Yuj7P0eZs6NExj3ini94zLuaTJZdAju
         INcA==
X-Gm-Message-State: ACgBeo3elztk7D916DaA50nBY2nWAangILv/vGmBy8Afa5A3N3n5d/gQ
	9fji8psLLMLbFKhm6vIjArH6gg==
X-Google-Smtp-Source: AA6agR48476bm3b8oC3PPl+7byFqEBBIf9010+acdf8xGdzXK/sMbAVym/ITPr7LOFIup4oxtbdfrA==
X-Received: by 2002:a05:600c:410f:b0:3a8:54b6:557 with SMTP id j15-20020a05600c410f00b003a854b60557mr5041108wmi.34.1662037065767;
        Thu, 01 Sep 2022 05:57:45 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:45 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v9 28/33] arm64: dts: rockchip: rk3399: add crypto node
Date: Thu,  1 Sep 2022 12:57:05 +0000
Message-Id: <20220901125710.3733083-29-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135748_719537_89137ACC 
X-CRM114-Status: UNSURE (   8.48  )
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
