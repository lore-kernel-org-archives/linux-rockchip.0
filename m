Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3365C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:34:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 56BBF610CE
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:34:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 56BBF610CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FYoQNXOeKyJ2LpImAam+oyp85JSkGGGWltXH7GhiPLw=; b=FaF8LulCImMUM6CLeZ6rXIpc+X
	SWZMjbfc7K7dRTm5v5FuSdkX4+mRsMIY7wfIQCOcmuVa0iIfVGZnZKgh4aP/y+yVucgz9QMF6Wc6Z
	Xe8FJWiw7T2Ge6Ns6xoSKXiSZCxoxX1521ecTcz9G8sYLZKuTNbXPsgrckoyJ4GfOOKVzi5niIrWv
	L9dseolEH+74LgfOXT4sys9VoU+zkg5UeCEBDDgFaeh0B8mwdRe3vE5AHqKCjFq1bafCbflAutfLK
	PChSHKjMHBJoySNHdJNL+BVYPoHfN3FlSTzFExLSGZb/Vu4Y+rAH34Ti8QQcb7pB73Cm1MJQVpE3Z
	u/qLbveA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXJvx-001N6r-K0; Fri, 16 Apr 2021 08:34:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTY-001HM2-OA; Fri, 16 Apr 2021 08:05:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tKq3KmV45GoK0Thnkb+rqanYcWMZ9fjuF6uc/TWZBZk=; b=PuJXm/Y/9YFScA3GU+5MRXuNUk
 VuVmqpUnnUZEU9fgh282kbFf3qzVu1AQDxeGJxtyeGIjYcJLP5p7W9lyh+mlCwpjieYz+5QmYCMWZ
 FfYmfoTpFwm3SIA7X2SpTuwHHIdcQjbvWjqADPy6wLeJgyiqabmzi9OlgBnJIoWB8YGpCY8DJlD9/
 qYjb4YEx14bQTyHpOlm7zm51nTWMFyvzYroMz5T5nh5Zd+YvpxXqA11emm3pRj0U5jT9+6/chjMgN
 5Lvw0lyQZmbdxGPiU9qROgKMG7kD5ROE6gjin340X0tSgwLCtlePVv1MmbAqjDt+ukUv+6nhoXLb4
 tIX8cstw==;
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTW-009Aqf-43; Fri, 16 Apr 2021 08:05:15 +0000
Received: by mail-ed1-x533.google.com with SMTP id d21so11065093edv.9;
 Fri, 16 Apr 2021 01:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tKq3KmV45GoK0Thnkb+rqanYcWMZ9fjuF6uc/TWZBZk=;
 b=QAK0m+2Ktjo4jCGtKjxWzKfZLS07us4t2oJdDBfhHSqcHOnCuBqjYvHxxlD/SxzWEt
 MNSguBWKJGnp2qKvNo8TzwGEm41sH9WP7jzsIsVDcSZdTg8n04foMRDXn51FlMAnDk9H
 i0TixkLKdQW5vzGcuozk/8NRbXUwxTwiY+0yIPNttrW2sKYgXerPym+HXx2KM2xgpoLq
 C1I3cL5gFsBhOZnSCP45xHD9IoPL+8FlNHT4KAmqAROpA0AtKIuSQ4M9qPy2gcG/RNHJ
 IRd7zyvubfV5LjUPtoXhBxMJG9hpjbyo3HdT3DYf3mlK6Suo2yGStaPZvcgHY6wZYZ6m
 P+Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tKq3KmV45GoK0Thnkb+rqanYcWMZ9fjuF6uc/TWZBZk=;
 b=swRPevofGTKIMpV8RopH1o+i8yGGJAKzV/GZEZ3U6jlnrsOl6Zw/dX8l2+b/K1Cdtp
 vMdw4WDPIivQqRRKulzgKU8gvPbK72ZTEpJxN3EgXEhRPgmKEs5Ma9jzyZIkq1UCwv+2
 oPzY/ngc3HqNOM4XmfSkOu4M8NilPIzRQyFlnF6geCagotNRC532y/wG1oxPswVd657O
 ePBBq2NYrbcY4/s776yGSsKVqYzyznY1xWpkADKTsU2uh2njX0CyNTRPJXERO5SZt6sw
 0NNTzRTutW7Y/NlH3qai0dMrNLyRYLkGw6IDugHNZLvmB7xjWrvQ+xGsSXqbEj/W69f4
 hEBw==
