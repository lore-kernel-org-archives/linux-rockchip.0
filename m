Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7279DC3ABA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 09:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4MUlX1ghKUJiKQNjDOejNWROGtPRSytLYPD0E15KiZk=; b=Nsf69RGeJyKzkZCf8yld+aC+bw
	8hXeunYtT7Jr3olaxJqdaA+L0MQGMU6pVY31ttPw4jQNsXx7VgKJ5UpytueVBfNVWmTv5fGlwstOR
	ngGNLffINknogA5LrfvNT7QAT8UGsnEQMQxj5UqrsWEpPKf7RJAzzXy180Bhsm8HMGczXfLG+jWe0
	c5i/Ekcc1jsxVzcMMC3CXJA6NjpTBTL7yNcdCD2pLWQFAbx9CHTehzc4BBdnHPQA+kNYR28d8rZB2
	yq+/JnHcMrGw6KGdENjPbM/lcEjsl7pgU3n9jW5jlrjFM+8KPoyMott0sFnRorSwcowQBUtzN/kRJ
	f9GPu5qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq8GG-00000003bQ9-1FFL;
	Mon, 16 Sep 2024 09:43:12 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq8GD-00000003bPa-1JzP
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Sep 2024 09:43:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1726479784; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z/roqKR3HC3eS6zR7CiOFpMW1xbPR69CQ/gNfdnszA2qUA6Kx2UeMjY9DsrbbB533nv6sL7PeXpAi8R24G02NavBG5ZpMXCM9s0Rx2AOeFquvg7vHH1D8y/FfT9Wt4bxyF8PHK8gg/QXCQn5XWHxzWZokHlCDmFIwUT2ByVNDSU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1726479784; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Ln3TGtKpr/kKCMCl+pRoJkVjYsujJDtxs/Bf1eu4/Sg=; 
	b=PZbD/W8rf+cAJmvfuTZAWzbQA3BJu0R2rBle/a5S6xWAUhMSIcnWZ55XIqUEk//e3KI42uYNhS1WI06XkGJMwV6bprnkLnsS6XuCfxI5MyBTennhWA5KktqA0N/OjZlvayiw4e8uGlKnqsrZDUArJA+uAb51xdUuIIcd17NMuiA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1726479784;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=Ln3TGtKpr/kKCMCl+pRoJkVjYsujJDtxs/Bf1eu4/Sg=;
	b=KSFv1FFLt/770GneeUKFEdehJFBwzQrUPnZD4B8ZKg/+BJ6RYinw6Z3gBTNX7r4p
	uQvl/mhaNNZ/mPuPnPJZn7oxiMdq9hgcX0u+y6NpnvNodW1ZHvrN8XyD+BhWT2iXULl
	Il4t420e//RRGYSCz1gCbZ1ja10m5T38fCHhHs74=
Received: by mx.zohomail.com with SMTPS id 1726479781988180.747225407575;
	Mon, 16 Sep 2024 02:43:01 -0700 (PDT)
Received: by mercury (Postfix, from userid 1000)
	id 14143106045D; Mon, 16 Sep 2024 11:42:56 +0200 (CEST)
Date: Mon, 16 Sep 2024 11:42:55 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Rob Herring <robh@kernel.org>, Chris Morgan <macroalpha82@gmail.com>, 
	linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	broonie@kernel.org, lgirdwood@gmail.com, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, lee@kernel.org
