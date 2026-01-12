Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6009CD2502E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 01:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=contGu9trF+E5//AzVfW72d0Ajd3c0NQRfQ/yQkzet0=; b=fheopXX/4ySfo80HzAgC4gBEDU
	Xaw4A5XhMYOXgsE65PHsyM2ECNmq8qDxo0eH+vtXs2pYRJvPTAiyNCpakJyUW31PknWwxTQIBBogV
	u0AiHSP5WuPG1OR6DzccKXxtia+yctfpctKWDH4Kf67UzEMBaDFkbDywfjkpU3Wt5jGpKlE5uagZw
	mvgr442p5ZO/ZPh4+ynn79ThfBNPhtmVCQCZ8N4f/dlJYY6NuBNepGQCfCBv8Bp2RHfyyadQDo13Y
	Hx/ef8OdWIDvx8CiYYHYhR83IeXp/U4Ky/AToAQMG22gfB9HMDMcnCB5o7osVW0tXWz3Y1mtsxyY8
	GGQCQQCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6Si-00000004cE7-3Iix;
	Mon, 12 Jan 2026 01:11:16 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6Se-00000004cDi-3gBq
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 01:11:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1768180260; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=N21o773jJjDmlswRNxgEuxl+d7tQFlAcAhyZPFLu8UodnACDP34XiR2fkMQFt9fJcOOifJV4MhXxyp3mtj5WplXTkEK9EzKXbG36b8Grpj7aOgVt8NfgRwpG2f7wcKDNn2FQETJ2Z/LQBeILV9F6TLLd49TC5BdAGhZ8LPlLw0U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768180260; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=8Og1eliBvsf3gBefrtGVcyrQDBbVCfL1s/AF126FL2E=; 
	b=f0HH71Rt9sVuw4DXdGSExwXuyCcOs7SrMIWyEAAp6fBRiMzr50oAILoZts5HMIkplBwXGy+18w9zfqkOAojzb3OH0ha45QOyz5JyXovZHgXujddugoMFmFO0ximHPjPjFAkf8xJlGXMQm9/CswoUnyEafqpojseTzXbUaXcZ2wo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768180260;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=8Og1eliBvsf3gBefrtGVcyrQDBbVCfL1s/AF126FL2E=;
	b=ARmG+g8r0Mf0FeRjOC24qOelNP56Zs/VUrG6aj8jH5yo7KB6CIYUrP43UBmMdmq7
	uu/xKAEz1/2r/A2m91GGOgaL29GQvlFQK2fBi1WVoYcqQ5b0Ie/baZ/B1eLkNHi5QMP
	3EcXQ+fr9taxNPJRhfiL/W6Dv4qEPp/GAac3qoOY=
Received: by mx.zohomail.com with SMTPS id 1768180258907118.80627294544297;
	Sun, 11 Jan 2026 17:10:58 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id CF5641803AD; Mon, 12 Jan 2026 02:10:54 +0100 (CET)
Date: Mon, 12 Jan 2026 02:10:54 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Frank Zhang <rmxpzlb@gmail.com>, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, chaoyi.chen@rock-chips.com, 
	quentin.schulz@cherry.de, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v2] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON
 before regulator ready
Message-ID: <aWRG8w8GxzV9gpUK@venus>
References: <20251216055247.13150-1-rmxpzlb@gmail.com>
 <CAPDyKFpx-hxv4QVW+zp8Zbd=-9vvmwsVJ2adem6V1gWLQteYsQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPDyKFpx-hxv4QVW+zp8Zbd=-9vvmwsVJ2adem6V1gWLQteYsQ@mail.gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/268.172.5
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_171112_957173_160EC888 
X-CRM114-Status: GOOD (  30.23  )
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
Content-Type: multipart/mixed; boundary="===============8757094117385676192=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8757094117385676192==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yswcx6kd7kioasxi"
Content-Disposition: inline


--yswcx6kd7kioasxi
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON
 before regulator ready
MIME-Version: 1.0

Hi,

On Tue, Dec 30, 2025 at 03:07:37PM +0100, Ulf Hansson wrote:
> + Nicolas
>=20
> On Tue, 16 Dec 2025 at 06:53, Frank Zhang <rmxpzlb@gmail.com> wrote:
> >
> > RK3588_PD_NPU initialize as GENPD_STATE_ON before regulator ready.
> > rknn_iommu initlized success and suspend RK3588_PD_NPU. When rocket
> > driver register, it will resume rknn_iommu.
> >
> > If regulator is still not ready at this point, rknn_iommu resume fail,
> > pm runtime status will be error: -EPROBE_DEFER.
> >
> > This patch set pmdomain to off if it need regulator during probe,
> > consumer device can power on pmdomain after regulator ready.
> >
> > Signed-off-by: Frank Zhang <rmxpzlb@gmail.com>
> > Tested-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
>=20
> The problem with the child-domain using a regulator has been discussed
> before [1] between Nicolas, Heiko and me. That said, I have looped in
> Nicolas to allow him to share his opinion about this too.
> fauxbus
> My view on is that I would prefer that we try to address/fix the root
> cause, rather than trying to paper over the problem as what seems to
> be suggested in the $subject patch. Or at least I need Nicolas/Heiko
> to confirm that they are fine with the $subject patch, before I pick
> it up.

