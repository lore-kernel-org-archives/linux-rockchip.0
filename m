Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EA07E6F083
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Nov 2024 19:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G/uxyYgAjfzpB3TypIZZfkIJSeRk58BeeSnx73LJfbo=; b=kDMCEusSLx9tafVD7nmHsJ9eJT
	ACzfvyl3Q0x6s4X1XH94Sp3VqGCwzpEJY1XG/TZ11M5QS+rDiRD/K12nMPMOnyG2PUegcylV4EtTZ
	lSe3T4+ViDCsw6iftyPuHuRX74pM9eZnP6ljqESzMPit5S1ve6R/Ly6g15oiwUcwEgQHVZClyelgE
	KLdT3w5R8ZL+dI+mYDJr3OcSurZxny2AfU5Oq8SLFEFEF8K1VGGKhoVveCQZ1C//POo9g0ZKKXYpS
	raN26wAR6YpCF8rXcafb1XGHTeR7lnNmKq0H0+7/N0nC/AUNKloR1/XEZVdzFWIQfLL5fytRrlS26
	AY4dV7Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6wxQ-000000083t8-0JhU;
	Fri, 01 Nov 2024 19:05:16 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6wxN-000000083rz-07Af
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Nov 2024 19:05:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1730487900; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=d20C6Y3wyw3/8SaY0GwAVhYMHvrXivxlNZuO18r6gr/ZegIhYAyXtqss75WvJKUS8a5SJLObM6nnjF2q5gkeWsHV/t31Fcm0F65WyZu21L8VzwbbO4JOSumNpLMhOXY6ObLqOpY5RSJGRz1C6NJHOPA1dZPeLoWMaREJbvfFMtU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1730487900; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pzoJ5fr6Q5GERZ5oaDzhX4m2iyhXQfzYDnP4gVMdNVU=; 
	b=Z0mYTzCYL6nKjVntpGOnNrUTIO23JKlDrF1q5/elaQklnmk2gJGug/vSKnHj4I9ZkDH8hfLz/JWSEKapbDlpDKh53/3PzZyIR+mFE+ej5KCzfQt610MOVme1V3NS0oWC6dsY9WRLSYKwxcdIzKmMTi8xVwH0FUf3CPTdZhezmko=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1730487900;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=pzoJ5fr6Q5GERZ5oaDzhX4m2iyhXQfzYDnP4gVMdNVU=;
	b=UguSqV4x+9hrg/V3cytNm2dwqbndRkJLTRaQ/SEMM8w/qbHiDqVOOaaEd4cUiArS
	2hTuGpx67ztYGzAKJA/k1bEpjVPsva2c8iA27GvPDxqxl/3XIyKcgSfuHURJB7cOZtH
	wUGVT0mzS+UcebYPEUCU8e9EBh+RfB4RSGr/gD4Q=
Received: by mx.zohomail.com with SMTPS id 1730487897758168.1618463566807;
	Fri, 1 Nov 2024 12:04:57 -0700 (PDT)
Received: by mercury (Postfix, from userid 1000)
	id 18AEF10604B0; Fri, 01 Nov 2024 20:04:53 +0100 (CET)
Date: Fri, 1 Nov 2024 20:04:52 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?utf-8?B?QWRyacOhbiBNYXJ0w61uZXo=?= Larumbe <adrian.larumbe@collabora.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v3 0/7] Fix RK3588 GPU domain
Message-ID: <27yrptpmhdbugmrgxaxllnbllv3adu3tzgl7e26b3flsvhlf3g@nfqn2fvmktmc>
References: <20241022154508.63563-1-sebastian.reichel@collabora.com>
 <CAPDyKFoAv1jeQitHmTMhvwG9vGzN-vLby0fPzkX1E6+-Qe2dog@mail.gmail.com>
 <CAPDyKFp=sRLVBhW2aK87pYHVGi_6gNw=e3j3AGMnEWP2SVYFpw@mail.gmail.com>
 <9b4c9b61-a2be-465e-a4d9-034951fc862f@sirena.org.uk>
 <CAGb2v65ahUB_Q+HPFV6B-UqWCbCNLdGz58BGo9iHRhVyf1ruZA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v65ahUB_Q+HPFV6B-UqWCbCNLdGz58BGo9iHRhVyf1ruZA@mail.gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/230.343.48
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_120513_198671_66664CD0 
X-CRM114-Status: GOOD (  25.85  )
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
Content-Type: multipart/mixed; boundary="===============3725732109357913136=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3725732109357913136==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sd4kvys2evpxroym"
Content-Disposition: inline


