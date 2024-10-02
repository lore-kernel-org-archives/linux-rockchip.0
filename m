Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13D8DCF6D25
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 13:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqkoOvklWsHSUgRP2NTIOpfljqPT97SNvApa89/Uve8=; b=4khpv/5ZOAZUeq
	48R6sXJDa5GQNJAP++tDtKwg/32K7qENdhxfhSQpg+bK6NNf84yKnezkL/BunaP7qYnQgSL29OcVb
	gvktY3cUj4dh8Ea8HD4nqitfd57QIM8BpvsOzQj7Vfh540rkeHbfBfZ2McCLn8RgKd/lt2UFLR4/1
	elcWxcL45l3YL+LXgSnx+c9jlfim7N0x+6gHVelcFrNNg33Udu4j1T3L5Co/MDTgVzIhZx1jWeCML
	2uGf+irUqpVcxEDw+8ccYZCFXzy3aLnig/qja4iw6yiDKrdJo0oODLerTgFtk0I0E5U4oAFRK3jAu
	FLkc3cowAsIpCapjtmdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svzND-000000067TI-0NeO;
	Wed, 02 Oct 2024 13:26:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svzKr-000000066gq-41F2;
	Wed, 02 Oct 2024 13:24:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YwhUl73bkuUv9lIPuTqPqFzU/BHHZgYauhuf3U0cLiE=; b=QjmJs/ev6+lV5fyxC2U1rUl+Lu
	vZgfTnQrXwLNhogzfGbMo9kgT3US/QrlBqp+MAil9YHESKLtwUnVyURPQ2xn3jL3D7aXk/MAt5O1i
	1URNh3vC9rXLqkkjw0LCt1mTlcN3bIFObk0DI9YDUqDCZT+EQm6kX7EKWW2Vlrr1SjZWp29B1YZfW
	yPA2nS5QtrppsEGTXr0Rk3BYb0nRD9EJBfU91jrqdcPnUA1b10FAVx9w6K0E6nAFPLuIdNeQLSiDz
	Bvbcr84NqcWtnHTd5bTECO/pck0BONkRKoCX3nGVE6zBWRSNfUo3BxoMRBdh+rkUlDwEEpl2elVuH
	8vDt5SBg==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svzKp-0007VF-L4; Wed, 02 Oct 2024 15:24:07 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Quentin Schulz <foss+kernel@0leil.net>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH] pinctrl: rockchip: improve error message for incorrect
 rockchip,pins property
Date: Wed, 02 Oct 2024 15:24:06 +0200
Message-ID: <2014380.yKVeVyVuyW@diego>
In-Reply-To: <20241002-pinctrl-rockchip-error-modulo-4-v1-1-4addb4e5732a@cherry.de>
References: <20241002-pinctrl-rockchip-error-modulo-4-v1-1-4addb4e5732a@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_062410_130971_4A899821 
X-CRM114-Status: GOOD (  24.94  )
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

Am Mittwoch, 2. Oktober 2024, 14:03:03 CEST schrieb Quentin Schulz:
> From: Quentin Schulz <quentin.schulz@cherry.de>
> 
> If one improperly writes a rockchip,pins property, the pinctrl driver
> basically just states that one in the myriad of pinctrl nodes is
> improper but does not tell you which one.
> 
> Instead, let's print the full name of the Device Tree node that is
> improper as well as provide more context on what the expected content
> is.
> 
> Note that this should be rather unnecessary if one reads the output of
> the dtbs_check as it would be highlighted as an error.

Nevertheless, having a more helpful error message in the case this
happens is still nice to have

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 5c1bc4d5b662ed403ea5c8e57a8e1cad913a31a5..04e85a6037c93f415670b286f91fccada0d38fbf 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -3227,7 +3227,9 @@ static int rockchip_pinctrl_parse_groups(struct device_node *np,
>  	/* we do not check return since it's safe node passed down */
>  	size /= sizeof(*list);
>  	if (!size || size % 4)
> -		return dev_err_probe(dev, -EINVAL, "wrong pins number or pins and configs should be by 4\n");
> +		return dev_err_probe(dev, -EINVAL,
> +				     "%pOF: rockchip,pins: expected one or more of <bank pin mux CONFIG>, got %d args instead\n",
> +				     np, size);
>  
>  	grp->npins = size / 4;
>  
> 
> ---
> base-commit: e32cde8d2bd7d251a8f9b434143977ddf13dcec6
> change-id: 20241002-pinctrl-rockchip-error-modulo-4-8fb1affc063a
> 
> Best regards,
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
