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
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4FC4361B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D3FC23443
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D3FC23443
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wjDoush8dQxgSU/mwN3WyxXd+cWZj0CuAXbD19szn90=; b=rvPoD0BfQz+Lbo7l0leplGdASV
	s8TVVgM/Pq1FboZWIwSOCNQfrp9r7jp+RkP0kiYMHbs4Ne6VlAEW1n4eo2AY9EuvCOp5fZ7SU9xUq
	G8AjCeF4Brpin0sy193Xwtw8E2KOCGHF/EqY3fTpmfZfPvvvHIbmhDDceyedsBoWAY6IsgsV1ffxu
	UPwk6qjojqkcAuPIGOda4FKmXvRvVpPxzzZrN4ZlxIRwYr1toP4Zc7r24243ZUN5piVPezhUykt9o
	CBdGrQTIu1WSGur8Ua/gvQWs3tVttnVAoaDgDEflvRJscdTlXd3V6OqX1ZuIRwTuo4zpBZMNWZtgl
	X1A/hKGg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqEWf-00079t-PD; Fri, 18 Dec 2020 12:06:25 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqEW6-0006z7-MO; Fri, 18 Dec 2020 12:05:54 +0000
Received: by mail-ej1-x636.google.com with SMTP id qw4so2809023ejb.12;
 Fri, 18 Dec 2020 04:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=t6IawFaTxlXErq81LHg7H7iHtTYroJYDvrDaOnFY3WQ=;
 b=tCeKxpzidw4wpeNtTlUC2MsQrKtU5p+9l82IRzDxKn4wair0jV1sjajMvGZ6WVN5AB
 yD7+J8eHsOvfY4ZtcHKKOFR0Ezow9juDqPED5P761rzz4EdZgv8NGoDmW0Du+CnzcQn/
 zGil5FyGTrCjws/aBOs/ydL1E9lcoBLI3LkR+HjJ8X+dkffqeAU2FWlfhjKRgJh0u45A
 LUc6MgKxBefdOWgUbt+66pfWPOiRQNmEHteifIXNgR3lXbre7f0epVebu4mwC13PG3KX
 IIFvMz8Wx+78JI55vZkdliGLDiJzyx5pp0YfghI01mmWOKmlgbbVfR8oy+oH34PV/hEo
 TT7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=t6IawFaTxlXErq81LHg7H7iHtTYroJYDvrDaOnFY3WQ=;
 b=A15XgYe56sVNtmm8Sx3m+LupZElCLBPp1r8f7d/4YK/lJbsaSgJH5GGtPLwktaZ2wI
 PqlWFH0c956HXt6oiZtA6G81WB2Bxtb2kF1P0awkzZleXEYCtL7G6qobGusMGaEabU6P
 pIxHaNVIkUsSOAK9eIbAv15PQ6ZB9ktFYlXykeiyPkwclquHJEj/tmq/qXDPh454hFy9
 DjRx/8JetLwuJ8xWk79cj8weZipfN5cDVDcHuPP53fiYqTUq33JJIlj1k5dAWRpO58Oy
 t08bcGgQF35PB+MZrwzhOCJ5RY7aRuRBUJ4Pkjkm/Qh21syvqikeOlhXq/QenufTgjSE
 S/zw==
X-Gm-Message-State: AOAM532Y/PuMoj5nhE5/1OA2cjB5cMCjtY/O32F/oWdGmrw4mO3TzXAx
 gsFhgQus5cIUtceodTi7ruY=
X-Google-Smtp-Source: ABdhPJzSar6uDlkcYSArlYr83CyBFBxNMlePA6gL9OekO8talCfdxAOiss9MicKjqUr6XHL/lK01WQ==
X-Received: by 2002:a17:906:9888:: with SMTP id
 zc8mr3646664ejb.42.1608293149321; 
 Fri, 18 Dec 2020 04:05:49 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ga37sm4775832ejc.96.2020.12.18.04.05.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Dec 2020 04:05:48 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 5/8] arm64: dts: rockchip: add new watchdog compatible to
 rk3308.dtsi
Date: Fri, 18 Dec 2020 13:05:31 +0100
Message-Id: <20201218120534.13788-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
References: <20201218120534.13788-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201218_070550_828208_E8C6DDBF 
X-CRM114-Status: GOOD (  14.47  )
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
In the more recently added Rockchip rk3308.dtsi file only
the fallback string "snps,dw-wdt" is used, so add the new
compatible string:

"rockchip,rk3308-wdt", "snps,dw-wdt"

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 2560b9877..ad54acf5d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -244,7 +244,7 @@
 	};
 
 	wdt: watchdog@ff080000 {
-		compatible = "snps,dw-wdt";
+		compatible = "rockchip,rk3308-wdt", "snps,dw-wdt";
 		reg = <0x0 0xff080000 0x0 0x100>;
 		clocks = <&cru PCLK_WDT>;
 		interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
