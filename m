Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C623C0218C
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 10:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=he4rMrU9T/nLIbcQFxptxbqoFw9xHwVwPXn0QZUyL2Y=; b=OZN+02nSbnptqd
	uXz8tQqXfftbV8hLxDDdWJSGSLMtgwu9cWRbbtkdfgBW03lM3DgiNw85k8OZZUOKJ8VoDuy/KGrSE
	kS/h/b6qFytja8qhBMbaR8uB+Ksfy/50Rlqqmp87o2TUMpqO9lk+qgXMGgpCm6TMa9DzonMLrU75M
	8xlpjOukH2ZLulINaLT08G4/lLkoDuvwjJQBcwlA5pNoSaBOXcP0WqRqiYKBEr+nzK6YkibejuHsi
	+qM3de12+6xyF35wlUnqLYPxl6OOh2rS/eGd3i8eBSBeWJo3SKcYHvgotn+vZwjtaObDYpGr6Bxx+
	fqD8xSRedhXqdanic3EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spPZw-00000000UaN-3aJG;
	Sat, 14 Sep 2024 10:00:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spPXC-00000000TvD-3Vc4;
	Sat, 14 Sep 2024 09:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=93cKUn+WXxWXdpPau06HwygofLes83prKM3wRZ1aJSA=; b=V/si4WmRcwGdDPY7xSTd9CPgiY
	b2zGH7yKIppATzRtzFjSP+bqwhygBumjZDykoWXinEwGBDrDaDD+tDTmmWyqdy1P/Z9eoy/l8uU5F
	y+S+So88DF7xxP2dhn1lWErZD3Z+RzSONVJOJKPlxzClscIHyggbf0JU3BOMhwCkI85l5k6oLn4yH
	tZEoVfHcUWfmxmonXSYaZQWTYWVSjtvN/2uJlR6TJ5mO1slUtK46Y4SYvibf0J6ErvGFr25LX/Vdg
	BMDOOC+C0Ho8j8brHKV6uI3WhPVEMxpl6D3aTAodiNouI61WkvNBL31mla6JEU2A1ElS5X873oRPu
	vXyO90tg==;
Received: from i53875af6.versanet.de ([83.135.90.246] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1spPX6-0002qE-48; Sat, 14 Sep 2024 11:57:36 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Yao Zi <ziyao@disroot.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH] clk: rockchip: fix finding of maximum clock ID
Date: Sat, 14 Sep 2024 11:57:35 +0200
Message-ID: <5815159.DvuYhMxLoT@diego>
In-Reply-To: <20240912133204.29089-2-ziyao@disroot.org>
References: <20240912133204.29089-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_025742_927050_E91B9B1C 
X-CRM114-Status: GOOD (  17.85  )
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

Am Donnerstag, 12. September 2024, 15:32:05 CEST schrieb Yao Zi:
> If an ID of a branch's child is greater than current maximum, we should
> set new maximum to the child's ID, instead of its parent's.
> 
> Fixes: 2dc66a5ab2c6 ("clk: rockchip: rk3588: fix CLK_NR_CLKS usage")
> Signed-off-by: Yao Zi <ziyao@disroot.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

@Stephen: can you put that on top of the other Rockchip changes for 6.12
please?

Thanks a lot
Heiko

> ---
>  drivers/clk/rockchip/clk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index 73d2cbdc716b..0972e9f87470 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -439,7 +439,7 @@ unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
>  		if (list->id > max)
>  			max = list->id;
>  		if (list->child && list->child->id > max)
> -			max = list->id;
> +			max = list->child->id;
>  	}
>  
>  	return max;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
