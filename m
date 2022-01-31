Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 871DBC4321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jan 2022 18:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Uei3KK+TWYgakX6cN8lIn/oEsp9KwfgqdOClBCQ7ds=; b=fhYd18g7pCNmLM
	8j3soI2G9BinwyieZI0wkgiIKK2E7XSsQ8MbZbaI8CeLnCUNnbIPKciQsi/oomeZx9iNwRQwe7Ik1
	HWxUcmpK4ZfyZw5SbDrTC+h3En9Q5xtvr6zlVLht6GvTJM5UGrZQGqnmB8hFfCs1TtIjv19gvSRkM
	FChAdz4QwesTWtI2MGmD6yOvZzb+pIRY70Wfbc2xZx5PwDcqTgggLA5K0OUTZlL44J7Ev4q9oxWSg
	m5UhG/DfH+JAcCuRzcxsl4IXaMLMtHstOZf0SKMJFI/dFwrFEefdAv4RFegz9lEY+gqioYG7fCMX9
	1xSEK+wjdtiISikHx4Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nEbLt-00AKFO-Ga; Mon, 31 Jan 2022 18:24:33 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEbLS-00AK60-Ak; Mon, 31 Jan 2022 18:24:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643653446; x=1675189446;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lQzhqiT47y+P20hA+SEuOwsKyR/X5oa3XuqnTl9IAME=;
 b=oDE2u/XoUgQoTOKbINMngpvBs0Pr7cDALwGihLOhD+nMRFJ5nwM3nMgq
 b3V3iyO1XfxWxeqsynKQrccXYN8Mbcl2KdGLUqUta9KYoKKjRSQH0pAhA
 MNOkLGNp5W3T11J7rKXb2KG6NkRYTBL+Gr2M3fplaKClalOPbAgexllP2
 /wGbr13zYzplJP0Lv0embJ1EwMfyWMExG+MkIXZR1xzIk87WOR7DTsphV
 np+AwTZaNVUfr5vaR6Xw9STLIAQOBJh+XWJxeUZ15r56cz+IlEG/I+1iq
 LU3PhaSZtrjPzsgvwng7FW6JP8Y0zF7TZD0jdanvhXWaB2odO0eNq9d53 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="245115055"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="245115055"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 10:24:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="630111551"
Received: from smile.fi.intel.com ([10.237.72.61])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 10:24:01 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nEbKM-00GzDb-HB; Mon, 31 Jan 2022 20:22:58 +0200
Date: Mon, 31 Jan 2022 20:22:58 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: quentin.schulz@theobroma-systems.com,
 Chris Morgan <macromorgan@hotmail.com>,
 Douglas Anderson <dianders@chromium.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Quentin Schulz <foss+kernel@0leil.net>
Subject: Re: [PATCH] clk: rockchip: re-add rational best approximation
 algorithm to the fractional divider
Message-ID: <YfgpAu2fjxMZrzxe@smile.fi.intel.com>
References: <20220131163224.708002-1-quentin.schulz@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220131163224.708002-1-quentin.schulz@theobroma-systems.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_102406_416492_F7B60BF7 
X-CRM114-Status: GOOD (  22.70  )
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

On Mon, Jan 31, 2022 at 05:32:24PM +0100, quentin.schulz@theobroma-systems.com wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Thanks for your report.

> In commit 4e7cf74fa3b2 ("clk: fractional-divider: Export approximation
> algorithm to the CCF users"), the code handling the rational best
> approximation algorithm was replaced by a call to the core
> clk_fractional_divider_general_approximation function which did the same
> thing back then.
> 
> However, in commit 82f53f9ee577 ("clk: fractional-divider: Introduce
> POWER_OF_TWO_PS flag"), this common code was made conditional on
> CLK_FRAC_DIVIDER_POWER_OF_TWO_PS flag which was not added back to the
> rockchip clock driver.
> 
> This broke the ltk050h3146w-a2 MIPI DSI display present on a PX30-based
> downstream board.
> 
> Let's add the flag to the fractional divider flags so that the original
> and intended behavior is brought back to the rockchip clock drivers.

I believe this was the result of the discussion about 1000 in DRM code.

I Cc'ed this to the people from 64ec4912c51a ("drm/rockchip: Update crtc
fixup to account for fractional clk change").

> Fixes: 82f53f9ee577 ("clk: fractional-divider: Introduce POWER_OF_TWO_PS flag")
> Cc: stable@vger.kernel.org
> Cc: Quentin Schulz <foss+kernel@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  drivers/clk/rockchip/clk.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index b7be7e11b0df..bb8a844309bf 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -180,6 +180,7 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
>  		unsigned long rate, unsigned long *parent_rate,
>  		unsigned long *m, unsigned long *n)
>  {
> +	struct clk_fractional_divider *fd = to_clk_fd(hw);
>  	unsigned long p_rate, p_parent_rate;
>  	struct clk_hw *p_parent;
>  
> @@ -190,6 +191,8 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
>  		*parent_rate = p_parent_rate;
>  	}
>  
> +	fd->flags |= CLK_FRAC_DIVIDER_POWER_OF_TWO_PS;
> +
>  	clk_fractional_divider_general_approximation(hw, rate, parent_rate, m, n);
>  }

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
