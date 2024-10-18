Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50078D2FFE1
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 09:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pCHfzM2kP2I+/+cjMkZKxT7a02jJ+U7g0/MEyUtJHGY=; b=mM5fr8BTtj8SM28wVR4mfPGlVC
	cW2/Qh1NH20Fnte7aprBRa+jK2HpuhYRMPaaN0wc2E2O9Fsalf7STQwvsEtUeMfPlwQHu5xvusxJ5
	7+4/sYNUPh+j5k3qdtTYf5iGICbyzZLR4kV4camVj3QryYTE9l38tvDwuUxXIYGHaUs51KBYEXCmQ
	lhCde2CqJGfqQF6Q8NJSzilo12kEd9gvNUeq98huVwEFH7m/pb7Gc9/XgMYYUJBn2amx6O6nZZy+V
	5IzxeKNXOkZdUfKh0Y0MPI7XYKFmhVATHk57avqf83VXwSwHd+L6aCMUv8nuO4XOBqxGIHUoASznb
	wp8eSjNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jPk-00000000D0F-3n73;
	Fri, 18 Oct 2024 09:36:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jPA-00000000Cwx-1H9g
	for linux-rockchip@bombadil.infradead.org;
	Fri, 18 Oct 2024 09:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:To:From:Subject
	:Cc:Message-Id:Date:Content-Type:Mime-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=F4Q5pjFxV4dLJAhsTivrmJ808iIdznS4J2cV8bWpHlU=; b=igLe0Knc6qW7O4dyasyM8O5x2k
	KnZ35ECwIwMiD/FVUkeOlHw5/KsKas+/zwpcfBPONsxJovVA40/iVZQg7ng/UN3xnoSnZGXKv4Fpv
	uCt4ESc1fIdFKfOOjs8i8/n/yAppbGKjXK4+UmPfsFzN1+hDNuluSesO1YXfMMyfcJugewQ9R3hw3
	Hz+1Q21CXLqI7WtD2ae0m9YcCmRlzVk/YjUtmx/n8r9P5V0ymodWJMUTJTK1xNihQHH+up2zTVB+A
	5zj2STKv/FFeEd7JMWS7Zh4iaNWVhR69RVeWgrCQ8BNbPazMIl2iLZAaliU8J4tpapYgsH7A90y1M
	mIbv7K8A==;
Received: from out-183.mta0.migadu.com ([2001:41d0:1004:224b::b7])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jP6-00000007KDd-2ydw
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Oct 2024 09:36:18 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729244162;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=F4Q5pjFxV4dLJAhsTivrmJ808iIdznS4J2cV8bWpHlU=;
	b=souU73yzW/K6zuqC1wKuvnrpoQvQTD9z8b4a1G4tnQk6PzsFRd6vszZaHIMN83y4N7T8WN
	LieM/rS7hAjtkujqkyxZiNIDz3AfgXqeX8UCQI+ncopXohQz6blbHD6J2CubGe5ozZcB9K
	B9Ys1N9prpCiD2CQWZZFZ0AFTOtLau0ePmSeTDHp7h8+oQb0W3glh1UXySshuG2qu9jJB4
	SyVso3HW4Mje23QMtmGizE6bxiL3iE9i+ABlGk9dpUh7Xd+DFsE/HpANjr4Dpg6DhZ+NZX
	rYJVEy0xf1/XxP4WZGgWMOYEF9TyzdL8GEcLFMzpIxOt12OR6sIdqoDNK1BHOQ==
Date: Fri, 18 Oct 2024 11:35:51 +0200
Message-Id: <D4YTW4DVRT68.1Z97ZHDYWTKHT@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: (subset) [PATCH v2 0/4] rockchip: Fix several DT validation
 errors
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>
References: <20241008113344.23957-1-didi.debian@cknow.org>
 <172841572989.2562611.18254512768409976284.b4-ty@sntech.de>
 <D4X4RACGCRRH.39SMPGMZZ2GK4@cknow.org>
 <D4X8GJV0W6JL.32E469JSATFEP@cknow.org>
In-Reply-To: <D4X8GJV0W6JL.32E469JSATFEP@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_103617_032945_C05AC903 
X-CRM114-Status: GOOD (  18.65  )
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
Content-Type: multipart/mixed; boundary="===============5906056917754458800=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5906056917754458800==
Content-Type: multipart/signed;
 boundary=4e751b745d2d7d1e0292ea89bf0ecffa15671491eb01b3a2ea430744a9bb;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--4e751b745d2d7d1e0292ea89bf0ecffa15671491eb01b3a2ea430744a9bb
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Heiko,

On Wed Oct 16, 2024 at 2:35 PM CEST, Diederik de Haas wrote:
> On Wed Oct 16, 2024 at 11:41 AM CEST, Diederik de Haas wrote:
> > On Tue Oct 8, 2024 at 9:28 PM CEST, Heiko Stuebner wrote:
> > > On Tue, 8 Oct 2024 13:15:35 +0200, Diederik de Haas wrote:
> > > > This is a set of 4 small device-tree validation fixes.
> > > >=20
> > > > Patch 1 adds the power-domains property to the csi dphy node on rk3=
56x.
> > > > Patch 2 removes the 2nd interrupt from the hdmi node on rk3328.
> > > > Patch 3 replaces 'wake' with 'wakeup' on PineNote BT node.
> > > > Patch 4 replaces 'reset-gpios' with 'shutdown-gpios' on brcm BT nod=
es.
> > >
> > > Applied, thanks!
> > >
> > > [2/4] arm64: dts: rockchip: Remove hdmi's 2nd interrupt on rk3328
> > >       commit: de50a7e3681771c6b990238af82bf1dea9b11b21
> > > [3/4] arm64: dts: rockchip: Fix wakeup prop names on PineNote BT node
> > >       commit: 87299d6ee95a37d2d576dd8077ea6860f77ad8e2
> > > [4/4] arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes
> > >       commit: 2b6a3f857550e52b1cd4872ebb13cb3e3cf12f5f
> >
> > Please revert the 4th patch.
> >
> > I must have messed up my testing previously, but BT does not work on th=
e
> > PineNote with the 4th patch applied and does work with it reverted.
>
> FWIW, I figured out what went wrong.
> My testing was correct, but redo-ing the implementation to make it ready
> for submission wasn't very smart.
>
> With ``shutdown-gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;``
> it does work correctly, but I forgot to change GPIO_ACTIVE_LOW to
> GPIO_ACTIVE_HIGH before submitting.
>
> I'll first figure out a better procedure before making a new submission,
> so the revert is still the best approach IMO.

I've now done a new submission:
https://lore.kernel.org/linux-rockchip/20241018092237.6774-1-didi.debian@ck=
now.org/

So please don't revert the 4th patch now.

Cheers,
  Diederik

--4e751b745d2d7d1e0292ea89bf0ecffa15671491eb01b3a2ea430744a9bb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZxIr+gAKCRDXblvOeH7b
biFSAP9UgW4eqqASkSkYTt8RP7eJ9las6XeYd+dsutQV7Sxg/wEA8R9UPgWYv2l9
8EngFl4AJcRtW7RQMxTbNc8+6HF0mwo=
=sBOj
-----END PGP SIGNATURE-----

--4e751b745d2d7d1e0292ea89bf0ecffa15671491eb01b3a2ea430744a9bb--


--===============5906056917754458800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5906056917754458800==--

