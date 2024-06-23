Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1819C2BD09
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o1sXrxk5FtEEBrVcHDU9TcFkYmzNdTSZC7bqTGsqocI=; b=wz8U1TQFaP5clHdbvl4h24EbhH
	B/A8fOvtKVVGivjEARnD3a429oAMy/V2c2whMqVxMomufWa0YBiLbi+kEff6pFy9UgwythhMtWrl3
	oEro8tNBqPANrDypSb5qz/axUi1+KpkCBtHFsVMz1EstYMTYzoUoxqePwET/Y03G8YuvHTvueJdU4
	eQK8cBgaGd3FWDMp6fJYolhqbi1HWSqKEpxgCXRgT+3VZKe9ArUlxWkXWVk1qt6fdJQabRpol5a9i
	xBu4J6f1Txvdl7ZoAzhaz4iclOSmgIRBD2hZqP/EoMBsbu7Z/hFGJDFPPi0MyBFFtdS12peu7PV/7
	mJEiyp2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLAy1-0000000D3H2-3MbM;
	Sun, 23 Jun 2024 00:20:25 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLAxu-0000000D3Fn-1pij
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 00:20:21 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a72477a60fbso20485866b.2
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Jun 2024 17:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719102016; x=1719706816; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8ONa3iSOONrUQZrCElWDntgf1TBX/gIFjmLuMwiVxBc=;
        b=rBeA+yTehQKoeL6Fas/81gRaxOkNRO0WZ1FxTEwsS9mha02q74cDpG/0WehFJE0ef0
         XyLbuqkW3DtVBQhkvCeLjgu50+dZc2hPSlePt0G7IfETNmxoaX4JjIDZKd1VGYTsV84B
         xurBuIZSjSuBSSA0wBFV9M/i9EKPbriuKkMeGfJXrTAwaeUDbTLLVxaAWkOQRK004uRB
         S7Xcg198RlcxLzVPVWfwltLRHZPVoe05oRAlITq5Yx92n6k84oB0gZ6aYm1PJ4URmOg1
         UNmKPkJYLWCX8y3fv+Y89+ZhdzhyVslLyZmiHuEdfahB0Lkfa/uogGvCH4mY1eGDLQ3E
         ICIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719102016; x=1719706816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ONa3iSOONrUQZrCElWDntgf1TBX/gIFjmLuMwiVxBc=;
        b=jFAuwLIlYYKYQqAu9TtesBxbJMAOde7Qp5+19SA1c1REP9i3SAnyTRkvCm+an+pxUU
         5eabKpyfCSj6H5dKu4uDgvkHa3HU47GPwphoiu7dvUdbkBayLdvdqoBKg2mhcfGbI+ES
         MF8VbvDwW+ZRLHn8eU0wkrxguy5Fffpu8p3FFcR0c1reOMbRWrV4vgxKNMG9H8KUtnhb
         QH+6WlGP9ZIB3b4/FAc73g4Ellfjsn8CcmSLY5C92HqzWRZgnMiTMXdudbsKgjkUOv09
         4/ra9ntLi85rb8dJZHAeURzRrpZXDxi4PSE6zAbjNRES3rwvsboSMSn6ZJEjzgoffSGf
         UsFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoHJOJQrTrh0otp7zYIZ9v1zAsCzhWIZqFxTCZimnTkex1/1LKHR3J+jp7jwZc+lRjTv9vEIz8kBKp9ZSGumFH56r1/RHhYiG4vBNOSw8iIXar
X-Gm-Message-State: AOJu0Yxu0415rkI7vgJBLy+vb/Y39Fefk0tHDNp0JGhKXgdPx0pNDv4I
	Ho9QxLtlX5L5o0M6LgjPZ0A/zgME+5zhCa7H1dcB9QxrmnPvleQkO4xjArSrT1w=
X-Google-Smtp-Source: AGHT+IFkQnTmyYgj3ga+Jr84O+VsTZAb6uFS3rOryfDJPiSyoNjG8TnrDmOAhk+I37PmyQzqrzBbWw==
X-Received: by 2002:a17:906:1d42:b0:a6f:1f40:600a with SMTP id a640c23a62f3a-a7245b938c3mr45943466b.30.1719102016036;
        Sat, 22 Jun 2024 17:20:16 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf435941sm252779866b.18.2024.06.22.17.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jun 2024 17:20:15 -0700 (PDT)
