Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D60FC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 16:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGSMGjTNK3HHBYRthHnW3fqyfZ4/n/AO33gtzsx+kKY=; b=Ag3ydZItb34UQN
	SWIlLAXlxxHwBF70zD2qI8ewAUO6Zatv6ruBThMfTmSTU2oXvAC+tr/YHgf2f2OCUMOth219JmrMs
	wEwgmh9FRq7el8A4tGaWuBPH2kjAdC5sEi331suE0DuBMKgaNa9ZHqjsxWuh+ufBHoZ+MvRF0H5wc
	GjcqH0sL4baNlIfvLk+czEMMF0ROedvUeyM5a2Dr84efdTJnj2EDoWRK1D1ibk/H22nFz1poyShJT
	/CO/0rL6Fows2vtC9zEpIeboQ3y3mz+nxo5DbK0IhzcI6wHrZzXGkyinsOECKkNkNvBgmWOw21gFh
	qGCDMedppU4u8IoQsz4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sed5x-0000000ATft-1pTU;
	Thu, 15 Aug 2024 16:13:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sed5q-0000000ATeH-1ckl;
	Thu, 15 Aug 2024 16:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/+Gq5JqbMy1Ohz5FGdcJwbNyFqGLttXx8PyGPZaul8c=; b=y/mgYsQzJGaqPJP0WAZ2WUBVDL
	JquQwfK8Y8T21O0vy3IlMBc1Ib4g10MVY713tLJJ7asTjmdOJ1N6V2gO7e8qHmICD4C6AxGn2xOSH
	bd+IkJmC305GG9v8V5Y8Py/NUHSFNJrAcpNzJJCS6+RNl2kHTi+mJHRUUvbYCdRh9Uaesq4M4FsdM
	+x+HtclWRw9qtiuRrWCNH4QLNFpHoV8JIuuYjU2AbB6FkFBhWE91o8ZL/A/xkxqOKGUlaVocAtIgq
	jnYLRJXt0tcyyVeDWsKKJkZOFQfKA/SqQu8TPygXtS8r4eBafY1lzKv9CRq3wP1PUizesjbJLQCQh
	mn0xdG6g==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sed5l-00056j-5O; Thu, 15 Aug 2024 18:12:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: phy-rockchip-inno-usb2: Handle failed extcon allocation
 better
Date: Thu, 15 Aug 2024 18:12:48 +0200
Message-ID: <4927264.xgNZFEDtJV@diego>
In-Reply-To: <5fa7796d71e2f46344e972bc98a54539f55b6109.1723551599.git.dsimic@manjaro.org>
References: <5fa7796d71e2f46344e972bc98a54539f55b6109.1723551599.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_091254_480916_AD95B3D4 
X-CRM114-Status: GOOD (  16.92  )
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

Am Dienstag, 13. August 2024, 20:38:17 CEST schrieb Dragan Simic:
> Return the actual error code upon failure to allocate extcon device, instead
> of hardcoding -ENOMEM.  While there, produce an appropriate error message.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 4f71373ae6e1..d33418a1e7a8 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -434,8 +434,10 @@ static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
>  		edev = devm_extcon_dev_allocate(rphy->dev,
>  						rockchip_usb2phy_extcon_cable);
>  
> -		if (IS_ERR(edev))
> -			return -ENOMEM;
> +		if (IS_ERR(edev)) {
> +			dev_err(rphy->dev, "failed to allocate extcon device\n");
> +			return PTR_ERR(edev);
> +		}

maybe even use dev_err_probe?

rockchip_usb2phy_extcon_register() gets called from the probe function,
so even using it is also sematically correct ;-) .


Heiko

>  
>  		ret = devm_extcon_dev_register(rphy->dev, edev);
>  		if (ret) {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
