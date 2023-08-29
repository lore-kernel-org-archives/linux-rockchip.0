Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 636BEC83F20
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mInHYrOjcSb2VUJ5e73cXx8mz24cGpYLGCjzhkNDeA=; b=BzIcwgOv+DPmoY
	ZIqy7vBNd9pBhitrnX40rv1F/fIlnEZGPyTq9YNP1A+R2YcAbvYkN6EySHpy+kGQ3n32Ew8jUMNCQ
	F2a8x5JD8ILWD08luavj/BcKuvkPnvQefqE8CZHpFNU1pq2I/r0b3oXsbhWEX9HKSC1Qti40YB5Og
	QjzZkjFR7I9WDCaG8JHo9LbXXQtN1dawUTq719EnwrkQ9y80UjiAtmavBR6zXzUy7t1fibgtbEsP/
	BQ0KJUoQOhtxtJIOc8JPflMmD2duSxE+4Kj5RQNqm1S5yAvbxqaWBJFAVBE5hCeIMlUaYkLRzG7QZ
	pZoaSvP8ZPn1i9/V5JkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2MY-00Bwd7-1m;
	Tue, 29 Aug 2023 17:18:46 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LY-00BvTH-0Q;
	Tue, 29 Aug 2023 17:17:46 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2bd0d135ca3so39578251fa.3;
        Tue, 29 Aug 2023 10:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329462; x=1693934262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=feXb8mBBSxHC2Wg38x6bXprPMxa/iS7sxw36h6E5GW8=;
        b=h4PyqX0xtB7S2T6VFiGduqml3wx0qswAzQccLxwPFbM0Qk7fnZ8sK0BmODYagHvSJg
         dN0Gkz34UcQ5dALUAS7qkreaFpaJH1/HqwEkvHL6nhuwbhwsUlvgNhtu0JWR/t+byarI
         jO/zOGwOmY8ILY7Yn5zt8RSPxT4JW03j5Tykw5RFZbIchdbUVag5NZphZtJVw8SKgyXA
         StVAmKygz3dt8cdzSI8lWcVBevQXPpttS6lu7dJtB3bq4a2IVYMqqSDw4EMZGzaYGz8o
         MWk29pok/xzUj/XYqYYzaN6bwBumz3ddYzcgcpDsm6KdIhLN5lyBSD70ZFbaayj7BLKq
         o/hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329462; x=1693934262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=feXb8mBBSxHC2Wg38x6bXprPMxa/iS7sxw36h6E5GW8=;
        b=armlRxFOJSABgNqvZATzNmxPp0WbP1lRYRFrdnXJT7jjnpyt1s008/wjp5leYNXVdI
         FIL2inM2B5DvxFbHVDbOsyVNtMeKIAFvUGf6go/JamdEITrdZu6FynoZanxPSykDZDIj
         Ho8u0svvUbH0eDgTlq9sqFraHxhMr6I5H2hrIhtj9RoxeFgbYB/wXzxymVJy5uoXY9Ls
         TQsKoYal7hgd/IiAsNBAlBVkWKI+mXC8/pU27bgDMUPgWHTSyJkaisph6NUwpT7fSmsf
         w0VAzcnws7PyF6IHxnZEnXi/E+lRlfV9LPlDVQOSQWUdG6PAL2F7cnPPjXDHt2jJfDFr
         kvzQ==
X-Gm-Message-State: AOJu0Yx333tTxhuY5FMKrQLwStg3djv6NTgmODCgwh5JEZuZrgyGl193
	Bh5njZkNa8rs+7Fa70/cdg==
X-Google-Smtp-Source: AGHT+IGy6ebumFaH6aO1ynQk+aNb6IThAySOcLcWyoeDCRfh26m8xsK1Szz112EbWkaHyFlntA3M6Q==
X-Received: by 2002:a2e:9cd8:0:b0:2bb:bdf0:caf2 with SMTP id g24-20020a2e9cd8000000b002bbbdf0caf2mr20698676ljj.25.1693329462298;
        Tue, 29 Aug 2023 10:17:42 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:41 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 18/31] ARM: dts: rockchip: Enable SMP bringup for RK312x
Date: Tue, 29 Aug 2023 19:16:34 +0200
Message-ID: <20230829171647.187787-19-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101744_183177_9B233BB2 
X-CRM114-Status: GOOD (  11.72  )
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

For bringup of the non-boot cpu cores the enable-method for RK3036 can be
re-used.

This adds a (small) chunk  of SRAM for execution of the SMP trampoline code
and the respective enable-method property to the cpus.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk312x.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk312x.dtsi b/arch/arm/boot/dts/rockchip/rk312x.dtsi
index b195ac525c37..08b953b005ff 100644
--- a/arch/arm/boot/dts/rockchip/rk312x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk312x.dtsi
@@ -27,6 +27,7 @@ arm-pmu {
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
+		enable-method = "rockchip,rk3036-smp";
 
 		cpu0: cpu@f00 {
 			device_type = "cpu";
@@ -87,6 +88,11 @@ imem: sram@10080000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0 0x10080000 0x2000>;
+
+		smp-sram@0 {
+			compatible = "rockchip,rk3066-smp-sram";
+			reg = <0x00 0x10>;
+		};
 	};
 
 	pmu: syscon@100a0000 {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
