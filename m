Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61D1AC982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AhTyVd4qbyRwIOaQH0D2o3eZl/8zW+APg4KNM6LlNFs=; b=Mq3BaumALoHcjHfaukt3C5Z3CD
	NcXvZecfDIe+EIxoZYQ/LdGNF1DsysHzijpfeB5GP5N2UUbdi8JbMpnhcyqHA8rekTlI0dLIz10bL
	LkK84FIER4ZOuGTMMiBYZuf2r1RhBTyIAg7GlQKgotR+TsSRlCie0g53/IXo0u9Bz8lgtE+zW35lu
	WAsLcQnI8JjwDyj5kUVNAB/dtbd3KQhamZbRlTWvsy0POAMB72ELphdSE7OYkJn0C9YtWCWCTP5X0
	m6cPcZDK57SrSND4skK4Ta1HX0zUzMG3OL0XdtqWRgah0Gb6ENSLGuIqk2vlZtNL4kRtpfaY13D+Q
	+lmPgmTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x91lT-00000005jh5-1Wai;
	Tue, 22 Sep 2026 14:46:35 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x91lP-00000005jfm-45iC
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 14:46:33 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1790088386; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lINpbbHL8WlWkG1i8bb+xXn09sYPqdyfwfc33YCyvTUo0Jt9mTXD9i7JWSNZzhr3fzHwptTl051hqfG3mTgziQPzC/95iia+TLPtePCySYl4kGzGcOoiRW2sz9JIaE6ZGXBaLPPMEPYSA6DqsO3cp34mlQjHFEDq5Bi+TwVF/LY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1790088386; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Qwx+kJuQICvSPr4P3roIQDm9q++mxK6wM7ysb0fmGAI=; 
	b=N2jecwrujmVKknUdnZI8hpwvaQr4rHX3lmMIasWRHTo+M+W6isMc+5Co5h5BM1+HFjrvtT/bcvLYbCJOcOKOrlw4nYWGDTiuerDr8X2xaN1zB64S6TuYV1/pgGE54JIZyk4vewHwCbvdDduYiBLq1VG0Li9L79QUp5ppH4NnbAA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1790088386;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=Qwx+kJuQICvSPr4P3roIQDm9q++mxK6wM7ysb0fmGAI=;
	b=atHxtnb5L+z/h5X+XQtl3C6XGLBqqV9tev/82tkYT3Ybs3OsVcwCgXf2p7Too6Kz
	W6kXdnVxcx1S/NVQ2MQqvQ2gVX4sWDyHIJbQ2/t4LxXjmwdpFjDKT9Oqvzka3dpQYmV
	zHU/pTzCmaYwyGzL2Ihox7mtEBB2BQiCmC2BIetM=
Received: by smtp.zohomail.com with SMTPS id 179008838367530.32193819537838;
	Tue, 22 Sep 2026 07:46:23 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id BBD671805B9; Tue, 22 Sep 2026 16:46:20 +0200 (CEST)
Date: Tue, 22 Sep 2026 16:46:20 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/4] pmdomain: rockchip: fix clock leak on domain probe
 failure
Message-ID: <arKUZKPoySJBQ8Tz@venus>
References: <1789733258-10133-1-git-send-email-shawn.lin@rock-chips.com>
 <1789733258-10133-3-git-send-email-shawn.lin@rock-chips.com>
 <aq1yU47vQT5OnxLo@venus>
 <27e3944f-81c6-48e4-8033-e30ae70f8e26@rock-chips.com>
 <3fa0fcbc-b6ff-4934-bb7d-b763d6f5f818@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <3fa0fcbc-b6ff-4934-bb7d-b763d6f5f818@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/290.71.86
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_074632_280621_0696391E 
X-CRM114-Status: GOOD (  22.40  )
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
Content-Type: multipart/mixed; boundary="===============4049335711642673855=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4049335711642673855==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q5tkxria2nmblprg"
Content-Disposition: inline


--q5tkxria2nmblprg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/4] pmdomain: rockchip: fix clock leak on domain probe
 failure
MIME-Version: 1.0

Hi,

On Sun, Sep 20, 2026 at 09:15:52AM +0800, Shawn Lin wrote:
> Hi Sebastian
>=20
> =E5=9C=A8 2026/09/19 =E6=98=9F=E6=9C=9F=E5=85=AD 8:13, Shawn Lin =E5=86=
=99=E9=81=93:
> > Hi Sebastian
> >=20
> > =E5=9C=A8 2026/09/19 =E6=98=9F=E6=9C=9F=E5=85=AD 1:21, Sebastian Reiche=
l =E5=86=99=E9=81=93:
> > > Hi,
> > >=20
> > > On Fri, Sep 18, 2026 at 08:07:36PM +0800, Shawn Lin wrote:
> > > > When of_clk_get() failed in the middle of the loop, the references =
of
> > > > the clocks acquired so far were leaked instead of being released by
> > > > the error path.
> > > >=20
> > > > Fixes: d909072d0521 ("soc: rockchip: power-domain: use clk_bulk API=
s")
> > > > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> > > > ---
> > >=20
> > > Right, but this should switch
> > >=20
> > > pd->clks =3D devm_kcalloc(...);
> > >=20
> > > to
> > >=20
> > > pd->clks =3D devm_kzalloc(...);
> > >=20
> > > at the same time to ensure that clk_bulk_put() does not run over
> > > non-initialized data. Otherwise
> >=20
> > Good catch, will improve it in v2.
> >=20
>=20
> I was too quick to response, but didn't looked into devm_kcalloc, just
> guess it didn't zero the data from the name. However it does zero the
> data by passing in __GFP_ZERO. So I need to respin v3 and drop
> devm_kzalloc change.

Sorry about that detour.

Greetings,

-- Sebastian

--q5tkxria2nmblprg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmqylLUACgkQ2O7X88g7
+ppJ/g/9F/SNd3BhsI5ZrZp4u5k9pKbGJhgXPwsDBEqStk4Ya9bfB1Yyvbi73Pxp
iXn29jlgHJfkySob1TY9drXu0zUvfkYN+f/qitKodyC7LiIrcxMhETy3echyp9G7
+sR/CcY99MCYksk+s4yzMWXRO5cuFcwLYcuHk1YN1Q5/hpfnp+aUEhWrDdzE7Q5Q
DAZ1iYkrDT8fvYeY9JHlvCEF92KMKqybcEPCCiLQAWPR3IEAnfGvJkFmV5pAme9p
w42yj4TJUkVRVjR3hFVYDLB2Vw0VR1T7541oc5lvGxUNiLNQWk/esSYN5T2dIk21
6N2s7AbQ4XmBg//YVO/Qyf7QAXMPOqaVhLQo1dQAgSqxKsutsMlnaBfi3pIC2d2O
Zbb9WQ66iKzX8F5rqUPjbRsnJDLc94HvZYq+HCqc8Uq297jfVthyC3UbkeTnbewg
fF3xe8Ra4GOr/k2z70vPLySJXRQEzTB9mqju5SahcQ/4JH4Z0SQz06TdoixDb4gJ
sy9PpU80gL2FcK1l7ttYuazjqIqUCCTbBH7XHz5L2T/wowWuWHuTKFLfisEAGhHg
+KCqogjFJd2PR2/dEcquwwX1wgMYMb1nImjTLstOk7hf5H+SpAnuS6eI6Gp8cRTW
EPQuECwtF/LhjuoWKjXezBoIjtV9F8CLYyUrDQOwXRqEDOLwP1w=
=fNV2
-----END PGP SIGNATURE-----

--q5tkxria2nmblprg--


--===============4049335711642673855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4049335711642673855==--

