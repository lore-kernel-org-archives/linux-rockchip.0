Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD00EC531F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 23:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4YsVagV7aamZQgvEeSuzgAuZGlAiy4aroSV9Z1Dsd3w=; b=qZRxYVxjzjbv3jL4QdAZmlo3h9
	pBm5fZAk8FMZPVhtcvxmBrFckchmNO0ebg7ZcpbzCFz03BwpsA0kP+eoJWC9Bn0MKHZIyVGMN2Ggi
	ueLxsLLScJANEQvL2gPr/0kQKkcw0jKYAT6XZ5m5sAALMN7Ddp19fCcOT8byVRxI0gbFhFNuYphFF
	BSpOiawrSFCMp+BPT7oiDb/67O2q99KlRuuEzJUKM9fq2s6gxNPQjQuLapa+iDtYwk3ydGGpaE32I
	weitsPIlFjK+D71b/p+dL4PFzChgPMM7qsPQFxkonbS/fPCHywf5vrDmGi0jw1TEXKPO/KH1oscPQ
	2iTpuyaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnPfE-0000000HNTS-0xBD;
	Fri, 24 Jul 2026 23:50:48 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnPfC-0000000HNSv-1Jv9
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 23:50:47 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1784937034; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VULkOJigyteQLneQWwoudSLWqNQxvc42XI6rY4RN7QGqU519LVBA4Uw7Ks3avVw5CNeDNLXE5UvDymGboihvzl4OByi/14SUUrhdX1oHtX0R0T+6zOy8kX2tJAwgx9oKnmYzxmndEBxQVLo17GKhZChhb15orrrZzF+S/SNQyPc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1784937034; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=z2QRsqk7daq3MztyIpPJjGa56JAZ8ivnXP3yG2EVpb0=; 
	b=QBEcf9IoFaYgMWeBVaI8whSbF/6CRmKn/XVeqGuV8oOTr1aKK86bW6/MQtkjK95tm7MxPKDnHxBKBYzmAgANRaRvqwskuCwAfALE6hSA/rSOJOaWecH/QkN2vCO4bl1qYS038JXIcuhZ028H2u/XOJ1L3APDTXEbO+U2Zt9fdGo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1784937034;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=z2QRsqk7daq3MztyIpPJjGa56JAZ8ivnXP3yG2EVpb0=;
	b=EIRak2y0y+kYlUBbA+U/kkTGIE1HQRliglda0Ufu85x6P2yge8yk5T1vhxLcz74H
	RKCUV37fvapTHRIX1Sraa6uIo0t7gOHewTNMuaZ+dwFQrJ7dCya7tg18NrrUR+yvzwt
	cPCqJ0L1lz10e5/2sBrdRC3ljOaBMTS5WSqj6K3k=
Received: by mx.zohomail.com with SMTPS id 1784937031509923.2465304793352;
	Fri, 24 Jul 2026 16:50:31 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 2BE0B181F16; Sat, 25 Jul 2026 01:50:28 +0200 (CEST)
Date: Sat, 25 Jul 2026 01:50:27 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	xsf@rock-chips.com, heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V9 0/4] Add Anbernic RG Vita-Pro
Message-ID: <amP3nfQCPfmbN8WR@venus>
References: <20260722165806.161020-1-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260722165806.161020-1-macroalpha82@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/284.919.37
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_165046_402245_6E68E817 
X-CRM114-Status: GOOD (  30.54  )
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
Content-Type: multipart/mixed; boundary="===============6200313753876468300=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6200313753876468300==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e36kryrmn767kiiq"
Content-Disposition: inline


--e36kryrmn767kiiq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V9 0/4] Add Anbernic RG Vita-Pro
MIME-Version: 1.0

Hello Chris,

