Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E941CD3427
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 08:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eOsyDM+T4w9NbYzytfWbJ7UzD3WjNjp5yg99Ocf7LDM=; b=JlHDn/lsl6e/9tJwUOL5nOICxZ
	STbOFA53OPQJhUYtzs7lc/z6Pr3D+sPkdXph6pxcJmhJok9fWs0qGKaBDzZL4APLSyK/NCM+TsgeJ
	xSLetiRUdIFQlCYuFEQqRfOXaIUKNN4tJgKfI3l3jNquD3ojcS4Ay2UnK5BW1xOJTfm/TJiUGxnlI
	xgfmDIs09e8hFU62hvkvqVZgX7JOHXQW6AziuZxj7yvbFwhofyOfqv8gTrTrIG2OaC63R3QLm1FWd
	3kDGJ3dXEy978rXFhAUoIFf4RO87r5guEWQPpAJlsBIiZlKdutzEKQSWkp/al7JpVAibdZN3DBAec
	wNLhuQIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOc5-0000000GqDL-3fqf;
	Tue, 03 Sep 2024 08:10:09 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slObh-0000000Gq7T-2J7s
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 08:09:47 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-533496017f8so6737309e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 01:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725350983; x=1725955783; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DEGxfQbmvQ7ocJLBpc0e2cOp9yeV28k7sarvQaoPLOE=;
        b=imkAD5yTEMjH6Bdv/XBkUMKWLjS60hU8MOUva3G+qud4Sz9AAzzxlGFMCv5bkgxWea
         4RwWbGcswudLOALDdGEVznp2q96YavNZRnLA2hT0jn/4aKJ4JTwR5+jnDdkdG91OPh9I
         +F3mLucYlK8vKzbYmTTHsJXBOP0N1yf9+0n8mSEGEF0vZyEGWGYPKBOLY52zOzG2MWhZ
         rbuENtcbMXEUARGsHKSXMz21FHnqFf9UOtZlaXu6LkULxhkT7eiXlnGvjRlRUdcDo1uX
         lIPXW/5DZYxOq3Rwx4H+z64GyJzsoKuq1pRq1fHwp24mdIK9FPyIpEKc/i2wRuKcj5Sj
         DDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725350983; x=1725955783;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DEGxfQbmvQ7ocJLBpc0e2cOp9yeV28k7sarvQaoPLOE=;
        b=n9fUjwQ2keEyro1s9Utzio6ihAXpcnjaH8nPxgBbmUx76vu6JE8f01BaoIDIQDe2YU
         czzacBs1BecgEDbdzhbNL5FKSi+ow/Rdrq+YAI8XJUxhj91YOcwqPfuRd6Ho8WhnEuNE
         GxJnF449I+mB5AN82/DCsO+n5LmNxbAFiZBzBZjciY24C8+nxShtG2/SjIwfxck5CR3l
         gIUyQ9U4GXHnFMny4O1reX17Jn2ETOvkZRDb82xzaIevgoNaTU/bRG7DUwmK87FgyI8x
         uBtbQNZ209jdgdEYCWr6uXsm+AGt9FR86UpkFmf1bZlQO3O9wucq80n0DtNDX4ixUwrl
         7Q0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWmLddvnx4S0gjRbhOl5uT3ft6ybf6iN/naUAuFV8csc28/NR7i1wCCLqArTI1EenLlAC5f1eU+8IqbuqAFhA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQ58XIrb41z6F6yjInj5xZshERhTlh4bTJFkQaj/B/zZO9+HEg
	XfCfFoBVkWxjILMpxYUpNQXg4EPc2Lwr02X8QHyPqaMLKpDnY/9CS9yJPAPS41s=
