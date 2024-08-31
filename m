Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6855FCA1018
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 10:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mbmgiCe+axKTYaE0wQtGuSSe6+FxFnXq//9CDsC5D0=; b=IHqygoISz2UI4g
	o+ovL6uycYTaWNqKd+g5cxBivMRl2FgEozQVip1fO2dL0ihqyvXPyhNDc5/7R8qPbIaDbRZjJXxXX
	5OgqkjUCJyQCIkfyjpBlpQ1Coe9ZkKHu0ozkI5zd3kAtwvIZCTl0s0jrtJG1U1Ps3MVynk4t8TWGF
	Pn5kbDaqzVESmamTbu/exZD9B7St6QD/ZP9DIUfQzw37IQkQ+DfU72GBRyng8r0jgPi27/ThK7vDs
	jyrGB2o4u5QiKKbSkLnn+pT4eKn16MXN0SUHQj4IKzEw3jT76Dzw4rqteSJkPBbF/eZIg7FTexD3o
	UUgkx01Lf3kj4DgosNyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skLdu-00000009A5v-20UT;
	Sat, 31 Aug 2024 10:47:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skLdr-00000009A5K-00xR
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Aug 2024 10:47:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=IM9d6UMpZ5gjX3hzI1jszjTrPvmLv8VkOEdEYbhUEYg=; b=dTrpm3qRvmfG9mvD434IzmZFCR
	NomrNe9Tz+wJCs1zU+zvcFj+QJjIn03C4BERDDQxtbrgwzZYSnXC+tsz6LdRkRxMcz2tsgPfWddgG
	ha2oABJPK0bbI8R5snHdi3YlYu/fZdAWTgXHjRzb6fjjghBGXUXCRwrNilBPcn5q2gbxdmtRfQk6P
	LuRdnNf0YHVmrnQZWwx54n4tFnJfkNHQ6F4zuw+mbiUgqoH1z+2eO7SrfqkUbc6AFvdIn16f6Yxas
	M96a07RJOg/+GP9pPPV0l7VdsGnJeM9jFtRpPPYtZu8dfOIEVYQEvJoAUutqSD0HXXDB3ZN6A1c2g
	dIBT2AQw==;
Received: from i53875be3.versanet.de ([83.135.91.227] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1skLdf-0002ra-GW; Sat, 31 Aug 2024 12:47:27 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, huangtao@rock-chips.com,
 andy.yan@rock-chips.com, Michal Tomek <mtdev79b@gmail.com>,
 Ilya K <me@0upti.me>, Chad LeClair <leclair@gmail.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v9 2/7] clk: rockchip: handle missing clocks with -EPROBE_DEFER
Date: Sat, 31 Aug 2024 12:48:54 +0200
Message-ID: <2405227.9fHWaBTJ5E@diego>
In-Reply-To: <20240325193609.237182-3-sebastian.reichel@collabora.com>
References: <20240325193609.237182-1-sebastian.reichel@collabora.com>
 <20240325193609.237182-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_034739_086112_B23A8ED2 
X-CRM114-Status: GOOD (  18.38  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 25. M=E4rz 2024, 20:33:33 CEST schrieb Sebastian Reichel:
> In the future some clocks will be registered using CLK_OF_DECLARE
> and some are registered later from the driver probe routine. Any
> clock handled by the probe routine should return -EPROBE_DEFER
> until that routine has been called.

So this changes the behaviour for misconfigured systems/devicetrees.
Before a driver would get the ENOENT if they requested a clock from an
empty lookup field, but now they will just defer forever.

Can we do some rockchip_clk_finalize() that runs after _all_ clocks are
registered (in the CLK_OF_DECLARE function for most drivers, at the end
of probe for i.e. rk3588) that takes all lookup entries that are still
EPROBE_DEFER and set it to ENOENT again please?


Thanks
Heiko


> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/clk/rockchip/clk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index 73d2cbdc716b..31b7cc243d82 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -376,7 +376,7 @@ struct rockchip_clk_provider *rockchip_clk_init(struc=
t device_node *np,
>  		goto err_free;
>  =

>  	for (i =3D 0; i < nr_clks; ++i)
> -		clk_table[i] =3D ERR_PTR(-ENOENT);
> +		clk_table[i] =3D ERR_PTR(-EPROBE_DEFER);
>  =

>  	ctx->reg_base =3D base;
>  	ctx->clk_data.clks =3D clk_table;
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