--sd4kvys2evpxroym
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 0/7] Fix RK3588 GPU domain
MIME-Version: 1.0

Hi,

On Fri, Nov 01, 2024 at 10:41:14PM +0800, Chen-Yu Tsai wrote:
> On Fri, Nov 1, 2024 at 10:36=E2=80=AFPM Mark Brown <broonie@kernel.org> w=
rote:
> > On Fri, Nov 01, 2024 at 12:56:16PM +0100, Ulf Hansson wrote:
> > > On Wed, 23 Oct 2024 at 12:05, Ulf Hansson <ulf.hansson@linaro.org> wr=
ote:
> >
> > > > The merge strategy seems reasonable to me. But I am fine with that
> > > > whatever works for Mark.
> >
> > > Mark, any update on this?
> >
> > > If easier, you could also just ack the regulator patch (patch1), and
> > > can just take it all via my tree.
> >
> > I'm still deciding what I think about the regulator patch, I can see why
> > it's wanted in this situation but it's also an invitation to misuse by
> > drivers just blindly requesting all supplies and not caring if things
> > work.
>=20
> I suppose an alternative is to flag which power domains actually need
> a regulator supply. The MediaTek power domain driver does this.

If you look at patch 6/7, which actually makes use of devm_of_regulator_get=
()
you will notice that I did actually flag which power domains have/need a
regulator.

> There's still the issue of backwards compatibility with older device
> trees that are missing said supply though.

Exactly :)

As far as I can see the same misuse potential also exists for the
plain devm_regulator_get() version.

Greetings,

-- Sebastian

--sd4kvys2evpxroym
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmclJk4ACgkQ2O7X88g7
+poVOg/+PaFjJt/IbSqoFt+2B0uc3fK8C3HKt56Y2kbeE0svwnnG8rBkWqbNGP/x
699N+JDv8ZOozhjWXknZBfsGLJUOSvvE1b88xb5WWsZ0FXnQ+uqaOdBu2Ph5iWL2
efopHne/lUiElpPwuHPrGyibqdclrjuF4REkt9IfIG9wCuXwTbmrtXSGV0B1A6El
JF36I3Gb0i1UwsaIdFKm5MgnLeycFyHMnBYNSeQ5ODnK3UXCRySfQa/CJHU0uAKx
hrlQ4S9cP0ndBZTkd9fXAXCVftPfZx/k8ov6eBUtHIk9E0ADCePmQMtjPBvHU33S
KJzVyjsCSR5hOP1TEcD8+3b3T9qOxJAuvJXvycotVFyueWO+RHfJvY46Aye865O7
l6009bUVHnEpod1uRb8GSufiMt38yu5tCyM2fckpCL624YwC/pLEEWqqyJP9Mw4E
oqgpexhSAVHZxI3RnuWxmesclM4xA/cI/wl8PQsNZ7fArS0RWlHCYn4lvlz4i886
TSUvys5m4QxVx8rlADvDS6z1HQd2xXtsjq2aYwwxkqxhK/aK/kef2vIEy1zq02TK
aFs+AtwO1jNofEYAQBRsTTlmz7yES7YJ6wA6ClyjKHme1DhHe6JvjX4lrdAsen9x
Tu9hfY0Gi8fg/k3O2NB/g9L1QyeSosgA2xfc3a1f17mtYX/ZGqA=
=IDSJ
-----END PGP SIGNATURE-----

--sd4kvys2evpxroym--


--===============3725732109357913136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3725732109357913136==--

