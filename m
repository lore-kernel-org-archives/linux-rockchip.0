Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 111F8C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 11:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N0JySrGvFqYZzKoF84uon5Pm0yGyeazNW6laMayPIFY=; b=Kw8zCmSDowbCQ2cTbjO5JIj/92
	TFx7NexUuqWQVT92q0HP/fFxdy8wY2GX7cSTLsICXtuQDgDGJONEdiB79cDqpo/97rY+ja7Tvy0rn
	JOT/rutT5Bd7OtazV/hL3zs+/aAEg0vwDQpS/HKfTaqEJWTpu6SEKUnMVankPaAilozIwykT3G2No
	IYaiYP9c7LjJHxzWlaMTzActu4sYRQvDDpr8jj0qaUUksOuPkdX+YMyJF1ZlFyPTZpAKQLQWpl/iQ
	FDBVMQPXg01kQFfdCclOnr8ifCFJh4augGDwMc2Z9wY+5xhGfoumRoUw5gQAQeZG2gdXVi6bHV5ue
	N34dVb7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIU2f-006roO-W1; Fri, 11 Feb 2022 11:24:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIU2U-006rls-2v; Fri, 11 Feb 2022 11:24:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A6A66618C5;
 Fri, 11 Feb 2022 11:24:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 144C1C340E9;
 Fri, 11 Feb 2022 11:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644578671;
 bh=kgjamcWZJRnrpWcKV4c05OC6uDAyQHhZAjqdsl9DYiM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qDstbpDgj5EaBkwYW8RU14zD613j8a7qUPIXbUSYIGe3IFJTNkigkeTZpfE/VwakJ
 avs2nhUSR+xULtnq08pOjLaaDkQOKPaCj/S6prT54TqSPVG6QKwzVPvMOr+QNIqRh4
 lNtlUh94Jsz43zRr//3XjfBjAhQKr524MTjsbY4UYTJ4s3NDVnelgAwnOKzMgDIV8K
 ucdVy+9AVXhaj7Yklz8mncqrJFMzntZeksj9UOak0Jlm1NTYzBBZAQBnlPCcQxVucn
 3Dp2t0V51EL3I3m4SecrUM0/4FO5OdlOhDzuBzvMfVT8Q51nzIyJ8gbAEnSfiOSC2V
 UxtZnAUTtmuyw==
Date: Fri, 11 Feb 2022 11:24:26 +0000
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/6] spi: rockchip: Preset cs-high and clk polarity in
 setup progress
Message-ID: <YgZHalrdhhilxROt@sirena.org.uk>
References: <20220211034344.4130-1-jon.lin@rock-chips.com>
 <20220211034344.4130-2-jon.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20220211034344.4130-2-jon.lin@rock-chips.com>
X-Cookie: do {
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_032434_187548_13F5CF6E 
X-CRM114-Status: GOOD (  14.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8430686144524355361=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8430686144524355361==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lAF4Pc7uRcV0XAJA"
Content-Disposition: inline


--lAF4Pc7uRcV0XAJA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 11, 2022 at 11:43:38AM +0800, Jon Lin wrote:

> +static int rockchip_spi_setup(struct spi_device *spi)
> +{
> +	struct rockchip_spi *rs = spi_controller_get_devdata(spi->controller);
> +	u32 cr0;
> +
> +	pm_runtime_get_sync(rs->dev);
> +
> +	cr0 = readl_relaxed(rs->regs + ROCKCHIP_SPI_CTRLR0);
> +
> +	cr0 |= ((spi->mode & 0x3) << CR0_SCPH_OFFSET);
> +	if (spi->mode & SPI_CS_HIGH)
> +		cr0 |= BIT(spi->chip_select) << CR0_SOI_OFFSET;

What ensures that this read/modify/write doesn't race with a transfer
running on another client device in the case where the controller has
more than one device connected?  Similarly with the mode, though it's
not great to have devices with different modes connected to a single
controller.

--lAF4Pc7uRcV0XAJA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIGR2kACgkQJNaLcl1U
h9BfyQf/exE8+iCXNV1fW3KseTOTWzPwI1YKjOVKpLUK5KiyNUWaF/i9rC5TRKq6
DYL//DLorpWKPt16bQTJUITGV4n0Me0ps0mgpCSFUBcWNknN6ZhGRoopU+YtYsqq
JuUyZ4IXQqa+2FD8PTKZYNYYi1KwYpD/95NwyzhxtqjFYleINO64dcFpzz6kuOzG
2eluAh49aSNJmPS8z8/o/CI8rjMWkB+JioGo5yTTHoG41pK5mXsxVwBcxihTISkV
yK9eLoFZ/wTwC9sTQUnxMZvedvHQbIN1/ZUkeL3dRa7mkduqQwAHgOy+9FRu8Yu1
UEDeO1CtCL19tCK5ONwNoA2vEMN8kA==
=zClG
-----END PGP SIGNATURE-----

--lAF4Pc7uRcV0XAJA--


--===============8430686144524355361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8430686144524355361==--

