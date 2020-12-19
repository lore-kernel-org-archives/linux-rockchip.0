Return-Path: <SRS0=0WH/=FX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C7C1C4361B
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 11:27:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D705B233CE
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 11:27:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D705B233CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dDDobyXyAzSBWR43lFmG9oMUsof45tM/iuxbq8q+uiA=; b=t3lmxZbPYkgVZvkDvYY3BojAIO
	GY9OgeGjpaau0AEkXGQJMUypwgsuW4tdef4ZGYjKceQG5/1Pgx7rzFOVoPNBAMkb0MXdga/uD9v5g
	H2j7cBJ4sCW+z6ZXejsIx22+7ztuyTo9UOifWY72fiD3AAfv5zIOsfhsSCLWK0vGPi0urJfyv3FLb
	DIex3JkBzwPzF45pTjbQcQ31hRLJLAD/JhDjA8iWM5Ouv7GQTsbhzkk+4UJrJhZuIwReR3vPQ1tRU
	+WK+xbVYWpb5bs8Scu1QeR/Z6nbH/C09yeNIbu0pDFgMrVLD1xuW+FE3FVft3O9PIfnF2dCrzfM6B
	JkocODLQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqaOJ-0006Ui-Mh; Sat, 19 Dec 2020 11:27:15 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqaOD-0006RX-B5; Sat, 19 Dec 2020 11:27:13 +0000
Received: by mail-ej1-x631.google.com with SMTP id g20so6985901ejb.1;
 Sat, 19 Dec 2020 03:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=d/tBQPaeyOF9shnc/RRcovxcYh335vYdWfJpYP/ETgc=;
 b=I1zV8UbUdmldwa7jTgSI91IBNorED+SuLPvgGA6ZIpuuSuhRKYW1wl7hWZAPrtWkOU
 /XZs0eN5h/N/f5bZlZeqLMTfiBC37DxVbsJ+kkwLlFNy7oJtZ7b6xTWtVYxFSng1tmvO
 oWPez7s4mEFZ8wAuEx4RYcOYLHbrtdH/7N0Si9lSycceCSC8MCFxcXBXmBtDMa0my9gr
 O0wmxFqikUMm9KgD/pZnAmkNlq1+GLsddJYmMITC55cHcsMXYEjV7noVY6FeE9Xy3pnv
 lZGhyyPcRPGDCTfQsiwA5Bq5nZeRa8gEleF5Cv2ZYws7r73ZF1XVzAn5KVWJRXWqbfUu
 Fkqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=d/tBQPaeyOF9shnc/RRcovxcYh335vYdWfJpYP/ETgc=;
 b=udzJf+s7xEKRGj2BQGPMgdxpEJH8XOEUS1qRiB/lXrZBmd5wVgb7O/XpCpT4OxJueJ
 MPebUzPX7UH7qqkDDiOx2AyLeXbOJgC2zpvqS3vCEPY5YTsdl51hzyoIvMC+SR7l9Hr4
 KsKUvQGS9UOZrxtFm5nKT/NHZ/j7aLVZN8UBrm1KLACOYFDqdoUZ/Fd78lyetdfYB32y
 BDYXSk67h54T3nbWr+ZnpkQUiZS3QZ48QME54vPgblNmw+01DrgdquFLSIpZ0vumU57x
 MU6MWDUl5p8vc0CODwtMHRVkT6emMtC4243ctWZEduV9653FIGioEoNJPgaCqqM+zT3I
 vwXg==
X-Gm-Message-State: AOAM530GTmgMdcjbqQIIXG2wIrpHvssHuakvkCH/Onk9HZ6lDKswB1pt
 i1wONaKfaMvo+or+71X+iM99j+Hp2d6Czw==
X-Google-Smtp-Source: ABdhPJziwc1eitsvgGqX0C3zrwr0S4aksv6we0tEu/L3DP2JfUYyWt0QVxKb7TBtjZENEbeb/IdmHA==
X-Received: by 2002:a17:906:8617:: with SMTP id
 o23mr8068807ejx.274.1608377223349; 
 Sat, 19 Dec 2020 03:27:03 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n17sm6651785ejh.49.2020.12.19.03.27.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 19 Dec 2020 03:27:02 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v1 4/4] arm64: dts: rockchip: add rga node to rk3368.dtsi
Date: Sat, 19 Dec 2020 12:26:53 +0100
Message-Id: <20201219112653.10705-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201219112653.10705-1-jbx6244@gmail.com>
References: <20201219112653.10705-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201219_062709_671614_836FA009 
X-CRM114-Status: GOOD (  13.72  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org, jacob-chen@iotwrt.com,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add rga node to the rk3368.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 3746f23dc..dad1a00e6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -738,6 +738,16 @@
 		status = "disabled";
 	};
 
+	rga: rga@ff920000 {
+		compatible = "rockchip,rk3368-rga", "rockchip,rk3288-rga";
+		reg = <0x0 0xff920000 0x0 0x1000>;
+		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA_CORE>, <&cru SRST_RGA_AXI>, <&cru SRST_RGA_AHB>;
+		reset-names = "core", "axi", "ahb";
+	};
+
 	vop_mmu: iommu@ff930300 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff930300 0x0 0x100>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
