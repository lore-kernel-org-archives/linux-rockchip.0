Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FE6BCD37BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5rX/R8bpf5AMmfdSAmPsi3/1PQYuhCkoOZUhgLFyw4=; b=a5d5THDTnWfCXl
	zaAVPF4Ss0TLyxmpppDXhpjKBpkpE4/5uBvm8Kv5Y6m2V2gO1HxT1IU07FLzwbVegeZjtzPILXPLa
	PuYTrJl0hHOWFMV0ZKW6Bp42pJ7rz6goacqj+IjhRxASEcMi6h+s6f6no+zzAKuVY7VEA5kiP2V1I
	NhTApqeuNeEgkp4CZ9sakf2cOLFeSm3n+lClxRfwCeQy55LLhDrI6fDhhmloiTCQCgmGY6ODjqV0B
	3RIa5j0OOU0GCls8P/bibryYZ3cndNm5L1wQk8xcBrPjTEbgzsgjgOlH+5UyAMoeZ5jyizoP/PY2k
	08beEPc6EFueAtp/CEJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMT9b-0000000E9F0-1hLs;
	Mon, 11 May 2026 16:06:47 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMT9U-0000000E9DY-1xzp
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 16:06:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778515599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WwCAGmH0U4Nhy4j6grH3+nSMTDhiVfCng6CUAeJVa7Q=;
	b=F0+1//NOn5BqXDVeiWvW0k/oynQBeRtkhTEUu9ZRT5RtqqXSqHJUSQfThsYejU2w2mGT/3
	zl+qfQ8/DZpdu3z7FnM5gQFNWKG1XiwhXLX20Lzi6M/F13xbtnMZJR0SdHEFlChcAWqVnH
	TCxDeqYqu4wUTM9k3z1aRCtAWA8ke3I=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-3-ZUWBzJajMjG9HiWQpm4N7Q-1; Mon, 11 May 2026 12:06:37 -0400
X-MC-Unique: ZUWBzJajMjG9HiWQpm4N7Q-1
X-Mimecast-MFC-AGG-ID: ZUWBzJajMjG9HiWQpm4N7Q_1778515597
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8b1f39c5827so54276376d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 11 May 2026 09:06:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778515597; x=1779120397;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WwCAGmH0U4Nhy4j6grH3+nSMTDhiVfCng6CUAeJVa7Q=;
        b=jKtQ2D8TeBazej3To7OAFZjuoSUNYAcin2IwR1ymPsUpptM/Rn233X4XVIuGipJB6a
         7JhO2X9V2PVkxkT4Ut1fbYs4xzNCIUPu12SZ9amdQHMYxsywozu36zGsKinJVJRAN5Ke
         YC+1R6y3NlbPHPt8LyXGKO1Pmq+Gdm6TA0aGZtvRIlL/Fp7hWDR1K2HLdf9VcIUAfchp
         AiUOMxkN6iD0jkIsRyr6HeyWytRxhAovxIUaPnBRHxMg9XzIUbt03RzcNT4C4OacUZuF
         +WG4kEVxqp6B7H5d6WrZn7oEGmxjZPgRupfQUtU7kddL7gCCv69ieT+3EFzVrEHiET3d
         iw5A==
X-Forwarded-Encrypted: i=1; AFNElJ/q+dQrH02G6gTrnyhbaFV6j/AMtBAbb0Li+G1e+zFGyEXs0WlJraiOnPUA4Mo5GZVlpcB3Xo+vkiL+3ZpaTw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/XhCks77gJV08iDJDdj+OFqwE49ZCQp9sV9ECfftGlh1wmS2Q
	dWWfUkFua1yJej7o/6dsMTQI3QQg4QXy18/J0D2Jt6wt+Qpvz+zv6oqpPa+nxScSOwbW1+2RnN/
	Q469x2u8x6gz0mfHYiRxf1rNw8gSro+E+RvU15axwtci1Jb/R7zitx7y3yOv9d/Sof+kjlNKEAQ
	==
X-Gm-Gg: Acq92OHs5OCM4NlaX8Pr/cLdQj8TGZmXnNfktFO2O2JFFPz5s+BFNnEQXiImDvDwN+L
	2Z/zyMiwoTgrpQRQjQJTNr8I3JhXUFzqhRAt8exrxWqDJ4upe2q5oTJOD77IBY1LKS9s5xZ/PDW
	VyL7l4G+5XGISsyrI7xjb7W6bNtnUmzhJl+ZjiZftqLCQWCezQ6MYVocvERtdJeQbYKIGZi3iu1
	baxncEI+69b3F6ezkuHuvfSGVpaqZnXCREYlfSbHyiY2m2aLtZbyLiScHM7WYM45exOaLw4DPGZ
	bICgOCf5bbUpLAeM35b0eSDRhjlG41SFRmMJL4jMbeZ039crvUthaNizmT08YsffVhb5CHcaaHC
	5byOe45GmjnHxZvo3YADJWqQm1Yq5RvfxJf6cQC84njl9TgvRh6NTnmDd
