Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C297EC27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 14:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZ7vnzo+qdfh4imUbyHQk1U50fnRd6Odt63aoGD5XF4=; b=HAcHVDsrgAlxIR
	PEGlU6dw1vlsUvg3rc7QPNcue5fXjJzORviyCafB6JugupiGmnwtg1fBeSFP5VjuzDzdUiFGM44SR
	XGEvj/fMr2RI04xwjWQV1gF3gOCW1I2ItnUr0o8RdYm3fbaNqqnYdNpdMnybI14B/ALXMy87dcjJC
	W3uN5l3wcBGSHA8bgMkcD3BBIejTYl1tBMbBWNj1ets91JvcR7pk9Q58o+ggM3s2dnNfSMvSTsvT4
	Ksph1p3UwW8vXOQFG51kZQdjmoxXQj/71oDFyMOE0DMPxeqQY0RPsWpENfSBzYwrxxo/s84nLgGmy
	zu/fbWDXG5BJoasAyq7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEFM-0000000A6py-0YKM;
	Thu, 06 Jun 2024 14:37:44 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEF8-0000000A6eY-2ncy;
	Thu, 06 Jun 2024 14:37:32 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-57a677d3d79so4101109a12.1;
        Thu, 06 Jun 2024 07:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717684649; x=1718289449; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=REl0Xx4fomFhEoX2hAlcG1iEdQqTsDARw0lBKW2BPss=;
        b=SQHmBpiiRwuZCAZ5n1DuWW//srAFEVk7cVJV0TM83Js9GtlaaWEfVUVxRV0VbhVCuZ
         troqcLYSYQ1oV3Ax7z2gqaNJ45CZi1v77igDLsj2S3p7rjV5HnFQl1ZmZ0Mver9yswyn
         gKVITrKN1/sw1IGuDx6+vgKgr/Up87Km1JpC/R+yrSU9gj2ceF8YmktQcWN1p8eEIwRQ
         NcuT5cOL2lM/NeUPMuqUl/4WhSM5HVQg74QRGlresJ8hu6UtkiG08KGcRzoqOdk2khDB
         PdxB8aa+Z7pUdvG5GRs3WLEHPWCW+gFaLHm/jqA/jgHdMOMOK30JVcCm8Z5K9MJDZ7gu
         GXew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717684649; x=1718289449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=REl0Xx4fomFhEoX2hAlcG1iEdQqTsDARw0lBKW2BPss=;
        b=mrDITyNFRsYsstRAnXe83F7LlD0mfdXWluGKrDdkzI2IPbzeS1EQw5jV7uuknG1EQh
         glqXyAZCdM+4HOydZwYoacNquLBe7FuPrOfzS1pjk4yOD8cQWJ8aVK6dRn3yV059fzaW
         GywDkEtNcp/TsDP0BbYfcynzSCvxXLwoQTV5HFLQ6nTlIBAbcR6KNZJVpbKnjP9O2pud
         Z1H7Z4KdOB14Z06ZbSX6ZcVKqCYiZ1PZwBs6EKdP8Pfj95F5lmi59X9eMxKXXBTXXW1Z
         HG/JExLFgQ13W9slb9cIxzpWDLInPWwBUOSct9BqSunx6wkzJG4SKlz7Zc5HjLOUdeh8
         Y6Og==
X-Forwarded-Encrypted: i=1; AJvYcCWg81to0S50e4ie7gllyo2tIB6pYWXorq11FMnaGOCcNoi6zBRgI4fxt+4SUGf1hUN2nAL08cUoRVGo2Eu0KZ9uMIARPjHQ53NKAsCebe4JvX9DnGFjnvrfYiLFYNh+r70yuGUMZZyv0IqB+lc7Ihlz4Y0s73bR+ho=
X-Gm-Message-State: AOJu0Yy3diD3Ik0ROAMPAcFZVulXADPZiTSOG/t48vEHof0vBbY0+XNj
	ISSJB5suGdEyMzNuIrlT5Tto8LSXboypyM0gIpDBFhVGG1pJDFU=
X-Google-Smtp-Source: AGHT+IGtqB4Yqpf33WXk7lsyzw0x62MTsqjUTwKDFtbYVmSJtlwiER+p6JD5MO3ffaIRJsgfC7IDMg==
X-Received: by 2002:a05:6402:446:b0:57c:46f7:a49c with SMTP id 4fb4d7f45d1cf-57c46f7ac1cmr819478a12.7.1717684648412;
        Thu, 06 Jun 2024 07:37:28 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:ed9f:91b7:21f2:3109])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57aae1008adsm1190925a12.38.2024.06.06.07.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 07:37:28 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/5] dt-bindings: clock: rk3128: Add HCLK_SFC
Date: Thu,  6 Jun 2024 16:34:00 +0200
Message-ID: <20240606143401.32454-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240606143401.32454-2-knaerzche@gmail.com>
References: <20240606143401.32454-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_073730_822148_9FA783C0 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Add a clock id for SFC's AHB clock.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
changes since v1:
 - add new clock id at the end

 include/dt-bindings/clock/rk3128-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 2616a8791c14..b609fcf96508 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -144,6 +144,7 @@
 #define HCLK_TSP		475
 #define HCLK_CRYPTO		476
 #define HCLK_PERI		478
+#define HCLK_SFC		479
 
 /* soft-reset indices */
 #define SRST_CORE0_PO		0
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
