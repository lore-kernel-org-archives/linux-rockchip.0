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
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD67EC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:33:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 68279611AC
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:33:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 68279611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/+jBu2z3N03C+LITSZCPJ6hEpeVUoeFlOMxVfA5qyCY=; b=jw27memakNwhgIeHRf7xiX9RPr
	oK9FSQq5nSy38ePpdPHmU917dionT5CBhzcqOnqmZ3ePEhFA9UQwkBlMXv4OGDNUWQZXm6rDAVAfB
	h5wMx9jm2SZNJi4KcTQr5pI5s1WV5AHhkH5MqmVm/VtMjJbhW7MHhQSotAjg147kLqiYpevoEOoaz
	QTiTA93pRdjEXsOyXldgmKNudJt7/gNTRCXSLIVsZL96HKtdMr4Nlu9qtx9Fl2/X06Lmvto+eiDtC
	2Sugo8oRt+b/gx3mbm7PzTy/R825Plxqm2Gi11XX+d6olT83NN57hqDVGHdxPIQvcoo3ysa6GfZEa
	uVRZda/A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjCh-0059or-SH; Sat, 17 Apr 2021 11:33:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9X-0058P4-FB; Sat, 17 Apr 2021 11:30:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5mB5QX7GLjRWhPxkNbmeC6oHdNd9j3nQs38k8Ij4Qs8=; b=YLN85ers7CkLW2L8riXifO7J9G
 VYXB16xdv6euPus9dUS1LSfhMmIxJvCTlklb2cZDJGcKxFIPOYfLFpDEcdBKBtYIIG54LStxN1rlc
 ttPAqYNEQ9My9h4Elr4xfLEvh57ZFLTDA7yK7yV8htPeqUZfGzZcApPcXqOINXrnyJ0lRmBZDf+Vi
 v5JQQmI4fvUNKiFyAo7NHfnwET1it9Nbslkl8d2p8eW8U/V1gUC6hoTrB9z+2u559YGyPfA5hpn2p
 kdHtKyZ1BeGxnwhU/w0j7q9oQolQ2ghmNThddBYTSdyKGE4nJA+xyOtvE//EYdJ9TGiwhFsI/Y0Lq
 hoTU3IbQ==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9R-00A0Cm-T3; Sat, 17 Apr 2021 11:30:18 +0000
Received: by mail-ej1-x636.google.com with SMTP id w3so45880827ejc.4;
 Sat, 17 Apr 2021 04:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5mB5QX7GLjRWhPxkNbmeC6oHdNd9j3nQs38k8Ij4Qs8=;
 b=JpiPAvOSVi3smTNYPd2MUCYI4U3Riw46XrGTzKrwOQ0h+Jw+HDTygKCCmy83FW+Htz
 v+0FoQ2/Isv4nHewEszJHq03PReC+8xRY/ZFflnDfbpJWwxX4N8uMjY7nwDRDrglvS6t
 juXKh1xZCTMj2xW0o3l3cJ6CAceMhY/DE3H/8EnNMHplWn4GjsoE3MdhblIpCDFbgqRB
 d6lkAijErkKABglvJMXns4ypNiGtPfPnRH3BMG0VK+S86p8x99MIk7qKSdb7g5eV+SyN
 YvEQQLKft3Xo0bJSVFHzw4du5Yw2/7INxl50ryecFgbUlGWki0dXYADrZvICDAIXhks1
 8FJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5mB5QX7GLjRWhPxkNbmeC6oHdNd9j3nQs38k8Ij4Qs8=;
 b=YBHQAKYnXygczuk9uG4myd9FrVZnHJRfKDl4s3+NAYB+oyIVFpf47Rb6nvoMeUfTND
 GazIlVfKEXVKSY73OtJnOmMlgDcwbyxiL74Sgr7ukPM3qxpUIByFU0XgXuZ4jKvgvRip
 DL3Bh0X65FjFoQObu9opiz5by6fH4hyNbs4OXrKAgg5StR/aKydmAkX2xQP+ZSKRI4+t
 aS77SOQtxBoYYpkVe1EqcaLcfTBGm3fpNWJWs/bWhKGm37kYg0aVlPwsWJpZmJfYtaVg
 2g7QXGyAVWQNGlA984TaHC9IvWvIOlQZSyg+NjysySRnO/44/VebFIL5XzZLGuRhwLZE
 cvZQ==
