Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A84C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:32:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 327A861166
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:32:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 327A861166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BUyCUzJpZiB1j5Mk8d9zLHFUYf9gVCs7uJWREQMFtSE=; b=ZH2TxQizL85lPiKKAKrD2EyOnX
	Y6Jo+EJuKiIen90UtPtoPh8cD+IO/EVSH8TjXPvIDcqPm1pQK08pYxiHSCPIvjUm1nQxIJ8rpdM35
	NYsxNAf7gWePpYNbQlVgdTRUEyUm8KF+zbK4Jip4tLlGDtpbv6wkZb6vw4Qme3a3YUqp6LtL2vacC
	roaZHRZjm1uHxWKDzzQGHVOQ3Rbyn+NXy0q2kgTkyDSGMGft172w5NgQETuX712XCmcdQZEG9dLdQ
	xz7b1r0CGPxk/5v6TJSxio9ysscBI4MhIjyncSYKOcVvbX5XNACeXqkwXUnq3wFIvu2t8dGTFT/5h
	h0mLxutA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXJuF-001MfG-Ku; Fri, 16 Apr 2021 08:32:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTH-001HI9-DG; Fri, 16 Apr 2021 08:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hQOvTm7HW4RD6s7O1xMZhkEYd1hzrRk65QKfsGi+jms=; b=qQqeIVw94mN+n15r84K9E0g748
 bfWx1a+fQvwJi/1Q2QFaI1LRN3Az97i+Im+MbypCXH/NbysBBPAb4aDCT9COjqiFCBj+3YrIYuTD0
 UihqDH5gJICp2eLRcXITO/Mwq0qrHSh0j+4L5q5O19EbRAqHkNjoAOQnH5mPHJKSOyYqq3urtYygR
 VVHfQuGBACB9PHN/iTkLig1vVDxBM9DpYJjM1NwxmvbDJiWfilUfMB6GNkbCOz2A9rAROFkvqw8dB
 rhUr7A9FxSr40VgHY8H/GFZMnLJc/KV7Pk1mJUcMhIwDFyKy1ApGD1MREnou7g0U66Y1zaaTvEFJp
 VGE+//Eg==;
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTE-009Aom-KT; Fri, 16 Apr 2021 08:04:58 +0000
Received: by mail-ej1-x633.google.com with SMTP id w23so25008706ejb.9;
 Fri, 16 Apr 2021 01:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hQOvTm7HW4RD6s7O1xMZhkEYd1hzrRk65QKfsGi+jms=;
 b=AFPMnGAu7qRkenodHpWhCuvoT0axU6n611uuI3NWBEQ8zrdVTKOSBJl+Oauk7rq8rM
 6I/p5HCDy8GAFEC7DfP4FltqUbyT1dWdGTAiqUvTLoCeXDHiGufdeaxQWziIsPLZl8V7
 mx/nKaTVJ8gOMdsgmErXG4Q6mmRalInadumCUCrOHqdvGdFPXluwl338eVofkY4z479v
 2dFBAvJYLSXRoOSo3eNiRC1ZptacSaz6/HFl2S3fpmcHoq0tlkJ9aIJVaiSmSGnur5Gp
 WrN/xVji0YMAE482K1A41slRCCklqaRDP4dsMzLfX4eyopEXo5U07Ozpa6qxhXR/0Zpd
 sDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hQOvTm7HW4RD6s7O1xMZhkEYd1hzrRk65QKfsGi+jms=;
 b=Kj1GN4xhn0pkE3GKfLGDVUEZp/7KhPsfehB2R23lyAK/J3iEqW6I+mfI7AfWhFIY2c
 yRgUkmmxmZeIc01vDpAOwHT8bgD6ZEKcV9yI3i7fq9PUkG0767SayGUzwwnESrHKLYBF
 8fReBg79ZBs22EwJzT8G2CslNpiC7QoqKa/A+HLHClJywbMF2yolMwJjGNbYvNOe8+q3
 esbLBwu+5ducq1lmtgtGG47YsnRPBUlGI+lCulwMrw8fZjcgwpv8y0x8rEInEtVSkJcb
 7vvhQxRFo7Syl2Vx5UiaNekBK9jzqbCVxlB1o//77in/apGlbmld1oYd3BdclESCOntc
 3jZw==
X-Gm-Message-State: AOAM532w7WItl2ZECwIZpLWsy/9WEdXrpRei3nzcCvHMWh1HkbbqvjNk
 ujYLlPgRqWM0aXaYBsDqF0s=
X-Google-Smtp-Source: ABdhPJyFkWgbgeXMuY8aMqWrjqIOYGKy3PvVSK0kY0r59k3eLtsb4MCwx+Jb+QLXXXLJrTsXgQ6JHg==
X-Received: by 2002:a17:906:e84:: with SMTP id
 p4mr7183405ejf.248.1618560295196; 
 Fri, 16 Apr 2021 01:04:55 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.04.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:04:54 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 02/15] ARM: dts: rockchip: Fix power-controller node names
 for rk3188
Date: Fri, 16 Apr 2021 10:03:29 +0200
Message-Id: <20210416080342.18614-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010456_691618_299CA625 
X-CRM114-Status: GOOD (  12.63  )
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
 arch/arm/boot/dts/rk3188.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 2298a8d84..5db32fdbe 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -699,7 +699,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pd_vio@RK3188_PD_VIO {
+		power-domain@RK3188_PD_VIO {
 			reg = <RK3188_PD_VIO>;
 			clocks = <&cru ACLK_LCDC0>,
 				 <&cru ACLK_LCDC1>,
@@ -721,7 +721,7 @@
 				 <&qos_rga>;
 		};
 
-		pd_video@RK3188_PD_VIDEO {
+		power-domain@RK3188_PD_VIDEO {
 			reg = <RK3188_PD_VIDEO>;
 			clocks = <&cru ACLK_VDPU>,
 				 <&cru ACLK_VEPU>,
@@ -730,7 +730,7 @@
 			pm_qos = <&qos_vpu>;
 		};
 
-		pd_gpu@RK3188_PD_GPU {
+		power-domain@RK3188_PD_GPU {
 			reg = <RK3188_PD_GPU>;
 			clocks = <&cru ACLK_GPU>;
 			pm_qos = <&qos_gpu>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
