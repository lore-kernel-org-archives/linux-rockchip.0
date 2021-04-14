Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A334C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:21:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CBE7661155
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:21:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CBE7661155
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FYoQNXOeKyJ2LpImAam+oyp85JSkGGGWltXH7GhiPLw=; b=qiFw+canvUTnFwdiNS3cEAeZwi
	WkbVbPb8dUk+93Hy9xUY2K7PD58ALecLGpdUHG+jU+YUQ2cp4hfj69Xlq24Eu8kRBhIGcMUG6mx1p
	DU8u2peeuaH27uj8DMglVDLHfjwwCI1C3Q4km5D9lKP8UqrS+AEAVmo0eMZrZ8yNwn00Vsa4oDeTO
	OkD/9EMW22qm1eYB5hJeWifufD2azxNMHD4/5w6He3bdVZ7eyzfRJJffhqHhlpe0phujf/2i0MtIp
	MMaYBk8SWVs+RFceqOI0+JMkbGSV8wtb5ocl/kKtBcfRQgpiOunvh06oimkcwpGRuGfrdOT5MoFQ2
	5JSGXM9A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmwo-00DpH8-VM; Wed, 14 Apr 2021 21:21:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmum-00DonO-LC; Wed, 14 Apr 2021 21:19:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tKq3KmV45GoK0Thnkb+rqanYcWMZ9fjuF6uc/TWZBZk=; b=Hn9lEc4pix6xB/X69b/uCn9Nua
 gfx2ZlI9AOaDbjnN1hPAw3pxq6BY0EMunrdibt7eEOrKV6sighi4dPTAxSKyizsN8noFoZBp6gvjc
 Wo6TYAAJvYQNafdUVdAU3I+w6rNJS+LmJjCDiw9Bl7tYRJ4u4cLmOwViIQ0J5SGszVYeEAJfekSPC
 r6LipOJKROOSNwnoMl/Ol20d/2XQu2fQuSMogtcJqWPszKNNQSYlPEE6RA/1djrXLg0shWn1VZneP
 elmiYDEUAlroEDWb3jpdcXB7EqEf5e5HjNMBZeGetkiPkHfY/ygrMoBb12ls5+WQ4JD/+ZqCgKti3
 ZvBRyRPw==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmuk-0086qj-7J; Wed, 14 Apr 2021 21:19:11 +0000
Received: by mail-ed1-x52d.google.com with SMTP id z1so25421254edb.8;
 Wed, 14 Apr 2021 14:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tKq3KmV45GoK0Thnkb+rqanYcWMZ9fjuF6uc/TWZBZk=;
 b=YqKT4SI1v9R4LEvk80UH8n+sy4MPcpTpPrLcdOogMHQtV3Yr2OKlCMFlQdM0xJVE/0
 f9hr5PPin5yzuvlOrYJv4zHDDMyPwiqDK3tVwx6ILst5vw/m3hxfXyAH/ObdqXL4XbHh
 RwMQmxr9qi3yHblVUOdbKpD9HXtFK9f5Iv7ZejpXbbWVyEn2tVu0q9ddNOCC6SnQr4R8
 fcR5IidNI9ToVEMVwwfNvclMKNJRxmIPVDcxXLOZFL699noNvAa/MleSD2tLln5bp8XU
 RdHoNtdtUs6IskhA9Gpqn9lFfRLUIhKjU9u9OVtbPENIpl3c7HGJ3Zd1g25vsOg5cIHK
 FuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tKq3KmV45GoK0Thnkb+rqanYcWMZ9fjuF6uc/TWZBZk=;
 b=dkGaQ8//CHlbJ2mp0V0VHWxTe77kgwOdRXL2vgJ14MYg8GtPjmcHMExdKbOgP1OEPV
 LV1Ol0oux5egnXmsXFQGPMbuA5h/2Modx4nDI5vsZmPGuHeVr60jv1pVCxodQDGJ5cdw
 va6bpuEhDphBpmf/wPVN442LV35l8z0HaYNny76aipSY2NY1w8cZnZ+4Unbt5d+/16Lw
 hK1jKUd3JuatxhpAi8WhGaS2QlIUDgiWS78x8zbho6ITL/so+a+zQwwDto0+1szBA7U6
 hwejW8nY3bxHKKA1RUQSSeH3XrcCRVvy+noALCY1zZiAtuzKWLdv5ne7bEcV00WkfIUb
 qGtQ==
X-Gm-Message-State: AOAM530MkJCNUE1Nxa/fn2b986HP/F0xnCqhHN1FqFkRz6RI+HugQDZf
 tD/e4zL0a142jykVWcuzKEQ=
X-Google-Smtp-Source: ABdhPJwGaoyXbcXZZDDR9Bdi4koV4AolNtt2HiuR/HCyC01ILpIZK2Opxa2GHecgZn/knYI/amUKMw==
X-Received: by 2002:a05:6402:515:: with SMTP id
 m21mr238606edv.382.1618435148888; 
 Wed, 14 Apr 2021 14:19:08 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:08 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 04/11] arm64: dts: rockchip: Fix power-controller node
 names for px30
Date: Wed, 14 Apr 2021 23:18:49 +0200
Message-Id: <20210414211856.12104-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210414211856.12104-1-jbx6244@gmail.com>
References: <20210414211856.12104-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141910_283823_D74F00B3 
X-CRM114-Status: GOOD (  12.40  )
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
