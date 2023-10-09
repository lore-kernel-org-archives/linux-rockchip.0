Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A2EECD612F
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 20:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkYYqZE5kTRyKrcapsNmHvkha8+w9pyethc9FNFx43c=; b=q730PJBm/wT8kA
	QxzCge4XWW8A0ILYUi0A7sS730dcDVqld80GTetlRw2Ff43cEuFIWXGS4S97lm/ljLGmnqH0rSkua
	5XWsaWt+DpPmwvhB4DKA1IaqmzowhoozWfyGWz37tIPe0yS75D24ouusXBlZXlGgRN/EzL+5ZaG9+
	05ixV9//OqVanibxVXqwU2Qj9HRm6MzMkz3+Lalo2zCkfqWTD0itRS2JAfiydES5l7UpUTxxYMc03
	Ug2FAu2EB6gD7Sq09jt1jatHhLOlDvhtuPuZcc+aPJLXHG37iyV0AxvtPasSH8Zfl79msF5QijGUr
	ezRPQJJNtFjeTGI2qquw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpwg4-00BYsf-20;
	Mon, 09 Oct 2023 20:16:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpwg1-00BYs7-18;
	Mon, 09 Oct 2023 20:16:30 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpwfx-0004xo-Vr; Mon, 09 Oct 2023 22:16:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 11/20] pinctrl: rockchip: Convert to platform remove callback
 returning void
Date: Mon, 09 Oct 2023 22:16:25 +0200
Message-ID: <3523328.iIbC2pHGDl@phil>
In-Reply-To: <20231009083856.222030-12-u.kleine-koenig@pengutronix.de>
References: <20231009083856.222030-1-u.kleine-koenig@pengutronix.de>
 <20231009083856.222030-12-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_131629_395933_E7F293B1 
X-CRM114-Status: GOOD (  23.02  )
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

Am Montag, 9. Oktober 2023, 10:38:47 CEST schrieb Uwe Kleine-K=F6nig:
> The .remove() callback for a platform driver returns an int which makes
> many driver authors wrongly assume it's possible to do error handling by
> returning an error code. However the value returned is ignored (apart
> from emitting a warning) and this typically results in resource leaks.
> =

> To improve here there is a quest to make the remove callback return
> void. In the first step of this quest all drivers are converted to
> .remove_new(), which already returns void. Eventually after all drivers
> are converted, .remove_new() will be renamed to .remove().
> =

> Trivially convert this driver from always returning zero in the remove
> callback to the void returning variant.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl=
-rockchip.c
> index 45e416f68e74..3bedf36a0019 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -3429,7 +3429,7 @@ static int rockchip_pinctrl_probe(struct platform_d=
evice *pdev)
>  	return 0;
>  }
>  =

> -static int rockchip_pinctrl_remove(struct platform_device *pdev)
> +static void rockchip_pinctrl_remove(struct platform_device *pdev)
>  {
>  	struct rockchip_pinctrl *info =3D platform_get_drvdata(pdev);
>  	struct rockchip_pin_bank *bank;
> @@ -3450,8 +3450,6 @@ static int rockchip_pinctrl_remove(struct platform_=
device *pdev)
>  		}
>  		mutex_unlock(&bank->deferred_lock);
>  	}
> -
> -	return 0;
>  }
>  =

>  static struct rockchip_pin_bank px30_pin_banks[] =3D {
> @@ -3982,7 +3980,7 @@ static const struct of_device_id rockchip_pinctrl_d=
t_match[] =3D {
>  =

>  static struct platform_driver rockchip_pinctrl_driver =3D {
>  	.probe		=3D rockchip_pinctrl_probe,
> -	.remove		=3D rockchip_pinctrl_remove,
> +	.remove_new	=3D rockchip_pinctrl_remove,
>  	.driver =3D {
>  		.name	=3D "rockchip-pinctrl",
>  		.pm =3D &rockchip_pinctrl_dev_pm_ops,
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
