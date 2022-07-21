Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D107C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jul 2022 15:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tctXCy7zt+k3mzOomL1iCHSNWc0f1C2GrpgUdQvd3LM=; b=W1u8WqPGaveFG0IAcLy2R6wjOm
	CMTAV19afZoXl1Yf+P6jmlgFxYROUpWxTUeNlCT78oPLwodNyRIHo98C3QNKhZo6Zu45Y4Xb6evZF
	c/KfffJvFYjHw1iXQ7eDGYzLZWQNSngEFGx1f+zBxU17GZDsH6ypIfCa0BKkc+3pWHmTO32f6d91q
	SiK+RlaJDrYTPTozrIQha2saiyXLiSd+UGEWO7VAZb/sY1uwbCeLVAwr/X9QvYTN8zem+ugikqn+d
	dnAoSwBx6GIbyai/+ieMstnAf1pseCoS+LeNBZlhCVnTgIGKsZ9M9h2o1bFFL4b+B0uG6ch6gJeht
	qdyLspXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEXgc-008clx-0v; Thu, 21 Jul 2022 15:01:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEXg7-008c46-A1; Thu, 21 Jul 2022 15:01:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0079760A51;
	Thu, 21 Jul 2022 15:01:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99C38C3411E;
	Thu, 21 Jul 2022 15:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658415685;
	bh=r+lgIJOmDQrLmbvNFgMmdz6shCg1+ntIlt/QGiQZSnA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=knURc9prSyAJJcu+Prn04cRhlzAz9FyZ+WMkURoudpl+P82/twHVzj5qflD5M7WlH
	 OgpAxKUagJh9RC85XUkAgWiFzB0UydlZ2tQKqt+bF7SzaOzKVrk9jc7XYH1Qr7mfWS
	 QgJfF0MAw927/Och684dYc6sb2YTtMFyvtTK6gfMFQ+wcISjjNkirizd0o3j5jx2zY
	 h08xLgJTqjLcSpc+Lwhm4kb5puNz4D8SXv+gjtRUpVfiu/0Irgp6gR/FlMv51gg8Ye
	 J6EC1dlXIqpcEPRiFirXItSBli4fCeo8oMaFuJ07VsyxCYpzRbdLDnEUsCz4dsQ8JM
	 1KqWTXjRf3Iag==
Date: Thu, 21 Jul 2022 16:01:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Christian =?iso-8859-1?Q?Kohlsch=FCtter?= <christian@kohlschutter.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, wens@kernel.org,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Markus Reichl <m.reichl@fivetechno.de>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Linux MMC List <linux-mmc@vger.kernel.org>
Subject: Re: [PATCH] regulator: core: Resolve supply name earlier to prevent
 double-init
Message-ID: <YtlqPbbBceBmekcV@sirena.org.uk>
References: <3B4AE882-0C28-41E3-9466-F8E301567627@kohlschutter.com>
MIME-Version: 1.0
In-Reply-To: <3B4AE882-0C28-41E3-9466-F8E301567627@kohlschutter.com>
X-Cookie: Exercise caution in your daily affairs.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_080127_461304_0A46AD31 
X-CRM114-Status: GOOD (  17.19  )
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
Content-Type: multipart/mixed; boundary="===============1035965044779549295=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1035965044779549295==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i0TkaW/gVp5KwYgS"
Content-Disposition: inline


--i0TkaW/gVp5KwYgS
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15, 2022 at 10:32:16PM +0200, Christian Kohlsch=FCtter wrote:
> Previously, an unresolved regulator supply reference upon calling
> regulator_register on an always-on or boot-on regulator caused
> set_machine_constraints to be called twice.

One small thing below but otherwise I think this should be fine, however
since we're very near the merge window I'd rather hold off any apply at
-rc1, just to give more time for things to get tested.

> -	/* set regulator constraints */
> -	if (init_data)
> -		rdev->constraints =3D kmemdup(&init_data->constraints,
> -					    sizeof(*rdev->constraints),
> -					    GFP_KERNEL);
> -	else
> -		rdev->constraints =3D kzalloc(sizeof(*rdev->constraints),
> -					    GFP_KERNEL);
>  	if (!rdev->constraints) {
>  		ret =3D -ENOMEM;
>  		goto wash;
>  	}

The check for allocation failure should get pulled earlier in the
function along with the allocation, no sense in doing any of the other
work if we're going to fail.

--i0TkaW/gVp5KwYgS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLZajwACgkQJNaLcl1U
h9D6GAf/aKtJVjiaVbiy92RgxmpXa+sxM+nEmIzXqPyiJSiUDTcobnmI2+w7WN2Z
6h/rewa+Ujgm0CSwmO4fiQLkeGhZZOeYsbkavj2pGeVm33xMfkaST4bvjgywvT55
5vh93NWHdo59avBtRZegPSjdR8QWQOXLl7bP/6JEKEu91LGfolis1uR7AnDXwsDB
c53Z1b96y/2VQ62VLavQ1+0E51afB0J3M318ISAky1CEIep8cQ9KyIIwRAQhJgW4
V1KB/WmbRW6yaDA1Oy29n5gWJQIJBh/bUMHN35axsdfcZSaQoXjz4opKGpiEhefm
zQpzGfqBoLU6I9sbfDFAKaGIeNiy8A==
=b4kq
-----END PGP SIGNATURE-----

--i0TkaW/gVp5KwYgS--


--===============1035965044779549295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1035965044779549295==--