X-Gm-Message-State: AOAM530LkKQbtg8sU/UKs8P1LfHODNYH7jux5Jklo6YXSe/qzLKtLH34
 O2Pv0NrT7X2iE/xOOzsZ4JA=
X-Google-Smtp-Source: ABdhPJwm4LfKIikXTUkxeMDmmC/gw3VFpQzFU7OMCfQHwPepJ8PPF3l43WuWywR9p9t52+fo+MLQlg==
X-Received: by 2002:a50:9feb:: with SMTP id c98mr391891edf.104.1618560311568; 
 Fri, 16 Apr 2021 01:05:11 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.05.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:05:11 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 05/15] arm64: dts: rockchip: Fix power-controller node
 names for px30
Date: Fri, 16 Apr 2021 10:03:32 +0200
Message-Id: <20210416080342.18614-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010514_183242_265481D4 
X-CRM114-Status: GOOD (  12.55  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 09baa8a16..2b43c3d72 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -244,20 +244,20 @@
 			#size-cells = <0>;
 
 			/* These power domains are grouped by VD_LOGIC */
-			pd_usb@PX30_PD_USB {
+			power-domain@PX30_PD_USB {
 				reg = <PX30_PD_USB>;
 				clocks = <&cru HCLK_HOST>,
 					 <&cru HCLK_OTG>,
 					 <&cru SCLK_OTG_ADP>;
 				pm_qos = <&qos_usb_host>, <&qos_usb_otg>;
 			};
-			pd_sdcard@PX30_PD_SDCARD {
+			power-domain@PX30_PD_SDCARD {
 				reg = <PX30_PD_SDCARD>;
 				clocks = <&cru HCLK_SDMMC>,
 					 <&cru SCLK_SDMMC>;
 				pm_qos = <&qos_sdmmc>;
 			};
-			pd_gmac@PX30_PD_GMAC {
+			power-domain@PX30_PD_GMAC {
 				reg = <PX30_PD_GMAC>;
 				clocks = <&cru ACLK_GMAC>,
 					 <&cru PCLK_GMAC>,
@@ -265,7 +265,7 @@
 					 <&cru SCLK_GMAC_RX_TX>;
 				pm_qos = <&qos_gmac>;
 			};
-			pd_mmc_nand@PX30_PD_MMC_NAND {
+			power-domain@PX30_PD_MMC_NAND {
 				reg = <PX30_PD_MMC_NAND>;
 				clocks =  <&cru HCLK_NANDC>,
 					  <&cru HCLK_EMMC>,
@@ -278,14 +278,14 @@
 				pm_qos = <&qos_emmc>, <&qos_nand>,
 					 <&qos_sdio>, <&qos_sfc>;
 			};
-			pd_vpu@PX30_PD_VPU {
+			power-domain@PX30_PD_VPU {
 				reg = <PX30_PD_VPU>;
 				clocks = <&cru ACLK_VPU>,
 					 <&cru HCLK_VPU>,
 					 <&cru SCLK_CORE_VPU>;
 				pm_qos = <&qos_vpu>, <&qos_vpu_r128>;
 			};
-			pd_vo@PX30_PD_VO {
+			power-domain@PX30_PD_VO {
 				reg = <PX30_PD_VO>;
 				clocks = <&cru ACLK_RGA>,
 					 <&cru ACLK_VOPB>,
@@ -301,7 +301,7 @@
 				pm_qos = <&qos_rga_rd>, <&qos_rga_wr>,
 					 <&qos_vop_m0>, <&qos_vop_m1>;
 			};
-			pd_vi@PX30_PD_VI {
+			power-domain@PX30_PD_VI {
 				reg = <PX30_PD_VI>;
 				clocks = <&cru ACLK_CIF>,
 					 <&cru ACLK_ISP>,
@@ -312,7 +312,7 @@
 					 <&qos_isp_wr>, <&qos_isp_m1>,
 					 <&qos_vip>;
 			};
-			pd_gpu@PX30_PD_GPU {
+			power-domain@PX30_PD_GPU {
 				reg = <PX30_PD_GPU>;
 				clocks = <&cru SCLK_GPU>;
 				pm_qos = <&qos_gpu>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
