Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15360ECE579
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 10:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sVUUIf6lq8Bhq2vXx3evRZZZ6RH0bSQ/u34pE5fWk68=; b=sb0ilMBzQw3VRp
	voRjmw+KBdBIvEbdUucEZVGfB7Fyf66T7J+GkexAujcRqHdS185ZRlS8pX8om7pWf3nbfLSM3Luy+
	lhThSuz3X4S0Q2wO0YBJwk+/nxUDEj6Dhsc+8zODp/WD8OplJ7yIOGJ0XYG6UJyhZb0wEPlOImNba
	3B2xyWPwKqoB0JlESHHis9rz/5CdrKILPrVbErTHaDM3EU+e5gAqbUckyag74uLKRkNJCtU3luEvS
	C3E4Wq4340/KtUsKQA9j16c3POXoEX0lBT5gyZLj7f9C3Dx5Z4NZ5VXvmjaup/D0UoZabSkOkOXBv
	6bKgmR44FOUwpBcCAo3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snbPh-00000001T2F-1IzA;
	Mon, 09 Sep 2024 10:14:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snbMg-00000001STA-1Skd;
	Mon, 09 Sep 2024 10:11:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F16255C5645;
	Mon,  9 Sep 2024 10:11:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94B21C4CEC5;
	Mon,  9 Sep 2024 10:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725876681;
	bh=vvlOf3FJ8E89u5XJBz4yvALF0Sbc3Vr4gQs/Ydqc08Y=;
	h=From:To:Cc:Subject:Date:From;
	b=OSHgrb4aOuuyefGW9wRDf5QC77+H/qhDFCoJQjzlZXZMpRqg3G9l8NNHyplKMjy8t
	 Jcdnj5uGNcd3hmBrZzO3U2nzJQrnpA2v00FyvyqSHRs7KLxigckzIuOrPDfjEKR+B7
	 iM2KRWNwAGiOILId4ZKj9vPj21F2H8o1OIJMBWn4QUnQTgtGXxpqR+js+0bbEsWp+z
	 Ko0JnY8VyLBLYRsQnQGfAgxGZKUOMuWoiMmeJ1LQW7WhHPEZNvrzmtjnuvUgcav+s8
	 j13mR/NPHFXnHd76Ii2gQeCjyepu81nrQsk6nO7nDw/FOYAHZn7csjAIwX1/QDYXIx
	 WZHmHTYYCVNCg==
From: Arnd Bergmann <arnd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	YouMin Chen <cym@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] clk: rockchip: remove unused mclk_pdm0_p/pdm0_p definitions
Date: Mon,  9 Sep 2024 12:11:05 +0000
Message-Id: <20240909121116.254036-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_031122_478535_5AEB357F 
X-CRM114-Status: GOOD (  10.49  )
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

From: Arnd Bergmann <arnd@arndb.de>

When -Wunused-const-variable is enabled (not the default),
there is a warning about two definitions in this file:

In file included from drivers/clk/rockchip/clk-rk3576.c:14:
drivers/clk/rockchip/clk-rk3576.c:334:7: error: 'mclk_pdm0_p' defined but not used [-Werror=unused-const-variable=]
  334 | PNAME(mclk_pdm0_p)                      = { "mclk_pdm0_src_top", "xin24m" };
      |       ^~~~~~~~~~~
drivers/clk/rockchip/clk.h:564:43: note: in definition of macro 'PNAME'
  564 | #define PNAME(x) static const char *const x[] __initconst
      |                                           ^
drivers/clk/rockchip/clk-rk3576.c:333:7: error: 'pdm0_p' defined but not used [-Werror=unused-const-variable=]
  333 | PNAME(pdm0_p)                           = { "clk_pdm0_src_top", "xin24m" };
      |       ^~~~~~
drivers/clk/rockchip/clk.h:564:43: note: in definition of macro 'PNAME'
  564 | #define PNAME(x) static const char *const x[] __initconst
      |                                           ^

Remove them for the moment. If they are needed later, they can
be added back at that point.

Fixes: cc40f5baa91b ("clk: rockchip: Add clock controller for the RK3576")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/clk/rockchip/clk-rk3576.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3576.c b/drivers/clk/rockchip/clk-rk3576.c
index 4de05b208771..595e010341f7 100644
--- a/drivers/clk/rockchip/clk-rk3576.c
+++ b/drivers/clk/rockchip/clk-rk3576.c
@@ -330,8 +330,6 @@ PNAME(mclk_sai7_8ch_p)			= { "mclk_sai7_8ch_src", "sai1_mclkin" };
 PNAME(mclk_sai8_8ch_p)			= { "mclk_sai8_8ch_src", "sai1_mclkin" };
 PNAME(mclk_sai9_8ch_p)			= { "mclk_sai9_8ch_src", "sai1_mclkin" };
 PNAME(uart1_p)				= { "clk_uart1_src_top", "xin24m" };
-PNAME(pdm0_p)				= { "clk_pdm0_src_top", "xin24m" };
-PNAME(mclk_pdm0_p)			= { "mclk_pdm0_src_top", "xin24m" };
 PNAME(clk_gmac1_ptp_ref_src_p)		= { "gpll", "cpll", "gmac1_ptp_refclk_in" };
 PNAME(clk_gmac0_ptp_ref_src_p)		= { "gpll", "cpll", "gmac0_ptp_refclk_in" };
 PNAME(dclk_ebc_p)			= { "gpll", "cpll", "vpll", "aupll", "lpll_dummy",
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
