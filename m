Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B20DC71151
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 05:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V5YQ7paCY1opjOIPMPIiAEbLn9lBRZtrrAwEQlCE5gE=; b=yNlLAOkVmSJiNP
	7+ucRqm+VWw+8UtcUKOX5goZFyH1MMnLs654KphAIcNDOgC1pl3jSW6cnq/XHmjwWkGXE9ul/w33/
	z3b+cNBV4bzvFqTCGbFzR12C1NqoYEcQ0sQny2DdImAT0D3xrDpRs+QRHXuHGx19Kwkji05aSRFdg
	v3cx9I7a/25jkNSkig3yDGdKUd0hye9YAOpTk8D6QOB37DngidwDOF/toGU97eJ37geIs43s+Cr4p
	GOLyVjhgXoO5fe0781beI36m9LPF+4maQwzfvunAxqgUIFwtkr9V1ln6VMqG3fyB6+re/xwRgMpvl
	i7Jii5pxXDuRqm/WRFhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjXih-00000000bMv-3Trh;
	Thu, 29 Aug 2024 05:29:19 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjXif-00000000bML-0V0p;
	Thu, 29 Aug 2024 05:29:18 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2f50ca18a13so2972811fa.1;
        Wed, 28 Aug 2024 22:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724909354; x=1725514154; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dRiNn71AXYlTP0EHfd7F7GiG1wbLGjDdP4bC5eKVZx8=;
        b=fP/oWIksPpGnRPMq+5AtuB/KaXALltAxRTzH9XsBdHgD6xwPOr5T5b6biieQxNtlAF
         5YyrkAprDMMyK09msv8TDm+PUeL1mAi+6/dU/+ep2gXrKke8yVYGFV9ErJp38Gc589oO
         2K3pKAiA/f3IMakQatutQsk9FzV9JKLJxmoOyv4OUabFGLmoC2zEjXAc4PqlgaVRjtTk
         rO+2lVUE5XYxypdPrq7Fw0pYNTq964MrrOefczrtc+TJXutFKV5gKTHb8X1+TeFFUwbY
         s1NKIjLq+9moihIeze4hDXGhThre4LgpNr1LZSfGclomgaH5QkFz3kzccPF6KlNrWtUM
         wQKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724909354; x=1725514154;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dRiNn71AXYlTP0EHfd7F7GiG1wbLGjDdP4bC5eKVZx8=;
        b=AKPtJ6opMXlcJeSTQBAEmd0a9l8Q8r5CuU6HDHyhM62WQvYESTchrr16wtg1esmgyS
         yzTSGEQGjsLKLeyiBOTMXKvZ9FzUkqkHKnp2iCDDI2L97kCgK6/9937RsP1z0TjzUQpF
         nEUgPkuD7uAjFsQcnPanY23S5slG8bjwj91YmO3oQxCnYArJY4oGoyQui56t/ZtdKu7v
         kQMg9Tog/5oKzI1oZN2K4N2lr/mCCZPLu7jirC5S96T26RhN20Kg2OEgQgwl7sezc45u
         1L+Fn8Ru8pA1S+j/4E217MeUreL8Laxt72QWAK39eHF81uP59HxdwlSGnoLyo3Z+wcqa
         SaNg==
X-Forwarded-Encrypted: i=1; AJvYcCXpBehsGmYV+X3hued1qaVMAoSDvtffFjo2/WnVjbEvgOQ56X4reqJshqJ5c9NYW7wNONo2NeIMOgpOGvNJMwsh@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9ugGi+w3N17LnJOHJ8lwM/e7LivLXfJf0AZfehfQou3wZLVEx
	tFYuc0Zuc24v/RPZOF6FZFsO6dAlOGOleA6Ho9LO+vx+5WLVNeMUZhaTDcMQNYc=
X-Google-Smtp-Source: AGHT+IE0ceBLba7nEA67Qlfy7jSL7y109zrmqgKYUx0DdBoUpfpwOTeJaqrDey2Clmx2ftpzBo0Kbw==
X-Received: by 2002:a2e:612:0:b0:2f4:510:10c9 with SMTP id 38308e7fff4ca-2f6104f27e8mr9410811fa.37.1724909353594;
        Wed, 28 Aug 2024 22:29:13 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614ed1465sm836141fa.15.2024.08.28.22.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 22:29:13 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	stable@vger.kernel.org,
	Alexander Shiyan <eagle.alexander923@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v2] clk: rockchip: clk-rk3588: Fix 32k clock name for pmu_24m_32k_100m_src_p
Date: Thu, 29 Aug 2024 08:28:20 +0300
Message-Id: <20240829052820.3604-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_222917_184555_60D06DEC 
X-CRM114-Status: GOOD (  12.48  )
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

The 32kHz input clock is named "xin32k" in the driver,
so the name "32k" appears to be a typo in this case. Lets fix this.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Fixes: f1c506d152ff ("clk: rockchip: add clock controller for the RK3588")
---
 drivers/clk/rockchip/clk-rk3588.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index b30279a96dc8..3027379f2fdd 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -526,7 +526,7 @@ PNAME(pmu_200m_100m_p)			= { "clk_pmu1_200m_src", "clk_pmu1_100m_src" };
 PNAME(pmu_300m_24m_p)			= { "clk_300m_src", "xin24m" };
 PNAME(pmu_400m_24m_p)			= { "clk_400m_src", "xin24m" };
 PNAME(pmu_100m_50m_24m_src_p)		= { "clk_pmu1_100m_src", "clk_pmu1_50m_src", "xin24m" };
-PNAME(pmu_24m_32k_100m_src_p)		= { "xin24m", "32k", "clk_pmu1_100m_src" };
+PNAME(pmu_24m_32k_100m_src_p)		= { "xin24m", "xin32k", "clk_pmu1_100m_src" };
 PNAME(hclk_pmu1_root_p)			= { "clk_pmu1_200m_src", "clk_pmu1_100m_src", "clk_pmu1_50m_src", "xin24m" };
 PNAME(hclk_pmu_cm0_root_p)		= { "clk_pmu1_400m_src", "clk_pmu1_200m_src", "clk_pmu1_100m_src", "xin24m" };
 PNAME(mclk_pdm0_p)			= { "clk_pmu1_300m_src", "clk_pmu1_200m_src" };
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