Date: Sun, 23 Jun 2024 02:20:13 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Daniel Golle <daniel@makrotopia.org>, 
	Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Anand Moon <linux.amoon@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
Message-ID: <6u4bgwemukkpjvregtvrhdarelvy4rf76n5dv5oiclbyh4q7gd@b776tut4a6ki>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <ead26406-dd3b-491c-b6ab-11002a2db11a@kernel.org>
 <07fba45d99e9eabf9bcca71b86651074@manjaro.org>
 <3660160.WbyNdk4fJJ@diego>
 <b0164e0d05d9e445a844ffdfca7a82d5@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <b0164e0d05d9e445a844ffdfca7a82d5@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_172018_648428_DD7C428D 
X-CRM114-Status: GOOD (  23.88  )
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
Content-Type: multipart/mixed; boundary="===============2435293156484386147=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2435293156484386147==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dd3zswqm4oau246l"
Content-Disposition: inline


--dd3zswqm4oau246l
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Dragan,

On Sat, Jun 22, 2024 at 10:45:22PM +0200, Dragan Simic wrote:
> On 2024-06-22 22:26, Heiko St=FCbner wrote:
> > Am Samstag, 22. Juni 2024, 12:29:33 CEST schrieb Dragan Simic:
> > > On 2024-06-22 00:16, Uwe Kleine-K=F6nig wrote:
> > > > On 6/21/24 20:13, Dragan Simic wrote:
> > > >> On 2024-06-21 11:57, Krzysztof Kozlowski wrote:
> > > >>> On 21/06/2024 03:25, Daniel Golle wrote:
> > > >>>> +    dev_info(&pdev->dev, "Registered Rockchip hwrng\n");
> > > >>>
> > > >>> Drop, driver should be silent on success.
> > > >>
> > [...]
> > So really this message should be dropped or at least as Uwe suggests
> > made a dev_dbg.
>=20
> As a note, "dmesg --level=3Derr,warn", for example, is rather useful
> when it comes to filtering the kernel messages to see only those that
> are signs of a trouble.

IMHO it's a bit sad, that there is such a long thread about something so
trivial, but I want to make a few points:

 - not all dmesg implementations support this:

	root@machine:~ dmesg --level=3Derr,warn
	dmesg: unrecognized option '--level=3Derr,warn'
	BusyBox v1.36.1 () multi-call binary.

	Usage: dmesg [-cr] [-n LEVEL] [-s SIZE]

	Print or control the kernel ring buffer

		-c              Clear ring buffer after printing
		-n LEVEL        Set console logging level
		-s SIZE         Buffer size
		-r              Print raw message buffer

 - Your argument that the output of this dev_info can easily be ignored
   is a very weak reason to keep it.

 - I personally consider it hard sometimes to accept feedback if I think
   it's wrong and there is a good reason to do it the way I want it.
   But there are now three people opposing your position, who brought
   forward (IMHO) good reasons and even a constructive alternative was
   presented. Please stay open minded while weighting the options.
   The questions to ask here include:

    - How many people care for this message? During every boot? Is it
      maybe enough for these people to check in /sys if the device
      probed successfully? Or maybe even the absence of an error message
      is enough?
    - How many people get this message and don't care about the
      presented information? How many people are even annoyed by it?
    - Is the delay and memory usage introduced by this message justified
      then, even if it's small?

Best regards
Uwe

--dd3zswqm4oau246l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmZ3ajoACgkQj4D7WH0S
/k5WAAf+ITFdGqdN406tmIfhUkT/VVsswv7UZYQ19nee0y/e08Hckgmx/mEmS4ft
tJsOL0GAgMDpyvbgz6smWIgOAzsdln+m73wuSjSe62fHLUgd68YA4ehtQ3EghbY4
Ey7cYUhVnjJFpahWN+b4QS774FfeFRTtRUzdU9ENsV5pRenbmERcKnGOSQ15fwfE
mpqgcAnKvcz43qhHjJpgaJ8p41IQQRWh3jAK3edrnLGjcAAIhynSWzwRdSOYR9QU
aLL2hb1i8mFNkAr1q71hM+pqGrJZ6gQ0gAI/t1wP6/S0OG4WkYs4TpG0xjJq0TN+
N8+bGnosWqTuh5Wt3I1924btUX+e4Q==
=KN/a
-----END PGP SIGNATURE-----

--dd3zswqm4oau246l--


--===============2435293156484386147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2435293156484386147==--