On Wed, Jul 22, 2026 at 11:58:02AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the Anbernic RG Vita-Pro, based on the Rockchip RK3576 So=
C.
>=20
> Changes Since V1:
>  - Updated documentation filename to matche compatible string.
>  - Corrected order of allocating IRQ in charger driver and switched
>    to using devm managed function to allocate work queue.
> Changes Since V2:
>  - Corrected issue with naming of panel binding document and added
>    fallback compatible string.
>  - Switched to devm helpers in panel driver. Note that
>    devm_drm_panel_add() is currently only in the drm-next branch.
>  - Optimized setting GPIOs for panel driver.
> Changes Since V3:
>  - Fixed numerous issues identifed by Sashiko bot, mainly relating
>    to unclamped or improperly clamped values from within the
>    charger driver.
>  - Corrected hard-coded values in the panel driver unprepare routine
>    as well as correcting an improperly checked return condition.
> Changes Since V4:
>  - Fixed errors identified by Sashiko bot on charger driver that could
>    result in an improper value being written to the registers.
>  - Corrected some error handling in the panel driver.
> Changes Since V5:
>  - Corrected minor errors in documentation and added default values.
>  - Further corrected clamping behavior in charger driver.
> Changes Since V6:
>  - Additional corrections as suggested by Sashiko bot to fix potential
>    edge cases during probe for sgm41542.
>  - Corrected an improperly shifted value being written to register for
>    sgm41542.
>  - Changed a MV value to UV in sgm41542 driver to simplify function.
> Changes Since V7:
>  - Added PM functions to sgm41542 driver per request from Sashiko,
>    which stops the hardware watchdog during suspend.
>  - Switched from device_init_wakeup() to devm_device_init_wakeup().
>  - Confirmed a state change in IRQ handler for sgm41542 to ensure we
>    don't update input current limit except when the vbus goes from
>    not okay to okay.
>  - Removed panel patches, which have already been accepted upstream.
>    Please note that this *may* cause an error about missing bindings.
>    See commit 0fd6ead8270270d859a28d0196a4b47e7d6845b8 in linux-next.
> Changes Since V8:
>  - Added linux/bitfield.h header to prevent compile errors on certain
>    platforms.
>  - Added regulator to Kconfig as a dependency.
>  - Added mutex to IRQ handling function.
>  - Added update to watchdog enable field in suspend routine to ensure
>    watchdog status "goes back to the way it was" after resume.
>  - Sashiko complains of an issue if userspace updates values after
>    devm_power_supply_register() is called but before the hardware
>    limits are set from the device tree. While this is possible the
>    threat of a problem should be very low given that the hardware
>    limits are set immediately afterward and would overwrite any
>    wrong values from userspace (should happen within a few
>    milliseconds). Unfortunately, given that the function to get these
>    limits requires the power supply be registered in order to read
>    the battery node, it's not something that can be easily fixed at
>    this time. Since it's an *extremely* unlikely edge case, I think
>    that's acceptable.

Looks like there is more sensible Sashiko feedback. Regarding this
one you can use this new functionality:

https://lore.kernel.org/linux-pm/20260721185904.40756-2-vincent.cloutier@ic=
loud.com/

It's not yet merged, because it needs a user and I had some feedback
on the follow-up max17042_battery patch using it. But I can take it
together with the first user, so it's not a blocker.

Greetings,

-- Sebastian

--e36kryrmn767kiiq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmpj+j8ACgkQ2O7X88g7
+pqplw/9GzDVjxDOFKYHWGpcjeavUnnv0Rf8DfITaRBPfPeuKlA7lHnLsUxByCL2
Kq7MrW2GzGVTTOnH0QFo7tKjhHkochlbshsRoYRwILjKslWMoYtaGwmV/Ldu2S/3
ObGTj9vPBTTBXs1gKuHDrhmRE2sCIXMhgmuuvCwCiXnaGrEnX2K4exe9iCwPmG1P
4luRYsljjrS34FCcyGcgRYwIwXx7P49a1ZrTISORs5Q5reBXK4JsS+OAEH6DPwXQ
A+OqaSW1yXMh6l6dqZeZ2/L9MpnXCFFBeaKRi/ySq7pmkAWRiEvooLkbDY6r1yJD
3vFa7Z9AI1axbT1PBq1xXy6qSkKydntcuAVzEkpXwEpHyYvF6Fje1pYA9IrR7doP
medaXyPyYxB0jKFi/fGMHcMjUNSGj96LCFDKBLPQDI7iKrZ1+kZyvV2UtJADo6lT
2+rO+Xg3SyEJFaLDyr+qGb2SApCLsorSjEcMzOgc4OT6zNHFNQOBl2bmoeskf24v
KxDOnfhr+pSCSNxOZBy8xnKQiz4L2B4rmoTRGoS9G9tXkOFzyZEDWfWlCDBxTp5u
a6XsTgzz946RjJwOtkQYw2vPyeJr5FoXYceiw0N7wxgVaFeHR1HWY+QztAPbLgoa
y18cklEp5A3C3TeMEeloHD4JC28rq4y1WABdLkQuj8F9cY9OQRs=
=Eoet
-----END PGP SIGNATURE-----

--e36kryrmn767kiiq--


--===============6200313753876468300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6200313753876468300==--

