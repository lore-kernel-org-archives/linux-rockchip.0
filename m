Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8537C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 23:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6HLAcrytTWYnzRI/3SKNJvL+WAXb7vDKgmy/oZqJwM=; b=vb17vGlPHLErZH
	x6gvKT8NM5zR9eovQGNE/e3fpjSiqRmHGbGcNOuWpeAwJlhtCGP4efzPFbLHOi2V4r/GTSMjGNpFo
	ul9Gcoq7/yAnI13jEbNs2QlgAgTDGWE8MNfmofJt9pEy4vnmv/AmK3giAHEQ5aIVXx38m3Rvuzf02
	R+AyJrdIFm01l0sXeCpUdJqYqq5eXlnoHooFbFIZVM7vaGxYgUBtgT9ZBBUfETit5FKJrWOAkWAYL
	wAkOTAuNc7eEy0C0yRSv4sjLnFJaceTylFE6o6S5Edqy/aYg5d1sDuGeGZl3ZLBASOI8ucyOp2h6U
	q1UtcIwEfOSmQJCkcPTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rG6PY-001IWr-1M;
	Wed, 20 Dec 2023 23:55:36 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rG6PL-001IPd-1W
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Dec 2023 23:55:24 +0000
Received: by mail-io1-xd2e.google.com with SMTP id ca18e2360f4ac-7b7fd9e17d8so8879839f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Dec 2023 15:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116523; x=1703721323; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9SmCkbB9UhMeKs9+2qDNSyTsxiHJD2y/t1pUjGilRTg=;
        b=ExtONaY+O8asxB//dMn4JKhB2yTanv77WC9+rnfE2G0cldunHMpNoFMQbgpEFU0J0A
         nhhoCr0/nk35kBhuIjt6sqnTR/o4re8gtjlfIHVxQcMiFWm9JPq5hzdySfY1ZdOnH3oe
         DgL3I5fsLgeBMMfUUF+de6KPsQ8D026JDGSEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116523; x=1703721323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9SmCkbB9UhMeKs9+2qDNSyTsxiHJD2y/t1pUjGilRTg=;
        b=EdfHlW+KfF8cCIi2iTg0Sd8hUnbQtqFjyJ5F3MZ17TmRhvMhLdsEbXOXddRpSx+URE
         MDMmDw4PWmYfNwTEErhp5jBQdxkO/ZusKYJYC3kxPJDxWeqWsDjXDb5b2N/3w4yNCScV
         08TOsUpSITgbA94900Z9H/HopejzxkUZuupIPQJaQyvd6dkr96GWXlBk2GcwJWezb226
         D0xd46MTB7CM/0BLc1ENGttBh9jFmlAH1imJhFGKNJ4Ym5hywXdXFf17Iv/EN5MLDVck
         dLNFmdMJqWacm6EHe/bqaqhMmW0VeVh6/8sVpTChBhFhAwRUSFQkqy/eSbe/L9vgSsEX
         4WuQ==
X-Gm-Message-State: AOJu0YwrShIIRki1Pcb2xySUGa7sr+q8csbfIk4byrsd+pg9qb/x9k8b
	ZwYXTCXIPmwM45ElTZG7nNU1Tw==
X-Google-Smtp-Source: AGHT+IHK/bUEHWlzooHpOwEVS9+Oxk990sSaRzHv5EcAGd37/O9A0Vk7LwOVcnNWMGNdoN2K5E8zOQ==
X-Received: by 2002:a6b:7f01:0:b0:7b7:fd05:4472 with SMTP id l1-20020a6b7f01000000b007b7fd054472mr2991741ioq.18.1703116522877;
        Wed, 20 Dec 2023 15:55:22 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:22 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Raul Rangel <rrangel@chromium.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Mark Hasemeyer <markhas@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 16/22] arm64: dts: rockchip: rk3399: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:30 -0700
Message-ID: <20231220165423.v2.16.Ice617703aded22ad4c806459129e1ae693eb57af@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231220235459.2965548-1-markhas@chromium.org>
References: <20231220235459.2965548-1-markhas@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_155523_511380_CCFB3DF0 
X-CRM114-Status: GOOD (  10.06  )
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

The cros_ec driver currently assumes that cros-ec-spi compatible device
nodes are a wakeup-source even though the wakeup-source property is not
defined.

Add the wakeup-source property to all cros-ec-spi compatible device
nodes to match expected behavior.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

Changes in v2:
-Split by arch/soc

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 789fd0dcc88ba..b5734e056aef1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -603,6 +603,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_ap_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		i2c_tunnel: i2c-tunnel {
 			compatible = "google,cros-ec-i2c-tunnel";
-- 
2.43.0.472.g3155946c3a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
