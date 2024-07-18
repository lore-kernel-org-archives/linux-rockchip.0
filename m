Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A9D7C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 08:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:CC:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qkorx7hTJKAZzAfjxS+8eTzxPA+vccx3nTjBSxiDQ6o=; b=GSpC/5qlK6SL7K9rsqhWcd2zbK
	tI2U4hNyqtO9DH7WpOaa+2kD311S5OgeEGe3em95qecslt3KenWoCdCj7qDUOd7GGCuNaNzJEEpe0
	d9+12ZHTYhONMsSQReVmEEPu7JMGiQOvli6ZpzaTBi+3fKr/ewrJqkcROJlTbE3bFVKifYqtFCxWf
	w6rTaDqQbsxGYAUb5fTuDSp/PzSvUG6vP9IMN2HiS0dntJqbCDnBPotymw5OspS22iPDhHqNmUBkU
	G3BwHSbpjV/ds5M5JQ06igpknJX/QU/U/EiVYT2iAWY1E10twHiSd7yfE4XMiFvnbF5Q35D5+hzBq
	GI90pxIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMcm-0000000GPWe-2mAP;
	Thu, 18 Jul 2024 08:36:28 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMc3-0000000GPLq-2xTB;
	Thu, 18 Jul 2024 08:35:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1721291744; x=1752827744;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=GQ90CfiUp9GQFH+stXjB6UhzFZ658zc2hJxfnnw6+LY=;
  b=yLJo4E5giJcke+jixRX6ndjaiBbHiKGoPY6D4zxF1P3jvB5lfSQ+qX2Z
   YONucjhTfX2o3cdlBlK+bMm1FsojJTWehSILqYNuAkVfQDX9/thGd8vwU
   uJk7HU2dE5hJXKN+yh+Pa94B2lYtJgtDc4BtrWDH+C9a4h2HyE43pnD+y
   j3JvTOq81tmUhuTADaCN5bZcHbk5i5cQ3zH5wYB6iaT2IwUUs5ZUdpHYi
   rTi52VKC9bQoia598hUnfODEoA9AWZx1iyNtWER4rYxQiOoWUmnl0UciP
   fb9ZjUFOuXh6Shm+bCEjMY6FfgVcVBoPn/LhhH1nsP+7azgl0Nw6hu6FK
   Q==;
X-CSE-ConnectionGUID: NM8UNeGTS0KDNHePX5xKhQ==
X-CSE-MsgGUID: MOPJ3pYaRz2lBbyyYGSU7g==
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; 
   d="asc'?scan'208";a="29395384"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Jul 2024 01:35:44 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jul 2024 01:35:12 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex01.mchp-main.com (10.10.85.143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Thu, 18 Jul 2024 01:35:10 -0700
Date: Thu, 18 Jul 2024 09:34:47 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Christopher Obbard <chris.obbard@collabora.com>
CC: Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Kever Yang <kever.yang@rock-chips.com>,
	Collabora Kernel Mailing List <kernel@collabora.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Firefly
 Core-PX30-JD4 with baseboard
Message-ID: <20240718-lapped-suffocate-0216bad82c68@wendy>
References: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
 <20240717-rockchip-px30-firefly-v2-1-06541a5a5946@collabora.com>
 <0c804e9a0227904b16bfb779f2009af1@manjaro.org>
 <e34f1a0a81de24437be7f582c719d3f128d44b51.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <e34f1a0a81de24437be7f582c719d3f128d44b51.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_013543_769774_9A89539B 
X-CRM114-Status: GOOD (  20.31  )
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
Content-Type: multipart/mixed; boundary="===============3323961230386531056=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3323961230386531056==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="M/eED5uvzfX3fiyD"
Content-Disposition: inline

--M/eED5uvzfX3fiyD
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 18, 2024 at 09:31:45AM +0100, Christopher Obbard wrote:
> Hi Dragan,
>=20
> Thanks for the review.
>=20
> On Thu, 2024-07-18 at 06:36 +0200, Dragan Simic wrote:
> > Hello Christopher,
> >=20
> > On 2024-07-17 18:46, Christopher Obbard wrote:
> > > Add binding for the Firefly Core-PX30-JD4 SoM when used in conjunction
> > > with the MB-JD4-RK3328 & PX30 baseboard.
> > >=20
> > > Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> > > ---
> > > =A0Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
> > > =A01 file changed, 6 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > index 1ef09fbfdfaf5..33ca8028bc151 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -148,6 +148,12 @@ properties:
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - const: engicam,px30-core
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - const: rockchip,px30
> > >=20
> > > +=A0=A0=A0=A0=A0 - description: Firefly Core-PX30-JD4 with MB-JD4-PX3=
0 baseboard
> > > +=A0=A0=A0=A0=A0=A0=A0 items:
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 - const: firefly,px30-mb-jd4
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 - const: firefly,px30-core-jd4
> >=20
> > Similarly to how I suggested the new dts(i) files to be named, [1]
> > the model names should be named like this:
> >=20
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - const: firefly,px30-jd4-core
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - const: firefly,px30-jd4-core-mb
>=20
> I suppose the order should be the other way around to match other entries=
, e.g
> firefly,px30-jd4-core-mb first?

Yes. Mainboard first, then som, then soc.

--M/eED5uvzfX3fiyD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZpjTpwAKCRB4tDGHoIJi
0vYvAQChwfkGIE0/32IduBh2GaPYUCNW5YeTpiVEW/KfbjUjKgD/Z5aFyRvBUtXs
pIgZsf1TuAhLvjyp1ogTqoO51XQfPA0=
=a7op
-----END PGP SIGNATURE-----

--M/eED5uvzfX3fiyD--


--===============3323961230386531056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3323961230386531056==--