X-Gm-Message-State: AOAM530oCNT7P/G1YuelGgnYLya8JaFiGgTZtmmwcrQgbsAeWE3aZRjq
 c0wCWYcu8xqQgkah7O7Ebas=
X-Google-Smtp-Source: ABdhPJwAD6goe0ziDQhmcP9X7mqOpkra/Eq4dIhS07dkaWFMTuUfLCKV8IoU10bOdGUR0bRIAT3Jjw==
X-Received: by 2002:a17:906:138c:: with SMTP id
 f12mr12583205ejc.180.1618659010504; 
 Sat, 17 Apr 2021 04:30:10 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:10 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 08/15] arm64: dts: rockchip: add #power-domain-cells to
 power domain nodes
Date: Sat, 17 Apr 2021 13:29:45 +0200
Message-Id: <20210417112952.8516-9-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043013_961107_0B20C071 
X-CRM114-Status: GOOD (  10.96  )
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

Add #power-domain-cells to power domain nodes, because they
are required by power-domain.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   |  8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi |  3 +++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++++++++++++
 3 files changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 2b43c3d72..c96ebfe3e 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -250,12 +250,14 @@
 					 <&cru HCLK_OTG>,
 					 <&cru SCLK_OTG_ADP>;
 				pm_qos = <&qos_usb_host>, <&qos_usb_otg>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@PX30_PD_SDCARD {
 				reg = <PX30_PD_SDCARD>;
 				clocks = <&cru HCLK_SDMMC>,
 					 <&cru SCLK_SDMMC>;
 				pm_qos = <&qos_sdmmc>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@PX30_PD_GMAC {
 				reg = <PX30_PD_GMAC>;
@@ -264,6 +266,7 @@
 					 <&cru SCLK_MAC_REF>,
 					 <&cru SCLK_GMAC_RX_TX>;
 				pm_qos = <&qos_gmac>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@PX30_PD_MMC_NAND {
 				reg = <PX30_PD_MMC_NAND>;
@@ -277,6 +280,7 @@
 					  <&cru SCLK_SFC>;
 				pm_qos = <&qos_emmc>, <&qos_nand>,
 					 <&qos_sdio>, <&qos_sfc>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@PX30_PD_VPU {
 				reg = <PX30_PD_VPU>;
@@ -284,6 +288,7 @@
 					 <&cru HCLK_VPU>,
 					 <&cru SCLK_CORE_VPU>;
 				pm_qos = <&qos_vpu>, <&qos_vpu_r128>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@PX30_PD_VO {
 				reg = <PX30_PD_VO>;
@@ -300,6 +305,7 @@
 					 <&cru SCLK_VOPB_PWM>;
 				pm_qos = <&qos_rga_rd>, <&qos_rga_wr>,
 					 <&qos_vop_m0>, <&qos_vop_m1>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@PX30_PD_VI {
 				reg = <PX30_PD_VI>;
@@ -311,11 +317,13 @@
 				pm_qos = <&qos_isp_128>, <&qos_isp_rd>,
 					 <&qos_isp_wr>, <&qos_isp_m1>,
 					 <&qos_vip>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@PX30_PD_GPU {
 				reg = <PX30_PD_GPU>;
 				clocks = <&cru SCLK_GPU>;
 				pm_qos = <&qos_gpu>;
+				#power-domain-cells = <0>;
 			};
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 35df57535..470da614e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -302,13 +302,16 @@
 
 			power-domain@RK3328_PD_HEVC {
 				reg = <RK3328_PD_HEVC>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3328_PD_VIDEO {
 				reg = <RK3328_PD_VIDEO>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3328_PD_VPU {
 				reg = <RK3328_PD_VPU>;
 				clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+				#power-domain-cells = <0>;
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 19614c2ce..99f85b1d9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -973,6 +973,7 @@
 				clocks = <&cru ACLK_IEP>,
 					 <&cru HCLK_IEP>;
 				pm_qos = <&qos_iep>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_RGA {
 				reg = <RK3399_PD_RGA>;
@@ -980,12 +981,14 @@
 					 <&cru HCLK_RGA>;
 				pm_qos = <&qos_rga_r>,
 					 <&qos_rga_w>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_VCODEC {
 				reg = <RK3399_PD_VCODEC>;
 				clocks = <&cru ACLK_VCODEC>,
 					 <&cru HCLK_VCODEC>;
 				pm_qos = <&qos_video_m0>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_VDU {
 				reg = <RK3399_PD_VDU>;
@@ -993,6 +996,7 @@
 					 <&cru HCLK_VDU>;
 				pm_qos = <&qos_video_m1_r>,
 					 <&qos_video_m1_w>;
+				#power-domain-cells = <0>;
 			};
 
 			/* These power domains are grouped by VD_GPU */
@@ -1000,53 +1004,63 @@
 				reg = <RK3399_PD_GPU>;
 				clocks = <&cru ACLK_GPU>;
 				pm_qos = <&qos_gpu>;
+				#power-domain-cells = <0>;
 			};
 
 			/* These power domains are grouped by VD_LOGIC */
 			power-domain@RK3399_PD_EDP {
 				reg = <RK3399_PD_EDP>;
 				clocks = <&cru PCLK_EDP_CTRL>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_EMMC {
 				reg = <RK3399_PD_EMMC>;
 				clocks = <&cru ACLK_EMMC>;
 				pm_qos = <&qos_emmc>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_GMAC {
 				reg = <RK3399_PD_GMAC>;
 				clocks = <&cru ACLK_GMAC>,
 					 <&cru PCLK_GMAC>;
 				pm_qos = <&qos_gmac>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_SD {
 				reg = <RK3399_PD_SD>;
 				clocks = <&cru HCLK_SDMMC>,
 					 <&cru SCLK_SDMMC>;
 				pm_qos = <&qos_sd>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_SDIOAUDIO {
 				reg = <RK3399_PD_SDIOAUDIO>;
 				clocks = <&cru HCLK_SDIO>;
 				pm_qos = <&qos_sdioaudio>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_TCPD0 {
 				reg = <RK3399_PD_TCPD0>;
 				clocks = <&cru SCLK_UPHY0_TCPDCORE>,
 					 <&cru SCLK_UPHY0_TCPDPHY_REF>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_TCPD1 {
 				reg = <RK3399_PD_TCPD1>;
 				clocks = <&cru SCLK_UPHY1_TCPDCORE>,
 					 <&cru SCLK_UPHY1_TCPDPHY_REF>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_USB3 {
 				reg = <RK3399_PD_USB3>;
 				clocks = <&cru ACLK_USB3>;
 				pm_qos = <&qos_usb_otg0>,
 					 <&qos_usb_otg1>;
+				#power-domain-cells = <0>;
 			};
 			power-domain@RK3399_PD_VIO {
 				reg = <RK3399_PD_VIO>;
+				#power-domain-cells = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 
@@ -1056,6 +1070,7 @@
 						 <&cru HCLK_HDCP>,
 						 <&cru PCLK_HDCP>;
 					pm_qos = <&qos_hdcp>;
+					#power-domain-cells = <0>;
 				};
 				power-domain@RK3399_PD_ISP0 {
 					reg = <RK3399_PD_ISP0>;
@@ -1063,6 +1078,7 @@
 						 <&cru HCLK_ISP0>;
 					pm_qos = <&qos_isp0_m0>,
 						 <&qos_isp0_m1>;
+					#power-domain-cells = <0>;
 				};
 				power-domain@RK3399_PD_ISP1 {
 					reg = <RK3399_PD_ISP1>;
@@ -1070,9 +1086,11 @@
 						 <&cru HCLK_ISP1>;
 					pm_qos = <&qos_isp1_m0>,
 						 <&qos_isp1_m1>;
+					#power-domain-cells = <0>;
 				};
 				power-domain@RK3399_PD_VO {
 					reg = <RK3399_PD_VO>;
+					#power-domain-cells = <1>;
 					#address-cells = <1>;
 					#size-cells = <0>;
 
@@ -1082,12 +1100,14 @@
 							 <&cru HCLK_VOP0>;
 						pm_qos = <&qos_vop_big_r>,
 							 <&qos_vop_big_w>;
+						#power-domain-cells = <0>;
 					};
 					power-domain@RK3399_PD_VOPL {
 						reg = <RK3399_PD_VOPL>;
 						clocks = <&cru ACLK_VOP1>,
 							 <&cru HCLK_VOP1>;
 						pm_qos = <&qos_vop_little>;
+						#power-domain-cells = <0>;
 					};
 				};
 			};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
