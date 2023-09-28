Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0749E732C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 12:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KJZheSvhQtWBcR7JThJtcUi+mBOiN6bm45Rn0uVj1Ck=; b=i2s3Iqu+7cq2Pv4CVA/oXmQOFv
	44NvyU1BX7Vgq3YVw+A9RkkSZgcjd5AcVa3RtWUQmQekQZADEj5pL7AvfwSs0RnqQ7qdb4IaonDhj
	e7oYvUIqIz9D93Y4RqTSIEv7puMqRYHNbtlfQNNSB6FEOzvKO8cUhnaPu6OZRTWI4Uv1rS0Cy0ARW
	TuR+k+UPwf1Gy7XndEOrlNUxcWPnZu6/FnLr+Bzs7bkMQgbpW5RXom01wUgNmY/4wElTNYwi5I6yb
	+5dLZoRa9eN4EKOsV+9I9/9e+K5sGjoNd6jEoq3jZTG8aRcpHqEGqqFsNMQtbQDi1SCHqgDX/sEoT
	xBQrNHhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlqQF-003voy-1o;
	Thu, 28 Sep 2023 12:47:15 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlqQB-003vkt-2a
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 12:47:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 85DF5CE218A;
	Thu, 28 Sep 2023 12:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79CBFC433C7;
	Thu, 28 Sep 2023 12:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695905227;
	bh=ZojkhVyYvjOakBy/EstOH1IibvwQIUhtEQYi7Jm6Uxg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BLGAhnFBbY1GdJsJjoae7P5CsecMYfOFJpPo2TtoyI6Pzj0N4ZliVLS3+JUh/3niY
	 P0vKtoSbnIBZgrAIe9+SkItxISCEPiqPa9NveBevZZJAphkxxSxDJAPXJvs9ty+YxZ
	 xpZXM/hfLLlhe93p4ujvwFUBxv8yNcu3aWFTsj9zkDnIeazYLGvCBM07n+PipWgk3i
	 bmoI6pEfvL18yak+DGgEGTJADo4zHx+fHAmpXUvmzWRKjP/Vc3Glu8dUIAAt/rBeYz
	 ErK1BSsggZ904QBvtjU1fFl1Jwth9bC+NBbm7Lj8KbXjnfgFMA/VOf2vpbrQ9j+SVb
	 frrY94zQfXYxA==
Date: Thu, 28 Sep 2023 14:47:05 +0200
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>, alsa-devel@alsa-project.org,
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] ASoC: rockchip: Convert RK3288 HDMI to GPIO
 descriptors
Message-ID: <ZRV1yYs/xOXjlJ79@finisterre.sirena.org.uk>
References: <20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org>
 <20230928-descriptors-asoc-rockchip-v1-1-a142a42d4787@linaro.org>
 <9199562c-65ac-d8b1-20bd-429a32ede6c9@arm.com>
MIME-Version: 1.0
In-Reply-To: <9199562c-65ac-d8b1-20bd-429a32ede6c9@arm.com>
X-Cookie: Save energy:  Drive a smaller shell.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_054712_285840_A1ADBD3E 
X-CRM114-Status: GOOD (  14.61  )
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
Content-Type: multipart/mixed; boundary="===============4106454812758749129=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4106454812758749129==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6/w6Gx2e/XY3z/8g"
Content-Disposition: inline


--6/w6Gx2e/XY3z/8g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 28, 2023 at 01:34:56PM +0100, Robin Murphy wrote:
> On 27/09/2023 11:47 pm, Linus Walleij wrote:

> > - As the probe() code is very insistent on getting valid
> >    GPIOs out of the device before it will continue, there
> >    is no point to carry all the code handling the GPIOs as
> >    optional, drop all these checks.

> Isn't it allowing them to be optional as long as of_get_named_gpio() returns
> -ENODEV (which I guess may come out of the chip->of_xlate callback)? Or is
> it implied that that's never actually been able to happen?

Right, I *think* it's just trying to open code optional GPIO support
(possibly it predates the core helpers?).

--6/w6Gx2e/XY3z/8g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUVdcgACgkQJNaLcl1U
h9DbSgf/bknMA1yTgPBPmmYPOHEHbjEGSeEmCX+Jh1W3Rrr6qLA0okNqn7DqGgKo
9jtRrzKcEIEgFMq7vhkyUtCLieHFdK0XBufLw/Eob4dNcQ53OTxxJI7n/o7iDlv4
LcAUFF3qzHFEd0HwA99vTPEnpUoL9duZgWiiWBY/iZ8/F76QUG5ED4H/3b2PlbZb
krLL1pRMD3gm7ToaaYcZnaCfH7MW+/VIlGmftGJa0uaS+f+VnLo1wqHX6NZTjqM7
DsI2KVG6SkdZZcxPgs8SvMZHMJ6R/6zrdlfTbUjXNZnWkj9MwHSlF2bsJzg4AcD1
FjQR7HVyTsaezL54ftcdpuOWMMmCwg==
=OfPk
-----END PGP SIGNATURE-----

--6/w6Gx2e/XY3z/8g--


--===============4106454812758749129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4106454812758749129==--

