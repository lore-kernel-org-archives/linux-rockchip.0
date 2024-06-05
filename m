Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ED35C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQ5eojvg/Jcs0que4ZEDXEkL9IJqy09gEtdoBfwuDmQ=; b=PiW4UfVYF7RApS
	T+y/tpBB0KLk+YQ2+QOr8jXyuDsuKEtkUo0HP1HWYvNdnw+I4VcW1Wv4TWzNWItA3w/rVbOOz+dbv
	o/WWxaKPDeyAUWkXMbHht79yeOTPYoAwZxcB/gXDoRLNrdt3PaJAWVCymJvVVFb2CC2Ty0DFqxD95
	DMlP6Hu1nCRDyJKStDBQYsgGtO2t5MZu1RcvP27ZAg8VSPyCBPnvB6Nu6c4F7nPLgAU/DR16kRZ/h
	njRy2AI7bv3X0q1+mFhGGE+y8CM9JX0JSujG5WwYBzYQpaQMMVMNJ0DEBZQthZCTPQRFKeMFcSO24
	rXkt/bBuAYhYOUiNLfnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExnS-00000007YQT-05bU;
	Wed, 05 Jun 2024 21:03:50 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExnM-00000007YPF-4Acj;
	Wed, 05 Jun 2024 21:03:46 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-421392b8156so3561925e9.3;
        Wed, 05 Jun 2024 14:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717621416; x=1718226216; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wxkQybmLe5sPp9htKJDI8bCr/w4I0AK0t4E3wZxsO9s=;
        b=MQgE3U/oZPN2ZSBncFRLsqZ9V+VV/jYa5SooLhQ3p3uziETPiJEDIT21LyLyB6yoyp
         H/virLqmT+jsxF372hwhtx96jxudApr5nzq6eEv5+8LlBQF448lMFMcFWjvA2S8WHxyf
         PsTyWwOCrsWYGUCdi/g9GVCuRYBqEi1beZgcFSQNQfU9iLS0guCXJzeHWTRNEF90Z3a1
         jr8TDpHbASQb33wQQ8+eak+Hvi1BWcabcU3DBup6jGhIA1bYLGNMK56fYN523Cy/rKFk
         bAu6F9OKZ/YE12ara1XmnNyo95sB55OETjK55uAhk0WrURLCBEsFwTjeePPIHjPuDNb1
         hIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717621416; x=1718226216;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wxkQybmLe5sPp9htKJDI8bCr/w4I0AK0t4E3wZxsO9s=;
        b=OISgnTaXEwzN6CCiAb3OXm0lWbIF3QLs12kJPGZXX8lU172yZwmutrRzkDzaNe364j
         uJU/ymvUymjdZAPljT2OwPn7/avW8WLYDum1PMjao4FBD86yw/twSygOuP9ozZjvXKz0
         RBcqCZgrbGG+YSdi4bypmTB5EMC2ulIhZfvTJJ7zzxRu4x6wxW83sgTLB1oX18rngwat
         P96prz3yM+A4EOGjdA/eT5knO/A8cr7hPTbx2PqK/WxzIygMU0Zyi19wCI1yv0Of41Nx
         ob7EFX1eN+hi7PYytsI5y1ynh1iqyV1ufBkJDt07MDGfKiwJbWMuIaCROasv0tM4+PKe
         djRw==
X-Forwarded-Encrypted: i=1; AJvYcCXpbtWjs+O5pEFUzj1HTIiMjCzD/3APX1XzZ8ngaZFMwkPjKqHMriKeoisSAOktKAQPzYEoz9aqJy9Zsds1OrpyFccV364AGArq+s2JD67IJJf5ZV5DCq1EgsD984GigXKlZOyJqpOODQGE8eEAtK3vspRS55u6jL0=
X-Gm-Message-State: AOJu0YwDPlmvQfwA540nNuvIYNtSvmLciGsnH2sZVDTfnRLDsG8MGWv0
	PuYKc61NcgTK+4Vbo+ii9RGnN3YlcodEXojhbhhoHUndQBf1M+I=
