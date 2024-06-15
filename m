Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D9AEC41513
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uA6ZNsa6At/t2m5mYkM4RYFuG/WIjxiZ5w1pginh0YA=; b=yy2hNA79XeP9Qu
	182NzvMA5Jpi/lECThV3ky4Y5sProgbKPphTYNRsQpqa4QNwar40NHdopU4TjpA0O7jcjvgi6i5tU
	GhWUI7vMriXBa95e+qnRDKni96u3wUcVf2QUSIqGfz0HNjuE6HxCpiCYID5WmnKmWYxq/DDbmWOq9
	KtUux9B468JSTZu5wcj8vbiQzMrHs+behMA328FdHsB9DSUzurjmqhHurjgaN0tx2cPezfa3Vp5R+
	ShtV64mDVrwi2HtW9yu7QaBVL/z956GTksjHqlU/KIOtasOY92D9awTAbaOJd3OgM+bvP9cpOvbuN
	nwW0jpD5dygzDwUIajTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWqF-00000005mKo-00IK;
	Sat, 15 Jun 2024 17:05:27 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWpt-00000005m1o-0apD
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471077; bh=Bcu9b3VrUd6qIU98W1LB1PWRhdR9Skrn32v3O+4jLys=;
 b=VsgaFdxQZVdNXIhi2U8zovuoyfyqq6MS8Pvmv8oeEMZteMpcVA0byLeJASQdB0fefyWcHfouS
 8J0K1NeJi7BO9oPpRIAvtXWw/1lQ8k4UBpBk8IpaEs5m17UmQxhVLEcntfSscw5TsllSZ0QdL6Q
 05rH8LmtsNXzy2K80jiMBpelMTwo1Yc0GwyNIpdghb36GKGWcV1sFYDg/XRhnr5FCykL4moQqI8
 ra+OVnxmOvKsgydSgHmx6kFiV5fX8jPaoHEHlPXGJB14e6aNNH5GW3kVNApEkLXvn30m1Mmu4gX
 F5IsXxVrA5xqwgNVTQGlyXbGhLCRhkOKk50YmFvd6Gow==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Yakir Yang <kuankuan.y@gmail.com>, Jeffy Chen
 <jeffy.chen@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, linux-clk@vger.kernel.org
Subject: [PATCH 02/13] clk: rockchip: Set parent rate for DCLK_VOP clock on RK3228
Date: Sat, 15 Jun 2024 17:03:53 +0000
Message-ID: <20240615170417.3134517-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 666dc9a024e0254b39803ff3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100506_172661_977C09B4 
X-CRM114-Status: GOOD (  11.13  )
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

Similar to DCLK_LCDC on RK3328, the DCLK_VOP on RK3228 is typically
parented by the hdmiphy clk and it is expected that the DCLK_VOP and
hdmiphy clk rate are kept in sync.

Use CLK_SET_RATE_PARENT and CLK_SET_RATE_NO_REPARENT flags, same as used
on RK3328, to make full use of all possible supported display modes.

Fixes: 0a9d4ac08ebc ("clk: rockchip: set the clock ids for RK3228 VOP")
Fixes: 307a2e9ac524 ("clk: rockchip: add clock controller for rk3228")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/clk/rockchip/clk-rk3228.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index a24a35553e13..7343d2d7676b 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -409,7 +409,7 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(29), 0, 3, DFLAGS),
 	DIV(0, "sclk_vop_pre", "sclk_vop_src", 0,
 			RK2928_CLKSEL_CON(27), 8, 8, DFLAGS),
-	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, 0,
+	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
 			RK2928_CLKSEL_CON(27), 1, 1, MFLAGS),
 
 	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
