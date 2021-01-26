Return-Path: <SRS0=k6cp=G5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44E36C433E6
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 11:02:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD31123109
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 11:02:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DD31123109
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mCUKa5WMRY6GIkMa0pM3o2LVySkUWsWTqS8XW3NxDog=; b=zR7I/E5ucdf6HGo9juJHBs7TyE
	q8jS7foS/WcKq+/dPMIee03HL4Zd67AOB7GD1qx5xEmVwAZYEFHKS8K/SKsv5xeoVj/FqqCzmyHWU
	cCg0rUwo2XIfDnZlI1z97qE6qMNvTtuWfe6h7FxyE4dkKnyMqEKHubvhxPX3xZHY7NxHMSHms2PNK
	C71jkHPUx8yeu81T5Tgl+lf+4ee8N6xrqKzqJPisipjVwibpp5V0AWIqO6ZV2kliCvFbdFlowjo54
	1eSUAPYcDHwrsiYGw33YAQAuU5NZpD/RlJTkqOPh4JTsmY8tBE6PSZ9CiVYIsTIhKG5OIFGdgtBQ9
	3KKv/l6Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4M7E-0003FC-Qp; Tue, 26 Jan 2021 11:02:32 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4M7C-0003EH-P4; Tue, 26 Jan 2021 11:02:31 +0000
Received: by mail-ej1-x630.google.com with SMTP id a10so22342082ejg.10;
 Tue, 26 Jan 2021 03:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tGus94grLYPWSUM0bMFUmChMXn+Sc5UCDSiVFm8Bk1g=;
 b=ReLxtoNk/T9yXEhHKg8pHbxSJw3aJoyT/IEKEoIyVyeulTYz+4TP45B5rr4TihDhhv
 17I+sgm2Ant/VgPBELLeO5DsCELkpNd8VASufye+/0aURAJIDZddTMAgWF7ImRzyxQEA
 rVq9VqepJAu29BhI3wx9AQTCzqmObuq5/kZH5Qu9GKKX5zBbOtfoawLHK57+eYd71VZm
 kH/TAv0BLQGfAcq04zf7TOp5jS+IlbY+qvgrzTUoVwHJDGAsmEEIla5U/PABcEf5J9NM
 hxSDeyQezd8wS6bI7OppyoHqfzpcNfjWa9NJUp+k2Szj5UKgvfcm/3cHrdv9ptGGBSpS
 yAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tGus94grLYPWSUM0bMFUmChMXn+Sc5UCDSiVFm8Bk1g=;
 b=hMg7wQo6GIXrbsI7AL0ZMR4jP93UCGp4AcXryrb9zZUsJ7iujnpSUfAlldg8jfXYLi
 GkG9MJrwCcvbETQM/4OTGmEoGAaQqXMZBdsKL12HRa9NF/rWB200fJKuJpMzE3+hCPXB
 mxdYRwOeeeUCceCDTzZU2teOreIAGDxbr0q2dzJVLj3DIA3erWd/CiNXr0fvJowGINaZ
 TCrr0YcMRe4vRkADqVEX89lyUo9cshhEPSVptlcEeb3EutqeKvFLczY5ck1BV846k0mc
 pReA+x6EqIc+19VHqr4EPOhDxRyud4t61ZX3zJP9Lexm15SCH4h3vw2bB0Nb/Sz/9y9f
 T2zQ==
X-Gm-Message-State: AOAM532V8iP9EDuNEjLRByXDV6wdhUi7qZ1rNHS5yBbdDygqBV622V+i
 pSiyuTAx57JTcnf3aGDtLL0=
X-Google-Smtp-Source: ABdhPJweKLVCgdb55W52Fgzza7M8uQ3muJw6gFw6GteiCpKniAv8SkhaI6jSnMSRGamCzzANptF5tQ==
X-Received: by 2002:a17:906:c954:: with SMTP id
 fw20mr3076916ejb.342.1611658949575; 
 Tue, 26 Jan 2021 03:02:29 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a2sm9533408ejk.80.2021.01.26.03.02.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 26 Jan 2021 03:02:28 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] ARM: dts: rockchip: fix pinctrl sleep nodename for
 rk3036-kylin and rk3288
Date: Tue, 26 Jan 2021 12:02:20 +0100
Message-Id: <20210126110221.10815-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210126_060230_816516_02F78E81 
X-CRM114-Status: GOOD (  13.52  )
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

A test with the command below aimed at powerpc generates
notifications in the Rockchip ARM tree.

Fix pinctrl "sleep" nodename by renaming it to "suspend"
for rk3036-kylin and rk3288

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/powerpc/sleep.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036-kylin.dts | 2 +-
 arch/arm/boot/dts/rk3288.dtsi      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index 7154b827e..e817eba8c 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -390,7 +390,7 @@
 		};
 	};
 
-	sleep {
+	suspend {
 		global_pwroff: global-pwroff {
 			rockchip,pins = <2 RK_PA7 1 &pcfg_pull_none>;
 		};
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 29ffe2eb9..7dec6935f 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1593,7 +1593,7 @@
 			drive-strength = <12>;
 		};
 
-		sleep {
+		suspend {
 			global_pwroff: global-pwroff {
 				rockchip,pins = <0 RK_PA0 1 &pcfg_pull_none>;
 			};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
