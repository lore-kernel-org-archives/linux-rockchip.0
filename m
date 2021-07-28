Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E801EC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:01:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B19CA60EB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:01:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B19CA60EB9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPN2Cl/+cwkOpF4LE9QJISvuk4sMQ0bPW2uxNr1bqbI=; b=K25pc7eMXpFV7Z
	EmZIr1zaQajeakslpw3Mp/Fp/97tV5zKn2Xh0lm4iCg9Lf55VGn6B7rNXtzFTPuw3cIWeRhq+mtiq
	G0fIGk9frO99AhRQJXWepIpzn9vmH5Mqnr2KIkwgVmM4SFRV8SrqRWxTOmMr5mMMuhTbN/khsF7Z5
	uI7UT6pwtsHvit9LeDIbWqNWr0ZG9mOZw860yT6vqvtZjprWBUE9IhVq/8JRz+zuLq8p806mv5YTv
	R2C6UkKhqvX8i2P7SPuG0tTk2N2AnPCxplHhkq5Ic4rClNqLUppNwTG1HsBmtnowngQdS7yVA/Adq
	SUkzbV8EZ5OhSlGkbnbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nsC-001y2m-P5; Wed, 28 Jul 2021 18:01:40 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nrX-001xnA-L9; Wed, 28 Jul 2021 18:01:00 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id d17so1971196qvn.13;
 Wed, 28 Jul 2021 11:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vXk/J4q5mPEjnLuepFqEKq93BJsZukmkkBYD3V+Z3Tk=;
 b=beFhaZVHfk7mxGVzvlrm0rAr2p1O/09MWnJmT0ut7HVMm6/cAi3kDjr9g+wxOuPF/w
 59io64vS64AzA+1oeggt0h6Ua18feX03yXJj0NeUQlhAND2wrGoAqAaTsYoY6L9Udi3t
 6u0Z//Phpn/Y9eC+AcrxmAiZvK2d39nkFcwoXMoH1+yE13kD0GdzyCU/21wTNchokQH8
 2Kjn3hrmPGYQE0ah/xwM2u+yCSKCxXIFz4fCQjM3N5lkC+TdEfqDjsB5t/w2NqdkZjp3
 6aQF8d45sVRRAWYJ7+qUXy26mY2vadhl3SV6kOnaHs+Se2R367o5v+B68PB0wOg15qo5
 ZQMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vXk/J4q5mPEjnLuepFqEKq93BJsZukmkkBYD3V+Z3Tk=;
 b=f9x9benYyVIjLsodBYI8jEXqurjI3NaiQnzepI9ATsIhdxRKpjrqz5cC3HmyAOs4O3
 0aSjVX/UohTogi0xvZceLEw41wT6ymCsIHNjZWFhtjb6+znDi58e1hA7wLTVIj4Vh7XU
 W9j71R/E8HYnhZeFXGbMItEa0iwGJhElI3XGrE0PYJVVSwiYzwZWNjE3AsdOkfhqZuXt
 o8GmCZjrM9S7WZZ3GpJLbyAaTaU/ZB1OFV8phlAi3GP+7GuQ2+tndFfDy1JckuWLjHy6
 UAPBCG9RraCHhGYWeljSSkNH3kij+GxTO/p9tRbqrom7zMSY/Yh41NjsFr1EXbbwlf20
 ASyw==
X-Gm-Message-State: AOAM532ukwNMJsH2+VahItk41MYW+DEMovrwVG0vD/ZZpahUYpvm3XMa
 oe6rXbhqPgVF7se1hSreQUoYv3j3yk+VTSEt
X-Google-Smtp-Source: ABdhPJxR95vQmYlTzhJ3BscYKr/cpb85sYBj4WPecIGS8wdPNanrwNCUsJga5A8c4jDPranJBAoFAw==
X-Received: by 2002:ad4:5bee:: with SMTP id k14mr1411561qvc.10.1627495257347; 
 Wed, 28 Jul 2021 11:00:57 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id r5sm223341qtm.75.2021.07.28.11.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 11:00:57 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/8] arm64: dts: rockchip: fix rk3568 mbi-alias
Date: Wed, 28 Jul 2021 14:00:27 -0400
Message-Id: <20210728180034.717953-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_110059_702326_1C9094EE 
X-CRM114-Status: GOOD (  12.82  )
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

The mbi-alias incorrectly points to 0xfd100000 when it should point to
0xfd410000.
This fixes MSIs on rk3568.

Fixes: a3adc0b9071d ("arm64: dts: rockchip: add core dtsi for RK3568
SoC")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 322971318d5a..f7ecdfd66f86 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -195,7 +195,7 @@ gic: interrupt-controller@fd400000 {
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-controller;
 		#interrupt-cells = <3>;
-		mbi-alias = <0x0 0xfd100000>;
+		mbi-alias = <0x0 0xfd410000>;
 		mbi-ranges = <296 24>;
 		msi-controller;
 	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
