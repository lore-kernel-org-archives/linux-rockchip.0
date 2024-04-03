Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7BDFCD128A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 14:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FyGypXKbAFveup9Hrmh/xcwGjN6TydBnPDKxe4PDCOA=; b=JP0M+WHoZWDQTr4t40+M5A+egy
	KWjkdreHcD8tr0rC/y4SYGTeYyFllt/CvFwqGpovcSXJLK9VwtMI0L6dHHvuN4Z9/CvZDIUS6NXUE
	vO6KFsp+t+m5NkwKRvPtJe9wV6zrDImHe3HUP3BiCOa9GEJMnhbkvrREkCuwcRkiC423rThni0H8J
	Ysdf8es112xLxZEi5bVuA6Lp1VLmQDAPln9bE/m8DZ3x1Ai284Dfxo/7g/2RsK5H8hsG3NaWDZd9S
	8BP5rIy2d0uKmJJQIquK5AmuzWx8vTs/3KvJPqF7HXslM4ScXtKOUXbmVgpYUS9AJqxqTwAkj3qPm
	vlVpwW+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs1Iv-0000000GNHo-0s9b;
	Wed, 03 Apr 2024 14:09:29 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs1Iq-0000000GNGP-44Qw;
	Wed, 03 Apr 2024 14:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712153358;
	bh=agTHV4kamLLPYcNHOfaIhrtk8c/lda8kF/YWjh1kBJo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ej5TuduVQzkPKOqmLXBWFS4juFDp4MmlKPVPcTaeoSqlAy48WAn1nq0ecYlAIQow6
	 J6TlBihY4qc7QNKs9/1bOWSpoNpAndiX5VWK+c5LnV7z1vcADEOzZUEdLIQ0EwxrS0
	 Ru8uWgGZZOmthtVp/8LCe/1/PDhwVA33EnZUzGvCqClWTmlJXIdZODfRAzRdcsw6QO
	 LEUPf4ZMmk8WIvt/EKwilFZ3oOXrIV2eSy66+zHF9cH9tPVoajTUo/RLplO5XmtOp0
	 tBZ65nThRBz5Fp2SVGYPf4AuGbV4z0R+xST8gP6it6QkMgNgk3yg6qlDrc96fmLaRr
	 9ul7GpGOBrqGQ==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E10B037814A4;
	Wed,  3 Apr 2024 14:09:17 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id D07B01060E07; Wed,  3 Apr 2024 15:52:11 +0200 (CEST)
Date: Wed, 3 Apr 2024 15:52:11 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Pratham Patel <prathampatel@thefossguy.com>
Cc: Saravana Kannan <saravanak@google.com>, 
	Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, regressions@lists.linux.dev, 
	stable@vger.kernel.org
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
Message-ID: <4zlnwwycmjt4p2efqvvxirgcxqyyptf4ndqmbm5uxjjbk2toyz@uyxh2lmwb2fz>
References: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
 <ac4246bf3786230eb9ca85b329e7d0df@manjaro.org>
 <CAGETcx89V5CJrAq6XwuGiusQnkR804pTgYAtS94v7Q+v=Cv+qA@mail.gmail.com>
 <D0A122WK7CB9.33B2TP6UCMJBJ@thefossguy.com>
 <CAGETcx_ToHsp_c+Yt0qqST4Zd-GC7dPn_j=PpB1n1xpZtOnMfg@mail.gmail.com>
 <D0A2ZL6S8UG6.2BQKIBQWYB36D@thefossguy.com>
MIME-Version: 1.0
In-Reply-To: <D0A2ZL6S8UG6.2BQKIBQWYB36D@thefossguy.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_070925_182328_162F571F 
X-CRM114-Status: GOOD (  21.55  )
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
Content-Type: multipart/mixed; boundary="===============3051907848346300964=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3051907848346300964==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4danktmrrrxcg4g2"
Content-Disposition: inline


--4danktmrrrxcg4g2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Apr 03, 2024 at 01:03:07AM +0000, Pratham Patel wrote:
> > > > Also, can you give the output of <debugfs>/devices_deferred for the
> > > > good vs bad case?
> > >
> > > I can't provide you with requested output from the bad case, since the
> > > kernel never moves past this to an initramfs rescue shell, but follow=
ing
> > > is the output from v6.8.1 (**with aforementioned patch reverted**).
> > >
> > > # cat /sys/kernel/debug/devices_deferred
> > > fc400000.usb    platform: wait for supplier /phy@fed90000/usb3-port
> > > 1-0022  typec_fusb302: cannot register tcpm port
> > > fc000000.usb    platform: wait for supplier /phy@fed80000/usb3-port
> > >
> > > It seems that v6.8.2 works _without needing to revert the patch_. I w=
ill
> > > have to look into this sometime this week but it seems like
> > > a8037ceb8964 (arm64: dts: rockchip: drop rockchip,trcm-sync-tx-only f=
rom rk3588 i2s)
> > > seems to be the one that fixed the root issue. I will have to test it
> > > sometime later this week.
> >
> > Ok, once you find the patch that fixes things, let me know too.
>=20
> Will do!

FWIW the v6.8.1 kernel referenced above is definitely patched, since
upstream's Rock 5B DT does neither describe fusb302, nor the USB
port it is connected to.

We have a few Rock 5B in Kernel CI and upstream boots perfectly
fine:

https://lava.collabora.dev/scheduler/device_type/rk3588-rock-5b

So it could be one of your downstream patches, which is introducing
this problem.

-- Sebastian

--4danktmrrrxcg4g2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYNXwcACgkQ2O7X88g7
+ppSBQ//WsXoLg+w00Vt6lS7Fu+Ry1/gMQ7+0b0R66GBVrconK+w8cdxwNCmJe+z
0/5ehaf6Wd4Btp2YcDywLFVFv+nHEg6H3t+PSyVzST2EnEGpJBzL9FBGq/J8XIVv
TSyMJPEb911F63xSgZXoqlLa/Jti4ccqYIJUy6LYLJ97/3Wm1rtzPvPyrs2ySJ8I
5l3zLA4POdS6I7vdbPNVjzY4LVEG9CwQIJIwGoScCwoxESlMpiB1+hLYil/2GsVq
1OKAwEZuRycmROdMobiYYsO/a1GQU2FcIcZ4ocmX5e1U94qmP578endIVW+lFz8+
S5FXoSOmxCZY6x4mczQ2nrGNI0vHfUuiNZHOxpoUZa2Y6Lw1D1v2a9Ek1IKH0LUt
t8vp4w2k9nvMAXpRXaCK17zR/x92osn5SNNKz7RCd2Q9yGeB4a0iSDoA82xCYpGd
lTtrxBkBSLKJlraVeeCuuwRxINRRg5DFwhleXfSEvIFXOHPVV+Fc/UPoq1bNzgF/
jDVLTdRtfiWgl0c833WyLvCU7A3AjuFmO3AmxV+Z6gvv97o7JknuX5fsW5cjfAHx
UIp/OBj+aEG/fZc5cG74LxfVZbxpK9McusBysf8BsFNAmHIzMoCsnGstfmSNHGr+
fRntqsaKh8rDFgN5rKRB7svYg2dmFVKjtH7uPmQl9DPhfx5zSG8=
=feq8
-----END PGP SIGNATURE-----

--4danktmrrrxcg4g2--


--===============3051907848346300964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3051907848346300964==--

