Return-Path: <SRS0=0lmb=MT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47A6C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jul 2021 01:08:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7861960F59
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jul 2021 01:08:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7861960F59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbLYT3Q+vPZqnWfxAbnjQn2I5zpwAb5SEwZDzJjgy6g=; b=PQw5kLG7JT01TS
	gaDc6g4E7UHrD1UeitAUW7hg4YkAkgUuMadCgVGJDVwRb5V1y7nE26haUQ+bUmBDkUUBYRaCA/7nq
	4QXW5b3DICB867CcCReabyGwi4A41v0i4NI6zMauWWDgVfCXirvKWCcWygAKBtCHyIYyI/qetxH9B
	7cV8y1AToBujVbDz65Z3ZVp4nqAOwVbv1kd+/BkQeiXD3cK/i9p5uK5bvmtbz8VuHVb1T5epTyYsI
	foZkGXgoBhBCDGlEIa70kvgZkcWuddclK5/W5R5bdIF2tm0EyeWugqrh9dEYEj7B2orU5jE4SBJB7
	sKqqsvoM20v2Z1XT7Klw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8Ba4-00Ckzd-9l; Tue, 27 Jul 2021 01:08:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8BZr-00CkyA-NJ; Tue, 27 Jul 2021 01:08:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6355160F58;
 Tue, 27 Jul 2021 01:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627348091;
 bh=IjhHO8zX3K7iiI4nhm+dbjPp5WA79s/ELxEb/UmhUNs=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=CcyvlzpFBMw7G6HOuEmAC/NpOMQ5iTWRkbVCvIIhqv3msOIwtzMcaumlP+vJoP7q9
 7N3OXZCa3xUrBuTxIal3LyDnQMVJRvMyDUGbA2nvZQy2cyr8pf6zLBYIkkwmc9gbfI
 z+p8Ksnt/QBW0kyI5mSbWo7wxmVIH5GHUCU8Ek3F+kB/+PwCu79UmnIl9HDGvcd5xc
 JJ14dlQV2BKcRap90bo8KzaCHmorvR+2pUipZYpqZGtB5z5mpAOjZLB3YcVzK0ti4t
 tUq0EuKTs1XQcqyLsipMGIKqTaDMgOLKGssJp1ffwuABlenzmezDnalgmW3D1X0jXd
 kMKTL2HviHt0A==
MIME-Version: 1.0
In-Reply-To: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
References: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
Subject: Re: [PATCH] clk: rk3308: make ddrphy4x clock critical
From: Stephen Boyd <sboyd@kernel.org>
Cc: t123yh.xyz@gmail.com, Yunhao Tian <t123yh@outlook.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Yunhao Tian <t123yh@outlook.com>, heiko@sntech.de
Date: Mon, 26 Jul 2021 18:08:10 -0700
Message-ID: <162734809017.2368309.7901135942001140161@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_180811_818986_645E9119 
X-CRM114-Status: GOOD (  16.76  )
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

Quoting Yunhao Tian (2021-07-21 05:48:16)
> Currently, no driver support for DDR memory controller (DMC) is present,
> as a result, no driver is explicitly consuming the ddrphy clock. This means
> that VPLL1 (parent of ddr clock) will be shutdown if we enable
> and then disable any child clock of VPLL1 (e.g. SCLK_I2S0_8CH_TX).
> If VPLL1 is disabled, the whole system will freeze, because the DDR
> controller will lose its clock. So, it's necessary to prevent VPLL1 from
> shutting down, by marking the ddrphy4x CLK_IS_CRITICAL.
> 
> This bug was discovered when I was porting rockchip_i2s_tdm driver to
> mainline kernel from Rockchip 4.4 kernel. I guess that other Rockchip
> SoCs without DMC driver may need the same patch. If this applies to
> other devices, please let us know.
> 
> Signed-off-by: Yunhao Tian <t123yh@outlook.com>
> ---
>  drivers/clk/rockchip/clk-rk3308.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3308.c b/drivers/clk/rockchip/clk-rk3308.c
> index 2c3bd0c749f2..6be077166330 100644
> --- a/drivers/clk/rockchip/clk-rk3308.c
> +++ b/drivers/clk/rockchip/clk-rk3308.c
> @@ -564,7 +564,7 @@ static struct rockchip_clk_branch rk3308_clk_branches[] __initdata = {
>         COMPOSITE(SCLK_DDRCLK, "clk_ddrphy4x_src", mux_dpll_vpll0_vpll1_p, CLK_IGNORE_UNUSED,
>                         RK3308_CLKSEL_CON(1), 6, 2, MFLAGS, 0, 3, DFLAGS,
>                         RK3308_CLKGATE_CON(0), 10, GFLAGS),
> -       GATE(0, "clk_ddrphy4x", "clk_ddrphy4x_src", CLK_IGNORE_UNUSED,
> +       GATE(0, "clk_ddrphy4x", "clk_ddrphy4x_src", CLK_IGNORE_UNUSED | CLK_IS_CRITICAL,

Is it not enabled by default?

>                         RK3308_CLKGATE_CON(0), 11, GFLAGS),
>         FACTOR_GATE(0, "clk_ddr_stdby_div4", "clk_ddrphy4x", CLK_IGNORE_UNUSED, 1, 4,
>                         RK3308_CLKGATE_CON(0), 13, GFLAGS),

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
