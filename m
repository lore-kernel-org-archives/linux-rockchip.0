Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83ABCC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 14:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwNTRJy+OlaPpJD9ZGTCrOXL7m6vKDyy+/GnuklV54w=; b=ekpQVFtbXZBVgK
	8E4UZrmdtKaD+ndyX20XAx1L2Lsolx9/sFX3w/169n2ZT/pGWWUU3eEmhOk8kaRYl+WckcwXOwulr
	6WX6sCvwPINOJfIaGJQ0/HZaz4yhn9zYODMvABpEcziwbTETw2N6TgeRu3sFGl7lHLDeK+39rh8Sv
	jrX6d5iZJohSihIO2IO02EEsV347SGhNVxRr0WHmKvuJX3fTwNJj0xTO2duPz8PQVXr7vaJoPL2KH
	YazcF6whIv7cDt3QKb/3xA5npM+lotCKfVVXs0o4zAcxPznxKgf8C9VY/bDkbgde/xHO6AOglHTbQ
	D6ZJRJhz8tESHTiKk3aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEFV-0000000A6xK-08jb;
	Thu, 06 Jun 2024 14:37:53 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEF9-0000000A6fC-0ms7;
	Thu, 06 Jun 2024 14:37:34 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2ead2c6b50bso8585111fa.0;
        Thu, 06 Jun 2024 07:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717684649; x=1718289449; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fk9rPd7/DZbkWMr4RLdz9e3yLOVFGIh3KC1NJKidnyE=;
        b=UfOHOtOmcPyHeWh1inJ7PRdI4E4y+Z/ruTVQf4c7yQvuD+8yUqrHxtlAPjHtGc40pM
         waVcf0bk9lLJYfa3VfUT3Ya77/I9n4wLWgqxtZIsNUj0dJ1d6g/mJgcEjKBdZuSIUtsQ
         iiIpYOgVPNMxPLgCrR8O/29wsQkjq1F1HkuOrlYaQNecoEaf1gZCJU/jsIX0Uq1nD5Im
         2G166kDuirwqDDJrZ5/QFE2AtrmFr+Z75TstokX/T8iJWr8i6E779nUdldiVw19ymLNR
         p5z3X9C1gKAcVXHm01peoKNi8oO7IVyJuoyVqmufIuvO+lmDjEH18KvsfLM1tDzMlS1k
         7A4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717684649; x=1718289449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fk9rPd7/DZbkWMr4RLdz9e3yLOVFGIh3KC1NJKidnyE=;
        b=w60TlaT5Tw3JTeLq3K7mzyiHViRZZ+TpR/QIrKDPRl15yua1GmLccIBluNF/fKsWPL
         XLBgmGuHw8yVh52N2WCokBrP94C+tHWnxC4HjxaRPBFSAMIOAPcG8qbT8RMGvOYh8n1T
         5+NmLmUT5f/D2GFOH0jHccj2Q5CTJsNQWAYOgaJbx/g0l75Pm0ln46vx53JsKWt34BKJ
         LcyXw9+N4FIBWJBnHpg9RsrhgF8uMVd6cPLcSPoBbqa0gmSTvnbBl2+TXJhSjJ4Mxlb5
         otCgIM2bVdEQMqJbiabWr1SkHNN4aMgrRw5+cPITE3MrGKP0Sh4BtN9c7VINLYI8dMvh
         J5Bg==
X-Forwarded-Encrypted: i=1; AJvYcCX6qvuV69idNpU5mCsWwv1fu8TaI7ffvUIH6tStzISE4n+9U3jMFnRoqPDgEi/Ko17q+Jj/IptqNnjmtnU1G6zpSnzrkDHqVQXsQO5VejS5mcqi3h377bkBFqxTr0A3JfRDCu3TNQviLJyoFi/JMjgMAd41HjRi6QA=
X-Gm-Message-State: AOJu0Yxz+hsdzW7HORn5/Wh7Pdz8/O8twxZHmY3L4lwpCxS9rl/A/yKw
	3bBPXJMkxjV2Fx3xMXBuatbkSf8vPJhiT2asOFDSFv3ekNooO1E=
X-Google-Smtp-Source: AGHT+IG8owqtLInvHSMcTogX+8tbyB5zZGMHSBrm8ZaQaQLzzEArYPr/Dm2UILk8RcGLuXsPT9EyTA==
X-Received: by 2002:a2e:b790:0:b0:2ea:cf86:c0a8 with SMTP id 38308e7fff4ca-2eacf86c218mr18265491fa.37.1717684649040;
        Thu, 06 Jun 2024 07:37:29 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:ed9f:91b7:21f2:3109])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57aae1008adsm1190925a12.38.2024.06.06.07.37.28
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
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 4/5] clk: rockchip: Add HCLK_SFC for RK3128
Date: Thu,  6 Jun 2024 16:34:01 +0200
Message-ID: <20240606143401.32454-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240606143401.32454-2-knaerzche@gmail.com>
References: <20240606143401.32454-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_073731_269343_CC1ADBAF 
X-CRM114-Status: GOOD (  10.38  )
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

The SFC IP exists only in RK3128 version of the SoC, thus the clock gets
added to rk3128_clk_branches.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - none

 drivers/clk/rockchip/clk-rk3128.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index 40e0e4556d59..7c3d92af12df 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -553,6 +553,7 @@ static struct rockchip_clk_branch rk3128_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(11), 14, 2, MFLAGS, 8, 5, DFLAGS,
 			RK2928_CLKGATE_CON(3), 15, GFLAGS),
 
+	GATE(HCLK_SFC, "hclk_sfc", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 1, GFLAGS),
 	GATE(HCLK_GPS, "hclk_gps", "aclk_peri", 0, RK2928_CLKGATE_CON(3), 14, GFLAGS),
 	GATE(PCLK_HDMI, "pclk_hdmi", "pclk_cpu", 0, RK2928_CLKGATE_CON(3), 8, GFLAGS),
 };
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
