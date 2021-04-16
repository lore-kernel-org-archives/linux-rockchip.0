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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C011C4363C
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:40:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C35E261152
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:40:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C35E261152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6G/t3TAQPa6DScxpKo7gbER32rrJ1z3SEUpYGAtptxM=; b=OkVAgKX/oADp2j+xQzcP9ffA3K
	ZK8PZfrhE8ZwtzzhSJ+xu8xYUHECGSgfHAv85p3EfqGfulFcYkXzDTHJQFz2cc76w0LZ66Ub52eCY
	/vgMi7P7RUA7j5WibkC3fNM694ZGU9+yE/pLd2ONjorZsf4ZAdvH7Sgjbgj6Ipu4yZkGkus23Sapo
	5GD/Y7JNFYg2cTTwqVO5oh8MWY2wTif9GAZ66Y4mwVExInTWdksLLhoHhNR/Kt3evw+o+hKGsK+Py
	KRW+mN0qo4qtP5ty7HyScIWdV0hI9YSOUu17TC48ZJcGUyULvb+8FdF2yIVVsWlcvwrslhq/vYpyt
	PsEC9Oew==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXK1z-001OmG-A0; Fri, 16 Apr 2021 08:40:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJVW-001Hd3-OY; Fri, 16 Apr 2021 08:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8QmAPApDjBEmJBBq1hydSyG9+jA/1KakkTGHjfucekE=; b=imRFH17Ji3PCH4DMsCZyKbfLHs
 v3u98ivJ2dKNfJAmmD5F41SGnlYsbvlp7A6R4HJYTHGMr1xlQec9xCpzyrktjZ1GtVAqNExJddV8t
 Hx1h5sLEfYY7Ow3PWZa6I4o1+4oji5NfUrgRKjxfAq4HxdV2o6e8Y/REEOcfvUYbD0WqWTOoV5N/g
 E8KNXRjOKxY1PPjnQqrmMpLCdT99Ki9tW21WJo2mKEJJnWYHNNjE1zT82+NW3uOl9XwGtNPEKU/I+
 k1BU6+rTdmCn1XggUYUShHV9y4pwIbdz305Llpv4FUCohx4cN33lp+Xbf7z9IuPeRzi1624YFIgNR
 Ey8uHOuA==;
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJVU-009AyD-0p; Fri, 16 Apr 2021 08:07:17 +0000
Received: by mail-ej1-x633.google.com with SMTP id u17so40855248ejk.2;
 Fri, 16 Apr 2021 01:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8QmAPApDjBEmJBBq1hydSyG9+jA/1KakkTGHjfucekE=;
 b=jcC3M3fSQgPEkEYe45Wi5D1augrlg2O/l/X34dYSl0Pun8RE1Gqh4daF2btK37f5nC
 djxPf5glCW9tPw6cj3R+G0mZv2I/SDyJ4Y9x+y7Yls17uhj/lMZyJxMpCrBP9jPbxGKP
 fDWpvD2hUU4CiQusdcWRGCawDpRRZW1uzlr1v3PBV3ZpGDMypunECpIF0ou19OWNEczu
 d3O7OWQVx54PG37ub7AG0O+aUe0K4jHxDfz09nYZj1QDIpBKAz3mbp4GxBWjO4CPpzIG
 3czMykj7zXpuRIDQatH8A6aB9OkMCWUnwNmeDWuQxYtnDIdbTGjX6Jef6YTq5/+Gydc1
 JtJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8QmAPApDjBEmJBBq1hydSyG9+jA/1KakkTGHjfucekE=;
 b=q39jAMO9sKUpBs+O/xznV/nm9rp028NOjtvEyAiX06GyHiJqHHQG1wRZb+RvoianA+
 GyzhxI2cM7PPIIFLusfiG72bz91q/Co0c4ue592PnEHxCofvb7Dwe5k8849a4n4DfWiw
 8xbTCDJb+EJOjFkLHHPlZIWJ0iPoxBvmnp/+HsKZ2P3EYk1BPAx2Ab7gWXTawchMP3Or
 zj7iWMu10A9g/v8iCnnulPASuBlLFbsiYuRlYm1gF+Gja2VA2AJCt+4NkzNaTwg5tdBj
 WmC/fY+fPTSuN57AjvG7Wws6ZLaqP0fbRItxGd5vHeYXQUWr/xrbHVnQ5aXSaem7I5aQ
 Pmkg==