FWIW my thoughts on this:

I believe the proper solution would be to acquire the regulator at
probe time how it is usually being done in other drivers. I think
this requires restructuring the driver, so that the sub-domains are
registered as sub-devices (e.g. via fauxbus) to avoid the
chicken-and-egg problem of the regulator for pmdomain1 needing
pmdomain2. As this modification is most likely too big to be
backported I think this patch should be merged for now:

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: stable@vger.kernel.org
Fixes: db6df2e3fc16 ("pmdomain: rockchip: add regulator support")

Greetings,

-- Sebastian

>=20
> Kind regards
> Uffe
>=20
> > ---
> > Changes in v2:
> > - Simplified the regulator check logic, trun off pmdomain if need
> >   regulator.
> > ---
> >  drivers/pmdomain/rockchip/pm-domains.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/=
rockchip/pm-domains.c
> > index 4f1336a0f49a..997e93c12951 100644
> > --- a/drivers/pmdomain/rockchip/pm-domains.c
> > +++ b/drivers/pmdomain/rockchip/pm-domains.c
> > @@ -879,6 +879,16 @@ static int rockchip_pm_add_one_domain(struct rockc=
hip_pmu *pmu,
> >                 pd->genpd.name =3D pd->info->name;
> >         else
> >                 pd->genpd.name =3D kbasename(node->full_name);
> > +
> > +       /*
> > +        * power domain's needing a regulator should default to off, si=
nce
> > +        * the regulator state is unknown at probe time. Also the regul=
ator
> > +        * state cannot be checked, since that usually requires IP need=
ing
> > +        * (a different) power domain.
> > +        */
> > +       if (pd->info->need_regulator)
> > +               rockchip_pd_power(pd, false);
> > +
> >         pd->genpd.power_off =3D rockchip_pd_power_off;
> >         pd->genpd.power_on =3D rockchip_pd_power_on;
> >         pd->genpd.attach_dev =3D rockchip_pd_attach_dev;
>=20
> [1]
> https://lore.kernel.org/all/CAPDyKFr=3DGwJ+cO3cW4Ed_LsS=3Dq_JtuuQPDweDpLg=
DO4hBLFXUA@mail.gmail.com/
>=20

--yswcx6kd7kioasxi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlkShsACgkQ2O7X88g7
+pr65xAAgfIFCC7Xr0sfqG7ERXrfaAYI9BzXdSm1e5ugYfrDKZ8YseKGhTTOAqXE
9dUJmISY0WgffJDOQZMdc+FOlmcie165/qepgh4egtZNHC6OxnCwuec/hb3yqU7J
Y/YTepEI/nJcKSFNRruY8pQ9TIYGLAIn1VXSGu6Bx8Zh1r3DVX4CCNNrjEsUBNbC
rjwBUgnN1AwAI2sW033mU0/g0lymztj6uWRG6URFlmFSrqNSM+3hrO9cO7lgNQuy
YCpnwsRYd7FLO8nAYPR5kYzCPO9xFQ4w/pgxUcuQTFI7DJNrCE4/hVpxxoe7lhDA
5wNe5R/pD3910EOC6PH09QQ3k4VtrDIBpTihYm11/unVvfjGUY0eC2KQ+lP6fAyS
h7N4useFHqIMf5am77ZPZ24Sx7eVwYfHYKA1vxlRGKHxCnJnPEwQ1X01+m5s44qs
AVzufidRp1pFpSr9Y27unAEti8t3O8px2bMBSqCyYMOPFVPubyriqzWtQFEjDPr6
gTfFdx6kqcD6rC0VVAQXM28eIZEV8rvDOx3ribZnbQdYetRuKEg3gt379Gzmv7RJ
41ddX+pX8FMsKUPhMUz23eiUIH9dQHPnnCglRDqphtHvjFxizAg9cxAy9gjWwWPY
9/2mgzoBiWD8JmBqgKgHPcaEQoI4TJKry3/kaecWFKrajKE2jgQ=
=1ItU
-----END PGP SIGNATURE-----

--yswcx6kd7kioasxi--


--===============8757094117385676192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8757094117385676192==--