X-Google-Smtp-Source: AGHT+IEQ5Bvq496WQdI6NCNSKRLJfGNuhXeduOQUjAa/vxuh86+qvv8BXGs75zaVxP88iejgFvqqSw==
X-Received: by 2002:a05:600c:3550:b0:41b:fc3a:f1ef with SMTP id 5b1f17b1804b1-42156339013mr28592605e9.33.1717621416317;
        Wed, 05 Jun 2024 14:03:36 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:5211:58fe:dfef:c48c? ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215810242fsm33579345e9.12.2024.06.05.14.03.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 14:03:35 -0700 (PDT)
Message-ID: <9da22443-b5c3-4fbc-8cb0-d6bebab55da4@gmail.com>
Date: Wed, 5 Jun 2024 23:03:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] clk: rockchip: rk3128: Drop CLK_NR_CLKS usage
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20240605205209.232005-1-knaerzche@gmail.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_140345_072863_DF71B024 
X-CRM114-Status: GOOD (  18.43  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,
sorry for the noise - not sure what went wrong here.
Just resend v2:
https://lore.kernel.org/all/20240605210049.232284-1-knaerzche@gmail.com/

Alex
Am 05.06.24 um 22:51 schrieb Alex Bee:
> Similar to
> commit 2dc66a5ab2c6 ("clk: rockchip: rk3588: fix CLK_NR_CLKS usage")
> this drops CLK_NR_CLKS usage from the clock driver and instead uses the
> rockchip_clk_find_max_clk_id helper which was introduced for that purpose.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>   drivers/clk/rockchip/clk-rk3128.c | 20 ++++++++++++++++----
>   1 file changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
> index d076b7971f33..40e0e4556d59 100644
> --- a/drivers/clk/rockchip/clk-rk3128.c
> +++ b/drivers/clk/rockchip/clk-rk3128.c
> @@ -569,18 +569,22 @@ static const char *const rk3128_critical_clocks[] __initconst = {
>   	"sclk_timer5",
>   };
>   
> -static struct rockchip_clk_provider *__init rk3128_common_clk_init(struct device_node *np)
> +static struct rockchip_clk_provider *__init rk3128_common_clk_init(struct device_node *np,
> +								   unsigned long soc_nr_clks)
>   {
>   	struct rockchip_clk_provider *ctx;
> +	unsigned long common_nr_clks;
>   	void __iomem *reg_base;
>   
> +	common_nr_clks = rockchip_clk_find_max_clk_id(common_clk_branches,
> +						      ARRAY_SIZE(common_clk_branches)) + 1;
>   	reg_base = of_iomap(np, 0);
>   	if (!reg_base) {
>   		pr_err("%s: could not map cru region\n", __func__);
>   		return ERR_PTR(-ENOMEM);
>   	}
>   
> -	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
> +	ctx = rockchip_clk_init(np, reg_base, max(common_nr_clks, soc_nr_clks));
>   	if (IS_ERR(ctx)) {
>   		pr_err("%s: rockchip clk init failed\n", __func__);
>   		iounmap(reg_base);
> @@ -609,8 +613,12 @@ static struct rockchip_clk_provider *__init rk3128_common_clk_init(struct device
>   static void __init rk3126_clk_init(struct device_node *np)
>   {
>   	struct rockchip_clk_provider *ctx;
> +	unsigned long soc_nr_clks;
>   
> -	ctx = rk3128_common_clk_init(np);
> +	soc_nr_clks = rockchip_clk_find_max_clk_id(rk3126_clk_branches,
> +						   ARRAY_SIZE(rk3126_clk_branches)) + 1;
> +
> +	ctx = rk3128_common_clk_init(np, soc_nr_clks);
>   	if (IS_ERR(ctx))
>   		return;
>   
> @@ -627,8 +635,12 @@ CLK_OF_DECLARE(rk3126_cru, "rockchip,rk3126-cru", rk3126_clk_init);
>   static void __init rk3128_clk_init(struct device_node *np)
>   {
>   	struct rockchip_clk_provider *ctx;
> +	unsigned long soc_nr_clks;
> +
> +	soc_nr_clks = rockchip_clk_find_max_clk_id(rk3128_clk_branches,
> +						   ARRAY_SIZE(rk3128_clk_branches)) + 1;
>   
> -	ctx = rk3128_common_clk_init(np);
> +	ctx = rk3128_common_clk_init(np, soc_nr_clks);
>   	if (IS_ERR(ctx))
>   		return;
>   


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
