Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D08AC11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 14:41:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 184726140C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 14:41:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 184726140C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+LW6y2sF1p1x9KGxSdeklLL59BB2JxCrX/GDW0Ib7E=; b=A+16EzHgIcSsWB
	6vb94XnjfMR3MkT5U18BFP1Ul04BujnhqXlCq00v5dJx9VK1ycLt7rV8pmsmc/6DArrSrY5lPeAuL
	hGre4+mGcwN6oYsik49X3sbyGonpsbUAKZ9ctcQscXLM/lBvt6W94X2ks++6+GbA4ru6vvCrZ/fqi
	9tMjLg5haI2J5S8SwRktGm4cqhaqofdXMOaLUiJog1YLfCte9Gci2DjbqDchrvntCDVLfGQctigMu
	u/N/uBQxMJQZ9v1E3y+H5cJg70nlw7efYyjfkgGFXl9hdZ/FBL4SLzRUopWa1M9uMbqWgwh8ltPOD
	DxzmmzxXN2VvuBjrmRJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyxsk-0005Tz-1T; Thu, 01 Jul 2021 14:41:34 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyxsX-0005QY-2I; Thu, 01 Jul 2021 14:41:22 +0000
Received: by mail-ed1-x535.google.com with SMTP id n25so8770682edw.9;
 Thu, 01 Jul 2021 07:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AvF+6Thjc7VS3d+lH/xoSpjcWaqN37c3IWH+gDSK5LE=;
 b=b25zxcDyLu1iUJc6dO4ans9rCu/b5OwLrgjWCInEg2cFxRJDk0vwYmxXLiTe0E4zdA
 MJ3wLBe0PRmgqcmjhjolXhI9GoDJrCagKYEm6g1A2Kz7TVOTlCe0VE+C9Z0W9hmKWYEx
 12MwmnvHKrlJHOaCNNBJAmMMAqMkns+LgZnYOSt7b4zeGt1SSJ1GCg437LqysbDtAbvq
 QH4nvZ4PJdu367gTTj88J1EIJEOVOm1cOtTc9wDSQz/owet6wQSxaH+pW/pF82V5Vuqi
 Mko7+/liayHEcpCg3yYutTAlcaVo7R6bXh+qpjwavy1VkYAippICanszMPLiY6wlRrzb
 xC1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AvF+6Thjc7VS3d+lH/xoSpjcWaqN37c3IWH+gDSK5LE=;
 b=makCVolmpxvFf36NJpb3du2dGFpKfQrlhS7B5JqhJQRURExyOK4vtExcHhvWXO29Ay
 yvWqR1uln2NObxu7Gmi1Ymwji89V4D4mG5QjkeJAtk5lSY89zLiD8iwXgg/9N0sV/1XF
 /4NMCeDmlpXUGCldXqgH0r5yAEDVe33V+trytOxuiK71uoMdYEtQ7OH/uolxDgoRh99S
 CmrRGFDqX92L6VugrHMkarj6D+Y3knJjaDxGJ3Bg41GgciqN8RWjomM5loO1a/R6pcSS
 a8AWW7p7EiUUCsBCIm356Ds1CyZvfhtuE8w3k59/CdCKnmlRCqAp//CfR6TycPlXrTwd
 Mtzw==
X-Gm-Message-State: AOAM533rfr5OrK67KOfgf2HZC9F0Lt56j3EckhoPUSzbpxXw+jpr3Ica
 qm2kOGfDK6wVOwTxi/s4xO4=
X-Google-Smtp-Source: ABdhPJw+7B3axxOsOx75pV9gDw2Bqed7PttXMKPft6o0SQ5cklKiVayLhjUPf/7+qX9RUvRJzGKFmg==
X-Received: by 2002:a05:6402:2681:: with SMTP id
 w1mr181454edd.275.1625150479387; 
 Thu, 01 Jul 2021 07:41:19 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a8sm2239ejx.99.2021.07.01.07.41.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Jul 2021 07:41:19 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: remove ddc-i2c-scl-* properties
 from rk3318-a95x-z2.dts
Date: Thu,  1 Jul 2021 16:41:10 +0200
Message-Id: <20210701144110.12333-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210701144110.12333-1-jbx6244@gmail.com>
References: <20210701144110.12333-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_074121_142926_62724072 
X-CRM114-Status: GOOD (  12.58  )
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

The ddc-i2c-scl-* properties in the hdmi node are
not in use in the mainline kernel, so remove them.

Reported-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index d41f786b2..43c928ac9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -193,8 +193,6 @@
 };
 
 &hdmi {
-	ddc-i2c-scl-high-time-ns = <9625>;
-	ddc-i2c-scl-low-time-ns = <10000>;
 	status = "okay";
 };
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
