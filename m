Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D0F1C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L6neIbYvmq3vOKTN7Oas/07jcm1NEVY9JYGrYB9Xs9I=; b=OajnhB/MqsvCZ6ov0T2rq+fnEV
	xHWuldRtpyTyvi/Vm+PHDgek96ydOjYnkjP1B7utMinJ7JinFMqpe1V3RgVdSvMUuWJgp5x/AlkX/
	c2O2VFtK5ER7XGjlPYeO/vnyuTcln85+t6Yr7VV/iaHwMG9rBhfYcr2ta5Oacb6NVuewG0+O/QRJa
	76Q1KISiNJEjOv+a32KPPcozQlF5ljMs2ySmeGlgFucNHil9IGFNadldWlWpi+yAobJ3eeAqSIudy
	gc11N6UBvm2OzC2/dxhHw+++Hnyz+IuSHzL/lIiXAo2jcUFU9xdcHCrPIz1frvDNYJESqhtwIvpgI
	sV1O5+XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNt86-00000000KvF-30UG;
	Sun, 30 Jun 2024 11:54:02 +0000
Received: from out-173.mta0.migadu.com ([2001:41d0:1004:224b::ad])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNt83-00000000Kth-2bA1
	for linux-rockchip@lists.infradead.org;
	Sun, 30 Jun 2024 11:54:01 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1719748430;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=y+fDDJqQ+osPbRhFMpBP9B/lzHqe+hkb/V0i04petRE=;
	b=hTn0AXCLVq+C4+llFVwC1ciz2avIme9mohkFaT7BpiOH20qYWq5jPWMIWO+P+hrMGga43i
	D5+bxDlZusjXBmjapgf66E30wMwfg7nPxeWDJeqd1vgjI5OVVew/IPDimCOgL9Fl+rZAIk
	KbHDOyJDw6JGiZeW55aLgnvztWzLvEC7zGSuPmpZ7n4TxD7QBfCJtLhGupkqRtY2r9LNq8
	tZq6fsL7lT8eZZ5ZBBBCcLKaogIyiqboW4zSHiXiZeh+HyOejDc70sLIwlC5VNRJZakWQR
	nVe6Kxb9XSmy7XPMAmV8qxkIv7725BvaobCaWE6sQTqmLk5ppvys7nGvj1nGMQ==
X-Envelope-To: heiko@sntech.de
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC
 dtsi
Date: Sun, 30 Jun 2024 13:53:36 +0200
Message-ID: <2794811.2mGxvYehNa@bagend>
Organization: Connecting Knowledge
In-Reply-To: <1894199.CQOukoFCf9@diego>
References: <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
 <2442162.AJoTavkB1d@bagend> <1894199.CQOukoFCf9@diego>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_045400_237372_FA08F2F6 
X-CRM114-Status: GOOD (  30.02  )
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
Content-Type: multipart/mixed; boundary="===============2125696278872430032=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2125696278872430032==
Content-Type: multipart/signed; boundary="nextPart2147336.LgE2u5Xh1p";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2147336.LgE2u5Xh1p
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Sun, 30 Jun 2024 13:53:36 +0200
Message-ID: <2794811.2mGxvYehNa@bagend>
Organization: Connecting Knowledge
In-Reply-To: <1894199.CQOukoFCf9@diego>
MIME-Version: 1.0

On Sunday, 30 June 2024 11:07:47 CEST Heiko St=FCbner wrote:
> Am Sonntag, 30. Juni 2024, 00:01:41 CEST schrieb Diederik de Haas:
> > On Saturday, 29 June 2024 18:39:02 CEST Dragan Simic wrote:
> > > Add support for voltage ranges to the GPU OPPs defined in the SoC
> > > dtsi for RK356x.  These voltage ranges are useful for RK356x-based
> > > boards that are designed to use the same power supply for the GPU
> > > and NPU portions of the SoC, which is described further in the
> > > following documents:
> > >   - Rockchip RK3566 Hardware Design Guide, version 1.1.0, page 37
> > >   - Rockchip RK3568 Hardware Design Guide, version 1.2, page 78
> >=20
> > That was interesting to read, thanks.
> > Now I understand the difference between rk809(-5) and rk817(-5).
> >=20
> > But AFAIUI the above description described why there were separate tabl=
es
> > for rk809 and rk817 in v1. But that was dropped in v2. So it seems to me
> > the (commit) message should be updated accordingly?
> >=20
> > I also expected that (for v1) there would be a similar construct as was
> > recently added for rk3588. But I should interpret Heiko's comments as t=
hat
> > strategy should not be applied to rk356x?
>=20
> The issue I had was more about the #ifdef'ery and then having a board def=
ine
> a constant to enable one or the other.

Yeah, I had some thoughts about that too, but by the time I was ready to=20
respond to that, there was v2, so that became irrelevant.

> As far as I understood the description, the OPP itself is the same in
> terms of frequency and voltage, just the regulator can't fully realize
> that target voltage, so the solution is to allow a voltage range, to
> also support the less-exact regulator.
>=20
> On the rk3588 on the other hand the soc variants have different OPP
> tables themselfs, because the soc itself only supports different
> frequencies+voltages. So the solution here is the split of the OPPs so
> that we don't mess around with /delete-node/ edits of one OPP table.
>=20
> So TL;DR separate OPP tables are the way to go if the user needs different
> freq+voltage values and voltage ranges allows boards to use less-adapted
> regulators.

Thanks for the explanation.

One of the things I researched was whether there was a different OPP table
in Rockchip's rk3566.dtsi (and then the assumption that RK817 =3D RK3566 and
RK809 =3D RK3568, which would be flawed/incorrect). But there wasn't.

Cheers,
  Diederik
--nextPart2147336.LgE2u5Xh1p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoFHQAAKCRDXblvOeH7b
bgjgAP9vzAu7MpfS69xyFFLPIIGggmPUGMKxwsGTISYyDo1sHAD9HLwFVtMo7sv9
mQ/R7ZmppweghrcD2CYHYBSJEJVL1QI=
=AB/w
-----END PGP SIGNATURE-----

--nextPart2147336.LgE2u5Xh1p--





--===============2125696278872430032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2125696278872430032==--




