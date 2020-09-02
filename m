Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCB0C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:54:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71A0E207EA
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:54:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZnyV67Sq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 71A0E207EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m+uIiwH1me3lJk/eEeJU9uUbFSWchDDsk7bPNgpQ0vE=; b=ZnyV67SqVaVKpaqR9Ca3uqFky
	z5eMY6zBUVzrHKuK/nc1RU28PkC3iRHw+nP48clg4OWVm++BT9sDg4Hd/ujr/6ESEkpG98NU5L9m/
	BMGAXl3Xs/1dqUkpizCc0cpzQnCnjkyEKyx3EXaVUSPiR+pH/KTE0jLRfGaFF29bo+uDAINF8KhvE
	9aNb5sp2gleLp4JF3BQyisTLYewzmc+3BsICc2gGa3qnxdUPsxxKYM+mANgRdOdmuJUs5I1U15/3w
	OkKdHSuqlOO6tDWiz5kVUC3UY6z/qt6OszIgJweEt3KTJ7FkA4NiqtkX7om4qNY8iBU1CUYota7nZ
	EMlTBtkEw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDV5c-0001VA-Sk; Wed, 02 Sep 2020 15:54:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDV5a-0001Uh-As
 for linux-rockchip@lists.infradead.org; Wed, 02 Sep 2020 15:54:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B6B6101E;
 Wed,  2 Sep 2020 08:54:21 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 503B43F66F;
 Wed,  2 Sep 2020 08:54:19 -0700 (PDT)
Subject: Re: [PATCH v1 1/6] clk: rockchip: Use clk_hw_register_composite
 instead of clk_register_composite calls
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <20200902064847.18881-1-zhangqing@rock-chips.com>
 <20200902064847.18881-2-zhangqing@rock-chips.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <862531c8-9d10-ae3e-e12a-f1ba0ed66d61@arm.com>
Date: Wed, 2 Sep 2020 16:54:18 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200902064847.18881-2-zhangqing@rock-chips.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_115422_503122_77D2C567 
X-CRM114-Status: GOOD (  20.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-09-02 07:48, Elaine Zhang wrote:
> clk_hw_register_composite it's already exported.
> Preparation for compilation of rK common clock drivers into modules.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>   drivers/clk/rockchip/clk-half-divider.c | 12 +++++----
>   drivers/clk/rockchip/clk.c              | 35 ++++++++++++++-----------
>   2 files changed, 27 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-half-divider.c b/drivers/clk/rockchip/clk-half-divider.c
> index b333fc28c94b..35db0651ea1d 100644
> --- a/drivers/clk/rockchip/clk-half-divider.c
> +++ b/drivers/clk/rockchip/clk-half-divider.c
> @@ -166,6 +166,7 @@ struct clk *rockchip_clk_register_halfdiv(const char *name,
>   					  unsigned long flags,
>   					  spinlock_t *lock)
>   {
> +	struct clk_hw *hw;
>   	struct clk *clk;
>   	struct clk_mux *mux = NULL;
>   	struct clk_gate *gate = NULL;
> @@ -212,12 +213,13 @@ struct clk *rockchip_clk_register_halfdiv(const char *name,
>   		div_ops = &clk_half_divider_ops;
>   	}
>   
> -	clk = clk_register_composite(NULL, name, parent_names, num_parents,
> -				     mux ? &mux->hw : NULL, mux_ops,
> -				     div ? &div->hw : NULL, div_ops,
> -				     gate ? &gate->hw : NULL, gate_ops,
> -				     flags);
> +	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
> +				       mux ? &mux->hw : NULL, mux_ops,
> +				       div ? &div->hw : NULL, div_ops,
> +				       gate ? &gate->hw : NULL, gate_ops,
> +				       flags);
>   
> +	clk = hw->clk;
>   	return clk;

Nit: there's really no point keeping the "clk" variable here, you could 
simply "return hw->clk" if registration succeeds - note that you also 
need the rest of the logic from clk_register_composite() to check that 
"hw" isn't an error value.

>   err_div:
>   	kfree(gate);
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index 546e810c3560..2cfebfb61814 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -43,6 +43,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
>   		u8 gate_shift, u8 gate_flags, unsigned long flags,
>   		spinlock_t *lock)
>   {
> +	struct clk_hw *hw;
>   	struct clk *clk;
>   	struct clk_mux *mux = NULL;
>   	struct clk_gate *gate = NULL;
> @@ -100,12 +101,12 @@ static struct clk *rockchip_clk_register_branch(const char *name,
>   						: &clk_divider_ops;
>   	}
>   
> -	clk = clk_register_composite(NULL, name, parent_names, num_parents,
> -				     mux ? &mux->hw : NULL, mux_ops,
> -				     div ? &div->hw : NULL, div_ops,
> -				     gate ? &gate->hw : NULL, gate_ops,
> -				     flags);
> -
> +	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
> +				       mux ? &mux->hw : NULL, mux_ops,
> +				       div ? &div->hw : NULL, div_ops,
> +				       gate ? &gate->hw : NULL, gate_ops,
> +				       flags);
> +	clk = hw->clk;
>   	if (IS_ERR(clk)) {

Similar to above, this is totally broken - you need to rework all the 
error handling in terms of "hw" rather than "clk" - dereferencing an 
ERR_PTR value does not yield another ERR_PTR value, it yields a crash ;)

