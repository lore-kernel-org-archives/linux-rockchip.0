From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm: dts: fix rk3066a based boards vdd_log voltage
 initialization
Date: Thu, 22 Sep 2016 20:26:02 +0100
Message-ID: <20160922192602.GV7994@sirena.org.uk>
References: <CAD=FV=Ufmvg1P8suOPQ53kpOD1pei4N2dOpKUCxZk001XKj_OA@mail.gmail.com>
 <20160919194844.0db7b307@bbrezillon>
 <CAD=FV=UyW5cXGGmq5xUzZ1aV5NzbBYGOz1gO9V1itrFU-PigAw@mail.gmail.com>
 <20160919200627.3ca1aae4@bbrezillon>
 <CAD=FV=U_BQez2eCqm7mX9kj0dcEsnBKiFWcLAhXXJD+yTZhACw@mail.gmail.com>
 <20160919224352.3b84b6c0@bbrezillon>
 <CAD=FV=W=ZiaLu1=zcnDyUqvK6f=E-0AWH9URHE3cgAKWWa+aJA@mail.gmail.com>
 <20160922171217.09a6d13f@bbrezillon>
 <20160922164752.GP7994@sirena.org.uk>
 <20160922201301.0157a292@bbrezillon>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Zd8I2GZVcdxtyaG/"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20160922201301.0157a292@bbrezillon>
Sender: linux-kernel-owner@vger.kernel.org
To: Boris Brezillon <boris.brezillon@free-electrons.com>
Cc: Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org


--Zd8I2GZVcdxtyaG/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 22, 2016 at 08:13:01PM +0200, Boris Brezillon wrote:

> So, there are 2 different problems here:
> 1/ the board no longer boots because of commit 87248991a1de and a
>    missing entry in the voltage table
> 2/ claiming the PWM pins at probe time can cause glitches

> I'm currently trying to solve #1, but most of the discussion in this
> thread was about addressing #2.

Well, if you actually want the entry in the voltage table then adding it
does seem the most sensible fix.

> > That was a very
> > long e-mail so I might be missing something but the obvious thing seems
> > to be to force a state since we'll be doing that when we enable anyway.

> Hm, okay, but which state should we choose? The first entry in the
> voltage-table?

That's why we don't do this currently.  Probably the closest one if we
can work out what it was trying to achieve.

> > Or just not have the voltage table and use it as a continuous regulator.

> Yes, but that means patching the DT, which means breaking the DT compat.

It sounds like you want to fix the DT anyway though?

--Zd8I2GZVcdxtyaG/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX5DBJAAoJECTWi3JdVIfQc/sIAIC0oPt32oPQmpktSrTYn59i
q9BaM1DAYLykTIjLDvHxfzUafnZ+/20G4sdp44lPJ2mSh20qbPojUTkzAa+ElriD
bKPFL2ZQdBFPB3+fjmzErvMQGaj/eoEXag/QHT8DohgH8ytpMw9x3FP1RnWvEIuS
5ZaRkxKyBQPgEt2kTgTkGt/uqc1FhiDJmyIRwCh5mCSpGwzukSVDR3XxbcXYVtzu
g9Fwr2cP+2XdCawNPvWAeU5smDgMWRcl/tSyjDg0XkgmjlFCzw1TBVFOUGjkQiDn
vUcnO4d8c09WWUZGj74J2HM4GuIHXcKulsNkkSbhZ0j2cbpAAbkMyCN9QuYBtpM=
=o5X3
-----END PGP SIGNATURE-----

--Zd8I2GZVcdxtyaG/--
