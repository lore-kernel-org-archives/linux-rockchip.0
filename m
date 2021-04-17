Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F60AC433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:31:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 181AE610A6
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:31:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 181AE610A6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FYoQNXOeKyJ2LpImAam+oyp85JSkGGGWltXH7GhiPLw=; b=eAL6XghPwx2PMqMnZEx33ZkAZH
	mbb5X+vXvh7qFHYzFZI2Mf6SlFiBHNmGHjSCUnYjzR1VHIu/G1VPYvxjJ2PJUlglXAsrVBFvJqCHc
	KsMKYAgJS+r70nfut8vhAjmQZnA4hpZtYEuEV08PKPcpiUUA7+RBhoDwjQE9K9RTFHpXDZDyFq9TF
	9XMbNqwdLJtv/FyzM/s1XOoAOBsFFxuaHIOd4UBmuroNcmpwcECr72Ozr+UWABEqVAtWs3R4XqLfD
	1FIK4tqL1k7onPMuV+V+IvWC22BReKp8n0yRZzZyfYqUJ1CvI/l/BUe+86KyKJbGAcv8uSO+lIbRv
	4VQvc63Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjAx-0058pu-2N; Sat, 17 Apr 2021 11:31:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9T-0058Nv-0P; Sat, 17 Apr 2021 11:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tKq3KmV45GoK0Thnkb+rqanYcWMZ9fjuF6uc/TWZBZk=; b=mHIXuSgCr4/lbG4UdU7X3tHF4p
 D///dm6Jm2jNT0YQClYfNdnf4DCCtTWREprSx4eUaVCtNHdJ9cKi0lSD1TDoimHYcD0hTrD5mAIiD
 N2/tcJSRDbBZJw1FL90MrRh6nP0ZoG5Yd9H6b8QH3YqToNLvI8bQnQk8P1aKPRPu/rtt18I3pCcJh
 noSvmF/9UcJ2CfgfgZoQdSYpuyGDMJWOVoRQtxpT5QT3cStej05M7FsehxFYPtrsWpEiEB7ZmJ/6o
 u/k38Fd31Ixp0h4xtiVt2ltHN64121S5he28HQYRtAjiP2CVP/SAyrM9RQubJ8ix3c7MfxDvdjKnt
 6A58uzow==;
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9N-00A0Bf-GU; Sat, 17 Apr 2021 11:30:13 +0000
Received: by mail-ed1-x532.google.com with SMTP id d21so15134118edv.9;
 Sat, 17 Apr 2021 04:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tKq3KmV45GoK0Thnkb+rqanYcWMZ9fjuF6uc/TWZBZk=;
 b=PEhMasUhF8WIb09xJNUIEjTjvqqQIllOpZfAMlRMR0KJSfbmA2B1jLwI7ww75tECb4
 Tao8WAnKUPHY1Zwh2GI7xg23kw2+0NA1GVf150BS5OJO+VkjybdcG99CIoPXTTtLltKB
 ZEKMLkQ9iMqBLGT9SVuWZnBKCfZrpB6WzBjGt61lm2F5vsmKYB0dCOf8BUc0KDvtpraC
 3rleoPD3eAnghJGTIMbhNfDpJG4nQfit8I8ykb2bL2fo1Gd+T8bvjCKrfNvGqNOQXB2O
 nVID14ulcTIjs0gT08rOXQWJoRkETtG+w3hZWFgO9MOJ8j7MTbys8nqIiThK2JngqthD
 pcZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tKq3KmV45GoK0Thnkb+rqanYcWMZ9fjuF6uc/TWZBZk=;
 b=nZZGDdMc41zgvt4ZG530X5tnLFQlT2pZPylQeDim1dw3+GbalVF4xbhJ+1mgUdbUMU
 PhKw3UynoqqzfQGyS0IiHl6YoF698WhUbSQPcPy8mYACNccAQ0kF61oevP/ZKNd4P27e
 qn1kL5HD/YXFBLGhuMVwvhNekMCsVlS7WuGjYLPdRdtY5B0QvkkmZigXHEZsG7Fvojzp
 cpy2FM08kOC4eIEjbpaBy8sj8NtJdGtX4d2b0ZayZ5RnvQOj2yUbDJIBVi/XJwXpVnjL
 x0Hl9OPTAk55TKS9A2/qNg1+yzvs1TgSY8rLEAnlYR3HIL4+fTtqeT+fJhuHE8OnHFdf
 rr2Q==
X-Gm-Message-State: AOAM5338PIuw38ZyyoEiUWyJrncb5dCJd8hfZvotlI4GaUI9+Q9LyYNy
 eNWdFS+JQMCCoTBZJovmFKM=
X-Google-Smtp-Source: ABdhPJz9jTyw9bu/lBJspSVBQJBzwjKv4oSVk0TOgj5DNBsv+gYfSsQpTtj1u3SPZBCaBf+hEdaYPA==
X-Received: by 2002:aa7:c5c2:: with SMTP id h2mr1108826eds.38.1618659006109;
 Sat, 17 Apr 2021 04:30:06 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:05 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 05/15] arm64: dts: rockchip: Fix power-controller node
 names for px30
Date: Sat, 17 Apr 2021 13:29:42 +0200
Message-Id: <20210417112952.8516-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043009_569942_EEA05353 
X-CRM114-Status: GOOD (  12.04  )
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
