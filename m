Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C4F2ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Nov 2022 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UuVyugSj1oa2On6Ixj3RrNX11b3/PFbhyLFVPhMkg6c=; b=jJW6EbpuGzUP2Sw2t3wfIN2PYz
	YvuzXIruRmtc7InP5E57CjnzcpFkAmCSFGSe9oSQq2pLIOIwfNt7znpGj4yjsKYM0AbFZ6dklaGwl
	4ujIu3YlbUE/tkvW/Amr7GpgPdX1yEk+wiW7QZnDsjkHMlZgQ3ZpATuX0jfiQz2ZP2eNWVsKGEtOU
	sH3cdML9+xSp8QrtMKUyZLqMFDT3RqSLYxSxW9HR4Bqg/x1BV6agHdBAuVjY48ths2R5UynATt9qT
	YQkHI44X4bRGVuFWQEcu/0xKOOdmbSF/hPd0K6Pmdc3PMdLcDYQXfRNL8jqxRRDsVPZPvJw6eYX5h
	lLgH7jQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opepc-00GrOc-3D; Tue, 01 Nov 2022 00:08:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opepZ-00GrO8-V5
	for linux-rockchip@lists.infradead.org; Tue, 01 Nov 2022 00:08:39 +0000
Received: from mercury (unknown [185.209.196.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7BCC366015AC;
	Tue,  1 Nov 2022 00:08:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667261315;
	bh=sIMxUPfqJGh8LEp6SOaWCrB1Uu3hHBT4c08tadHon8Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PgubL0ZbBjXBUBmDW7nbZiJcoNQguhntNvQOylREzDEToHAym6DQDyYFP7eW5zqd/
	 zCV9heCfvBq828qqT8p3+/YHiP8XJXDT1JfVAURlXOJiWl48nGqWe/3sfrqzlLw65y
	 rrwKL10BT6NqyuTmD74eGO8owv22XrsvDQDCQwk9ysGkmkiNCybz/0kHarcVja879j
	 GYsdfsYWfWNNfwd89MYJjyf2YOV5N0Nldqk+G8IyvXuHCq2P9QoLTnFfTFBA6p1S5i
	 PEfzVrwlSBF2z/UYSryR94XX4Vu0U+4RckkoDvzegM+o2sLoUM95t4M/PxYWeVs0v4
	 ya8lRSkgVjwXQ==
Received: by mercury (Postfix, from userid 1000)
	id 5083B1061C6F; Tue,  1 Nov 2022 01:08:33 +0100 (CET)
Date: Tue, 1 Nov 2022 01:08:33 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Ondrej Jirman <megi@xff.cz>,
	"open list:POWER SUPPLY CLASS/SUBSYSTEM and DRIVERS" <linux-pm@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] power: supply: ip5xxx: Fix integer overflow in
 current_now calculation
Message-ID: <20221101000833.hwuhc7ki6b33fnhf@mercury.elektranox.org>
References: <20221028224052.293693-1-megi@xff.cz>
 <6b23af14-340d-b7b5-7d20-14fae03f724c@sholland.org>
MIME-Version: 1.0
In-Reply-To: <6b23af14-340d-b7b5-7d20-14fae03f724c@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_170838_154018_FDEBE003 
X-CRM114-Status: GOOD (  20.29  )
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
Content-Type: multipart/mixed; boundary="===============3186953343160456427=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3186953343160456427==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7sslbaiyftedhb4w"
Content-Disposition: inline


--7sslbaiyftedhb4w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Oct 28, 2022 at 06:06:07PM -0500, Samuel Holland wrote:
> On 10/28/22 17:40, Ondrej Jirman wrote:
> > When current is larger than ~2A, the multiplication in current_now
> > property overflows and the kernel reports invalid negative current
> > value. Change the numerator and denominator while preserving their
> > ratio to allow up to +-6A before the overflow.
> >=20
> > Fixes: 75853406fa27 ("power: supply: Add a driver for Injoinic power ba=
nk ICs")
> > Signed-off-by: Ondrej Jirman <megi@xff.cz>
>=20
> Reviewed-by: Samuel Holland <samuel@sholland.org>
>=20
> > ---
> >  drivers/power/supply/ip5xxx_power.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/power/supply/ip5xxx_power.c b/drivers/power/supply=
/ip5xxx_power.c
> > index 02ee4d252a3e..f39cb2f7aa11 100644
> > --- a/drivers/power/supply/ip5xxx_power.c
> > +++ b/drivers/power/supply/ip5xxx_power.c
> > @@ -398,7 +398,7 @@ static int ip5xxx_battery_get_property(struct power=
_supply *psy,
> >  		ret =3D ip5xxx_battery_read_adc(ip5xxx, IP5XXX_BATIADC_DAT0,
> >  					      IP5XXX_BATIADC_DAT1, &raw);
> > =20
> > -		val->intval =3D DIV_ROUND_CLOSEST(raw * 745985, 1000);
> > +		val->intval =3D DIV_ROUND_CLOSEST(raw * 261095, 350);
>=20
> DIV_ROUND_CLOSEST(raw * 149197, 200) would be marginally more accurate,
> but it doesn't matter in practice.

Thanks, I queued it with that change included.

-- Sebastian

>=20
> >  		return 0;
> > =20
> >  	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
>=20

--7sslbaiyftedhb4w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmNgY4AACgkQ2O7X88g7
+prRfA//dU4GytovELqDppXXyxa26eg1cfkrNdYZcsa/z1LZkgKuHF6cdG620W8M
Tmnna2OU9L5JIdsgx0Ub6qsemzWUBlCuUUNzJxVjir0TkxliAttV5W5tBIC23YKp
X0h2Nw63lf4kFpq6RG8KPMKbdgtVvN8JNiuffner4xE0dg0Xc8Tew2XjvPzXpItL
pwvkeT9wef3m5k3ZX1U8hWfMot3PJiUiMftRHuAtgPBiWi1QECxNRWUXOWSEFhIW
b9ghREIpay4RqMXVJssRw4b/eyvSqTvpImswCF8jelyyQEgdDrwsiUyd/3MGwRql
ABawQyUc8J2A1opOWmCQyXfqXqhA1pEXfhwgJWc9Ooz0lI2YSVWxZlMR4XNoOkzM
hWSrSWOiKfEHJ3dL56F6Dv1a6unmmMpj8kCjyWXHbgYU/eFTOJmGv23L0Yq+MrCG
ZDnIDHP4Q6D2HeSOywLDwrqexSFj8lg8JsZZMPI2ZBoFl+bbCE97hmnoTSoDhEAA
zuayfSbnAPsIubAS/c6gi+cp9/iGXVOCqHDuNkivKG+543wZSJKrX2jsSXy/iFLl
8RSZQr3c0u537Ae+MWy1MBkPGYbja/kYxkxesCJ0GrmSNM3BKfOF4KWBAaiJAHyL
p7plxduZcTGsglePNcMfBvDvliyOddUH0TvundPoUlgvZIN9FxU=
=s9pm
-----END PGP SIGNATURE-----

--7sslbaiyftedhb4w--


--===============3186953343160456427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3186953343160456427==--

