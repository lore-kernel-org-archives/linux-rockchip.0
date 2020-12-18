Return-Path: <SRS0=llJB=FW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F8C8C4361B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04F7323443
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 04F7323443
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wOjl/A0FYpcJLUU8Rvv3L7K4biEFtIf9rgEE3OCZ7yQ=; b=zYpRtwvA3ChsR35mQBAYU04VwC
	aRocSLNwiBi7zW5E0zq3CzomlAst/6m1M37IBW3UvlRl7Wtvr24SNaokS+MBFGVNgHnLJVWRaU0SK
	UCMdI52LpkChwT+YzP+hvGagIDFYrry7BR2iD07Fsr6j6XTKhvWsgDCVba1hW2KR2qSEGoNXJRGgu
	R6uPhE7LRfmBqz0ZVAopPLOVCb3LqHMvoI5iEie3lvM1K7vsNaUXIJOIEfFD0e1NSVnzPJTFDEBb3
	mJ1aAx5XXuULbIzB2lYW2y2b02Cyp2rAEioLrPXRT0MV9lmkLG5Fz09gQ3XG0CkaK51BavjitXuie
	i6x1vE6A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqEWC-00071X-QY; Fri, 18 Dec 2020 12:05:56 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqEW4-0006yZ-TS; Fri, 18 Dec 2020 12:05:50 +0000
Received: by mail-ed1-x52e.google.com with SMTP id y24so1418410edt.10;
 Fri, 18 Dec 2020 04:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1PyEzvS82rnhRnbvDzISjipZNGlkvR5cR7CHNHeeH+I=;
 b=uE8gLtg9Sgd7Jvq5YATDb6VEeikhHfMfrQf5jPXHuGyxMb4Kfu8jvAhtfuViCXCPRw
 ybWpgr5Znl9QViZX3XAfazjyG5TU8/tYYCx7F0Kx/nrYmTq6CNP9DmdsYt/J35NXtuxQ
 KR0CJgAnc6tPj0TGVM+Vtk7xcfVJNiIHMtj8IwviUBXfJFk9uPucikO+TVJr8A9DUmet
 4huNDcB+eYPMH+mynMPXCVk59qftv/cWRBjmv/nRezbeBLXw+4Turjt+nxbRP7x6EAuw
 /064vpCAzsaHqJbD0amZL1XDppN07OBM3yEEnvRQe96vwOPfs5lM884bk+1aSpuNqNGr
 jhow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1PyEzvS82rnhRnbvDzISjipZNGlkvR5cR7CHNHeeH+I=;
 b=lmskdIM5CLzjBvMDhD18s7036yOUivk3ECB8aTwBcTQ91Vd96YSuAbJWKgpO/NPhnE
 qmEgsQkNJKI67v9OCGpZdL47Kwe4RrdZVBU8wSbAxCRQ7+sp09yzuM/O83o3nZX0PpFm
 CNAgCz6n9I4wsa/yNkZnXVzKfwHCyqE2trrqVrJg62z1lVn8kvm5e/hhH6W60xWxGVu/
 Or7bvLPNPl7PcwdVjsbXtzjqJmm9xpbugX25NY38riOh2g9qOkRaiyKq3JmPtjZxDNkJ
 0qUegZgpRGBdOAW5LNS6ODIpmCF755CV0CbVr9vYvkat3+HIMZN8/3rbCW3agkkjduNT
 vCDw==
X-Gm-Message-State: AOAM530HWJ8X6s41TsRz7HhLy1YSy/w7dzLw82R83IyzXWG994oFnXDL
 bj8ZdS+BAdkfafnckTWQUIbbDElv9cedrw==
X-Google-Smtp-Source: ABdhPJyQ6mBWCp9s9rcB5cgA3qSh9N4I2Fyw4psSOClliyAEcbszic6rB08dw+cRG1fQadWGCgxzIQ==
X-Received: by 2002:a50:9354:: with SMTP id n20mr4097070eda.231.1608293146635; 
 Fri, 18 Dec 2020 04:05:46 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ga37sm4775832ejc.96.2020.12.18.04.05.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Dec 2020 04:05:46 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/8] ARM: dts: rockchip: add new watchdog compatible to
 rv1108.dtsi
Date: Fri, 18 Dec 2020 13:05:28 +0100
Message-Id: <20201218120534.13788-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
References: <20201218120534.13788-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201218_070548_979283_B9C5A167 
X-CRM114-Status: GOOD (  14.42  )
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, jamie@jamieiles.com,
 wim@linux-watchdog.org, linux@roeck-us.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The watchdog compatible strings are suppose to be SoC orientated.
In the more recently added Rockchip rv1108.dtsi file only
the fallback string "snps,dw-wdt" is used, so add the new
compatible string:

"rockchip,rv1108-wdt", "snps,dw-wdt"

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index e491964b1..8ef8d038e 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -300,7 +300,7 @@
 	};
 
 	watchdog: watchdog@10360000 {
-		compatible = "snps,dw-wdt";
+		compatible = "rockchip,rv1108-wdt", "snps,dw-wdt";
 		reg = <0x10360000 0x100>;
 		interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_WDT>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
