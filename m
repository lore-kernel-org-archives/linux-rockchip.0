Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0DA6C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Nov 2023 19:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raYbLkHKPzkYod/mpa5A8+GhU+mO9v9SbH5KwNT8Dy4=; b=P7s++fuMX4z8Sb
	EDSBnrP67sBNwKuPHwEtvnNZHogSyYOkk4b1Te2vG3BYx7ofo84810SMfzcsJjI2QlSU0bMG7NgIw
	eRuTF8HToDbPODmnfRaQdsBCaZjR78qBozuyeXWpMWCyhxSmcUTiNaxKmJiI/Rnu9I6QUg96dDA66
	a78OUb5/m5w1/C1MxDfeFPooqnoql+Tf3VrlG4j72Ajj9XIrdkrQnpkEApzU5rZqYbO7dEKgrK9hf
	e435g1AF0IeQvQvoxsJBvSpOJqRxMnadhBQZ1czodTjpda4OErrENB35C8tB84eVrbBQu2nvwMt3H
	0EPtOzsEoe+2/UDQjf1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7L2J-00EbQ1-2v;
	Sun, 26 Nov 2023 19:43:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7L2G-00EbLz-1K;
	Sun, 26 Nov 2023 19:43:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BF90A60DDA;
	Sun, 26 Nov 2023 19:43:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABF77C433C7;
	Sun, 26 Nov 2023 19:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701027796;
	bh=MfPWdhI66tGlSElbZFqrJ4lp9k4RWE3b0eJdiDiyLj8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UKeJOUwY97ffDjyVICQgaX2Wb8q6WilSKUPvkWm5tQ32pK8ViitXaPlaQDNR5XqTY
	 9AUAq8pm6KDmGj+9fSgOguHC1B11Tdh63ToL0rcDLq8mNRH4EGCuZT6a1oSdmeWHII
	 UH02ScCplG1irqAmbHxdsth04jTMO+3aqYl1CLbC7mqb/zWAZtlDtmyM8uZsgotvo8
	 hDz4hoVV8n3uWrdkVNB70iTq4VD9r7jPOA/4blIOdAcV8ZUG6k+bPvRPJqrmaqmmAR
	 vr0oOEN5PMsfaJVOmcqVjWW+/kPJLrG/DS6D7ii3lZBolWWuaEqqMs8IEqO9ZQ2j1B
	 DMd6HsND1+p5Q==
Date: Sun, 26 Nov 2023 20:43:11 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v2 3/9] i2c: rk3x: Adjust offset for i2c2 on rv1126
Message-ID: <20231126194311.jxkvz3kqgsbzfgek@zenone.zhora.eu>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-4-tim@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122122232.952696-4-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_114320_514222_CB813866 
X-CRM114-Status: GOOD (  20.78  )
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

Hi Tim,

On Wed, Nov 22, 2023 at 11:22:26PM +1100, Tim Lunn wrote:
> Rockchip RV1126 has special case mask bits for i2c2.
> 
> i2c2 wasnt previously enabled in rv1126.dtsi, adding DT node alone
> is not sufficient to enable i2c2. This patch fixes the i2c2 bus.

If I don't have sufficient information about the hardware this
description is completely meaningless to me.

> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
> 
> Changes in v2:
> - i2c: clarify commit message
> 
>  drivers/i2c/busses/i2c-rk3x.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index a044ca0c35a1..151927466d1d 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -1288,8 +1288,11 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
>  			return -EINVAL;
>  		}
>  
> -		/* 27+i: write mask, 11+i: value */
> -		value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
> +		if (i2c->soc_data == &rv1126_soc_data && bus_nr == 2)
> +			value = BIT(20) | BIT(4);

Any chance to put a comment here as it is in the other
assignment?

Are the two assignment mutually exclusive?

Heiko, any chance to take a look here?

Thanks,
Andi

> +		else
> +			/* 27+i: write mask, 11+i: value */
> +			value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
>  
>  		ret = regmap_write(grf, i2c->soc_data->grf_offset, value);
>  		if (ret != 0) {
> -- 
> 2.40.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
