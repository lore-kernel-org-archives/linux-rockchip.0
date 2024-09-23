Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8743ACF9C69
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Sep 2024 12:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=adiS/hv0wIebZtCoBwfaFi+HCLIwn+6Rpqq+VXY5IBM=; b=IT+fErTKtENNOeR7OiLi/KdPmw
	BiNY/xNXdwgrKpn5BKMr3KEfIDyt+dZFFwCON0i2Kwo+366ZgpqY/7HOuFFVszZWhqGdTfGWbrpgP
	461vNtkablBM2sB/mnQF/dyD6ntKZeCpGKGjIGHYjVBSzgk8oLsqsg7VRjbzeX2xyFiwRoop1NLbx
	L5rJxnsHObt210DmbZioVy0KAGWr0kNC3KJdVpKzA5YJXkMr6ZaxyHtTCGhUjx8HWuiX4zHR9nMp0
	2AKvUFGw/Wn90SvhHT4+in9bTGlPmIIkclag9Axig2s54TMu8DNYkyuCb/5EZkSqjIZvjqxowxi4N
	Z+eZYAZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssic1-0000000HDcb-2GYl;
	Mon, 23 Sep 2024 12:56:21 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssiat-0000000HDWw-0siq;
	Mon, 23 Sep 2024 12:55:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B6AADA41B70;
	Mon, 23 Sep 2024 12:55:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07FD8C4CEC4;
	Mon, 23 Sep 2024 12:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727096109;
	bh=stxE/HbW5j3jdKRXUgQjsB2pi5emT4JWJ9kgNd1Prw0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W757MVxQWWduu37LuiMGTYCMw2XVeL7ITdzX8D8dKHvolKAAXj3L/kCxVKUX30syk
	 S7GublWXnFrAunfPt5Y3BV7Q5IflP5vA0CRedPKsZhIHHV+Qtrg5OyIEt1bFSdU3Lv
	 cH6NlDRgmhepdSizKVFmZg/SQFswa8/0J0wX2u5rZiJcxj3pnfzA2+NqjzvxCkrDPv
	 4F+bwoVh6Am3BD301DahLQJftbUPXhqhsPdEbVAHfS9Oie1fhusIZa35+BNPF2F76u
	 XfoDlcp0I8qHaYtiXt7M42i3Lk6Ub3wVitwUIOwd/vRs4pIB/l2TCEi+EY0KGfKmpA
	 omAHbd5OjnNMg==
Date: Mon, 23 Sep 2024 14:55:05 +0200
From: Mark Brown <broonie@kernel.org>
To: Jinjie Ruan <ruanjinjie@huawei.com>
Cc: heiko@sntech.de, kernel@esmil.dk, jon.lin@rock-chips.com,
	linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] spi: rockchip: Fix excessive check for get_fifo_len()
Message-ID: <ZvFlKdSG7GgGPFnJ@finisterre.sirena.org.uk>
References: <20240923115516.3563029-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20240923115516.3563029-1-ruanjinjie@huawei.com>
X-Cookie: Editing is a rewording activity.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_055511_341852_30C86144 
X-CRM114-Status: GOOD (  14.52  )
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
Content-Type: multipart/mixed; boundary="===============0571069320290252589=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0571069320290252589==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aA8hsKxhlaHzP4GS"
Content-Disposition: inline


--aA8hsKxhlaHzP4GS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 23, 2024 at 07:55:16PM +0800, Jinjie Ruan wrote:
> Since commit 13a96935e6f6 ("spi: rockchip: Support 64-location deep
> FIFOs"), get_fifo_len() return 64 or 32, never return 0, so remove
> the excessive check in rockchip_spi_probe().
>=20
> Fixes: 13a96935e6f6 ("spi: rockchip: Support 64-location deep FIFOs")

This is clearly not a bug fix, it's at most a code cleanup but...

> @@ -819,11 +819,6 @@ static int rockchip_spi_probe(struct platform_device=
 *pdev)
>  	}
> =20
>  	rs->fifo_len =3D get_fifo_len(rs);
> -	if (!rs->fifo_len) {
> -		dev_err(&pdev->dev, "Failed to get fifo length\n");
> -		ret =3D -EINVAL;
> -		goto err_put_ctlr;
> -	}

=2E..given that the probe() path isn't exactly a hot path is there really
any benefit from this, if someone does add the option of returning 0
it'll silently break.

--aA8hsKxhlaHzP4GS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmbxZSgACgkQJNaLcl1U
h9DDkgf/WcHFCAGsIGgzc1AiyDQCp1vChe7c/eZuaQrPEok5JmjaxqBWw5DmjxZe
vVicx3ZKweVxzci6vd91hdnibwz7+dyIZChULC2Y1BG7O2USkaJod1rOdfcqcF0W
6j2TA9+AERRq3gdza62TVBou/44fUwZA7o8zFugX35nZUA4P3rySk7GYXvvFl4C/
LlVbGNLnXzVF99Ahf8CbWyNelznABWv2BUSMCkM7vDClgPLMaqwCv/j6yRbuw5ZT
u3eSTCJjLoW/+YPrY7il9kzgi7G2ZJpgBb8m3PDhfoMxeEQI1P+PrCNgR6dCnBfQ
lY72oLNXPcCM0ijvN1MX+BYzAZ92pQ==
=A88S
-----END PGP SIGNATURE-----

--aA8hsKxhlaHzP4GS--


--===============0571069320290252589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0571069320290252589==--