Robin.

>   		ret = PTR_ERR(clk);
>   		goto err_composite;
> @@ -214,6 +215,7 @@ static struct clk *rockchip_clk_register_frac_branch(
>   		unsigned long flags, struct rockchip_clk_branch *child,
>   		spinlock_t *lock)
>   {
> +	struct clk_hw *hw;
>   	struct rockchip_clk_frac *frac;
>   	struct clk *clk;
>   	struct clk_gate *gate = NULL;
> @@ -255,11 +257,12 @@ static struct clk *rockchip_clk_register_frac_branch(
>   	div->approximation = rockchip_fractional_approximation;
>   	div_ops = &clk_fractional_divider_ops;
>   
> -	clk = clk_register_composite(NULL, name, parent_names, num_parents,
> -				     NULL, NULL,
> -				     &div->hw, div_ops,
> -				     gate ? &gate->hw : NULL, gate_ops,
> -				     flags | CLK_SET_RATE_UNGATE);
> +	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
> +				       NULL, NULL,
> +				       &div->hw, div_ops,
> +				       gate ? &gate->hw : NULL, gate_ops,
> +				       flags | CLK_SET_RATE_UNGATE);
> +	clk = hw->clk;
>   	if (IS_ERR(clk)) {
>   		kfree(frac);
>   		return clk;
> @@ -320,6 +323,7 @@ static struct clk *rockchip_clk_register_factor_branch(const char *name,
>   		int gate_offset, u8 gate_shift, u8 gate_flags,
>   		unsigned long flags, spinlock_t *lock)
>   {
> +	struct clk_hw *hw;
>   	struct clk *clk;
>   	struct clk_gate *gate = NULL;
>   	struct clk_fixed_factor *fix = NULL;
> @@ -349,10 +353,11 @@ static struct clk *rockchip_clk_register_factor_branch(const char *name,
>   	fix->mult = mult;
>   	fix->div = div;
>   
> -	clk = clk_register_composite(NULL, name, parent_names, num_parents,
> -				     NULL, NULL,
> -				     &fix->hw, &clk_fixed_factor_ops,
> -				     &gate->hw, &clk_gate_ops, flags);
> +	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
> +				       NULL, NULL,
> +				       &fix->hw, &clk_fixed_factor_ops,
> +				       &gate->hw, &clk_gate_ops, flags);
> +	clk = hw->clk;
>   	if (IS_ERR(clk)) {
>   		kfree(fix);
>   		kfree(gate);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
