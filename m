Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D963C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwNTRJy+OlaPpJD9ZGTCrOXL7m6vKDyy+/GnuklV54w=; b=DrvKpnDArFToaZ
	PiIfSlBPlrE1RS1tF49sndKJB889XzHv1prKfJR+liCtNqSbCxy9LbKbybbJjCYWeAbmfWd3kYCY7
	vxJq24SKpgQ4NlC31qCnA0qjTjv0HKnULdBbu61J7fy8obfjQOKbYDXAxIcYa/pwqgr5zL43q9ZzJ
	yqv3ehWd0dViwLu2U8L5k1NVjF8yXRBrzPduVfC9ZagdnHIIBaTZlrOYjcfxM0Go9zIDyiF3yyaMI
	TfOPAiCoM3hZdyeogTye3fLkpWmSfxxBwrhycpbzGuJE6HOrrF78RXmLleHoGK0G22u5KfW23uhPX
	FT6TXKzhMDQNay9D2yBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcb-00000007VI8-3J3M;
	Wed, 05 Jun 2024 20:52:37 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcK-00000007V3x-0UpA;
	Wed, 05 Jun 2024 20:52:22 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a68a4a9946cso29117666b.1;
        Wed, 05 Jun 2024 13:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620738; x=1718225538; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fk9rPd7/DZbkWMr4RLdz9e3yLOVFGIh3KC1NJKidnyE=;
        b=gb3zpN6Nxpz/jmCKpZPTOAabrVuj+1mUb7x30tMRiOOhXXhQ9qx+yX4Ie4yZ3hmdCm
         AGKlRvInYQohsKeLSPoYzjSmF/fnUQ2bS8GegFTEQtXTyyy/RF6mMCL1xr6FKga8UMnV
         iQdiy1fuQ5GS0t++Cwpqob8s/+NNQ8GyyEhX3cxJAMxsrWMJzNqkwoI+phg1vQan0429
         qCuPDMo4ReH5hVPmhxFjLTwLIRarBawmp8Ss0wpyb3U4gGXw7/hKn+uBsk90vJ5oEak0
         GSw/ZT6bQidG+ipPC6ScrrtOZlaWjaZycuMZGribxE+fs6VSMM8KJwxbqLaja9wgkSHZ
         Bo7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620738; x=1718225538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fk9rPd7/DZbkWMr4RLdz9e3yLOVFGIh3KC1NJKidnyE=;
        b=eOUGPcQVntxbwtEbsFEqSWwXg6cpPQlbrnjOVn5z3y00XAvjkW+3sBlLsyi3IvNU9g
         a6UUcuFDzbgWeTi/N9d2C7jYPHBh2A8rxH1YTq3Vorz5memojg1Faukw7XWPtOWfvj2g
         crBv+JEZWHAVffpxoPK4RjDqZJSl5h4bmhKu5YWPKtkAqGAFOsT6rXVWQ9jWmNarucHb
         /TIkLXp0vudxy64ACs2/WAxtikKYAYYovBSGOrLS2qksG9G0T6IKu9gGCcI/Db4QqbS8
         ZtRd9qbK8UFlPzGJOjVdSB2XmwKo2b3iJHfZIsZBKDXy27wiPi1Q8P/l7+8D+3LDJdn2
         0QwA==
X-Forwarded-Encrypted: i=1; AJvYcCVHJn+IKKq2OkTKfWqyITCecj/i2RVnofse8RQLJKLcff+9+/Fk489gpNOtincl6YJ0rJXdyWJfrxnvFBNxISZz6R9JbeQBqXUx3vrYxWOVHbwQmVKb82meoW+aTYTyP1YzXfkmM+kcYGQsWk1K7bn60axClt/XrjU=
X-Gm-Message-State: AOJu0YyveWrjVF4fbI/20ufiDpnYJyTk5xB9PPlPa0mLaQackAH/iUyR
	ITkDyY4dLRs4/INmEjjR6sbB7gC4DmDqimLfMDWscuo6zOXIBxM=
X-Google-Smtp-Source: AGHT+IFxk01mOm2Vvy86LGflkR3CoOnXMk786Ch4vDnYvFK7m+z+sREVwOABFmNJem1shA1DICE29g==
X-Received: by 2002:a17:906:c10:b0:a58:a0b8:2a64 with SMTP id a640c23a62f3a-a699fab8c78mr229435066b.5.1717620738250;
        Wed, 05 Jun 2024 13:52:18 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:18 -0700 (PDT)
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
Subject: [PATCH v2 4/5] clk: rockchip: Add HCLK_SFC for RK3128
Date: Wed,  5 Jun 2024 22:52:08 +0200
Message-ID: <20240605205209.232005-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135220_264196_14E6D290 
X-CRM114-Status: GOOD (  10.34  )
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
