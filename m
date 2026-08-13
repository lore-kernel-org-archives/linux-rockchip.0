Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB05FC5CFDB
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 20:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YAWbJu7SCkrTpm2MHLe1f25o+FcdkvC1pFsrwDw4ylo=; b=iEcFk2NWtCMqpQagL0HtX4GoeL
	phfIhemnKECQPOCF5gNq4BVo9RGhSAovPQSNkgmPGMtB+EEzFwxD918KbNRApnJchFX4oxmCKgvxf
	Dy7/SvQvcV6TTonaTwuxPsDpt+t48fUzP3GSd0UqWAnsA8qOTm1oeNwSAF0rYGwk3QJwmQ7EhDIBt
	QxJXJe1c/voz7cK9uTTUTkgt9gfDOho6CdOvTua0YG9OS4voAik1Qiyz22Rn3FvD/UtiI1yI0TRwP
	VhBdfTa5VMOC04WdN7O7xjr+LdiBNCUZnLMeDur8ugaU2g+xqeJ6e0Qrkuw0wtq2clhXB92g6fYFT
	Yj6jZAaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wubkQ-00000001UBK-0OPn;
	Thu, 13 Aug 2026 20:09:54 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wubkN-00000001UAQ-1Lg7;
	Thu, 13 Aug 2026 20:09:52 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1786651775; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=QuLirXPt5BadyF56kxcV7RpVfiX+W8ULrUlISL+kCq39DEIOvY2mZGSiXw2UYKo9jY3L9xUxgioFcE+X4JoIk5ZbQm+klPh6YCiGa9dfL+zjwiUeENNzz5RwDEXuk8KJy59qqdwshvZSyLjXJW0F/DC2Xi4t/XCaA3ecZjXLo18=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1786651775; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wYX3IWBUSlf5Bzq6EXCgHA2/MniDqh1E1KTOAHUizi4=; 
	b=OLDjZZEoCDqYK48oTSNu+z0N7mH7PjPvUvps/7wklwvtXJnehjiZeLlc1dmYhx37bqBCHpnUQeTAaCNaxcGh7bQG7rd7HxrNvnv4KgDyBdK9Rh4fkDaoow9/OJHN8pxkI3QQjPNZrrd9rlRXZg3jDx+4+l10hezmBJJzkowHppg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1786651775;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=wYX3IWBUSlf5Bzq6EXCgHA2/MniDqh1E1KTOAHUizi4=;
	b=VHDC/2dKmnIv6lIjguOcovG9WnAAGS1OKlYKB03DXqVOu7AyYhL7w9cnBJCaEGXT
	3L5CImNlhpuhaxoJwIVKbTlESoR0U8klxMkIewC3HCz2rS41ZEqze5e20NRBPF/tjFo
	yFdc+0V0Y++kC1cbacxZ9lZpk+fVk+VI27Bx6Y5A=
Received: by mx.zohomail.com with SMTPS id 1786651772265519.2060889513351;
	Thu, 13 Aug 2026 13:09:32 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 7E2F41806FB; Thu, 13 Aug 2026 22:09:26 +0200 (CEST)
Date: Thu, 13 Aug 2026 22:09:26 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: Andy Yan <andy.yan@rock-chips.com>, 
	William Wu <william.wu@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Yubing Zhang <yubing.zhang@rock-chips.com>, Alexey Charkov <alchark@flipper.net>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, wmc@rock-chips.com
Subject: Re: [PATCH v13 00/35] phy: rockchip: usbdp: Clean up the mess
Message-ID: <an4hLPQXY9eDrKq8@venus>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <alfM6dFBovHMaYn2@venus>
 <ae33b62b-a207-4f4d-991a-08e003b36abe@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <ae33b62b-a207-4f4d-991a-08e003b36abe@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/286.649.17
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_130951_424820_DA65415B 
X-CRM114-Status: GOOD (  26.82  )
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
Content-Type: multipart/mixed; boundary="===============1585573603682222332=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1585573603682222332==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="acdouwty4afdh7fq"
Content-Disposition: inline


--acdouwty4afdh7fq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v13 00/35] phy: rockchip: usbdp: Clean up the mess
MIME-Version: 1.0

