Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B3ECA0ED3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 11:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGTb7Asiz/HiuJdPYvTY8sr3QijdmH1yrg8mDOQAB1A=; b=C0Mkn+mWj+lUTa
	L5x+8QaZJfPO3zbrn2W1y/pMN1uH1KfDEJ3y6L0geB8hKoKJ/lBOfF2/U4KIBTXvzrGsHwGYGb5Hi
	hPTg9/biZ6NCQ61fRGmCkW3asvK6syOnuReQSalBabT+XpeooH/Mxu4FbMqL96ZKDDoDJNns0xXCa
	MOZjgcOslj3bqvs3AwLGYEKhV8uw6ZzCVY2OI4LPqt1WLnEX9aysavXcA55lk0Ivtns4hoz8yiUA3
	+ctw5v6TSro6cvXOFGHbjfJsq03bKnHKUrn/x95GsTVj1fgseWbxuwWzW+rJTo+g7qLPdNueRDR/b
	tSBfv3SFWZr1pc8PgiVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl5Dg-0000000E72V-1GR5;
	Mon, 02 Sep 2024 11:27:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl5Cm-0000000E6u1-10jn;
	Mon, 02 Sep 2024 11:26:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=u/5qvrxdwCRzZHM1ri7I900pedp9vJAN87y6E4mli+w=; b=z1eQ+3/lXdHxKMnUOMYPDnCWeY
	uPUacVN6YOITajfc93YDwFOELs9dmWjPcX81psJyNLX4Mi2tOvkvSiS6+ipjbUfKwgv3IIcRLXHPI
	iSYGJQL/+p2Gj0hXMp/d+VxH54RO5acTmKRHzrcm+j5ARyNMxmGJ/QqVYGGP19ME7BVARKe7e1/2r
	bLJIEQbPkD9Uvk6/I9d2q7HSD+QObY5HQOLIWpDkt/PaUHxGu/Fb40bchmTXmULMpPEw2wtY03gnc
	nWZd0Q3KqgSBQ2ahPWegjA69kPJBAoPoKAHEJo5rfmi9hMOnS5FfOeUASlhx1jl0aIkXh7QREiVkc
	R5L1kytQ==;
Received: from i5e860d00.versanet.de ([94.134.13.0] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sl5Ci-0001p7-Kw; Mon, 02 Sep 2024 13:26:40 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] gpio: rockchip: fix OF node leak in probe()
Date: Mon, 02 Sep 2024 13:28:15 +0200
Message-ID: <2405471.3c9HiEOlIg@diego>
In-Reply-To: <20240826150832.65657-1-krzysztof.kozlowski@linaro.org>
References: <20240826150832.65657-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_042644_330688_6AF84468 
X-CRM114-Status: GOOD (  17.42  )
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

Am Montag, 26. August 2024, 17:08:32 CEST schrieb Krzysztof Kozlowski:
> Driver code is leaking OF node reference from of_get_parent() in
> probe().
> 
> Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/gpio/gpio-rockchip.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 0bd339813110..365ab947983c 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -713,6 +713,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  
>  	pctldev = of_pinctrl_get(pctlnp);
> +	of_node_put(pctlnp);
>  	if (!pctldev)
>  		return -EPROBE_DEFER;
>  
> 

Reviewed-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
