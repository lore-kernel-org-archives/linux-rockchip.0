Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5510EE81E17
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 16:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZiXCkAIEVnouNqi/pqqkMpaiZWBZixPZeq06ZMYWmHg=; b=s51RU7MsqWc9Bx
	2G8UpIQSmzYXc9rwXfUKDHqNd49XXN0e+V0eRu1+HxTc4KQZRRDcRO0GAap2T/rLeZ+654GsjZFRW
	LkgH3oQKFeGzikjsplQ26KLylOlYdS6O8ky4wuKQPu9F+XR0qamKHSbIw3I9ypvXmN2kzyyePB64v
	ZAC7nke4yu7Gf5nuqEMchezlI4mKuXZI2mtx2fDNwSnY4gg6+1nsQATPB5XJHMY8WSRjqv1iovuXL
	rdwvqiJ2OXwhCrwpyHwuJ7mfpU6fksarhbku6ecJ6RJLCdV3VtXYfAf2s1u2PjcQl4FYaHHKL2DhH
	4QuzOW/swLZPDoKKDgvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qonIT-0068HN-1L;
	Fri, 06 Oct 2023 16:03:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qonIP-0068GN-2b;
	Fri, 06 Oct 2023 16:03:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 67C9B61234;
	Fri,  6 Oct 2023 16:03:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB46AC433C7;
	Fri,  6 Oct 2023 16:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696608198;
	bh=R8EzuiOPzX++xJlYgn5dTs5bXl/SqLiLW9dDDvGhA+k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lASRVfTLCObH/UC45oJ698Wzi/++O6o5B25Bbx+OIWwDyhTqNzJeyOWo3Go2adD6C
	 /D2RkLc8BV9pwCFn8bVVuGlkXNOuSy2DXlAiIYtCLk+xAxNoh99OODMSGXC9s46hn1
	 nyAnrvhiSXI+kA9EOIGWAl07ZKEIQ97fW/hg8P8RGEq70O45rBHLue/leUSVSazoQw
	 PJjM6JQ9wYABQxKT0g/pZ7rXjhLIjy0Ql1eMy8LJLj5uyxTb9xaiZBkee+f+VWITZG
	 i/RYhcj4guXxbBh6ysHuwDo61WVw7/PjqGRM15Ci0ofFo2hbkSKvSvPtZCzavPca0I
	 LjuZB5hrDFlgw==
Message-ID: <f9a0cd9b-eba8-2abf-2839-2cf3f230c92c@kernel.org>
Date: Sat, 7 Oct 2023 01:03:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 01/26] PM / devfreq: rockchip-dfi: Make pmu regmap
 mandatory
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-2-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
Content-Language: en-US
In-Reply-To: <20230704093242.583575-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_090321_935500_C88D1E4C 
X-CRM114-Status: GOOD (  22.24  )
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

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> As a matter of fact the regmap_pmu already is mandatory because
> it is used unconditionally in the driver. Bail out gracefully in
> probe() rather than crashing later.
> 
> Fixes: b9d1262bca0af ("PM / devfreq: event: support rockchip dfi controller")
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>     - move to beginning of the series to make it easier to backport to stable
>     - Add a Fixes: tag
>     - add missing of_node_put()
> 
>  drivers/devfreq/event/rockchip-dfi.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 39ac069cabc75..74893c06aa087 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -193,14 +193,15 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(data->clk),
>  				     "Cannot get the clk pclk_ddr_mon\n");
>  
> -	/* try to find the optional reference to the pmu syscon */
>  	node = of_parse_phandle(np, "rockchip,pmu", 0);
> -	if (node) {
> -		data->regmap_pmu = syscon_node_to_regmap(node);
> -		of_node_put(node);
> -		if (IS_ERR(data->regmap_pmu))
> -			return PTR_ERR(data->regmap_pmu);
> -	}
> +	if (!node)
> +		return dev_err_probe(&pdev->dev, -ENODEV, "Can't find pmu_grf registers\n");
> +
> +	data->regmap_pmu = syscon_node_to_regmap(node);
> +	of_node_put(node);
> +	if (IS_ERR(data->regmap_pmu))
> +		return PTR_ERR(data->regmap_pmu);
> +
>  	data->dev = dev;
>  
>  	desc = devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);

Applied it. Thanks.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
