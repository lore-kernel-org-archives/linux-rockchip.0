Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FDF6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 23:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66FIMjTsYIfKHwMkvr88vwrF5gjewodwzWRYKxGmjOM=; b=j/4hBVmCSTME3z
	DAE/yAx9DOeJJoSKLsCweLMqKw/G+jE3FQA43HYP5Vxtg7GO1LCjEWquRjFZUdP6Q3VgxFZKG+Imf
	5pR94ZW+RAfK0WTOE64oXR5mrvPMcnaxhDk4PNtWsU/7vZVgZp/ARjF6MLstk1L7wLW8KDGUVQ7Iq
	32wbBTvO2ObCETzJIX8RFe3jO4P4Sm6zX4EC/8exSczy5rSfycj+0U9P2PUo8FVClSAAk/h5CSBsM
	pRAUWKLOrWJiiIsKvS5AuXRz1ihcJV3SRW40BM6MZD9LhD/fPKzbTP7vknk67hI8EwMkJUO0rATSN
	nxZOl8crNyezftn5qGDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPYMa-004hWG-Gu; Wed, 02 Mar 2022 23:26:32 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPYMX-004hUi-GP
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 23:26:30 +0000
Received: by mail-oi1-x236.google.com with SMTP id ay7so3236705oib.8
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 15:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=69GnuX/DlHMuyPais5LI1pLr2/a0D5I151xAdaVafa8=;
 b=ZY8iF9fzZmTNx217VFMzaaYLMDOXXmN+QRru4gNYCTaIjuRTCGeViqd4TXe9mksaiR
 xKZ7GPf2VBvywVxh5m5qY90RVNS5a3jNpmH9CC9jRH8MEVADsj+MKwdXBVJls1O4iKT0
 Lib0oy+0gkPjSyqE9xEtRNguTJILOn6WzZIJDzkPvb3FlcpzohbsRF3qnWG3K5MrwzGS
 LrbYRjQwbRQG7Gvth5cLmSPVSqZUTKlnbrc76ctxTRmob5EdsR97vLwUc7RTjQzwi7da
 uS/xWXRlMSNzLpbFm3a1eDmKGtzCQ29LOdVyGacyiBCS1O3wtLRh3i7k/iAqvQe3RmO2
 dqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=69GnuX/DlHMuyPais5LI1pLr2/a0D5I151xAdaVafa8=;
 b=VxnbAzB4/437XujVubaJNHSqTohJGlhjp4UkbvmIR8FQkedohKvbyVJQkXiiZeNinM
 kYGt25ZYC4h5duuh6Yf29AAI4C54WvpcX7QFS6HHhtxH58Hx4XTY7vqFvczxHnAIql9H
 EQrqpgf5K2xdnD+oN7Cww/905ngOpu0ZZ7FUbACo2vTQqtA5a/qRmTtIS5nmiJ1waNdt
 awple1ggogqStPx+ILmFuIcOy7Vd8K07W/eougDXgj0nCn1cNNWjDcmDDDJFdlZM7qMF
 DWTU/gQWJpUsjm86mvoyMenS/7FawEFefwztIjFhfqvo8ty8h37Jk58TfRupCgPqJHbo
 Vtnw==
X-Gm-Message-State: AOAM530P2J/f+EO0Cm+RkA7si/J6T/44yx6KZx2/TTzf+gxNtCu3+zme
 LkNcG71JWjSNKOc3982/F0A=
X-Google-Smtp-Source: ABdhPJzl7aDt87SF+6GznU825cf6beMwzCnX7pZLurFz43Xaqnz6PCO9tQpRNL+3t23Bx1MZPCv33Q==
X-Received: by 2002:a05:6808:d4e:b0:2d7:5047:37ee with SMTP id
 w14-20020a0568080d4e00b002d7504737eemr2076844oik.167.1646263588578; 
 Wed, 02 Mar 2022 15:26:28 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 fs3-20020a056870f78300b000d75f1d9b89sm234925oab.54.2022.03.02.15.26.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 15:26:26 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3 v4] dts: rockchip: Add #clock-cells value for rk805
Date: Wed,  2 Mar 2022 17:26:11 -0600
Message-Id: <20220302232612.25455-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302232612.25455-1-macroalpha82@gmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_152629_571327_5198CAA8 
X-CRM114-Status: GOOD (  10.78  )
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
