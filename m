Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18A14C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 12:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pjlVxRd1pcgfOfcjLRvMk9v9wbM9B/e+STAF8rK/y20=; b=5A+j2MBEl+jRwf
	+zW8CJj2Rs6+4khLYNCCkBi2DsBXE4kh2ZOIlkT7ucN6rLeZ8cmOn5yBhnTCYzNp6zZD+OSrNVHsF
	LSLaEnKRZRDY125vcXWn67EsDo1ntMjBs/HmMt/GJB1XRaimwLTZAJp3k0epzqxlC+3nIDez9FXV6
	AHQNHmIKyHMAmR1XAJ7o0fL1YQ4xyRue3Housg/2zlyp5kg2MkJfSb31QpHvkzXQWYL9BYXgEEi7K
	/rxZlrpjUQOmEKz5nrxjCOXBUnI4RUU3muA9gpEKP/y2to1bRN2gcvW7G1gs0GU43SMpB9r52Fta6
	iNMDUCh3KNgV2ONP3keA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZuMP-002K7U-Nz; Thu, 31 Mar 2022 12:57:09 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZuMB-002K4m-LL; Thu, 31 Mar 2022 12:57:00 +0000
Received: by mail-ej1-x632.google.com with SMTP id yy13so47942909ejb.2;
 Thu, 31 Mar 2022 05:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UccPI0Vs3BzsfOsGfndf21BCZr1jQY6N7hAg1waRF/s=;
 b=HfBw6vWTgOJCYdKg8YHaESl+8G04ToxxeF63XQSjns6Dk+LBjFpbBsyMKo8RR9icBD
 +YR4nv9rtSCx5OGsTlaCwev6n1dE1syjwnmouQztZ2cmWQoA8hQrchrcjb/ebU9JgXOa
 lIlY/nrjEoeJG5A+IvN9TEgvVoSUeyGUzsJd71GFxt6/tJkDuZgBTqMid0URZoE4V7Tk
 H0mU6yhuHBdRwqlJ25JgCMpKt3BCBU4CCSkJAenBdHODIxshDWGsgjoLNQR32LvIoNwa
 L31o07H/PXupHDCPC5pHjrI3doD7IcnH6SbMgZBSh9W0WAbk7K0YN5I/0HpeXO+fPN8p
 BBFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UccPI0Vs3BzsfOsGfndf21BCZr1jQY6N7hAg1waRF/s=;
 b=hYriY1CB99+nIS4WeEVLqPqyMA1JLqA3H4XC1B4lY9ZVphpTX4uNn+PAPgAdcuUceb
 uXwD1jjGrpnktufzza7AqkkZtaiie/iHxE+bdv2X8RpDdjufsZJYqeMZAKzH2TwItdMD
 aBgZOK/HYzU7viKJke+pmovFbSKqjUJ8qYYQRMzyMjogfqgwC2lUMBXN9Urs2o06bLHc
 T5hkEVW6xE3zsCCJY5AX6IpabsLbgnTCKLHIMHqSqbyDmY9rWzkC23PIkOmNs/1L9c8t
 yyFxtJszHd5cZs+HHe3fXvi5UMldKtqT5/tDDL736afsciJK8EqH98PudxDAdQTqkh9E
 Sp4A==
X-Gm-Message-State: AOAM5305rRwU8ptwVyAQJaFgkuLz2Vwll/TeUkoHgB2IRE1fXVTh/2rY
 JfFqtNZmASUkC/RKxRePBGI=
X-Google-Smtp-Source: ABdhPJwB1bY+CLWE7b4PuZ+68hjf+J3CT+jsxTI7VrbqdpniDeNCJLs0u5gD62CZ6M9aKGk6OHNNVQ==
X-Received: by 2002:a17:907:1606:b0:6df:f528:4033 with SMTP id
 hb6-20020a170907160600b006dff5284033mr4847028ejc.433.1648731413350; 
 Thu, 31 Mar 2022 05:56:53 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 u4-20020aa7db84000000b004136c2c357csm11203745edt.70.2022.03.31.05.56.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Mar 2022 05:56:52 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] ARM: dts: rockchip: use generic node name for dma
 rk3036/rk322x
Date: Thu, 31 Mar 2022 14:56:44 +0200
Message-Id: <20220331125644.6841-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_055655_735038_330FD4B0 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The node names should be generic, so fix this for the rk3036 and
rk322x dma node and rename it to "dma-controller".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 24f868d06..9b0f04975 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -558,7 +558,7 @@
 		status = "disabled";
 	};
 
-	pdma: pdma@20078000 {
+	pdma: dma-controller@20078000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x20078000 0x4000>;
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 2547f46fe..ffc16d6b9 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -503,7 +503,7 @@
 			<75000000>;
 	};
 
-	pdma: pdma@110f0000 {
+	pdma: dma-controller@110f0000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x110f0000 0x4000>;
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
