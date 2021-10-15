Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08B09C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 21:27:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B362260EFF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 21:27:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B362260EFF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bx9ZVpou21vr7xS/shBAjm+6WaPNNhIr3ZbeSkBBNck=; b=UCgC90rO/o3xO1
	5A5HzODo5d6FhGLMfIFrEJptYAeUKuPTWhcoUs48ut6rWZHOw1tgPUy2ByWBemaGftJJOCFctLwEb
	Sbt6ELXnrOdnSyYxCvag4LtTIGeJ42lnaLjcKh3/DuCv5OtwZujZTV8VafDmyMIVEMLS+ynSV0lTh
	BnnSMTDcL2kuaZKHY+9MAxxCj5eZ+mMKonRm0DiJdkVdYbuPXonXamsK/ry33VwhVa2udMFKwSIMQ
	U6JmGwlwwcmGzXttafFetXUgagDqGIbYWosPOPjY0joRHmMR/JbkWx6qrzEOI3Zqb3QOgJ/MDVcpB
	Nyz1pUeV+xqU7u7FhehA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbUjY-008oag-Nd; Fri, 15 Oct 2021 21:27:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbUjM-008oYl-0V; Fri, 15 Oct 2021 21:27:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 04C9660F36;
 Fri, 15 Oct 2021 21:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634333227;
 bh=dMAxjYXYMkKaHmAh6bSmJDsaAoZcAPf9FXj9DHK0xGc=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=qevXXEhpqVyvZ/n/fO7P9cQEp8zXn69UkBOSGTXaFmLGGCNwJqhxfW9luairtbPo6
 L2jZg5RgwFC5du9ZEUkPvLOJI7MyoduVbFl/fe1zOShqWbj4NxLS/ZSXZ3xOSuvhGF
 jVBWw5OTOd6bLOzQletvvUQf4gwRl24C4Li0D24XE1AVMCKUEmP4heSEVA+3Ldb/eo
 DIkR25++Uf64xWP2empoxfkpqu5p84U1acVIayy89C0uH/AxFwwRk4lhgh6znkKjOJ
 wyIQ0uGfuVvDKvJcJvitJpJU90yGMne/EkN75oKILmqkxWdRQAucWBlk0kYKi3qBIe
 aaWmzcyeJfo3w==
MIME-Version: 1.0
In-Reply-To: <20211015120559.3515645-1-martin.blumenstingl@googlemail.com>
References: <163425193558.1688384.15520943968787313145@swboyd.mtv.corp.google.com>
 <20211015120559.3515645-1-martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH] clk: composite: Also consider .determine_rate for rate +
 mux composites
From: Stephen Boyd <sboyd@kernel.org>
Cc: heiko@sntech.de, knaerzche@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, martin.blumenstingl@googlemail.com
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 15 Oct 2021 14:27:05 -0700
Message-ID: <163433322577.1688384.5988903670868801272@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_142708_116071_76DBC940 
X-CRM114-Status: GOOD (  25.83  )
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

Quoting Martin Blumenstingl (2021-10-15 05:05:59)
> Commit 69a00fb3d69706 ("clk: divider: Implement and wire up
> .determine_rate by default") switches clk_divider_ops to implement
> .determine_rate by default. This breaks composite clocks with multiple
> parents because clk-composite.c does not use the special handling for
> mux + divider combinations anymore (that was restricted to rate clocks
> which only implement .round_rate, but not .determine_rate).
> 
> Alex reports:
>   This breaks lot of clocks for Rockchip which intensively uses
>   composites,  i.e. those clocks will always stay at the initial parent,
>   which in some cases  is the XTAL clock and I strongly guess it is the
>   same for other platforms,  which use composite clocks having more than
>   one parent (e.g. mediatek, ti ...)
> 
>   Example (RK3399)
>   clk_sdio is set (initialized) with XTAL (24 MHz) as parent in u-boot.
>   It will always stay at this parent, even if the mmc driver sets a rate
>   of  200 MHz (fails, as the nature of things), which should switch it
>   to   any of its possible parent PLLs defined in
>   mux_pll_src_cpll_gpll_npll_ppll_upll_24m_p (see clk-rk3399.c)  - which
>   never happens.
> 
> Restore the original behavior by changing the priority of the conditions
> inside clk-composite.c. Now the special rate + mux case (with rate_ops
> having a .round_rate - which is still the case for the default
> clk_divider_ops) is preferred over rate_ops which have .determine_rate
> defined (and not further considering the mux).
> 
> Fixes: 69a00fb3d69706 ("clk: divider: Implement and wire up .determine_rate by default")
> Reported-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
> Re-sending this as inline patch instead of attaching it.
> 
>  drivers/clk/clk-composite.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
> index 0506046a5f4b..510a9965633b 100644
> --- a/drivers/clk/clk-composite.c
> +++ b/drivers/clk/clk-composite.c
> @@ -58,11 +58,8 @@ static int clk_composite_determine_rate(struct clk_hw *hw,
>         long rate;
>         int i;
>  
> -       if (rate_hw && rate_ops && rate_ops->determine_rate) {
> -               __clk_hw_set_clk(rate_hw, hw);
> -               return rate_ops->determine_rate(rate_hw, req);
> -       } else if (rate_hw && rate_ops && rate_ops->round_rate &&
> -                  mux_hw && mux_ops && mux_ops->set_parent) {
> +       if (rate_hw && rate_ops && rate_ops->round_rate &&
> +           mux_hw && mux_ops && mux_ops->set_parent) {

What do we do if rate_ops and mux_ops only implement determine_rate? It
will fail right? We can't mesh them together in function. We should
probably fail to let the composite clk be registered if that happens.

>                 req->best_parent_hw = NULL;
>  
>                 if (clk_hw_get_flags(hw) & CLK_SET_RATE_NO_REPARENT) {
> @@ -107,6 +104,9 @@ static int clk_composite_determine_rate(struct clk_hw *hw,
>  
>                 req->rate = best_rate;
>                 return 0;
> +       } else if (rate_hw && rate_ops && rate_ops->determine_rate) {
> +               __clk_hw_set_clk(rate_hw, hw);
> +               return rate_ops->determine_rate(rate_hw, req);
>         } else if (mux_hw && mux_ops && mux_ops->determine_rate) {
>                 __clk_hw_set_clk(mux_hw, hw);
>                 return mux_ops->determine_rate(mux_hw, req);
> -- 
> 2.33.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