X-Google-Smtp-Source: AGHT+IFYKyym0YuUdTDq7DecK3lEk0OE1VtjFf04ZMXnGn6KhugpgO6dUgJJH2bhiMsBfP+cs+oWvQ==
X-Received: by 2002:a05:6512:3c81:b0:52e:a7a6:ed7f with SMTP id 2adb3069b0e04-53546bbdf6amr6618557e87.60.1725350983003;
        Tue, 03 Sep 2024 01:09:43 -0700 (PDT)
Received: from localhost (p5dc68f76.dip0.t-ipconnect.de. [93.198.143.118])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feb9f7sm649600166b.42.2024.09.03.01.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 01:09:42 -0700 (PDT)
Date: Tue, 3 Sep 2024 10:09:41 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Li Zetao <lizetao1@huawei.com>
Cc: florian.fainelli@broadcom.com, andrew@lunn.ch, olteanv@gmail.com, 
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org, heiko@sntech.de, 
	yisen.zhuang@huawei.com, salil.mehta@huawei.com, hauke@hauke-m.de, 
	alexandre.torgue@foss.st.com, joabreu@synopsys.com, mcoquelin.stm32@gmail.com, 
	wellslutw@gmail.com, radhey.shyam.pandey@amd.com, michal.simek@amd.com, 
	ajay.kathat@microchip.com, claudiu.beznea@tuxon.dev, kvalo@kernel.org, 
	jacky_chou@aspeedtech.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-wireless@vger.kernel.org
Subject: Re: [PATCH net-next 05/12] net: ftgmac100: Convert using
 devm_clk_get_enabled() in ftgmac100_setup_clk()
Message-ID: <nyfm5mxrrvfeu7s25qzjxbatvgnppq7exmca3sccmm6lz7nxan@xxsdgcrueoen>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
 <20240831021334.1907921-6-lizetao1@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20240831021334.1907921-6-lizetao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_010945_620177_140FC802 
X-CRM114-Status: GOOD (  28.55  )
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
Content-Type: multipart/mixed; boundary="===============4560415379200160588=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4560415379200160588==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pq2mmaq7abqtyo6k"
Content-Disposition: inline


--pq2mmaq7abqtyo6k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Sat, Aug 31, 2024 at 10:13:27AM +0800, Li Zetao wrote:
> Use devm_clk_get_enabled() instead of devm_clk_get() +
> clk_prepare_enable(), which can make the clk consistent with the device
> life cycle and reduce the risk of unreleased clk resources. Since the
> device framework has automatically released the clk resource, there is
> no need to execute clk_disable_unprepare(clk) on the error path, drop
> the cleanup_clk label, and the original error process can return directly.
>=20
> Signed-off-by: Li Zetao <lizetao1@huawei.com>
> ---
>  drivers/net/ethernet/faraday/ftgmac100.c | 27 ++++++------------------
>  1 file changed, 7 insertions(+), 20 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/faraday/ftgmac100.c b/drivers/net/ether=
net/faraday/ftgmac100.c
> index 4c546c3aef0f..eb57c822c5ac 100644
> --- a/drivers/net/ethernet/faraday/ftgmac100.c
> +++ b/drivers/net/ethernet/faraday/ftgmac100.c
> @@ -1752,13 +1752,10 @@ static int ftgmac100_setup_clk(struct ftgmac100 *=
priv)
>  	struct clk *clk;
>  	int rc;
> =20
> -	clk =3D devm_clk_get(priv->dev, NULL /* MACCLK */);
> +	clk =3D devm_clk_get_enabled(priv->dev, NULL /* MACCLK */);
>  	if (IS_ERR(clk))
>  		return PTR_ERR(clk);
>  	priv->clk =3D clk;
> -	rc =3D clk_prepare_enable(priv->clk);
> -	if (rc)
> -		return rc;
> =20
>  	/* Aspeed specifies a 100MHz clock is required for up to
>  	 * 1000Mbit link speeds. As NCSI is limited to 100Mbit, 25MHz
> @@ -1767,21 +1764,17 @@ static int ftgmac100_setup_clk(struct ftgmac100 *=
priv)
>  	rc =3D clk_set_rate(priv->clk, priv->use_ncsi ? FTGMAC_25MHZ :
>  			  FTGMAC_100MHZ);
>  	if (rc)
> -		goto cleanup_clk;
> +		return rc;
> =20
>  	/* RCLK is for RMII, typically used for NCSI. Optional because it's not
>  	 * necessary if it's the AST2400 MAC, or the MAC is configured for
>  	 * RGMII, or the controller is not an ASPEED-based controller.
>  	 */
> -	priv->rclk =3D devm_clk_get_optional(priv->dev, "RCLK");
> -	rc =3D clk_prepare_enable(priv->rclk);
> -	if (!rc)
> -		return 0;
> +	priv->rclk =3D devm_clk_get_optional_enabled(priv->dev, "RCLK");
> +	if (IS_ERR(priv->rclk))
> +		return PTR_ERR(priv->rclk);
> =20
> -cleanup_clk:
> -	clk_disable_unprepare(priv->clk);
> -
> -	return rc;
> +	return 0;

