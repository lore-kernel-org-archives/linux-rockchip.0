Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F9B8D277C0
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 23:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IF8G91J6oZVQIh2vMiCklouqsGL/J9wwKWcnYUnXCwM=; b=obVrJq3VAAGJHrha3IVkQrxbqL
	8+k/55k/qQxb/3Id5SA8pJj9cNJ/q+uT+McevZAfEpJpSgkDWpuvE/F7zuc2c1dyCA3Fw6/wYct1l
	Dz+Mt33Y4rwEy9gLL8Ty5mBhVh5+hLXRuH/LKYv8mw/y1LzV4TS45SPLqlLCRMEZHEy5nHoVW/iKL
	igrsnIr78gHLXZ7gqXGhZfmdESp8wrusZdO8ZLUzAfui65qmiSKcM3j5cL8DdD0D9Eg9kAxiEadmT
	cqxmJ/078MQiwDO5J+tnUGOQi/Ec9HPVpXpZBVugLU1FzVatfgZ/MNVasFfcN1l4gMu3dqsZWVOoj
	XDJb0Frg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veLyl-000000036mg-2FBD;
	Fri, 09 Jan 2026 23:33:15 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veLyi-000000036mD-0B6Y;
	Fri, 09 Jan 2026 23:33:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1768001586; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UuqtoimCKycqATVCmYvA5wN2QVJTbdNvuYcJvHuiqPTpBBn3T4FFDF+/TuiZTzPaimIMaY1PHqsLEB70MqeJsjfxHEmZO6dbHWQwwKbQCSqtvRd3775dflGyBw8jk3wmOrMitDx6ynKk2RNkmN3nYAJ5LJoaetkLOBLEd4nxIPo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768001586; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ip/UXe10fc+MS3MGXE6yum5B4wQ9BUfHd/7YhJmX2/s=; 
	b=IQVJQpkJsMiLgzuPJFpH2RHpcGJqMzF8QiAXJmxnEpgXiz9yz/MXzlu9Oe9D7DRW7eMBSvtHht/s8KffmU76uYG04h18Tg5BBo8szNK2IHuItc+5QbfT0YtcNwFmUk7vtCwZVZmMiZEfr/UeZkwBo5AKPAFRhc5MZ0ELSr9FGN8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768001585;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=ip/UXe10fc+MS3MGXE6yum5B4wQ9BUfHd/7YhJmX2/s=;
	b=WVGAiXVQxUCcN0mn/14w7IS0TAhfjKnpPJY1wrkGmNeE/Wc84HrT5NESYjVmQbqn
	BSNbUgN5ZY8Dl+8rOXZCUst+fKf2tIu4U/7DqV2chNkJtrayPHhcynfSkW50Xwe/O0y
	jeP7msVlUwQl6lwYJn/vXRaJZiBTR3Syaxs3FcLA=
Received: by mx.zohomail.com with SMTPS id 1768001584458598.651984333586;
	Fri, 9 Jan 2026 15:33:04 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 7502B180632; Sat, 10 Jan 2026 00:32:59 +0100 (CET)
Date: Sat, 10 Jan 2026 00:32:59 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix
 USB host phy-supply on Rock 5b-5bp-5t SbC
