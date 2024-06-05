Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68916C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7HrrVwNLf5ueUZuxwJNQZKoxAwKRfILfI3/LrbamW8=; b=QxUhsrmRK+tXV/
	5vkhDg5mzlIlrWzvHcQQd/LdMYaS9g3lPjWtQOd9G5ARiAA6YbMsEevau+SI3XW6rAWoJdUpKyvBq
	C1kX3PIxhLoVyreMEnfiQbt4nYCKBmQD5vF3WFmYmFhBu2iQVg41JwzkRFgjnKrqHekTZQ93ZBWzO
	nfBfNsTmqJj+nkjV5i5TX1ybhJ11ng9Eqmx0Id0m0VcNuU10pHksl7LqvvrE8YnGHGJv0iHlQ6WAJ
	loibN9yorkh23l2h+ROWbQLlLBJBkOu9bfPG61lOn+GVBQB8YkJT37x+VgkOZ+AuwO2+EWm2VMzdS
	Q/S9qh1a3efJnBOxZgDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcl-00000007VPZ-2ybt;
	Wed, 05 Jun 2024 20:52:47 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcK-00000007V32-2GKL;
	Wed, 05 Jun 2024 20:52:23 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a6c399dbb38so29202166b.0;
        Wed, 05 Jun 2024 13:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620734; x=1718225534; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x5DqSnKeWsYvEazcs2KZiewpru7ofXBIBVWU2Z9PCjs=;
        b=brDqgIfUHnokEW909LgrihwmBUpmTXHd0LHmPmLZZ5zrpjKrljMJFI1LxUsbry9BmK
         2SSfOPosoLv418NBPk2+J6r3iM8Ne10FGgqjWHjs1aLSn+KyYD3JzIHh4bYolSLDs+K+
         dTkajmtmx9CSzU1ebHTlEIqY/Xu8qteKMdjcJchiqfLHinjRaTkLGVTqdDC+Ui4+9Y+g
         MqwvIcd5AGIbaK/Bnzbdvmlxarys3CElG+mq8UC4tFSR31MMCSl/NpEwBHLbEhCfPy2R
         5mfMhVoauQzvyHiDn4nCjYqbPd+emLLDPW5rH4qrYHGNG5pMTtlEiydVHtS1vHop8okl
         DgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620734; x=1718225534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x5DqSnKeWsYvEazcs2KZiewpru7ofXBIBVWU2Z9PCjs=;
        b=NKtQ2OwMqqYesY26eN3OOGxJjPKX8MJMkNlELn9v2vLEFUx2o7lKMQMlSYqN8lkEIN
         moeoFX5kU0WARGBD3SrF5KnmgsCRYaP1LAEZdyanFOcoze8J6QhPzQMZy04HV7PC+ekr
         II9Q/iK7ui40FfVqec29dQaUkwmO7P8YccNmymwg86pKmG3zW95JuzVOTTVxbG2dqfSD
         lbbA+7x4ssMuPS002JHqoAFqi5xhsSAzk84elc6ZYZoglL0GT8PcI5gy7czfrAn99/b1
         4c/V64fQHZh86uchRGBkbxmFzM22/Rbuyqoe79NGAHah7jkbKpyGCvDHfANujNSSL/KC
         fCaQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8GHcquWc8jZNzm2AjeY8OxuF7LahKOOS9DIvOPPVJbx38YtWMYaSKm0pFBFODabN8oIBxzRzWholK8libhHwBuf+afIChCkcHM4fcNFrE69oJVl8o6wICD4FXH3Bt1Kdhn1WQb03QS6YN27ylwy7PWVZKNUM9yYk=
X-Gm-Message-State: AOJu0Yxh1WRTnHK0r9VtdgkvqMTlXrGyDHjlCcUwPmjx4m874kgSpoLs
	WFfQJRfwEy3g6smpuJtE0ap5/afHtBv5JtODae1yYUbXiNsT43w=
X-Google-Smtp-Source: AGHT+IF+x4ragnpopQytYvP+V4rZUBOA1cYWVwClyFdv0u225FZrcMfyOsFfMVyB5JJ7IkfFk4MVtg==
X-Received: by 2002:a17:906:368f:b0:a68:fbdb:728c with SMTP id a640c23a62f3a-a699f55f75emr196312666b.21.1717620734296;
        Wed, 05 Jun 2024 13:52:14 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:14 -0700 (PDT)
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
Subject: [PATCH 4/5] clk: rockchip: Add HCLK_SFC for RK3128
Date: Wed,  5 Jun 2024 22:52:02 +0200
Message-ID: <20240605205209.232005-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135220_630253_397FCB87 
X-CRM114-Status: GOOD (  10.45  )
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
