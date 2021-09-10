Return-Path: <SRS0=vNfy=OA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEE2C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Sep 2021 00:20:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9ED1B611BD
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Sep 2021 00:20:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9ED1B611BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h08O4930tKlH5Rkp8yeupjexMdvpJ2lA8vHeA/nUJ5k=; b=bhHz91e7SyBeb4
	jY2P4keVJD/w2l/fX6phFyWgz/qopq4DRp0qTZ8GKIeHBhoTPEXMVEQA1JL7W0tdXs3azk95/JHu5
	Lp0KGgNRec8ynPElepG0h8Bk8dZzq5UerswtjRuR/d1Sl5vMBoGZ4pnUp9kTF0QwyE2LqUc5T8Bt4
	uFWGng/qsx17mwB3PR+KB9ZKVWiLobmOwYjjp9rsR64V1HQFpn8Qh3HZvYH5XY7+rCyZKxeAW8L3Y
	urjOihaA9At7lkwx49lB3ZYCA3bh+JyxyrD6f9mqrXyEsQYB3KycGFjakFgtyQ78Dr4NEItcXDUS6
	v0dQV+ENAwmyujy0oGAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOUHj-00BFSj-Gy; Fri, 10 Sep 2021 00:20:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOUFP-00BE25-S0; Fri, 10 Sep 2021 00:18:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 59194610E9;
 Fri, 10 Sep 2021 00:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631233107;
 bh=oa4wwDdzBYZNqvMFtcmTxt5aqRk6L4HRjI4WQ6iUDVY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i+7RvikcYR3U9VJGnBTMoa+KffFM6WM9bI2HntaHmJwGwhM7UtNXyDP6cdoUq7ZIz
 GX5D5gEh9ypnkoQnl1mjijRTfv5p++riUFTQbGoZmdZVBvw7C7v3Kk4G53ejlf1w1u
 /FJoWo8ZZhqoBM51FOkiZLSGXXGSm5TOKCo4ENai9e2a6EE0KvIi5HlFkEkEfl5rrg
 tQpW0W8SszBG99KA3RL7va4rWs6Fj/eoxeq42PIuG2ZoHw5GnZkZhG2QoLmdJCuSSX
 O7/18tzklAUFpVqHNc75ghkFUCgwcAe6C5uud2ahgTVqfZexMRfQ4bNV1x0abjavgG
 f+ZK8adVeudiQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Lin <jon.lin@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.13 04/88] clk: rockchip: rk3036: fix up the sclk_sfc
 parent error
Date: Thu,  9 Sep 2021 20:16:56 -0400
Message-Id: <20210910001820.174272-4-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210910001820.174272-1-sashal@kernel.org>
References: <20210910001820.174272-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_171827_974598_53D7592A 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

From: Jon Lin <jon.lin@rock-chips.com>

[ Upstream commit 0be3df186f870cbde56b223c1ad7892109c9c440 ]

Choose the correct pll

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Acked-by: Stephen Boyd <sboyd@kernel.org>
Link: https://lore.kernel.org/r/20210713094456.23288-5-jon.lin@rock-chips.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/rockchip/clk-rk3036.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3036.c b/drivers/clk/rockchip/clk-rk3036.c
index 91d56ad45817..1986856d94b2 100644
--- a/drivers/clk/rockchip/clk-rk3036.c
+++ b/drivers/clk/rockchip/clk-rk3036.c
@@ -121,6 +121,7 @@ PNAME(mux_pll_src_3plls_p)	= { "apll", "dpll", "gpll" };
 PNAME(mux_timer_p)		= { "xin24m", "pclk_peri_src" };
 
 PNAME(mux_pll_src_apll_dpll_gpll_usb480m_p)	= { "apll", "dpll", "gpll", "usb480m" };
+PNAME(mux_pll_src_dmyapll_dpll_gpll_xin24_p)   = { "dummy_apll", "dpll", "gpll", "xin24m" };
 
 PNAME(mux_mmc_src_p)	= { "apll", "dpll", "gpll", "xin24m" };
 PNAME(mux_i2s_pre_p)	= { "i2s_src", "i2s_frac", "ext_i2s", "xin12m" };
@@ -340,7 +341,7 @@ static struct rockchip_clk_branch rk3036_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(16), 8, 2, MFLAGS, 10, 5, DFLAGS,
 			RK2928_CLKGATE_CON(10), 4, GFLAGS),
 
-	COMPOSITE(SCLK_SFC, "sclk_sfc", mux_pll_src_apll_dpll_gpll_usb480m_p, 0,
+	COMPOSITE(SCLK_SFC, "sclk_sfc", mux_pll_src_dmyapll_dpll_gpll_xin24_p, 0,
 			RK2928_CLKSEL_CON(16), 0, 2, MFLAGS, 2, 5, DFLAGS,
 			RK2928_CLKGATE_CON(10), 5, GFLAGS),
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
