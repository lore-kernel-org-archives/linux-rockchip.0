Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BFE4C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 20:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyMY4Tx6N7pGhtI2evRBnsu/mkM4NWIvbAUppZFR8dc=; b=hbhKRY7469dwvD
	jF/7nb6xceqlFpbJf2qIbIzCXtVIWeM3J4yxgUVk6Fh4c18DCzmsyai/ksY+bl8cF68WRFQbUacjO
	Iacv390RWEF8SwfcKIziHLensyofl9yqxdXDAr0MdrZ+jvK95y55VPTJatG63npLsG474rt4zZIXj
	ukLnbKiewvKra4E/ZFCLP4KvVMefqVSx411Gg0DuLiXETRC1xroLwb6URIWodQ4AOy3UObLeoYW/e
	ngRYts7NY79gs6wSudN51+Ppji6EkesfC8Qwnd1TMN/A8z34hdzoLceLUbyH7Bgrg5KCwaXKsVmXZ
	jB9EFNG7uzCHNKzGEW3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPsF5-007jxH-Ci; Thu, 03 Mar 2022 20:40:07 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPsF2-007jvC-A6
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 20:40:05 +0000
Received: by mail-oo1-xc36.google.com with SMTP id
 189-20020a4a03c6000000b003179d7b30d8so7166131ooi.2
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 12:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZER1xlrF5OLn4vnRWSKKsumGqChKVTvRQzNWAx59PWE=;
 b=EJaoWiZkHlsvFm9x5fEKxTQge06popRyPC0XcAF0WTTVCjY61TyxOOukThZwzSW2Ox
 +fiqBKldlBCJTNmbHtcVVaJEmkIbUt0CR7Nn1jdmnu0S36E1K+DchNXxuLQ5x5E0nV4X
 DAApgsv+w8shSQpSF1LyWVMMiS/WPW4WtVZJyBJoAN3JfGkIRY/ytMWafYJS8Kh7+v9u
 Cva9hfH6bEj8LqF0S3IY6z+P3scJhpxyp9sW6H55pgqNJa0tIZvOczywV0hy/Y1pdh/D
 fPXwpEwwJCV16THINp2xcbUlNJUUyZ7uDKeOSrjnJ/8CNbnZiEdxIyzJrgLF7Jcz3HjZ
 4pvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZER1xlrF5OLn4vnRWSKKsumGqChKVTvRQzNWAx59PWE=;
 b=2CnoZNECISRlLeDz0IEEdfeREj6wK9jmPa6O1eYoHumhZRL3P7kJxrQ1fLwLDtYNXc
 tw9v2obq91C2eCUrSdm0rFRkmiy9GwzxKgxQdmp+6Qgr/EABYCY8XM/9T8qdH1RMDYeC
 cTwPfLvg2DyksF9vwbBhwgy4UHx5hipfqYLLGMaTnIiAOmZXWXenPpdGClyfXgYG5PbK
 BNWddKIYnbquBzFElNa13Hu/nwrnuv3TyGWpKXkvek6T1CI+lHSWKBfbQP9sEUEJ//GU
 pb1x8hC++hAsM78nS12s4M6BhkZMIkSTLXwaOp/oO88pgfU+AxyWz5J4vL8YghQZABGt
 b49w==
X-Gm-Message-State: AOAM5329rG50vrwQ512r1bFKsgrkGcLkUj5RTLmWT2UJkSlDeaayej2V
 k8suYPSO5jDm9kgLXW1itfw=
X-Google-Smtp-Source: ABdhPJyUS60t7H/eYGRpzg49saWDRIolfyQYxQZr8rY7FglZ2qM4Cxt3uc3u26snCVvwrv+lDw3IMA==
X-Received: by 2002:a4a:3906:0:b0:31b:e657:fbd9 with SMTP id
 m6-20020a4a3906000000b0031be657fbd9mr19534638ooa.14.1646340003028; 
 Thu, 03 Mar 2022 12:40:03 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 l84-20020aca3e57000000b002d97bda3872sm1487822oia.55.2022.03.03.12.40.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 12:40:02 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 2/4 v5] dts: rockchip: Add #clock-cells value for rk805
Date: Thu,  3 Mar 2022 14:39:56 -0600
Message-Id: <20220303203958.4904-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220303203958.4904-1-macroalpha82@gmail.com>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_124004_376085_1226096A 
X-CRM114-Status: GOOD (  10.44  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Based on a brief discussion on the mailing list it was determined that
clock-cells should be a required parameter in the event that a consumer
of the clock gets added in an overlay.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm/boot/dts/rv1108-elgin-r1.dts      | 1 +
 arch/arm/boot/dts/rv1108-evb.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rv1108-elgin-r1.dts
index f62c9f7af79d..0c99a5934ebf 100644
--- a/arch/arm/boot/dts/rv1108-elgin-r1.dts
+++ b/arch/arm/boot/dts/rv1108-elgin-r1.dts
@@ -72,6 +72,7 @@ rk805: pmic@18 {
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
 		rockchip,system-power-controller;
+		#clock-cells = <0>;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
diff --git a/arch/arm/boot/dts/rv1108-evb.dts b/arch/arm/boot/dts/rv1108-evb.dts
index fe5fc9bf75c9..46cad7cb94bf 100644
--- a/arch/arm/boot/dts/rv1108-evb.dts
+++ b/arch/arm/boot/dts/rv1108-evb.dts
@@ -85,6 +85,7 @@ rk805: pmic@18 {
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
 		rockchip,system-power-controller;
+		#clock-cells = <0>;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index de2d3e88e27f..40bf808642b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -160,6 +160,7 @@ pmic@18 {
 		pinctrl-0 = <&pmic_int_l>;
 		rockchip,system-power-controller;
 		wakeup-source;
+		#clock-cells = <0>;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