X-Received: by 2002:a05:6214:468f:b0:8ae:6d63:3066 with SMTP id 6a1803df08f44-8c1af2eec23mr162718436d6.38.1778515597146;
        Mon, 11 May 2026 09:06:37 -0700 (PDT)
X-Received: by 2002:a05:6214:468f:b0:8ae:6d63:3066 with SMTP id 6a1803df08f44-8c1af2eec23mr162717886d6.38.1778515596574;
        Mon, 11 May 2026 09:06:36 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8bf88247a3csm93252456d6.11.2026.05.11.09.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 09:06:35 -0700 (PDT)
Date: Mon, 11 May 2026 12:06:34 -0400
From: Brian Masney <bmasney@redhat.com>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] clk: rockchip: Use flexible array for clock table
Message-ID: <agH-ivEdw12_3OJz@redhat.com>
References: <20260511032252.361906-1-rosenp@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260511032252.361906-1-rosenp@gmail.com>
User-Agent: Mutt/2.3.1 (2026-03-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YRSOuSt0qPnZpUtZMToZIzWTcdkoMA2fyFVs8H08OYQ_1778515597
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_090640_611379_36B1A850 
X-CRM114-Status: GOOD (  20.52  )
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

Hi Rosen,

On Sun, May 10, 2026 at 08:22:52PM -0700, Rosen Penev wrote:
> Store the clock lookup table in the Rockchip clock provider
> allocation instead of allocating it separately.
> 
> This ties the table lifetime directly to the provider and removes a
> separate allocation failure path while preserving the clk_onecell_data
> lookup interface.
> 
> Assisted-by: Codex:GPT-5.5
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  drivers/clk/rockchip/clk.c | 17 ++++-------------
>  drivers/clk/rockchip/clk.h |  2 ++
>  2 files changed, 6 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index ee8c79b938d3..dbb4b6f33abb 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -359,26 +359,21 @@ static struct rockchip_clk_provider *rockchip_clk_init_base(
>  		unsigned long nr_clks, bool has_late_clocks)
>  {
>  	struct rockchip_clk_provider *ctx;
> -	struct clk **clk_table;
>  	struct clk *default_clk_val;
>  	int i;
>  
>  	default_clk_val = ERR_PTR(has_late_clocks ? -EPROBE_DEFER : -ENOENT);
>  
> -	ctx = kzalloc_obj(struct rockchip_clk_provider);
> +	ctx = kzalloc_flex(*ctx, clk_table, nr_clks);
>  	if (!ctx)
>  		return ERR_PTR(-ENOMEM);
>  
> -	clk_table = kzalloc_objs(struct clk *, nr_clks);
> -	if (!clk_table)
> -		goto err_free;
> -
>  	for (i = 0; i < nr_clks; ++i)
> -		clk_table[i] = default_clk_val;
> +		ctx->clk_table[i] = default_clk_val;
>  
> -	ctx->reg_base = base;
> -	ctx->clk_data.clks = clk_table;
>  	ctx->clk_data.clk_num = nr_clks;
> +	ctx->clk_data.clks = ctx->clk_table;

Where's the __counted_by? Also struct clk_onecell_data is embedded
inside struct rockchip_clk_provider, and I'm not sure offhand how
that'll work.

Brian


> +	ctx->reg_base = base;
>  	ctx->cru_node = np;
>  	spin_lock_init(&ctx->lock);
>  
> @@ -388,10 +383,6 @@ static struct rockchip_clk_provider *rockchip_clk_init_base(
>  						   "rockchip,grf");
>  
>  	return ctx;
> -
> -err_free:
> -	kfree(ctx);
> -	return ERR_PTR(-ENOMEM);
>  }
>  
>  struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
> diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
> index 9e3503e2ffc2..d4033bf750f5 100644
> --- a/drivers/clk/rockchip/clk.h
> +++ b/drivers/clk/rockchip/clk.h
> @@ -604,6 +604,7 @@ struct rockchip_aux_grf {
>   * @grf: regmap of the general-register-files syscon
>   * @aux_grf_table: hashtable of auxiliary GRF regmaps, indexed by grf_type
>   * @lock: maintains exclusion between callbacks for a given clock-provider.
> + * @clk_table: clock lookup table.
>   */
>  struct rockchip_clk_provider {
>  	void __iomem *reg_base;
> @@ -612,6 +613,7 @@ struct rockchip_clk_provider {
>  	struct regmap *grf;
>  	DECLARE_HASHTABLE(aux_grf_table, GRF_HASH_ORDER);
>  	spinlock_t lock;
> +	struct clk *clk_table[];
>  };
>  
>  struct rockchip_pll_rate_table {
> -- 
> 2.54.0
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