Hello Frank,

On Thu, Jul 16, 2026 at 10:50:55AM +0800, Frank Wang wrote:
> On 2026/7/16 2:24, Sebastian Reichel wrote:
> > I've gone through the Sashiko feedback for v13 and I do not plan
> > to submit a v14 for Sashiko feedback at this point. The issues
> > it reported in v13 are either fixed in later patches - especially
> > all those "pre-existing problems" - or do not apply.
> >=20
> > The series fixes a massive amount of problems in the USBDP driver
> > and unblocks USB-C DP AltMode at the same point. It would be good if
> > we get this into 7.3, so that the DRM series is unblocked for 7.4
> > allowing users to have USB-C DP AltMode in 2027.
>=20
> One thought I had was whether you've considered splitting this
> patch series into several smaller, targeted series, for instance,
> one covering code optimizations, and separate series for distinct
> groups of bug fixes. This would keep each series lean and easier
> for maintainers to review.

The PHY maintainers don't want to get series with dependencies
and Sashiko is also bad at this. Sending just the cleanups and waiting
for them to be applied would be an option, but then we will have to
wait even longer to get everything landed as that blocks the later
and more important patches from being reviewed.

> > My proposed merge strategy is to route everything through the PHY
> > subsystem as the changes in the DWC3 driver are not very complex
> > (purely additions), so a merge conflict should be easy to solve.
> >=20
>=20
> On the dwc3 core changes, based on Rockchip's internal testing and
> experience, runtime suspend does not kick in as intended during
> hotplug events. The dwc3 core uses a default autosuspend delay of
> 5 seconds (defined as DWC3_DEFAULT_AUTOSUSPEND_DELAY). I think we
> can try to make this parameter configurable via device tree
> properties, as this approach would result in a smaller, less
> invasive change overall.

I'm aware, that the Rockchip vendor kernel requires runtime PM to be
enabled to have working USB-C. I consider this a hack. Things should
work with or without runtime PM being enabled. Also the autosuspend
delay is a platform configuration and has nothing to do with hardware
setup and thus does not belong into DT. If you require runtime PM to
be suspended, you should have an explicit call to e.g.
pm_runtime_suspend() anyways to avoid race conditions.

Greetings,

-- Sebastian

--acdouwty4afdh7fq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmp+JHIACgkQ2O7X88g7
+pqUvQ//bumFBFq7By4sstzWiTEyfb0tEMbV+FDRe2ftsDWFRf3fLWyk+v6Hg97k
dPrimjv8jQvy3JOSp4MJPDl57lrHc4a4ZGcVKTmDyuh4ARLkMWL/2R2WhaBapQ0u
hNPV+LrYCpUov0TUudtL2g08rUhnLzHQgWtA9qoSDIoSzjsHRDHI2Rm5jIVPAblq
tvITHdHhISqmdMfNrFDG3dqPU8Emnx7l3NHzAtIQkL34x5oKXZagDFncE84mYqPS
mVsFSP1TQQe3jzduDpjvCi3Ax9fcO51qK+XoSrAoQP5+HXClitdMF3QxA/4EpvbK
B2A1Ism4Je3+5XzA4ZVtqj3uJzEs+FpucuF7pQpSsaR6EJkpeoNYdSE6o/Gj1oes
3rReaDJkpO8nKHndJnCgdd4iid/WyRGNOeja/ehcSGV7zJQf4Jb+3TSfJvNY+aM2
I8UDd2lCjnhC3IVeW5nnmtmGioebTar782QRkQd2fMMGV/GGxV9EugtZufcdQss+
S2L2ZvuciGwtOBBgN6DAi3dsFqR/2pyneQwdLokruENKJLANWkGL99i+XgSXMXlt
kRDCO596llbo7LGGqP3dr2Uz42PGIIAQJIxQZkGQicskZg4nlIDR/RcnXueJ42g8
5EYrEVr39ej5/Fb145mRkd3IaKUwQngCU4ohils+cpw2TDx1f6g=
=96Tj
-----END PGP SIGNATURE-----

--acdouwty4afdh7fq--


--===============1585573603682222332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1585573603682222332==--