X-Gm-Message-State: AOAM530MmoDEkOK9wAaz/jBEhvtCWH7H0dockYIZhoDMiOqhWqSyZnSF
 YVmoNav8CVJy8kfoMia8XHg=
X-Google-Smtp-Source: ABdhPJxsxISKUp14vxETjj1wbSaX4bKta3FFFHqoSphu0PDScr+CFTa7AweP/NU8yTuJ603i2NCP0g==
X-Received: by 2002:a17:906:95cb:: with SMTP id
 n11mr7408210ejy.251.1618560434893; 
 Fri, 16 Apr 2021 01:07:14 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.05.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:07:14 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 07/15] arm64: dts: rockchip: Fix power-controller node
 names for rk3399
Date: Fri, 16 Apr 2021 10:03:34 +0200
Message-Id: <20210416080342.18614-8-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010716_088408_02C8D194 
X-CRM114-Status: GOOD (  11.74  )
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
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 40 ++++++++++++++++----------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 0f2879cc1..19614c2ce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -968,26 +968,26 @@
 			#size-cells = <0>;
 
 			/* These power domains are grouped by VD_CENTER */
-			pd_iep@RK3399_PD_IEP {
+			power-domain@RK3399_PD_IEP {
 				reg = <RK3399_PD_IEP>;
 				clocks = <&cru ACLK_IEP>,
 					 <&cru HCLK_IEP>;
 				pm_qos = <&qos_iep>;
 			};
-			pd_rga@RK3399_PD_RGA {
+			power-domain@RK3399_PD_RGA {
 				reg = <RK3399_PD_RGA>;
 				clocks = <&cru ACLK_RGA>,
 					 <&cru HCLK_RGA>;
 				pm_qos = <&qos_rga_r>,
 					 <&qos_rga_w>;
 			};
-			pd_vcodec@RK3399_PD_VCODEC {
+			power-domain@RK3399_PD_VCODEC {
 				reg = <RK3399_PD_VCODEC>;
 				clocks = <&cru ACLK_VCODEC>,
 					 <&cru HCLK_VCODEC>;
 				pm_qos = <&qos_video_m0>;
 			};
-			pd_vdu@RK3399_PD_VDU {
+			power-domain@RK3399_PD_VDU {
 				reg = <RK3399_PD_VDU>;
 				clocks = <&cru ACLK_VDU>,
 					 <&cru HCLK_VDU>;
@@ -996,94 +996,94 @@
 			};
 
 			/* These power domains are grouped by VD_GPU */
-			pd_gpu@RK3399_PD_GPU {
+			power-domain@RK3399_PD_GPU {
 				reg = <RK3399_PD_GPU>;
 				clocks = <&cru ACLK_GPU>;
 				pm_qos = <&qos_gpu>;
 			};
 
 			/* These power domains are grouped by VD_LOGIC */
-			pd_edp@RK3399_PD_EDP {
+			power-domain@RK3399_PD_EDP {
 				reg = <RK3399_PD_EDP>;
 				clocks = <&cru PCLK_EDP_CTRL>;
 			};
-			pd_emmc@RK3399_PD_EMMC {
+			power-domain@RK3399_PD_EMMC {
 				reg = <RK3399_PD_EMMC>;
 				clocks = <&cru ACLK_EMMC>;
 				pm_qos = <&qos_emmc>;
 			};
-			pd_gmac@RK3399_PD_GMAC {
+			power-domain@RK3399_PD_GMAC {
 				reg = <RK3399_PD_GMAC>;
 				clocks = <&cru ACLK_GMAC>,
 					 <&cru PCLK_GMAC>;
 				pm_qos = <&qos_gmac>;
 			};
-			pd_sd@RK3399_PD_SD {
+			power-domain@RK3399_PD_SD {
 				reg = <RK3399_PD_SD>;
 				clocks = <&cru HCLK_SDMMC>,
 					 <&cru SCLK_SDMMC>;
 				pm_qos = <&qos_sd>;
 			};
-			pd_sdioaudio@RK3399_PD_SDIOAUDIO {
+			power-domain@RK3399_PD_SDIOAUDIO {
 				reg = <RK3399_PD_SDIOAUDIO>;
 				clocks = <&cru HCLK_SDIO>;
 				pm_qos = <&qos_sdioaudio>;
 			};
-			pd_tcpc0@RK3399_PD_TCPD0 {
+			power-domain@RK3399_PD_TCPD0 {
 				reg = <RK3399_PD_TCPD0>;
 				clocks = <&cru SCLK_UPHY0_TCPDCORE>,
 					 <&cru SCLK_UPHY0_TCPDPHY_REF>;
 			};
-			pd_tcpc1@RK3399_PD_TCPD1 {
+			power-domain@RK3399_PD_TCPD1 {
 				reg = <RK3399_PD_TCPD1>;
 				clocks = <&cru SCLK_UPHY1_TCPDCORE>,
 					 <&cru SCLK_UPHY1_TCPDPHY_REF>;
 			};
-			pd_usb3@RK3399_PD_USB3 {
+			power-domain@RK3399_PD_USB3 {
 				reg = <RK3399_PD_USB3>;
 				clocks = <&cru ACLK_USB3>;
 				pm_qos = <&qos_usb_otg0>,
 					 <&qos_usb_otg1>;
 			};
-			pd_vio@RK3399_PD_VIO {
+			power-domain@RK3399_PD_VIO {
 				reg = <RK3399_PD_VIO>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				pd_hdcp@RK3399_PD_HDCP {
+				power-domain@RK3399_PD_HDCP {
 					reg = <RK3399_PD_HDCP>;
 					clocks = <&cru ACLK_HDCP>,
 						 <&cru HCLK_HDCP>,
 						 <&cru PCLK_HDCP>;
 					pm_qos = <&qos_hdcp>;
 				};
-				pd_isp0@RK3399_PD_ISP0 {
+				power-domain@RK3399_PD_ISP0 {
 					reg = <RK3399_PD_ISP0>;
 					clocks = <&cru ACLK_ISP0>,
 						 <&cru HCLK_ISP0>;
 					pm_qos = <&qos_isp0_m0>,
 						 <&qos_isp0_m1>;
 				};
-				pd_isp1@RK3399_PD_ISP1 {
+				power-domain@RK3399_PD_ISP1 {
 					reg = <RK3399_PD_ISP1>;
 					clocks = <&cru ACLK_ISP1>,
 						 <&cru HCLK_ISP1>;
 					pm_qos = <&qos_isp1_m0>,
 						 <&qos_isp1_m1>;
 				};
-				pd_vo@RK3399_PD_VO {
+				power-domain@RK3399_PD_VO {
 					reg = <RK3399_PD_VO>;
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					pd_vopb@RK3399_PD_VOPB {
+					power-domain@RK3399_PD_VOPB {
 						reg = <RK3399_PD_VOPB>;
 						clocks = <&cru ACLK_VOP0>,
 							 <&cru HCLK_VOP0>;
 						pm_qos = <&qos_vop_big_r>,
 							 <&qos_vop_big_w>;
 					};
-					pd_vopl@RK3399_PD_VOPL {
+					power-domain@RK3399_PD_VOPL {
 						reg = <RK3399_PD_VOPL>;
 						clocks = <&cru ACLK_VOP1>,
 							 <&cru HCLK_VOP1>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
