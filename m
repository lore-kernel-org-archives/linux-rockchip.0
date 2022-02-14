Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF1BFC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=726CAYqQJhRkFET9Iyso+jkdy3fexXfBnsj125uZNh4=; b=IPrLL5dKC2wg+X
	txyO9EkSk4NPN8vVJlMWkxdWAM8gIfmgEGSovTVFOK+Mjl6GtHt/cBkqv63lytzXrwyDYUHRIn2H3
	93gsdIezTX2o3yugrvb2C8MNmCiJrYH5eNtVZaanRHWV4G/3WgZy3A6e4vTeRKH1YqTiRAmeGuwGI
	25qvR9a2g305xbQwUAecOc7B2m7ZqkBY2VwF91W1/UABNTdZQ81Z7eqofzwTYI6/i5eDIx43yKQSc
	FWWbmdYdhCsk063GPI00TySMwhr0sSw92lc9D8IojNWUEdwI0Quas2MsffBVxcsVpiFCwqGR6qddc
	UPzVBFi425cd0vZxBpRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWss-00Dz4E-Kb; Mon, 14 Feb 2022 08:38:58 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWaV-00DrCl-Ar
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:20:03 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E1E8A407E4
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826797;
 bh=o/YgTPBdxwkk76YIPJfDwO9KLR8OIlu6EoGrWBDU/GQ=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=EwTyN5N67UAQHLpprepPlAdArEoxH9FHAtFV+b2v/8mCpJO9jzmVzcILyPM1QfAbE
 mcYvaKAxFLktyuhN6d8z+h5Ije00wbvaMxqdQcusXQUlfOszPBuuMobs1BrXaKaANb
 9dlfmVgYjSoQt2dKnfeJ/ZSY+y1qzxVO9Fjhv7VR++Dy8m0dWIbJnuE5jhsBzkGIA1
 n+qAYg2y5g/hq71m0WQZbiuHAxmVjasQzBlAgOptKuU9jy81ta9rak5q4puZxmImiQ
 QzRXART7ckrtwQCvBQSSU96TSsvUzC9xC0sKw2KEQYTwjoP0Ah9DwcJioZJ7+YEa0R
 8mDjyxKbwq3Dg==
Received: by mail-ej1-f70.google.com with SMTP id
 qf24-20020a1709077f1800b006ce8c140d3dso582149ejc.18
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:19:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o/YgTPBdxwkk76YIPJfDwO9KLR8OIlu6EoGrWBDU/GQ=;
 b=78R+EFv7GAc+Ymav8srkvChYRUXskG+obZnfsPBzguxrXBQ1Mf3/J/1ainKStMVmOT
 HdUOUD79529tSjxl2sqNi/bdjwm00aKOp1D0jKZgeHStEfWXXZsq0KJXndPVK5BQ5jgv
 6342wNEjF2PS+rvDP+NG2OgCHt4AHzMKBF5Y1jSMGvjSWEmgCibvCm4KVzTzu5nK3Ufo
 7dRZg2rcBuggPieN5RdbaKG87E/6cH1uMu1dATPNXOp0ZfB+P6gzRq2y0E7yAzAnPkd5
 616arD6gV6FqB/ZkE4QovPuvXGM8GTtGW4csA1HCB8crG390lZ5v1H6vR4uxWYb1jqcv
 +6Zg==
X-Gm-Message-State: AOAM533U8PyL268MNIc2prmtQsJkHMcsX5F0YQLk74C6X1Jm+6+/54dY
 wGFNQBRgmQDEC4qRZlRZaBe1Q/ketbBPpTw7lptwIR6JTOqz3gUr6/oYscXbRrY+wJxUaVYnqha
 UKbZnKM+Jqf+KHMI+mswtlAzp/nVctzztVzpxDaHCzvlHZyWprw==
X-Received: by 2002:a17:907:6091:: with SMTP id
 ht17mr10718076ejc.607.1644826797377; 
 Mon, 14 Feb 2022 00:19:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwkFPJeiJWjmWYMYKnbVg1bBwxgaPTZV+oh4RSUxGNA67GTozBuexvPDdoyT1VdY/d6fUhgGw==
X-Received: by 2002:a17:907:6091:: with SMTP id
 ht17mr10718069ejc.607.1644826797215; 
 Mon, 14 Feb 2022 00:19:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id b20sm2022941ede.23.2022.02.14.00.19.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:19:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>,
 devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: rk3399: align Google CROS EC PWM node name
 with dtschema
Date: Mon, 14 Feb 2022 09:19:16 +0100
Message-Id: <20220214081916.162014-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001959_546018_543BB435 
X-CRM114-Status: GOOD (  13.97  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

dtschema expects PWM node name to be a generic "pwm".  This also matches
Devicetree specification requirements about generic node names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 9b2c679f5eca..3355fb90fa54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -462,7 +462,7 @@ ap_i2c_tp: &i2c5 {
 };
 
 &cros_ec {
-	cros_ec_pwm: ec-pwm {
+	cros_ec_pwm: pwm {
 		compatible = "google,cros-ec-pwm";
 		#pwm-cells = <1>;
 	};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
