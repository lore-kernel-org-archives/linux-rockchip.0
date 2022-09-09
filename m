Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51556ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 17:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wo+TTckg1tfnR6ri36WUGu8M+aSWSq0yh56oE1iBNns=; b=Da4z8zJJtsLkKI
	bCHPaeUagWjN7zkSggFvOR+gir1yJQtVV6HguTPv/9ICO4scaAHT8px/Qh1OS90QKY/21cbSDpx4x
	5a9Kh7X+9zmipHjAculd3IyxBFxlCu8td5U2qVDUxEmaD/xj8KYw7fBO0wFN9Go5VvHy3xybocc2w
	XZbNSPNCc4JRpEKM3HBBZzb+g94TsisZ23hUI+09IAXKSt3JjUPIBr6QalciS3mKVqi9t5eg5a0md
	DUFhRodv7+X1R+8PAE1Jh9Cn4y778G7HGAPw3I5fEVdC1RC9HCjGbJgQarM+Si5S+sy4beqgwcK00
	PfwNMmMM3PeuI4ELMhig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWhnq-000k9W-BT; Fri, 09 Sep 2022 17:28:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWhng-000k7B-4M; Fri, 09 Sep 2022 17:28:21 +0000
Received: from [213.70.33.226] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWhnW-0006sv-JQ; Fri, 09 Sep 2022 19:28:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>, linux-i2c@vger.kernel.org, David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH v4 01/13] i2c: rk3x: Add rv1126 support
Date: Fri, 09 Sep 2022 19:28:09 +0200
Message-ID: <6158946.mvXUDI8C0e@phil>
In-Reply-To: <20220907160207.3845791-2-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai> <20220907160207.3845791-2-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_102820_206482_C2F4D4F6 
X-CRM114-Status: GOOD (  19.17  )
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

Hi Jagan,

it looks like this is missing Wolfram Sang, the i2c maintainer?

Am Mittwoch, 7. September 2022, 18:01:55 CEST schrieb Jagan Teki:
> Add i2c support for Rockchip RV1126 SoC.
> 
> Cc: linux-i2c@vger.kernel.org
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


Heiko

> ---
> Changes for v4:
> - new patch
> 
>  drivers/i2c/busses/i2c-rk3x.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index 2e98e7793bba..d1658ed76562 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -1165,6 +1165,11 @@ static const struct rk3x_i2c_soc_data rv1108_soc_data = {
>  	.calc_timings = rk3x_i2c_v1_calc_timings,
>  };
>  
> +static const struct rk3x_i2c_soc_data rv1126_soc_data = {
> +	.grf_offset = 0x118,
> +	.calc_timings = rk3x_i2c_v1_calc_timings,
> +};
> +
>  static const struct rk3x_i2c_soc_data rk3066_soc_data = {
>  	.grf_offset = 0x154,
>  	.calc_timings = rk3x_i2c_v0_calc_timings,
> @@ -1195,6 +1200,10 @@ static const struct of_device_id rk3x_i2c_match[] = {
>  		.compatible = "rockchip,rv1108-i2c",
>  		.data = &rv1108_soc_data
>  	},
> +	{
> +		.compatible = "rockchip,rv1126-i2c",
> +		.data = &rv1126_soc_data
> +	},
>  	{
>  		.compatible = "rockchip,rk3066-i2c",
>  		.data = &rk3066_soc_data
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
