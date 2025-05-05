Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FD1DC3ABB6
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 08:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IBVp4JkuzwnLP+lkQwVeyUsTauAtG9Cjp2JgN4C5kuQ=; b=1FiftZpnJ4C8ZZu8gBXtSh3jzy
	WROibxZkUuqDVY971kmaOU6D44BhPkndayI3SBBy14le8vW1Bx1b9JLUY7BsFN4eu1Jx3EVEIsUl8
	Xm7JADEGzP4wKCNLX9gjNdafYSj7LAMv3pl2BQudkZl6NxUcEzQgG+pU94p22HGwKXBk7jLykVIzw
	fD4hv/Aol9D9o3AOb6HY7BdD4fCWU19ke4O4sed9Y+k281r9OJAJN8lDLDKFORrMZ5P/9yr3uLP4u
	ByGLMlrbNHddCNnh8EGT7St3/bKZpf1vzRVM6pHna3nnRyWY5KJ6BMN/52Xk3YjtYUgCRsyHO/Wp5
	HA/ZxAxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqjy-00000006iZT-3ekE;
	Mon, 05 May 2025 07:59:54 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqil-00000006iPR-1Jqf
	for linux-rockchip@lists.infradead.org;
	Mon, 05 May 2025 07:58:40 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5e5e8274a74so6178558a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 May 2025 00:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746431917; x=1747036717; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c8qy8x2VM4E33zP+Ul3MQgzUGob/DpDmmEpO6CEf26s=;
        b=zQSJxRaz5L5T5JpvWe9VzZzX71rFC/Rl5SLbjq2eRx6ki8r4ulVnxn9YCbfgOrbx2I
         odAhzDIdR9fdVF4FUT1lfJCVETLxy03DFnVHMCUfe3og0/5Y+oxmkUR3U1286ui9iLAM
         NRxhd5RRkFpu1MskuDiFsKG27x8pnTqJGCzIcw8pn8x+aVquRXYpO8JTLrZhd5eoY4v2
         7m/dWVYJpFU4jk+mgalelO4ZmJ4iwzQU9+wN0sclMweV6w7Me0YVSadmgcYgoagiZwph
         7Xkvm/OPCNnk5fAUPYg3eSC/Stj2BTVzuYO6qnKvLmrN1gqF3PHf0qhzfuUU+iERfWYB
         HjKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746431917; x=1747036717;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c8qy8x2VM4E33zP+Ul3MQgzUGob/DpDmmEpO6CEf26s=;
        b=v0sGE5V2V7c4bYGtCpPZY8KvhfFWdl33CXdHPBG0GdQ/EEVaIojputlJYWz0j+wlDm
         1BkOtd5RM2r7bdbKoNS/NvkNqaOLluQ9AAZBUcsV+COiLXU92fQ0Y0y7+SNfyplYBdZm
         WytxBmybKS580Us+gxUUGzDPYx32yq31EKCYNi5EJRb17ji8Z8IBxW19pgXsrAfiSiIT
         qTC1cL2fxr5czbK3DNkxm+/NV00Bjlw6dl/EUjk877FIgz7ldJCfB+YBrsEuMzkQXpuU
         A5QmDgQnyZGr3jFIG+NGHp+oFnNPdbCZPAB22XEdLIPRVEbJ1XDdgeL4MDF9rAljbIei
         c6YQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJaYlLnnD0so1Avwett8KgjfbDW58qFMAGn1VTIgBGDQ02tmzd27iUE4mldjnntjM8JFwQV7wUNLZGTcKPSg==@lists.infradead.org
X-Gm-Message-State: AOJu0YymoHeSFmrS3zKyFG/+KVFTNA5LUOTdUsL4AHAyBz749bKmwwla
	bFBjHI6uxU66PJz/qStFjM95r4ttoHPR3EHhyxsjaRIGcXNchw7wycV53YLxvvI=
X-Gm-Gg: ASbGncu7EZw2RL3FbrxenPoy11Kffs3Yop78O32poaT3/60NR844cf9DKFN5+yT2Fe1
	ZSGHbXvr1okQKSrwwuuTo9nAUpr2qqvO/pSEf6jqwjFYHOv1oex9e1sNiYpy3r8GjQznCWu28NY
	OYugp7YE/jBWXDegF4aipa9wEUmzUhnbQ6LEgrSlHPwAXdRPw9PJ45kRP7CL2G4Gku/fPUQ3GOH
	x2xgCqQrSNXGHjEEx666kXsT+o3s1AJZINMjqoVyg3IoEnIwpCKcLrOvlRbh6Pd6dNhfyLlDKak
	LcfwogJNQyKdPj2forPYP5MhHALz4LSxzNWrOcg8hsmIufdVPR3IIC0Jmo2YDBIcxAee2ngD4CK
	rjuT5ODVBmQ==
