Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A6A2C48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:14:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7DE06127C
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:14:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C7DE06127C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGD1+Kjze6ZFdlBE5SYQMbkSB0wilhxQzN+4y2hsBSg=; b=zq1ssFeo6Tse35
	XTukJqhVPbXxWlWowaa5Uic/XYoVT7wWBYuXa01AMAdkezuitaIzjGy+7UWS23mKnDkSaVVTA/xFl
	g+HTwoS9XIMkV7A5z3sdbD/Uou8JsLiYCpcGmbHhpG0qn0onfdW+pGpc0bQcasoXZgOnTfY54xvzu
	BorcpZ1+/w8yvFfKsyuYIy6k5l8qrPKJfb0xbU+VqK8zW4Dhx4/su4N+1Tv5w7n3gRkRGDIkJPP/m
	2qv3xWg77EDl//lla/FLWnCPkJfJ7AY2w/0t5Df3vsdzH5DzEnTRcOEC4WmR5RTqgl3p+AggOCoTL
	+wKNuefS04C8UOYPxB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luJ0C-00F8Er-HL; Fri, 18 Jun 2021 18:14:00 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luIzg-00F819-RI; Fri, 18 Jun 2021 18:13:30 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 h11-20020a05600c350bb02901b59c28e8b4so9278969wmq.1; 
 Fri, 18 Jun 2021 11:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UG1JOqqWkVJ7vxd2JTkW+ImSRr+NkC9K3MMi/AjrjDU=;
 b=Xkzn6Ksrnwia97J/BpCY2xkdPjNlvHd3y9vejcoRWCqvmOR5xUiorCQaI4mZHvnynm
 ndNXHy78Pt50Vj0fpMqY0cKIjesMEhZqGdSCPdM1C33Zrr58lXAs8I1oS3u6d9DnTbdi
 JynaoBGH76QpwwnaPxxjR4OF2Q410iJvw//1dOKAldVJkG8H9hUREd9FvIRu0MVLG3ui
 kHKvmqYumEQR0pk/igFV/JJbUO1msDEZmobaIE68/X4FZOFtoZ5bfYzXXwnP4E1S05PS
 xOiIHCgJ447PcpCF2Ev3DPAD38SX/Q7BQolquiS6nQwo79jFVq916zxilq558Laiwfzo
 B0fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UG1JOqqWkVJ7vxd2JTkW+ImSRr+NkC9K3MMi/AjrjDU=;
 b=WHUFug+/n5J2Z+hDJ+45ckz3d4J0ojRfiOG9iGHp/0YOlXgtZrFYLMbDSxoIpeQMwR
 YFyVXUDTlchJBPnMXNrliWB7zJLz/pDYUVmK/jk4ZLmpGZ7Vur6VVP38VafEHny4Ob19
 tyBdcQv6oQVeaprAK9h8eBYP769/HqfgSHhetqhffrrXkVtYEsgzsZiGg87HG+/L6hhB
 g9KZb8t4n06FRfzPlNRAqrWAOm0USztq+iPc0jo4iWjzk2kyuBRvhQhp6/Q6SWtLA4Ca
 CXDCnYiCw85TJKIEDUSQDR8TWUzZce491CfYLeSqSyhxsVFc1mxM50uyuL2bZVBpxMGY
 llPw==
X-Gm-Message-State: AOAM5327m4OivSw3iCHL5k/k6P16SWkpmR0lUU8Q6ZPQGQo5j8NHwXVV
 qFEwCUiMn3fMVFlgCve6qQ==
X-Google-Smtp-Source: ABdhPJx+u7DyeUluCInilWHRKBpThJKW9LLFAGMQfBOa+7iNfIt8TIajVsZ3oq20Lw7RsABn3ZHwhA==
X-Received: by 2002:a05:600c:4f09:: with SMTP id
 l9mr13253406wmq.114.1624040007086; 
 Fri, 18 Jun 2021 11:13:27 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id l10sm9306782wrv.82.2021.06.18.11.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jun 2021 11:13:26 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 4/5] arm64: dts: rockchip: add ES8316 codec for ROCK Pi 4
Date: Fri, 18 Jun 2021 20:12:55 +0200
Message-Id: <20210618181256.27992-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210618181256.27992-1-knaerzche@gmail.com>
References: <20210618181256.27992-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_111328_936240_79815E6D 
X-CRM114-Status: GOOD (  11.58  )
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

ROCK Pi 4 boards have the codec connected to i2s0 and it is accessible
via i2c1 address 0x11.
Add an audio-graph-card for it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 7d0a7c697703..80925a58e470 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -36,6 +36,12 @@ sdio_pwrseq: sdio-pwrseq {
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 	};
 
+	sound {
+		compatible = "audio-graph-card";
+		label = "Analog";
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
