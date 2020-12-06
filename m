Return-Path: <SRS0=Jg7J=FK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBECC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 10:37:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2065422D07
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 10:37:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2065422D07
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gELsJIxkXJHVORRUHNB8DuCG3wWHNI3vblpWWgYg+wE=; b=fXOiHrezRJ7aObyDIjYk+yc334
	UQ3d//Wpk04qlppZgI/POdLh7Sx9n/+4+Dpnw7hk/iMwzwWkd0GDTy84Kn8dBRJwH5JobSv1/KfBP
	fvxhXDQiL/rPl1eeIw4VPMiSMUcjZ+76DbceJRWTPJJVW8R1ermQ5WU/DbrWFFfJq2LQRbIhsP6nu
	MWvukdYUETkpxtHDzs2G6VoAKOX8vqH+9WP/bJ/zPC7ldgr3Hx6cqlJlwiRwTYsleH+YV7TfaLZwm
	edYkQDgfN7QavXomiitbQWntdQ/3xJo/hcKzNxwgFKWymFCLLf0lIHq671PS7P3u9qLx34J3AW7DK
	up+WtAuA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klrQ8-0002yF-9j; Sun, 06 Dec 2020 10:37:36 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klrPt-0002ve-47; Sun, 06 Dec 2020 10:37:22 +0000
Received: by mail-ej1-x643.google.com with SMTP id m19so15171661ejj.11;
 Sun, 06 Dec 2020 02:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FFioyBuaA7P/CaN8KPNLk/A238y67VVNWx1+jOsbupc=;
 b=CMCpSGLniD9j7BmFIwiijydumPCSv/E2QSiv93q5nF6/NEk2wD3AN5xCfExB3Uf9f7
 55egz1RGQwlgNO6h76SWHWusYQ3JgpempD7ku65HViJCZo9BkhJx5Cso2bkF7aiXkJHE
 4iSXESvj1UCDwBe7Za+QRzlu09bMXhhrqBNo2PC6MhfhydkQLRzZLVM6UTNqSjRcZ/VA
 wEL9xu1ZfZ2JjtVMXc8blzNgP+jX45mXcxAnnQ3n1AiTS849FqVv/VtaPVXNbThjgKsF
 EPLa5poFNoX7dJs+btSBtC2FAWsHQkCXnAOuBziPAm+HDT/zHCXOOkxcaDWwotf50+c9
 FVSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FFioyBuaA7P/CaN8KPNLk/A238y67VVNWx1+jOsbupc=;
 b=tuBWGB+6xVov+kP+CuIGuncuZCK3B5UFYiB47rcuZdTj10j38ZwUhQAdPDGfbAO/If
 EizvP+ECz50HVZk0WN0appwnOknXBWwdo2aWkGy/1PSNOKHkL5zWCSt5Uyang8h2OaCR
 i1WAUH2MW5B27tfoy87pKUDxWfCYMiniyG3HPlyFxOhnlmUoQUghgP/ViLcx2CxgOv76
 aeFP3G2+ZJAfz4uyituVwQYN6ZSML/svUEnkbwTFuW1PDZ2lxrUParPVcGAU3sbPB0pa
 MH7OEXJrCuewvJ7V5vln4xSKq/r2wV6qP0WIuu9CmIRKdCdF0BVA0zhNMeToe9XoVffB
 rVsw==
X-Gm-Message-State: AOAM532vUbmw6QljPhBo6a81d6i7KEXUVHP6fxl8kuX/hx15g8AYwYHB
 MATAXk+ULs7XK3jqju3B5AM=
X-Google-Smtp-Source: ABdhPJyqhTPmdai0VekCVvi2CAKqTIRE3l2PC1YeXkVgIX1oIIfbg4WX3lvFeqEcE3vOEpvfM4I2VQ==
X-Received: by 2002:a17:906:f0c3:: with SMTP id
 dk3mr14441372ejb.366.1607251040277; 
 Sun, 06 Dec 2020 02:37:20 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cc8sm7811556edb.17.2020.12.06.02.37.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 02:37:19 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 3/4] arm64: dts: rockchip: add QoS register compatibles for
 rk3399
Date: Sun,  6 Dec 2020 11:37:10 +0100
Message-Id: <20201206103711.7465-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201206103711.7465-1-jbx6244@gmail.com>
References: <20201206103711.7465-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_053721_583654_CEC8D935 
X-CRM114-Status: GOOD (  12.98  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip dtsi files only use "syscon" for
QoS registers. Add Rockchip QoS compatibles for rk3399
to reduce notifications produced with:

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed v2:
  add space
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 50 ++++++++++++++++----------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 1aa52ec93..2b99480ea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -855,127 +855,127 @@
 	};
 
 	qos_emmc: qos@ffa58000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa58000 0x0 0x20>;
 	};
 
 	qos_gmac: qos@ffa5c000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa5c000 0x0 0x20>;
 	};
 
 	qos_pcie: qos@ffa60080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa60080 0x0 0x20>;
 	};
 
 	qos_usb_host0: qos@ffa60100 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa60100 0x0 0x20>;
 	};
 
 	qos_usb_host1: qos@ffa60180 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa60180 0x0 0x20>;
 	};
 
 	qos_usb_otg0: qos@ffa70000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa70000 0x0 0x20>;
 	};
 
 	qos_usb_otg1: qos@ffa70080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa70080 0x0 0x20>;
 	};
 
 	qos_sd: qos@ffa74000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa74000 0x0 0x20>;
 	};
 
 	qos_sdioaudio: qos@ffa76000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa76000 0x0 0x20>;
 	};
 
 	qos_hdcp: qos@ffa90000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa90000 0x0 0x20>;
 	};
 
 	qos_iep: qos@ffa98000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffa98000 0x0 0x20>;
 	};
 
 	qos_isp0_m0: qos@ffaa0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffaa0000 0x0 0x20>;
 	};
 
 	qos_isp0_m1: qos@ffaa0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffaa0080 0x0 0x20>;
 	};
 
 	qos_isp1_m0: qos@ffaa8000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffaa8000 0x0 0x20>;
 	};
 
 	qos_isp1_m1: qos@ffaa8080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffaa8080 0x0 0x20>;
 	};
 
 	qos_rga_r: qos@ffab0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffab0000 0x0 0x20>;
 	};
 
 	qos_rga_w: qos@ffab0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffab0080 0x0 0x20>;
 	};
 
 	qos_video_m0: qos@ffab8000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffab8000 0x0 0x20>;
 	};
 
 	qos_video_m1_r: qos@ffac0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffac0000 0x0 0x20>;
 	};
 
 	qos_video_m1_w: qos@ffac0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffac0080 0x0 0x20>;
 	};
 
 	qos_vop_big_r: qos@ffac8000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffac8000 0x0 0x20>;
 	};
 
 	qos_vop_big_w: qos@ffac8080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffac8080 0x0 0x20>;
 	};
 
 	qos_vop_little: qos@ffad0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffad0000 0x0 0x20>;
 	};
 
 	qos_perihp: qos@ffad8080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffad8080 0x0 0x20>;
 	};
 
 	qos_gpu: qos@ffae0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos", "syscon";
 		reg = <0x0 0xffae0000 0x0 0x20>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
