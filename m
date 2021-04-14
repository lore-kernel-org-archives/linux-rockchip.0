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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DE47C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:21:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 92A7C61155
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:21:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 92A7C61155
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6G/t3TAQPa6DScxpKo7gbER32rrJ1z3SEUpYGAtptxM=; b=pWNncklH0DeEQyeCVc7dRafkVA
	3fo+mXoI7jwFufeHhCwBcpbcpcbOSfowD1YfLc6lpKHHM0yFJvXkcOsp3tZZ5zyzssjXfH2CfDAEO
	F0Bs3VGZwjkdnVHLg7RX+WDv/imyIyW5l0uvDruQW6BPuWkaq4f3tcMxynAmxpCcGiqA/muUgvT1R
	/1R9WH0JIjh0e7kAFKP2McOciZOc8CEleLbzXIP8F5TwgZ176dCIxJ/IykomrS8Yp0iLinEzbpRRp
	cVYSO+ljlGBVBQAPP5LYPQ/8lq1IFfgR6vaOI7N82uifbm8/jN4oIn/2WYrxX8TCsZjxUq0xq+wPL
	UFVuKP9w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmxC-00DpQP-Ki; Wed, 14 Apr 2021 21:21:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmuo-00Donw-NC; Wed, 14 Apr 2021 21:19:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8QmAPApDjBEmJBBq1hydSyG9+jA/1KakkTGHjfucekE=; b=TvMPEmdi5SekzCMdftK+g7LNEH
 87sBt2rZm9fhiIVj+FXKGTt396PpSjK/3ooR2FshJFASwdqEJGz3L9D4/w5QBeSC0lM1Bk3hryZcs
 tP7fdwF1seB5woZBlzjaA9Ttik41GnmdUsmkyy80lpll7A4VNe3TDYZ9k8RhVg7Ua9bxWmFJAL0FC
 ydoLxwn0oJZx+r2LMi3MYY3eRNSqjXd8zwisRsugpRfE/2OSlEQRJNWJZADV/hGq27IYWIT9SHh89
 l5dZr3CUd8ut9udVgJprOiaR4TeffhH7XtQt7r7UtEf6jYB0c9AV9wMXYAcVo8GZCrRTnUHtPqgyv
 oUdeLRlg==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmum-0086rm-4Q; Wed, 14 Apr 2021 21:19:13 +0000
Received: by mail-ej1-x62d.google.com with SMTP id sd23so24921092ejb.12;
 Wed, 14 Apr 2021 14:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8QmAPApDjBEmJBBq1hydSyG9+jA/1KakkTGHjfucekE=;
 b=EQ7u1VKGXmIiBf0CTDeLhXhT/fr3m4L73cClLvVLMQZO7Wdpekfw3XVAB7eoh9bOCx
 v3xnaYhc9pjejDHpuxGqT9FR/USX+UkXQHfkmz+46fK36hnOQQ4RoDKe+rZoVkaVFlyb
 aUnBcFMtfmch+GngHnho5dkKhXaGYAok6fLsyQmW13fd/9HXNRfMiMH+nSaKrM8CEy3s
 lXDVK8XH/22Y07lwsxQrJf3aJOGNrxMoQSRMYjsXF+CrfIaopumC5Ph3ncsbvm/U31V5
 SJf/YONM8hKRNhxVSxNaUYFkwn8FlnL92lQHUYlvBaaWjtksjL7zvRNYTTgvcBRjiLpx
 r3Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8QmAPApDjBEmJBBq1hydSyG9+jA/1KakkTGHjfucekE=;
 b=QrZ/XylO4Ac0/pyeQewjHTU2/1Iwcg+fm4/qARPzb3LVxopkC482u8sQzAhIUHHz7P
 +scbA1LuLBN5jNygtdy5qvUN5OmzYGz8uxJxTkcGPSWNnYaSVkQI3TQNRDQaQitUCAGV
 K1xcyKIv0ZOf2I50NHYOhzZtBi7B8u0pQ6dCaCOZOoaWnSA+zCN4jwLUaiHG7683yJFd
 dto42mynVqp07cCC2gSygQIjQRB317ZZI9EhIRyWI0TV6EiG0cHA6Q9iwSbDdwON6dcx
 b+8hIpkus6iAVQSr9A9W4LCSTrM4o8PuyAi3og3IO+ijgwQLWLl3WwkRaKZP+0Uzmonw
 qm9w==
X-Gm-Message-State: AOAM53231zzDTDc6xUvPVJxLqY36pgIBvO/qc9qRkF4L+j8a1haNJ8KU
 qToRe2xg6uK+CBEUkO+bDDE=
X-Google-Smtp-Source: ABdhPJy6fMs0FyKi8Nd80rctrFUGLyJ3xk5cX4RDcNxFAeu0/ZBX8j1/yBqlXQKuuc2Ya9BmqVA2Gg==
X-Received: by 2002:a17:906:95cb:: with SMTP id
 n11mr61676ejy.251.1618435150783; 
 Wed, 14 Apr 2021 14:19:10 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:10 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 06/11] arm64: dts: rockchip: Fix power-controller node
 names for rk3399
Date: Wed, 14 Apr 2021 23:18:51 +0200
Message-Id: <20210414211856.12104-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210414211856.12104-1-jbx6244@gmail.com>
References: <20210414211856.12104-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141912_196247_95C2DB2F 
X-CRM114-Status: GOOD (  11.60  )
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
