Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFE83C7619A
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 20:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2S+4ijy5Ntg8vFHXmmW+AwHJF+tKlxGPKv0f6XE6bY=; b=c//Mcu3Q+y9CdZ
	fo+RW1/EakJzXiwNY4LL6xMAahKJBXb/mAOSc6tGQBYApKA7EtjwWxZf264EnByzpkiOeHlDtBsdb
	rw73Yby4XkikoEl8+IjW/F8UyFiZnR4oSrRjePPxNX19EvBIZTfMziEEeFOTWrDU9bLI2sLuKeS2s
	zISWrWgfxWu4LQvl2sZ1FoqR6NULTonG8eFfQk52hcxM4DEbFnO9XkeNJipg+y+UWwBBgi/3yZQ1p
	oruakGITkx48pfPN8Flge1sCYQhbSedTHBaBZh85g3JbV5XsZXB58vw/g1ZdEKlf3ONO7tcYe2id2
	eDDiSixiIuRWkWmo/7cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgXFA-009BVw-2Q;
	Sun, 26 Mar 2023 20:45:36 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgXEz-009BRJ-2d
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 20:45:27 +0000
Received: by mail-ed1-x532.google.com with SMTP id i5so28153637eda.0
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Mar 2023 13:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679863524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EvZrVpDdfTLeMGJL+heZ69WUSKrchJNCDDAYmYCMphA=;
        b=ZuSKHqc9wHPiA8M5czSgpKnQcYELnVhA9nB6Md8rv7AeorKkIFrZng7Clvi28TIzlp
         dvwqxGXyvJy2UqUophw1hpaK/ZlOE53rmafjDvl2eh0MKZLnOP0fntZ/Ceo0waCbnpRB
         86SRY4r1ZeUg6IKCiUSdtSyPRAUarFDNG824nJxQgLw8W1u6raDS5cAp3mpCslpYb0y2
         jkUGE4fN9i5a5GFNh7yAYg/t0CZ9Jmguoun9FoKJ9XTn7YxHpgW/qNPMYWa1mroJMi/B
         eKPNSKYF2XuIjNe1NOGcdk9F7MXJ80AfPPIn2lE4SPrGxfVr15GfRn7RtPqgoTdvjYD7
         42LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679863524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EvZrVpDdfTLeMGJL+heZ69WUSKrchJNCDDAYmYCMphA=;
        b=Q086BUDC0pNJSzckLaJ48GJy+jvaoYJ8Yk+oCIJpr6HqibX+JEGJ4YBOaWkblLQwjy
         Qa/cfIiGVtqBcbrAzk5U+XX3LNndPUIRoSRISOWz+1hqIQcsnJUuPMXaEGwzCDVhdSvi
         NFj1FWW79MIrFNKA3dSXFhB+4zNqcoWbTGQpcrMpbTPHd/+5jj1kSUr39sUYK5/w44kt
         ditg1lEqH/PLTLB0ALsttZsmytpybtfWUuHMCx2P3OvYAwn8NeSBJlfdThQxa42duYbK
         iCpnwfWieA8hd9Y2ZVUufihJIXOR7HnM2SQFc8+pVJtlgR2tAxF9jtTOWOE4m1hhWiaW
         8q9A==
X-Gm-Message-State: AAQBX9fn9U0Iybq5X3cCxRH7o8YSZmQ19W+si1snmZfTTvG6SJSNMYzY
	8Sl6475nr35ynBO3YJfOimRLhg==
X-Google-Smtp-Source: AKy350afISWMGjqW02mLjl6itx6fdrvMvdaEhMIqaBbv+Rigfq5/tCg+ES9ZBQKvLgaHV+KIqXoVoQ==
X-Received: by 2002:a17:906:dff5:b0:88c:a43d:81bc with SMTP id lc21-20020a170906dff500b0088ca43d81bcmr8568811ejc.58.1679863524094;
        Sun, 26 Mar 2023 13:45:24 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6b51:4748:3f3f:ffcf])
        by smtp.gmail.com with ESMTPSA id ga5-20020a170906b84500b0093e23d03d72sm4090982ejb.177.2023.03.26.13.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 13:45:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] arm64: dts: rockchip: use just "port" in panel on RockPro64
Date: Sun, 26 Mar 2023 22:45:20 +0200
Message-Id: <20230326204520.80859-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230326204520.80859-1-krzysztof.kozlowski@linaro.org>
References: <20230326204520.80859-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_134525_852323_79F31B71 
X-CRM114-Status: GOOD (  10.76  )
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

The panel bindings expect to have only one port, thus they do not allow
to use "ports" node:

  rk3399-rockpro64.dtb: panel@0: 'ports' does not match any of the regexes: 'pinctrl-[0-9]+'

There is only one endpoint, so use simpler form without "reg".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 78157521e944..bca2b50e0a93 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -647,16 +647,10 @@ mipi_panel: panel@0 {
 		avdd-supply = <&avdd>;
 		backlight = <&backlight>;
 		dvdd-supply = <&vcc3v3_s0>;
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
 
-			port@0 {
-				reg = <0>;
-
-				mipi_in_panel: endpoint {
-					remote-endpoint = <&mipi_out_panel>;
-				};
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
 			};
 		};
 	};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
