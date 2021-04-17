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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3427BC433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:32:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE1D7611AB
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:32:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE1D7611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6G/t3TAQPa6DScxpKo7gbER32rrJ1z3SEUpYGAtptxM=; b=ntF/I+FJeBxq7rc2Bfcyy+RF6C
	slsscjocLMU7YY03tyZbxjvaR5XzQudCdgLjXOO10O/WEOStnfDFVkl7Rwjfc98a1Qvi6OLSgMxYY
	mLAb9cS+jYudUO+NPKOSTW4kJkUuNP+h1wrjZf/+V71l6usAxZT1ZvNGeO7lYDZkFDL9TqC0RTM2e
	QhU9qLWM21gFE+6N+Sr7a9klNQqNfUKvBcMyg0oDRbhXwpf1p1N+wf1OvwO9Gg46RLQkzsXlfs2+Q
	/1rARR6NCdBhTBPF+a9RU/yd+INIpr8JeSXtA40BgAXg7T6t2NQW5xsPuHumAMpEkFCf65YRlT9jk
	ewPckmAg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjBB-0058wn-Q8; Sat, 17 Apr 2021 11:32:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9U-0058O2-Af; Sat, 17 Apr 2021 11:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8QmAPApDjBEmJBBq1hydSyG9+jA/1KakkTGHjfucekE=; b=kGWB/HdYESbvkFPbtrQvU6iSJG
 nGZBXI1cd6Xzj4Ih2cZaHttoy5RnHvjlRXo9ou47WlGMM6ZSIM+O2KlereIlwSWr4NMltbTlxzi/W
 OpRCdF2Rxpmq8wG++d2oQhfbr6G9vZxBb1JneS0Ltkj1arqZnJ+JZHLcGPLF7XQt8jA0BxnhXrXaG
 AwShhhA7lmUiIV9+yHnFGP5wG1SXpOCK44dP7Yg4uKtRgGQ+yBiizrOAH1JssGmVqKDHRTtBUdSMP
 5V8CiUFdMR/IOTf3GfDkaZQrqFAPl7C0u7f8VAwJvornAN1ATgmsnmM3BD1zdKb3bGVkKg6ZiV2eb
 82lYajYQ==;
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9Q-00A0C8-UR; Sat, 17 Apr 2021 11:30:15 +0000
Received: by mail-ed1-x530.google.com with SMTP id g17so34537796edm.6;
 Sat, 17 Apr 2021 04:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8QmAPApDjBEmJBBq1hydSyG9+jA/1KakkTGHjfucekE=;
 b=h51oz+LNxXYfCtYwRRLfMjFPHmXad62/CddbWdaIhJNknPgwceNnwelUgqG+l5CTAs
 89Atyw9OIM2hSDnKDXOtGQYayTwedmIPSwfgqoyb/H5kyiUrVj460vcdlkF+MKnymDpE
 gKwNFi7ut5+hFgEEdxWrjtGwLfMxJO03YjujaLdSuQM94xdOZeN7KAOmkQVKNIRkPwYW
 1jKR1UOyh1IzM7K7oDaOW+QCtzFW1XX5WsAAmHG5Cf+NQ6sDAQeCg//WxaBPaeXNyNT5
 aS5H557naMNwVdwIek0oRS7gAmJT/S1uPXsRpCGb68iMMSWNGMMXVC28QbenbBxPhUeG
 Bk3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8QmAPApDjBEmJBBq1hydSyG9+jA/1KakkTGHjfucekE=;
 b=fwwaLFFyjHVnt5Dm1bW3ouEzfVglXM9H4XBajT9s+2k16b+VcLlx4wzvul+vHdEi3r
 JTG01TyWEiop8Oret5NbAwbbilLXYYECwGcIjI42fkYOtD+TZGFCxzhiAlm1cCMPNqzf
 S4QeqrXcj65Ux/J7R51yuSmBoHshBNRGcjgLvN6zWVPKk3/wmE500x9eooz1dXgwk/Rz
 0eRLPuc86dl8FITZbKVm1j1/lP7RnJdfnHTf2yxk8bQ6tQa9zbEJod0BwS3kPZZNTIqN
 LEGzLNfOdyWFbZqUAF6Z8GKi96Cl8l0/b9/K6uWkd6iauke+985IBE9kzBPcNCxKZFKw
 7cRg==
X-Gm-Message-State: AOAM5312uW0hfirTLRwd6Sr/cOC+JAZzH2DNAmJbzj6SlG4fkCvnF+SC
 MevIbZLtdLEDtn2c+QS0AZ4=
X-Google-Smtp-Source: ABdhPJyk9HrNvt0MBVtjEc25y7k0wcZvV/UU4vJ72F5vmg56QRHihp2WaQWKolcIEkPVLQDZTZZniA==
X-Received: by 2002:aa7:c511:: with SMTP id o17mr14342865edq.335.1618659008631; 
 Sat, 17 Apr 2021 04:30:08 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:08 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 07/15] arm64: dts: rockchip: Fix power-controller node
 names for rk3399
Date: Sat, 17 Apr 2021 13:29:44 +0200
Message-Id: <20210417112952.8516-8-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043013_016280_85A6BB97 
X-CRM114-Status: GOOD (  11.23  )
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