Message-ID: <aWGLE-zcPUvQj3Q0@venus>
References: <20260103083232.9510-1-linux.amoon@gmail.com>
 <20260103083232.9510-3-linux.amoon@gmail.com>
 <aVkfNBUDUumzV0-X@venus>
 <CANAwSgTmAbswY6scsxj40B7Y6QbnkqWPuCqyevRjdtHNemq0aQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANAwSgTmAbswY6scsxj40B7Y6QbnkqWPuCqyevRjdtHNemq0aQ@mail.gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/267.941.65
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_153312_135542_1654CBC6 
X-CRM114-Status: GOOD (  19.86  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, FUKAUMI Naoki <naoki@radxa.com>, Yongbo Zhang <giraffesnn123@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3309232633897254903=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3309232633897254903==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ji2p36iqphckh5dg"
Content-Disposition: inline


--ji2p36iqphckh5dg
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix
 USB host phy-supply on Rock 5b-5bp-5t SbC
MIME-Version: 1.0

Hi,

On Thu, Jan 08, 2026 at 12:25:12PM +0530, Anand Moon wrote:
> Thanks for your review comments.
> On Sat, 3 Jan 2026 at 19:35, Sebastian Reichel wrote:
> > On Sat, Jan 03, 2026 at 02:01:18PM +0530, Anand Moon wrote:
> > > The USB host USB2 and USB3 on the Rock 5B, 5BP, and 5T is powered by the
> > > USB_HOST_PWREN_H gpio pin which is used to enable vcc5v0_host host
> > > regulator which ensures proper power sequencing and management for onboard
> > > Double-USB-HOST.
> > >
> > > Update the u2phy2_host node to reference the correct phy-supply.
> > >
> > > Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > ---
> >
> > u2phy2_host is connected to an onboard USB hub chip, which is
> > powered by &vcc5v0_sys as the comment says.
> >
> > You can see this on page 9 of the v1.45 ROCK 5B schematics (page
> > name USB2HUB). The usb hub chip uses VCC5V0_SYS + VCC_3V3_S0 and is
> > connected to USB20_HOST0_DP, USB20_HOST0_DM. The related USB
> > controller for that in the upstream DT is &usb_host0_ehci, which
> > in turn is using &u2phy2_host. Thus at least for the ROCK 5B the
> > existing DT is correct. Properly describing the downstream port
> > VBUS regulator would require something like the following series:
> >
> > https://lore.kernel.org/all/20250911-v6-16-topic-usb-onboard-dev-v4-0-1af288125d74@pengutronix.de/
> >
> Actually, the Radxa Rock 5 B doesn't have an onboard USB hub chip.

Seriously? I provided the exact page for the hub chip in the
schematics and it's easily visisble in lsusb too.

I don't want to waste my time and expect a certain level of quality
and this is certainly way below it...

-- Sebastian

--ji2p36iqphckh5dg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlhkCcACgkQ2O7X88g7
+prHvA/+M7sp9VJH7UdtTiVJGGZ9l3hhpP5O7HgHICqTrIgVNtvjPmkc57SavFen
l9ivYV9dv0MwfPe5/nUhiAOeQAXcCTdzHWXSeu8GbSCahVG7OMkmKCLkXmaWXXMJ
BUpPSZJpshXjjb5ETgq/tOLb68UBwJNrqYf8uf5xHvjJNUqI4EVwViRcYKboB8V+
tgoeX+7QO5YD3BcrVA42PQ7lc2gAgPNcP4+aBYvZKxq/n+WDLKlqbPkv2rPGr5TQ
oQB9p6roVUCoVWZa0mC/qv72C4S0m8Q14GGK0rIePuZk4vVaoI/d3P8nsJWKWqiL
NMp3acca67TnSea2BBPb6cUJsod+IvPRqFhey2LXPQWFuYESAWlDBIvWeDgyQ9JY
jHXmPAuj6L2lxcJ/NdnRZzpMKWL1G30+Y4XmMG/9Xooey8IM1ev0DAWx+DNfBh/M
zbAjVeyEGeOhOUC4oLXujgYaUDgtaSZIZwU/ycaH6iQ+QBbozjZT/DNoxPHsIgLA
W49ARX9JRaKhGf9+fwlgbDWyZrtgTMBKirSGRG3SkVk+z2zPTpmp1jXnqTLQ5+62
gZTYos9FOMtJDMmTuZ9ZiUU55b0x8S7zSl9TZX+wSkr/bq4inQt19uD/RwgCRdoB
uKk4Wd0dcwFXgNnuzC3NmYXpFLFXBkYx8ROPVUstgM6SZk2e+g0=
=iHOy
-----END PGP SIGNATURE-----

--ji2p36iqphckh5dg--


--===============3309232633897254903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3309232633897254903==--