Subject: Re: [RFC 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Message-ID: <xzhf67s3qudrxo5xxtt3t6jpquhfhqvihqi34kfiyjp5mhure2@imfsc6jpk7kc>
References: <20240829213102.448047-1-macroalpha82@gmail.com>
 <20240829213102.448047-2-macroalpha82@gmail.com>
 <20240830163042.GA319200-robh@kernel.org>
 <MN2PR16MB2941EFA87151EF7685889EEAA5972@MN2PR16MB2941.namprd16.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <MN2PR16MB2941EFA87151EF7685889EEAA5972@MN2PR16MB2941.namprd16.prod.outlook.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/223.982.64
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_024309_430617_9514AACE 
X-CRM114-Status: GOOD (  21.61  )
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
Content-Type: multipart/mixed; boundary="===============2782599784741481462=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2782599784741481462==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mam7a7prjlnx2bfg"
Content-Disposition: inline


--mam7a7prjlnx2bfg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Aug 30, 2024 at 03:52:04PM GMT, Chris Morgan wrote:
> > > +
> > > +  ti,charge-current:
> > > +    description:
> > > +      maximum current to apply to charging the battery
> > > +    minimum: 0
> > > +    maximum: 8128000
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> >=20
> > I guess this is copied from other TI parts, but really this should move=
=20
> > to a property with a unit suffix. Or these shared properties moved to a=
=20
> > shared schema so we aren't redefining the type multiple times.
> >=20
> > Same for the others here.
>=20
> Correct, I tried to reuse the same TI specific properties. I suppose I
> could also eliminate ti,charge-current and ti,max-charge-voltage, and
> then just require a phandle to a simple-battery node which contains
> those two values in a vendor independent form. What do you think?

Yes. The bindings using vendor specific properties for this are from
before the simple battery binding existed.

> ti,current-limit and ti,minimum-system-voltage though are other
> possible questions I have. Basically I could also create a vsys
> regulator that represents the vsys coming off this device too (I
> currently omit this entirely). This regulator wouldn't be programable
> but would report the existing input current and input voltage for
> the system, which in my case I'm pretty sure is stepped down to 5v
> or less and then fed into an RK806 PMIC (I lack the schematics so
> I don't know for sure). Of course if I did that then I'd have a
> valid reason to add a "regulators" node since I'd have more than one
> regulator.

I like this approach, since it allows properly describing the
hardware setup in DT and avoids the vendor specific properties.

Greetings,

-- Sebastian

--mam7a7prjlnx2bfg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmbn/Z8ACgkQ2O7X88g7
+pol9w/8DSxbQ3sezR4rSi1HkkbPxCXSk1O+y6rDmni0TZs8WTB3ZZGUyzw6ScoN
42AY1V/kglkGxILHxYH/zKar9SSV3AAlG7KT+7R+Vu1c34IeF/IZFpVRc59eiZ6r
vTX+H5otLOQVDHNFBqMEgR5+lIpE4Z8TagezIDQDPV+PybKT1aZA2mA4+nXk0cwM
kn2KiBz74P1ut04ELJ+DF6DaZyp5bP05JhpwgdlBGVOqEGKEOIOoJzBtK/3t26bj
6xg0+NDTj17YdwlQUKlhoHdQFWzG/O70uDffEjbRT0zxQ6uekSuiPyZIJ53FEx43
KrnaRAQTum4fAPPknTFjxzn6p4lu4Py7avOuDsINYdZJxOAd3eSkmnPwO1xrMS1I
o4jLA5luguPqpSbiOEOhra2DZHFNLqBQHp0/nQL8RWvNt0MfVNA8K8++q0IVTbB4
gPGBAEQAWO/j0KyjhHM0YsCCndJynFdk7a6lCJwpti3pjAklitW6JzxTIV5DfRyh
W51W4fPI4A7799NNJ67x7nQWPLa/LJAKC+FB5OsVYC1uK3JQLKQLnXvNs7ZQQodJ
azCIb5OsMRzkNDSaolVVulpxarCxS+TF9qSC8LliR9lU30Nd6cqTXXQayaM30xO6
d3WcHZ8aHd1ZqEi+XxFuH+mdpRPkxBWaUDc697udn/Yyhh4MPbM=
=ENeA
-----END PGP SIGNATURE-----

--mam7a7prjlnx2bfg--


--===============2782599784741481462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2782599784741481462==--

