Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E220C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 17:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B3FpHROTxek5+/JXW2eyG/EcqWo2iz+Go0LWT6P1pKk=; b=drgmFr7rcq6jEADBh7qVET70NK
	MUdq5ClokiV/XiPXDccl08zlz6Z3UiiU4Rfqt220RnMynhYmEJcCTKJbiawev5trQ2yJ1x+YBoDy3
	jn/ZC03ST3PSpwUEj3X7qcjHZ1PprjskyZ/vwoTmKZdql+WUD4iDcCE5MoYTecmgTP6LzkOL6x3g5
	4LQDGUz/r60ErIfiB5tsnIHEovEU+JwJRdYC3bvx97n65IaMICP7VFrU2maUtSaSbc4touQ/vZhWQ
	7QhHlDQ8plmHzm8clCOYOIqq2ZinBvs9IoYOaVITr9bWqlBkm5wTitP/0SOWY7UJUX8bwbdBN5oet
	TjJnMVvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZZz7-00000006JTz-0Drp;
	Thu, 01 Aug 2024 17:53:05 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZZz4-00000006JS6-2pXP
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Aug 2024 17:53:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722534777;
	bh=plPRch7khvdAriYZO0F9005i5wgrSxJb/YiEPJWYkFM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G/bhEbg1eVN3rqNZzOh80+QsuKt9VtBremwQMBtx5urDTORG4Fx6F+wMCDpMIZfIc
	 2mkejcpQInq1yKR6XbpgR5WIKQ132JPwAvpRH1ZXzXOejsBqq0gl0f4buhLs3+rbQ2
	 uigzrA4eqyWpY1KdbucqiM+jUYI3DTLQX4v0BkikCVI2vAPTjaJaQOh8YIqpyJGfcW
	 TAdC84s5F7klp5+rTwp9avBKKJC7z9JG8rKzQ5Z7iyxpNJmDh4NT83xqVBrB8AsXZD
	 /dbEQw3imsPrqJniqsXZdW21lnYjiKDX9pAu/v2skFrgUmeX96TAdCfhZPMjbLJntf
	 FZC/DElIEujjw==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 95623378000B;
	Thu,  1 Aug 2024 17:52:57 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 3E709106097C; Thu, 01 Aug 2024 19:52:57 +0200 (CEST)
Date: Thu, 1 Aug 2024 19:52:57 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Lee Jones <lee@kernel.org>, 
	Dmitry Osipenko <dmitry.osipenko@collabora.com>, Mark Brown <broonie@kernel.org>, Urja <urja@urja.dev>, 
	linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, stable@vger.kernel.org
Subject: Re: [PATCH v1 1/1] mfd: rk8xx: Fix shutdown handler
Message-ID: <wad5fdqxwoq2wy35wbhwk5jinpgyz6xmxnt5aqddci777qctsd@qay2lr2ubkws>
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
 <c4d6da27-3b23-4a96-bad0-17f2392287ef@collabora.com>
 <22969419.5W6oEpyPa8@diego>
MIME-Version: 1.0
In-Reply-To: <22969419.5W6oEpyPa8@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_105302_868668_20F49238 
X-CRM114-Status: GOOD (  24.74  )
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
Content-Type: multipart/mixed; boundary="===============6347376025092689508=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6347376025092689508==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sjgkp6qu6zakxj2y"
Content-Disposition: inline


--sjgkp6qu6zakxj2y
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 01, 2024 at 07:41:44PM GMT, Heiko St=FCbner wrote:
> Am Donnerstag, 1. August 2024, 17:31:33 CEST schrieb Dmitry Osipenko:
> > On 7/30/24 21:05, Sebastian Reichel wrote:
> > > +	/*
> > > +	 * Currently the Rockchip SPI driver always sleeps when doing SPI
> > > +	 * transfers. This is not allowed in the SYS_OFF_MODE_POWER_OFF
> > > +	 * handler, so we are using the prepare handler as a workaround.
> > > +	 * This should be removed once the Rockchip SPI driver has been
> > > +	 * adapted.
> > > +	 */
> > > +	if (is_spi)
> > > +		pwr_off_mode =3D SYS_OFF_MODE_POWER_OFF_PREPARE;
> >=20
> > This prevents the syscore_shutdown() step from execution. Is it better
> > than not powering off?
> >=20
> > I'd rather skip registration of the power-off handlers in a case of SPI=
 :)
>=20
> Or blasphemous thought, we could live with the warning-splash for a bit.
>=20
> From Sebastian's log I assume the WARNING comes from the
> wait_for_completion() in spi_transfer_wait(), and I guess the transfer
> with the poweroff command itself will already have happened then?
>=20
> So the device is most likely still powered off in that case?
> Not sure how much of "bad taste" that thought is though ;-)

Yes, as far as I could see it works fine (the splash from the commit
message is from exactly this solution running on RK3588 EVB1 and the
board was powered off properly as far as I can tell). But it felt a
bit strange to knowingly introduce an error splash in a fix intended
for being backported to the stable trees, so I switched to the current
version before sending.

-- Sebastian

--sjgkp6qu6zakxj2y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmary3QACgkQ2O7X88g7
+prEYA//Uzr1RcaVsc7UcEd+nR7XbTVEUENkCiIRu3A94zcGi/bF5oS11QxvbLvY
3LaPGcAdLg9goCYf4umh/k4lUNrFrlPA5733nLg6XTl3IWoeLTSLrpsLOWLGELre
usMKLB+ZbJsmWY9h0YBD6x8tru8d30Zi6DU90oVq4bJXUFLyfVxoFunUwD2pp1Zo
59FU6xPMsncOf/1tecfIIXTYUfREjBU+mzoY7GRaHhk0H4hSZ5Ubn9xw3kOoPeE4
55sQnmjWUWHI6CSpdDtnbGIDR0p2pQfpbEpJNyR+exvQWj/QlWvCJ1/VfoQpiCXC
LHXQeq9QiXcdHM/u39yZIhrVD7CokAyM/DDKnYCnV7T41vLeYB/+LE01HQpnIYyq
pcGM/BlLgOer/BLuwgkNYxshmqE75+BLaJxfA6Weh4Lkd1V3QtIxn6PKL4cFAdtS
c2FHk3qhHHdKhX2Ruy0WEiB96zCaBITsQm9EAiUrin7VzrYxxq69FA2LFRiJcRpH
PihEXDhRFYe7qEmIXzOa1vhsKvH7FFqfjTUY+dbPFzyMXwSI5iOX4FKYBvS3iNtj
b+UY2HpaWLs/vlaCiDGJT6q656KcShB0dQkZKNmfNL5XM2S8pAzGqbjpAdt2IYlL
5kyFxnwWs268HZ7epaey/dRkajBiUI2WJGsOIvg9L0d0LrL4T+Q=
=taLl
-----END PGP SIGNATURE-----

--sjgkp6qu6zakxj2y--


--===============6347376025092689508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6347376025092689508==--

