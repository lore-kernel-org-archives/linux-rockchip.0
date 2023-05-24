Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5821C7EE2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 20:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kMk4DHk9n2SItNUMcN1VlHzRyyY1gal0rq2CjdeKJgo=; b=g0mZi5hDeBn6rwQ6uZpfzXskqA
	BtzA43Z7hfM7DNdCj9hGKV0Ehw3Z5KDNpd3YANtzgc9slAwbdE/+AFhIUwU1senRh/+culGnR1kn3
	ybsYQzXujnLctRYCcsLUOZ8JqvMVkUMpsmptN50F3XAMJHLZ/YJeSh1Ns8CUqBw4sB3kvGhVzUYod
	zWblmix+HZfF0yqip2bFJtbszpX7kZRH1jOZVxLrWYOySbIL6/PiY8m1g+TmbpCeV9pkdVmsabjtR
	qoK1s+IbBrbX7PM9KA+fJVMmRncXP6vQKaSDWD8hE1lB7sLAZNZgPaV+kLRHm96sretepXgAt3yy4
	ZwYJzF2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1v4y-00EbyO-0E;
	Wed, 24 May 2023 20:27:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1v4v-00Eby0-2B
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 20:27:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2B71164085;
	Wed, 24 May 2023 20:27:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 566BBC433D2;
	Wed, 24 May 2023 20:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684960044;
	bh=3KEdcds8pktgrixeF2rUQnEoZP6caZdUbI+fhN+eseY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V2aiUqYd8DKFelba3RUMedUwC26vmwdlBh4gGM9/y0u+Hzn3fFoKSlrMc03cHi2XB
	 tKD9/fyUJ9Z5RapszWokWkZgUO6AaqaF1AN8ls90VnScb8N+pUcy2xdNlu73iT2yBR
	 Cz4rz1mZZtQtjPdLVTXQ1Nk02J1IxXxwR2Fu64ttmws+YaFoR8YHRe6X8C318L9YUX
	 aIWX1dXdsyEtWWGoZHulSqD2w0hAwI9DEfAPl7kT1gOVdj3ewtx2P98FDa8eIdOvi9
	 1uTmjyWp+t/SydxdPG+3ePfQiJrNxSuxabHsaguGLJZ2WuF68i+zVOU89eYlniks5K
	 n7m+x+SJxjefA==
Date: Wed, 24 May 2023 21:27:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, zyw@rock-chips.com,
	sebastian.reichel@collabora.com, andyshrk@163.com,
	jagan@amarulasolutions.com, broonie@kernel.org, perex@perex.cz,
	tiwai@suse.com, lgirdwood@gmail.com, heiko@sntech.de,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: arm: rockchip: Add Indiedroid Nova
Message-ID: <20230524-uncommon-coroner-5a4d9c339837@spud>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-6-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230523213825.120077-6-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_132725_758352_0D173B53 
X-CRM114-Status: GOOD (  10.07  )
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
Content-Type: multipart/mixed; boundary="===============5148758191758895449=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5148758191758895449==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7yud7buBms0aJE1s"
Content-Disposition: inline


--7yud7buBms0aJE1s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 23, 2023 at 04:38:24PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add Indiedroid Nova, an rk3588s based single board computer.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--7yud7buBms0aJE1s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG5zJgAKCRB4tDGHoIJi
0kkAAQDSQ39pj7YaiCc3FVNbMWl5Gp5U3oOWKezpcy0eTzLgGAD+MSTxq4WlDB+B
uhJPLc3tOTyQ8Ym9YKaOgJrsHNrJgwI=
=rAUF
-----END PGP SIGNATURE-----

--7yud7buBms0aJE1s--


--===============5148758191758895449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5148758191758895449==--

