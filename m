Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A65FCCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j94Y0gXPUDq7lmnrrv4fLUX35GCRdbasTFEk5gqt1L4=; b=cCgSenxwyInKRM
	l+/UvNeh9QFbScOpduTrHzUUKBshQDMWIY34VjxWi4FR4IkGQlLdhutIsFAt4BhsjVjApdMkaqrf7
	bYTbTpYnnFgDFwqr+RHv5POik0YNIi7Le7+6CNOVh/Nu+sYTmq3BXbjEvsBXcHa/4Buy34K6O9LX0
	mI4OzNgOqRT5nh4o1TMlM5DWSXbi9y10xwGqwBvWn8qTTZb1nf2OeHZsS3i5696HZU1tSobSjdC19
	L5y2AFcRsLqaNqsfm5HKLAOI1aZ1Fac8TDiUXwSfypfp3l/Yuzo+Jms+Wui0n9TDdP0JJ5DI9yDPY
	tfzRctR2L3ZLBTCzCgnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkSY-00000007oEB-1EFu;
	Thu, 26 Sep 2024 09:06:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stkMg-00000007n0s-4Akd;
	Thu, 26 Sep 2024 09:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Ub1Y8m82tTvGVFmDgJcqPN+qV5RmpDIawEahuLWehTE=; b=1g3477Zy2dgHxKLcQr/xqn6BQ0
	6dOScrwm1tsNJa/iGqfwY8XN20f76oNDwl8JetA1lAAL3/EBFfvtXHkRaBUg9Ts20ygy7uM9NsYy1
	sNzJBKjEF4RJibW1x2egx7nZbqnbEJ0LBCq+cTftm65gHJhv9KZvAfw5530DWUrSyhWvwl4CLVamk
	Ma3J/dnfP993j43GHnykZMdHMBaK32jK4RvAtMfDeTUXuA5NvpYyOO9j4CwgOFajjrZ8ywsvjY7D8
	I2pe7Q48Tf1k4KHp/GHzzJRH6UPkovSFVXGKHQu+Fa6dDG65i3tV69U38Ufd+o26swa99OOmSGg7b
	WR9v4PCw==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1stkMd-0001t8-SA; Thu, 26 Sep 2024 11:00:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: broonie@kernel.org, oss@helene.moe, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] spi: rockchip: Use dev_err_probe() in the probe path
Date: Thu, 26 Sep 2024 11:00:42 +0200
Message-ID: <6673004.tM3a2QDmDi@phil>
In-Reply-To: <8bc905ff3c47ed458d8c65a031822ba6b9df8a07.1727337732.git.dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <8bc905ff3c47ed458d8c65a031822ba6b9df8a07.1727337732.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_020047_059852_EEEE6D9D 
X-CRM114-Status: GOOD (  18.95  )
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

Am Donnerstag, 26. September 2024, 10:38:15 CEST schrieb Dragan Simic:
> Use function dev_err_probe() in the probe path instead of dev_err() where
> appropriate, to make the code a bit more uniform and compact, and to impr=
ove
> error handling for the TX and RX DMA channel requests.
> =

> Previously, deferred requests for the TX and RX DMA channels produced no
> debug messages, and the final error messages didn't include the error cod=
es,
> which are all highly useful when debugging permanently failed DMA channel
> requests, such as when the required drivers aren't enabled.
> =

> Suggested-by: H=E9lene Vulquin <oss@helene.moe>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  drivers/spi/spi-rockchip.c | 25 ++++++++++++-------------
>  1 file changed, 12 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 28879fed03f8..6b5c67a357bb 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -853,22 +853,21 @@ static int rockchip_spi_probe(struct platform_devic=
e *pdev)
>  =

>  	ctlr->dma_tx =3D dma_request_chan(rs->dev, "tx");
>  	if (IS_ERR(ctlr->dma_tx)) {
> -		/* Check tx to see if we need defer probing driver */
> -		if (PTR_ERR(ctlr->dma_tx) =3D=3D -EPROBE_DEFER) {
> -			ret =3D -EPROBE_DEFER;
> +		/* Check tx to see if we need to defer driver probing */
> +		ret =3D dev_err_probe(rs->dev, PTR_ERR(ctlr->dma_tx),
> +				    "Failed to request TX DMA channel\n");

you're upgrading here from a warning to an error log level.
As it seems the controller may actually provide some level of functionality
even without dma, is this approriate?

Same for rx below.

Heiko

> +		if (ret =3D=3D -EPROBE_DEFER)
>  			goto err_disable_pm_runtime;
> -		}
> -		dev_warn(rs->dev, "Failed to request TX DMA channel\n");
>  		ctlr->dma_tx =3D NULL;
>  	}
>  =

>  	ctlr->dma_rx =3D dma_request_chan(rs->dev, "rx");
>  	if (IS_ERR(ctlr->dma_rx)) {
> -		if (PTR_ERR(ctlr->dma_rx) =3D=3D -EPROBE_DEFER) {
> -			ret =3D -EPROBE_DEFER;
> +		/* Check rx to see if we need to defer driver probing */
> +		ret =3D dev_err_probe(rs->dev, PTR_ERR(ctlr->dma_rx),
> +				    "Failed to request RX DMA channel\n");
> +		if (ret =3D=3D -EPROBE_DEFER)
>  			goto err_free_dma_tx;
> -		}
> -		dev_warn(rs->dev, "Failed to request RX DMA channel\n");
>  		ctlr->dma_rx =3D NULL;
>  	}
>  =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