You're changing semantics here. Before your patch ftgmac100_setup_clk()
was left with priv->clk disabled; now you keep it enabled.

Further note that there is a bug here, because in ftgmac100_probe()
(i.e. the caller of ftgmac100_setup_clk())
clk_disable_unprepare(priv->clk) is called in the error path.
(I only looked quickly, so I might have missed a detail.)

So while your patch is an improvement for clock enable/disable
balancing, it might regress on power consumption.

>  }
> =20
>  static bool ftgmac100_has_child_node(struct device_node *np, const char =
*name)
> @@ -1996,16 +1989,13 @@ static int ftgmac100_probe(struct platform_device=
 *pdev)
>  	err =3D register_netdev(netdev);
>  	if (err) {
>  		dev_err(&pdev->dev, "Failed to register netdev\n");
> -		goto err_register_netdev;
> +		goto err_phy_connect;
>  	}
> =20
>  	netdev_info(netdev, "irq %d, mapped at %p\n", netdev->irq, priv->base);
> =20
>  	return 0;
> =20
> -err_register_netdev:
> -	clk_disable_unprepare(priv->rclk);
> -	clk_disable_unprepare(priv->clk);
>  err_phy_connect:
>  	ftgmac100_phy_disconnect(netdev);
>  err_ncsi_dev:
> @@ -2034,9 +2024,6 @@ static void ftgmac100_remove(struct platform_device=
 *pdev)
>  		ncsi_unregister_dev(priv->ndev);
>  	unregister_netdev(netdev);
> =20
> -	clk_disable_unprepare(priv->rclk);
> -	clk_disable_unprepare(priv->clk);
> -
>  	/* There's a small chance the reset task will have been re-queued,
>  	 * during stop, make sure it's gone before we free the structure.
>  	 */

Best regards
Uwe

--pq2mmaq7abqtyo6k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmbWxEIACgkQj4D7WH0S
/k6TJAf/W0v6Vj052O0cQyhSYINBBv+sQ3nGD2cYN9LDziAoSbDf3PwBT94aietu
gEoZvEGnvfzGCHrHLRszB/l6AIW7FxiMo0V+zz66sZS/9h/4hmtifwLWFnGieXDf
T4Pj1jlkN0LB30u8Weay3UEPbLD9qsDFiHNisjQ164GhANBLtMuI1HkNtmEz/96z
kd9zkwXSIbpKN64wLAfEctAZq6+UX74/6cdaEc6CtrdC8Ipv6cQqfjsedO7YfVRu
7IgXK4ashAN8mOti5j66/tm48sDXkxsfjNEAE5xp3ei6+HB61uLmcSKb1XMDXLnP
JDkq0K28JtDXWQyiLytwTQvbzx80mw==
=PiiM
-----END PGP SIGNATURE-----

--pq2mmaq7abqtyo6k--


--===============4560415379200160588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4560415379200160588==--