X-Google-Smtp-Source: AGHT+IFZHl2dy4J+tovJB10LLReM42ovfZPhO257ZgiPrn9c3pUOWsbvfuKWtuAGkwm+2riUzR0qbw==
X-Received: by 2002:a05:6402:35c8:b0:5f8:e07c:7746 with SMTP id 4fb4d7f45d1cf-5fab04bfa83mr4760665a12.0.1746431917138;
        Mon, 05 May 2025 00:58:37 -0700 (PDT)
Received: from localhost (dynamic-176-003-040-035.176.3.pool.telefonica.de. [176.3.40.35])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-5fa77b8fbadsm5148712a12.50.2025.05.05.00.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 00:58:36 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 05 May 2025 09:58:23 +0200
Message-Id: <D9O2FWGG83V6.L6IQOPRGZL68@baylibre.com>
Cc: <linux-can@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <stable@vger.kernel.org>
Subject: Re: [PATCH 2/3] can: rockchip_canfd: m_can_class_unregister: fix
 order of unregistration calls
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Marc Kleine-Budde" <mkl@pengutronix.de>, "Manivannan Sadhasivam"
 <manivannan.sadhasivam@linaro.org>, "Thomas Kopp"
 <thomas.kopp@microchip.com>, "Vincent Mailhol"
 <mailhol.vincent@wanadoo.fr>, <kernel@pengutronix.de>, "Heiko Stuebner"
 <heiko@sntech.de>, "Chandrasekar Ramakrishnan" <rcsekar@samsung.com>
X-Mailer: aerc 0.20.1
References: <20250502-can-rx-offload-del-v1-0-59a9b131589d@pengutronix.de>
 <20250502-can-rx-offload-del-v1-2-59a9b131589d@pengutronix.de>
In-Reply-To: <20250502-can-rx-offload-del-v1-2-59a9b131589d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_005839_392861_EA097BC8 
X-CRM114-Status: GOOD (  21.00  )
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
Content-Type: multipart/mixed; boundary="===============8132325737301833086=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8132325737301833086==
Content-Type: multipart/signed;
 boundary=8941660c9a8c947b1652ed122688064937432aafddb64f2deaaf508477a9;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--8941660c9a8c947b1652ed122688064937432aafddb64f2deaaf508477a9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri May 2, 2025 at 4:13 PM CEST, Marc Kleine-Budde wrote:
> If a driver is removed, the driver framework invokes the driver's
> remove callback. A CAN driver's remove function calls
> unregister_candev(), which calls net_device_ops::ndo_stop further down
> in the call stack for interfaces which are in the "up" state.
>
> The removal of the module causes the a warning, as
                                   ^^^
Minor typo here.

Otherwise this looks good to me.

Reviewed-by: Markus Schneider-Pargmann

> can_rx_offload_del() deletes the NAPI, while it is still active,
> because the interface is still up.
>
> To fix the warning, first unregister the network interface, which
> calls net_device_ops::ndo_stop, which disables the NAPI, and then call
> can_rx_offload_del().
>
> Fixes: ff60bfbaf67f ("can: rockchip_canfd: add driver for Rockchip CAN-FD=
 controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/net/can/rockchip/rockchip_canfd-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net=
/can/rockchip/rockchip_canfd-core.c
> index 7107a37da36c..c3fb3176ce42 100644
> --- a/drivers/net/can/rockchip/rockchip_canfd-core.c
> +++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
> @@ -937,8 +937,8 @@ static void rkcanfd_remove(struct platform_device *pd=
ev)
>  	struct rkcanfd_priv *priv =3D platform_get_drvdata(pdev);
>  	struct net_device *ndev =3D priv->ndev;
> =20
> -	can_rx_offload_del(&priv->offload);
>  	rkcanfd_unregister(priv);
> +	can_rx_offload_del(&priv->offload);
>  	free_candev(ndev);
>  }
> =20


--8941660c9a8c947b1652ed122688064937432aafddb64f2deaaf508477a9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaBhvoREcbXNwQGJheWxp
YnJlLmNvbQAKCRCFwVZpkBVKU4zTAP0Yer+WBSFojQ6DiWBCD/1wd9ENW9dsLm7J
ZLeShRvCOAEAgIm8MmcoLnCEO11f0Kg+X9mgAKtZb7OpE86RubTnags=
=jybR
-----END PGP SIGNATURE-----

--8941660c9a8c947b1652ed122688064937432aafddb64f2deaaf508477a9--


--===============8132325737301833086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8132325737301833086==--

