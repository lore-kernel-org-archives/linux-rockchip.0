Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C44E4C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 19:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzENDpxLOG/p4p1tQFEOh5QBwsLs3JebIIDcavcreJo=; b=uCF8WZLpxqqdG8
	xstFA6GdBP0g53ZYJvmrP3yD6Owliaf//nzVR5esLzWFsFeEsjqfNwM7oEB3JLZZz2qKIIWudK4Un
	wiA+sWcasyRJoce52IDUC0JyweV7tORj8VkSfYoq9jpORy8PYm64deieu9YenYzsztDFY+dwXKRSh
	lGd+NL66x6vvy9QhvBaMcCgrk69JK7v/UGQ2ZMBx05ACTvhjbBYbARfQjMsIsph2CeeGWISPLZlkL
	S9e3VFSZxydGy3Lc2q4MggCLgtqrt9/V2iRLmBdPD+Zb32iLF+0JRM0I6XpctP6t+Rfi8B0npkTpe
	hBLse+2OkuZySLVnoPcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb4QL-00C8kQ-2j;
	Tue, 29 Aug 2023 19:30:49 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb4Q5-00C8hz-0k;
	Tue, 29 Aug 2023 19:30:39 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52a40cf952dso6332216a12.2;
        Tue, 29 Aug 2023 12:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693337431; x=1693942231; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFpS6puAfr1Vvk5xVzMQk3TJscyGtiLTY36CCDlYgn4=;
        b=hDBDy9UrRUeaus4NKzec7qHKCjmZbbN/8iy4HOjQ1Rmd0EnRlpfvJkGSt5SVZztoiG
         MXDKPuo/ELRUPSBgUbnoZPiUjzbqa8b89kQcas21o3z8porHsxIuRTmexR4EIDz/Q4g3
         EnWBwdJKXrvm7qTGF6Kz+Xl5GlYGIYZz4W9I45ZIhyHlcbWXnOMssvq0h/y3MGve+d8d
         VbMmoIBLYmEO13+4SLU5Lt8bJ+FVzEAJyyiYZIgjkXMjDa8OaTZqXljUWclkZ9YIgsCo
         USCxNC53WcQl0X1aUxvu/2OG+PV0jB6lBynoVKP+fOXCKp16MgHiF+iWd4mLyDA4WJDM
         ktdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693337431; x=1693942231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFpS6puAfr1Vvk5xVzMQk3TJscyGtiLTY36CCDlYgn4=;
        b=RdDJcwfBW/GPTq7qTGRy2tCibrM8nKF5iJbJcDm4cLGxST9Fa6iCHamBjyEfTa021c
         7s1kzlXQkSbM17LORi7MaPd+GKjTDfHmX/e3RdviFuaOIIHcxvbKK8s4jeaRLqmzyZzt
         BIhu6U5K03hBhCYg8BA3zXqT/ih4fhw/m1a0WTI+1PC/zmuoySFi1d/eUQMVRlM0p10b
         isx8Y7Fd0QMGeOE6uRlItdspyKEP+OhwI/HaT94rwsruBmmnCduCzvqFjKUfIWX3KWUO
         Kg5bnv59UdaCNaqu2e8TTw95Xal9qY6CsMdI/0dH3tvdyWXazlhCR3AsglMiP5AcXcq6
         RVCA==
X-Gm-Message-State: AOJu0YztasTR8PiqWD88XbPnYTRcXHbq0z8ETz8WI7ii/++4FZBb/n2b
	9VvR+/VTudGuYfPCKePbDA==
X-Google-Smtp-Source: AGHT+IF3soeV+vQd0OW4HUmy2zdE2aptWsopC7QBNqpTZOjsWegWne49TwOnE9EMxuKhbIvdZqAXyA==
X-Received: by 2002:aa7:d699:0:b0:52a:1c3c:2ecc with SMTP id d25-20020aa7d699000000b0052a1c3c2eccmr177588edr.25.1693337431101;
        Tue, 29 Aug 2023 12:30:31 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id o8-20020aa7d3c8000000b0052544bca116sm5940902edr.13.2023.08.29.12.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 12:30:30 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 3/3] clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name
Date: Tue, 29 Aug 2023 21:29:58 +0200
Message-ID: <20230829192958.250248-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829192958.250248-1-knaerzche@gmail.com>
References: <20230829192958.250248-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_123036_816653_39C49EA8 
X-CRM114-Status: GOOD (  15.71  )
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

SCLK_SDMMC is the parent for SCLK_SDMMC_DRV and SCLK_SDMMC_SAMPLE, but
used with the (more) correct name sclk_sdmmc. SD card tuning does currently
fail as the parent can't be found under that name
There is no need to suffix the name with '0' since RK312x SoCs do have a
single sdmmc controller - so rename it to the name which is already used
by it's children.

Fixes: f6022e88faca ("clk: rockchip: add clock controller for rk3128")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/clk/rockchip/clk-rk3128.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index 17bacf6dd6e7..75071e0cd321 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -310,7 +310,7 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	GATE(SCLK_MIPI_24M, "clk_mipi_24m", "xin24m", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(2), 15, GFLAGS),
 
-	COMPOSITE(SCLK_SDMMC, "sclk_sdmmc0", mux_mmc_src_p, 0,
+	COMPOSITE(SCLK_SDMMC, "sclk_sdmmc", mux_mmc_src_p, 0,
 			RK2928_CLKSEL_CON(11), 6, 2, MFLAGS, 0, 6, DFLAGS,
 			RK2928_CLKGATE_CON(2), 11, GFLAGS),
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
