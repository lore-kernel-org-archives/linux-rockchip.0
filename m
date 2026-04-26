Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50BD8FF8850
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Apr 2026 21:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9hTu0m0mGKC3NuheskVZaF0U9SdrEdC9QVZtmqyvrrc=; b=J3vHsPsg119wUanrs0xxfrlzyb
	GyqEk9fNhLnMtIhm5EBaEyNQYFr5GoftVo4H1keo1EP+4+pvYtJE13lUMxLAbpU5BqZwXNvr3Q9R4
	ZqgOuGbY8YLrBKepJEKdJ1u3w1b6xPF3V0JMU3gXxRncflgDuyo/yh4FMIddX+EY8sD9Dei34dczS
	ILCcCa9EDIGM5BYtdGngs0/puoocCW2ve5AhLwR5XVlP15ipU34HrfpR0npoqV4N2ekeR9OztcY/u
	x84oKvYa+pGYVPs4giE1w2QHOIT6k6vQH66wssMqDw70gqzluM57RuyIeTEoRbmaCruo71W8BcB5r
	saciYnUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH6e3-0000000FqDt-02RF;
	Sun, 26 Apr 2026 21:04:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH6e0-0000000FqD3-45jX;
	Sun, 26 Apr 2026 21:04:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DBDC6432DE;
	Sun, 26 Apr 2026 21:03:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A020AC2BCAF;
	Sun, 26 Apr 2026 21:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777237439;
	bh=Wrf41ig11pDPmW5Xx8GjFOOc6XdqNtHGR6ps8dwVaJo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d7LX8tYZlfN/8NDFiacDb9uc7ExAMb9cH/drPCCn0/LkFnMgwx+pGnrBMd4TGhuMK
	 GpabIVGaJEG0CxRIavF70Hgc6HKx+ZRQ3VzCzYng7F0cPwErWeM2J++E7eUawABzn2
	 D/wDCICbCnnpYHolIPex5WILqeJU2CHgG08BZAdhdSdR3FdMv/qnF1ZFYI4nx7Moqh
	 gPts1BlVOhB1MZaLhnjnG459W4shVbM70eOPqDlFJHmsdnzKMvNRXGaa9gFHZbzykt
	 wwpYO1Q39wVARBJiKrBlTrrIi3W4njoUAWWwQNC3qzji8FkCx9jKZEiD5CLcw0SKqs
	 e9J+pGoh1aQVg==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 6735F1AC5822; Sun, 26 Apr 2026 22:03:57 +0100 (BST)
Date: Mon, 27 Apr 2026 06:03:57 +0900
From: Mark Brown <broonie@kernel.org>
To: john madieu <john.madieu@gmail.com>
Cc: heiko@sntech.de, jon.lin@rock-chips.com, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] spi: rockchip: Drop dead zero-check on fifo_len
Message-ID: <ae59vaZI41jM3L6Q@sirena.co.uk>
References: <20260425092936.2590132-1-john.madieu@gmail.com>
 <20260425092936.2590132-4-john.madieu@gmail.com>
 <ae53UlXrMIhARp7U@sirena.co.uk>
 <CAM9Qs9B8SSGXrR47toj9P+_EUHzrwKwHnu9askVhGxm9WFzQCQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM9Qs9B8SSGXrR47toj9P+_EUHzrwKwHnu9askVhGxm9WFzQCQ@mail.gmail.com>
X-Cookie: Victory uber allies!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_140401_036667_22333070 
X-CRM114-Status: GOOD (  12.47  )
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
Content-Type: multipart/mixed; boundary="===============6629937358287784590=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6629937358287784590==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KIaGwllxa/Orm8ak"
Content-Disposition: inline


--KIaGwllxa/Orm8ak
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 26, 2026 at 10:57:31PM +0200, john madieu wrote:
> Le dim. 26 avr. 2026 =E0 22:36, Mark Brown <broonie@kernel.org> a =E9crit=
 :

> > That looks like it's intended as a "you added a new hardware type and
> > forgot to fill in this field" type check intended to never fire in
> > production?

> Yes, that's a fair reading. I missed that angle.

> Should I drop this patch and resend the series (v2) with just 1/3 and 2/3=
 ?

No need to resend.

--KIaGwllxa/Orm8ak
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnufbcACgkQJNaLcl1U
h9CyIgf7BegAvKVp9/ZSHceh6ufR917hLKiQ8W6vR2blwvPGEDbo+L+ZQ3w7eTRH
lQuTj7gJ6Z77QIVGw3ZuLLWBHfyM0E3yP3KnDsHseHlaON/3PXA/7NiC6as5RXdM
phoJ3j/dmQZHvGzFwncq4+RWyDNYkBLcziixgsjMfzfPRn2kkanjlmBMSQlLpfkh
DwyKp4NPAE0eFwlsZUNqqOPJlCJI+u9yilys1z177dcvCCbF/40r9Sh7fD9Gunfb
Ko+PbIX3V/9t40ASbvwNQQkcoqgaEg1GoyS++YV/OAd3hHMkp03GrMXw9l4MbyO2
ngxNqYlZAiwISLuKILVJXJf2vCbxXw==
=aRJn
-----END PGP SIGNATURE-----

--KIaGwllxa/Orm8ak--


--===============6629937358287784590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6629937358287784590==--

