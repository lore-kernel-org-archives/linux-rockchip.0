Return-Path: <SRS0=O9sg=LL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE9F0C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 04:50:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A04E36100A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 04:50:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A04E36100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=21z74fn+23E2K5YPDmcG9zhZ9ifKh8igoYCRfKu02bo=; b=K4saFqt4O7FjEN
	HjexdIKw1IkKn66OrVLFYeZGwMkbladKZNtPdac8Mz+T1o2g92qBLSqMW3eI2d0S8Fwg/nyH38SEb
	dVw1+/zoQeAqqha4Is2GX7b+jp7Rl6B6+a/mC24FSNBczi+68X/Hu5/T1lL4Dx2PvpKDywJP/ddN2
	eb5+CZSuZVgSuALxtOe9Y4zJlFErOaKS9mWVH41+7cSEk8pZTsiYfnCqyn2MzhRG5/qckIBzU+eiv
	D00AHThWLElj5ckbPOXFWzkfUGB6YWxSQKb5CzT6V5QkwBPBkYDv17uBkwgHXDB1NUR++vVdyd3mt
	PNHsL0zF8byKU/MTBY7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltjyf-008mtf-PR; Thu, 17 Jun 2021 04:50:05 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltjyd-008mrt-CE; Thu, 17 Jun 2021 04:50:04 +0000
Received: by mail-wr1-x42f.google.com with SMTP id y7so5068625wrh.7;
 Wed, 16 Jun 2021 21:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G8xBS3pgbjn1u0NzXrJPbnHQ5MKIiawbeczldYN/4uY=;
 b=gRZDlpwJC98qkdPgrOJkADH6IP23iv9SrTRmpkw2AkJwJ+KoAtVQFY5MmhSCAgzXAP
 CQz3L5elU7d+jI1qjhW5wSKAeqqhaKHpG5zGPQYTJsPxU+uyYo8xdEWOD3FyBVrz6U4T
 t9kdWVXw9nJkuoavkjqU2+EaWpZ15IsQXvOuIGJAjqyXo3CIA+iBOegeI61ukmYECbBA
 VUW32LtiG9zLQrTt3ks8Fa4r3tiOjyYN9J63rQSGwNvTPLBf3nLnPijM1+6SkPYs3BVv
 vw1c8ANYTHxRNeSFxUpKblCz+MmmUnte44HQ4js1hQ8cAY7Qu9JEN0KWpf2qg60dvjy4
 vMDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G8xBS3pgbjn1u0NzXrJPbnHQ5MKIiawbeczldYN/4uY=;
 b=SiGwio6q/QCZdOjuON8jVOa72wTzLGf7aXcNTWGxqNS8Wyxs+canopXG8z6WQdurAN
 P0H6N2IWY9Aj6QRTkBiZytFFpR7HJO9m2eUNhFXrzH7GSLVXhUX/x+RvOaVSb3PhYM9H
 H8/9tZfp4MOFJiZ8Lkjg8yiB0Eo2sUHmxp8nrYkym03/IxKvYTQodh89OwbMR5C9Lz68
 +PA8VI4v4dQ9YjjiXaL6VIEvvdi7CShQhoXHTdMP+xsMRxap+NfbNUQrm3txocO43kOO
 iGLX9xP7Yj+gl7Mib41Ng1dya7Dax8h/K7HfZp3wz3Ub+U6EkJ/AxQRpa3gIi2KVmb7c
 4rXw==
X-Gm-Message-State: AOAM532TIwRCZzjzXioqMWS9UI6rrAJ1yW1+IFKQjRgHA90wdgDU+VYl
 0qfL2A3a0RHjRndecQ5bo6IqH11wfg==
X-Google-Smtp-Source: ABdhPJx88fGa0319NJTKdbmepy1yUaY/3BNtC2Mjf2cyEjMmkgRDpZVAMMnOMoXSvFjVc38WHmCZMQ==
X-Received: by 2002:adf:facf:: with SMTP id a15mr3278608wrs.308.1623905400757; 
 Wed, 16 Jun 2021 21:50:00 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id n13sm4587460wrg.75.2021.06.16.21.50.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 21:50:00 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: add ES8316 codec for Rock Pi4
Date: Thu, 17 Jun 2021 06:49:53 +0200
Message-Id: <20210617044955.598994-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_215003_461247_10CBAFF1 
X-CRM114-Status: GOOD (  10.10  )
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

Rock Pi4 boards have the codec connected to i2s0 and it is accessible
via i2c1 address 0x11.
Add an audio-graph-card it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 7d0a7c697703..e5c1083174ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -36,6 +36,12 @@ sdio_pwrseq: sdio-pwrseq {
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 	};
 
+	sound {
+		compatible = "audio-graph-card";
+		label = "rockchip,rk3399";
+		dais = <&i2s0_p0>;
+	};
+
 	vcc12v_dcin: dc-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -422,6 +428,20 @@ &i2c1 {
 	i2c-scl-rising-time-ns = <300>;
 	i2c-scl-falling-time-ns = <15>;
 	status = "okay";
+
+	es8316: codec@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		clocks = <&cru SCLK_I2S_8CH_OUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s0_p0_0>;
+			};
+		};
+	};
 };
 
 &i2c3 {
@@ -441,6 +461,14 @@ &i2s0 {
 	rockchip,capture-channels = <2>;
 	rockchip,playback-channels = <2>;
 	status = "okay";
+
+	i2s0_p0: port {
+		i2s0_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&es8316_p0_0>;
+		};
+	};
 };
 
 &i2s1 {
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
