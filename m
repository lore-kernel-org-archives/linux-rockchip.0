Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D74EC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 12:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7tkcLbksXEUeRD/UVLGcCIRGan38W8F/j0M9Xj5IRqQ=; b=VbXws3Rm7zNmNR
	Z4TBgyFgLmomHW08DHO0JKakuHeDpuzQr7aPZl7XpDsiLHfaKpkeqw5AEjZou+k+ebDeg1+VTTszn
	9t+P9nw1Ca2YIRblKD2yUrbEqQ7J9xBKtoAtLxe2jgHq/E62tQL4y3iTVS7WVx7wpEZ/HN96HAIUq
	eGTSZ1w+bRx7wHs+5psYpC2VKouZyDm0CgtpzgIQMvXYwYfk8vSgdvd6ekF4XXKDkisqfcliRHygL
	36qPJr8n2WlvS2MBzmJl0xeUvA1kXQVleto8xbB7RJckvCEUVn/NQUtiiAiG5Tdb5zslErj0JukFk
	x3hKPqkYLSbxkWLoWDgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovddv-00Dez2-4T; Thu, 17 Nov 2022 12:05:19 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovddi-00Ders-Vd; Thu, 17 Nov 2022 12:05:08 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 98CCB6000F;
	Thu, 17 Nov 2022 12:04:58 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Xing Zheng <zhengxing@rock-chips.com>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	stable@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] clk: rockchip: rk3399: allow clk_cifout to force clk_cifout_src to reparent
Date: Thu, 17 Nov 2022 13:04:31 +0100
Message-Id: <20221117-rk3399-cifout-set-rate-parent-v1-0-432548d04081@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_040507_211341_F142EB51 
X-CRM114-Status: GOOD (  14.78  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

clk_cifout is derived from clk_cifout_src through an integer divider
limited to 32. clk_cifout_src is a child of either cpll, gpll or npll
without any possibility of a divider of any sort. The default clock
parent is cpll.

Let's allow clk_cifout to ask its parent clk_cifout_src to reparent in
order to find the real closest possible rate for clk_cifout and not one
derived from cpll only.

Cc: stable@vger.kernel.org # 4.10+
Fixes: fd8bc829336a ("clk: rockchip: fix the rk3399 cifout clock")
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
clk: rockchip: rk3399: allow clk_cifout to force clk_cifout_src to reparent

This used to be correct before v4.10 but commit fd8bc829336a ("clk: rockchip:
fix the rk3399 cifout clock") incorrectly removed this ability while reworking
it.

Note: this has been tested on top of v6.0.2 only but no changes were made to
this driver since. As for older stable releases, the git context seems identical
and there does not seem to have been any logical change introduced since v4.10
so it should be pretty safe to apply.

To: Michael Turquette <mturquette@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
To: Xing Zheng <zhengxing@rock-chips.com>
Cc: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/clk/rockchip/clk-rk3399.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 306910a3a0d38..9ebd6c451b3db 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1263,7 +1263,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 			RK3399_CLKSEL_CON(56), 6, 2, MFLAGS,
 			RK3399_CLKGATE_CON(10), 7, GFLAGS),
 
-	COMPOSITE_NOGATE(SCLK_CIF_OUT, "clk_cifout", mux_clk_cif_p, 0,
+	COMPOSITE_NOGATE(SCLK_CIF_OUT, "clk_cifout", mux_clk_cif_p, CLK_SET_RATE_PARENT,
 			 RK3399_CLKSEL_CON(56), 5, 1, MFLAGS, 0, 5, DFLAGS),
 
 	/* gic */

---
base-commit: cc675d22e422442f6d230654a55a5fc5682ea018
change-id: 20221117-rk3399-cifout-set-rate-parent-1fbf0173ef2d

Best regards,
-- 
Quentin Schulz <quentin.schulz@theobroma-systems.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
