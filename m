Return-Path: <SRS0=C1nv=MB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83B4C07E99
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 10:17:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 82C62613D1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 10:17:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 82C62613D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qhn38iNiswxHbElbGJYQX2jwHn2j3epDCUucIP2HyCE=; b=cl/GwDw3TAelTq
	AAEOLfk2a8jAq7GCf0NhvSYjp5GC2z2iRn1j0rI8k+aPeNZFvrghE6WKw8cnf1OagDpdYWkIKAb8I
	TdmCNGDvc9aJT8MUOEIdE+euICSfQCQALudTlqsJhkWeL4Xr6JwcE8e3QcC9bsglaDiTBLsemX/Zx
	mQ7M6ApNpDE7t5WZ0Dfng5cjlKtaS2eAs2etxnqj2fgJVNtWJMmZslqe3orOB3M4TydTZrvJ1s/X2
	yv6HmtbiGQmzwDvmzENT/9onNznMfd0Dm0SYCWKNDPffzqAPQg1GbGYckjfkuD5YBASwV0MHpex+E
	zlveQtUfUyPYOHXy3CdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1nZ8-001SqC-6y; Fri, 09 Jul 2021 10:17:02 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1nYg-001SmR-J8; Fri, 09 Jul 2021 10:16:36 +0000
Received: by mail-ed1-x52a.google.com with SMTP id x12so13035445eds.5;
 Fri, 09 Jul 2021 03:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QXsQd7k3EtP7JbHV9P2Lkye4Fl7qOSwowTzhkaa8Fgo=;
 b=Fz9/2XKD/N1tODOGkH81ulbr327p/Kr65VN37IEO+Wt8Jo53Sg5/jdWW/iueTxutt+
 TssMGDUFo8ZN+13Zpwgy144wYOzkikYEvFrR7hLhHCwb4s8g3B/ZGJvEvzaqS0oeeJyV
 p4t9LI4CrYtiZdI2wUZxhDUA1Rcy+ra4SgRzCl15fJB5g4cmXtD/Aa9Ytq1PtbhrPjU+
 XY2/aCTo89v1/A457SH7knQ8He2L+zqq0VUEagcBmSJCyuTB8XjJSgraZThGVejeiBGn
 yWBonJUVCp8mzSPlulfbzq5c5jClQqpxE/3Ka7zS5MSLt4fubf5zoxAqTZX+2wndphMR
 kMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QXsQd7k3EtP7JbHV9P2Lkye4Fl7qOSwowTzhkaa8Fgo=;
 b=ALhxg1Ve1L6Vgchdq662OzBas9N0k7XAFIZjcx1b0BX+0IIJf/H1qaz5n3JqX/9+Bh
 dKXsHWrZPtnTpLwx46cWVHeyD3fHXyQYzMn0lDBKs4c48DyQftFjZ26CXWbbfDcVAtB0
 k5vUsxP7LeSHq2ZfrUKADYwitk0c8ZJVCXYf/aIVo9j2LmXWiIIFfKjM1nxsqHqBajNf
 poBx1Qc1pG4ffqwSCn++489L685XwLvywZFbEfVy5f2ngezn0GRm5IvqPgNB0+51gPoh
 uqNGp3hcGO9rX+xrCPt/qfMyHiCMuBplXuGK2F4Pt4j3FpcjA2aI05ow7eBhosPmK+fY
 RNQA==
X-Gm-Message-State: AOAM531gzPRlsX22o2t8DJFSKYv1qvwMImtQhQl0jEFv+EC0971RH4Lu
 M0e3aJ0czvHnJIAdPAdWGoU=
X-Google-Smtp-Source: ABdhPJxh0VBIdnrLISWqRM+aoh8tzBoX/GhW7ibjDpNPypfVEICyqW9HX4pETTgubfwlv/DRX967Og==
X-Received: by 2002:a05:6402:22bb:: with SMTP id
 cx27mr7374800edb.96.1625825792381; 
 Fri, 09 Jul 2021 03:16:32 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s10sm2118309ejc.39.2021.07.09.03.16.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Jul 2021 03:16:31 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1] ARM: dts: rockchip: rename timer compatible strings for
 rk3066a.dtsi
Date: Fri,  9 Jul 2021 12:16:24 +0200
Message-Id: <20210709101624.1463-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_031634_687047_D0C7D59B 
X-CRM114-Status: GOOD (  10.99  )
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

The compatible string "snps,dw-apb-timer-osc" was deprecated in place
of "snps,dw-apb-timer". Rename the timer compatible strings in
rk3066a.dtsi, so boot loaders like U-boot can use the timer node
directly without conversion.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 9257ef6f8..b52ef9254 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -235,7 +235,7 @@
 	};
 
 	timer2: timer@2000e000 {
-		compatible = "snps,dw-apb-timer-osc";
+		compatible = "snps,dw-apb-timer";
 		reg = <0x2000e000 0x100>;
 		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_TIMER2>, <&cru PCLK_TIMER2>;
@@ -256,7 +256,7 @@
 	};
 
 	timer0: timer@20038000 {
-		compatible = "snps,dw-apb-timer-osc";
+		compatible = "snps,dw-apb-timer";
 		reg = <0x20038000 0x100>;
 		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_TIMER0>, <&cru PCLK_TIMER0>;
@@ -264,7 +264,7 @@
 	};
 
 	timer1: timer@2003a000 {
-		compatible = "snps,dw-apb-timer-osc";
+		compatible = "snps,dw-apb-timer";
 		reg = <0x2003a000 0x100>;
 		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_TIMER1>, <&cru PCLK_TIMER1>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
