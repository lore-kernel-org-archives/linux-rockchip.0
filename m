Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2523C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 16:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Cc:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VFXsd5x2ZZHTCMzwwwDDwccqttEDomMKkYujF7R+57o=; b=egN9dFELSUOonH2s50XpD4tu0p
	Tf5Y7Z5CgHPKW7jl5adUeV5NPNByddLDVAJUVedLP4uCENDZtMyDxE+a6YJufVXcOYqSesvsHwJn4
	SxhWdHg42xj5Od0fpk9YUW2IBehpez0ioKp2FHJ38i/JqNoct4FyuOJ8Ltj8uZbTEUiAGZDgjHqL8
	ZeNZ0Xe4qCVt3JyQUf178EfDKx6aK36TKpo8fbLzjI6/teG4aFIlPdrWvWRBssKcSLWYvr/tYfN80
	2fO3inmiD8iNtsCQY8jFrHtverDuEYAOvAh44I5aq3PwTRoB5OtT4GdFPQlxSIAHXP8ZIdObXpNvL
	P/jmmxJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpW2X-0000000A3cJ-0BQg;
	Wed, 27 Mar 2024 16:22:13 +0000
Received: from www522.your-server.de ([195.201.215.122])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpW2T-0000000A3XO-29q7;
	Wed, 27 Mar 2024 16:22:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=In-Reply-To:References:
	Content-Transfer-Encoding:To:From:Cc:Subject:Message-Id:Date:Content-Type:
	Mime-Version:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=jVmOJXz8MFZvDytCaXScOnp+CPymaJ0ZJNEjuWISf3k=; b=osjBcYNJq/cKgUy9AWTyY8hS6E
	E5HLAhY7omewDvChR3tHPmlbqGq5T2YdOAGnaZ5M0cmn71ww8qXth6+OXvYfe1nl+O45vivL9zVmg
	voHjd5t0NE0wivjq8NEIZKIy7Oz2MkS1388qo4lC0yPTuXHXwqdqU3eo8BjHLq9nnaMx0uGpTch5K
	ImjEjU+yoH4m/nIVzGrgoiSGYA0A7puBQ7I5mCekHohziTKpaj7atNdUx/yd8nCgejZNEZjHzWS++
	WrB9zPGqXne7gRdpFt2KxZu7tC4KoBnjhD2RjUDfQsDNASlXkWUhT546ddF5zLe8d+uoAc2gVqzFv
	DX8I6/yA==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpW2I-000Cfv-EQ; Wed, 27 Mar 2024 17:21:58 +0100
Received: from [185.209.196.215] (helo=localhost)
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpW26-000PGF-0o;
	Wed, 27 Mar 2024 17:21:57 +0100
Mime-Version: 1.0
Date: Wed, 27 Mar 2024 16:21:45 +0000
Message-Id: <D04O57YQHYI4.1QNGSVKVT44CS@folker-schwesinger.de>
Subject: Re: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe
 line
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Chris Ruehl"
 <chris.ruehl@gtsys.com.hk>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Christopher Obbard" <chris.obbard@collabora.com>,
 "Alban Browaeys" <alban.browaeys@gmail.com>, "Doug Anderson"
 <dianders@chromium.org>, "Brian Norris" <briannorris@chromium.org>, "Jensen
 Huang" <jensenhuang@friendlyarm.com>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
From: "Folker Schwesinger" <dev@folker-schwesinger.de>
To: "Dragan Simic" <dsimic@manjaro.org>, "Conor Dooley" <conor@kernel.org>
X-Mailer: aerc 0.17.0-82-g6ffc0ed5991b
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de> <20240326-rk-default-enable-strobe-pulldown-v1-1-f410c71605c0@folker-schwesinger.de> <20240326-tactical-onlooker-3df8d2352dc2@spud> <436f78a981ecba441a0636912ddd1cf2@manjaro.org>
In-Reply-To: <436f78a981ecba441a0636912ddd1cf2@manjaro.org>
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.10/27227/Wed Mar 27 09:33:27 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_092209_895846_3763F865 
X-CRM114-Status: GOOD (  34.36  )
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
Content-Type: multipart/mixed; boundary="===============4812939675126626703=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4812939675126626703==
Content-Type: multipart/signed;
 boundary=f7cdc72aa3c9a69fa8ec481bcf6809df63323df0173f7777bf3d43c54eaf;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Content-Transfer-Encoding: quoted-printable

--f7cdc72aa3c9a69fa8ec481bcf6809df63323df0173f7777bf3d43c54eaf
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Conor and Dragan,

thanks for your feedback!

On Tue Mar 26, 2024 at 8:55 PM CET, Dragan Simic wrote:
> On 2024-03-26 20:46, Conor Dooley wrote:
> > On Tue, Mar 26, 2024 at 07:54:35PM +0100, Folker Schwesinger via B4
> > Relay wrote:
> >> From: Folker Schwesinger <dev@folker-schwesinger.de>
> >>
> >> Restore the behavior of the Rockchip kernel that undconditionally
> >> enables the internal strobe pulldown.
> >
> > What do you mean "restore the behaviour of the rockchip kernel"? Did
> > mainline behave the same as the rockchip kernel previously? If not,
> > using "restore" here is misleading. "Unconditionally" is also
> > incorrect,
> > because you have a property that disables it.

Apologizes for the misleading commit message. Prior to 5.11 the Linux
kernel did not touch the pull-down registers. However, it seems the
register's (factory?) default was set to enable the pull-down. As it
was mentioned elsewhere that was the configuration recommended by
Rockchip. The 4.4 vendor (Rockchip) kernel reflects that by enabling the
pull-down in its kernel.
Of course, this has nothing to do with the Linux kernel, so "restore"
was a bad choice here.

I previously had split the driver patch into two separate patches, one
for changing the default (unconditionally at that point), the other for
adding the disable property. As both changes were minimal I decided to
squash the commits. I updated the cover letter, but forgot to update the
commit message. Sorry.

> >> Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in
> >> dts")
> >> Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
> >> ---
> >>  drivers/phy/rockchip/phy-rockchip-emmc.c | 6 +++---
> >>  1 file changed, 3 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c
> >> b/drivers/phy/rockchip/phy-rockchip-emmc.c
> >> index 20023f6eb994..6e637f3e1b19 100644
> >> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
> >> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
> >> @@ -376,14 +376,14 @@ static int rockchip_emmc_phy_probe(struct
> >> platform_device *pdev)
> >>  	rk_phy->reg_offset = reg_offset;
> >>  	rk_phy->reg_base = grf;
> >>  	rk_phy->drive_impedance = PHYCTRL_DR_50OHM;
> >> -	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
> >> +	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
> >>  	rk_phy->output_tapdelay_select = PHYCTRL_OTAPDLYSEL_DEFAULT;
> >>
> >>  	if (!of_property_read_u32(dev->of_node, "drive-impedance-ohm",
> >> &val))
> >>  		rk_phy->drive_impedance = convert_drive_impedance_ohm(pdev, val);
> >>
> >> -	if (of_property_read_bool(dev->of_node,
> >> "rockchip,enable-strobe-pulldown"))
> >> -		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
> >> +	if (of_property_read_bool(dev->of_node,
> >> "rockchip,disable-strobe-pulldown"))
> >> +		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
> >
> > Unfortunately you cannot do this.
> > Previously no property at all meant disabled and a property was
> > required
> > to enable it. With this change the absence of a property means that it
> > will be enabled.
> > An old devicetree is that wanted this to be disabled would have no
> > property and will now end up with it enabled. This is an ABI break and
> > is
> > clearly not backwards compatible, that's a NAK unless it is
> > demonstrable
> > that noone actually wants to disable it at all.
> >
>
> Moreover, as I already explained some time ago, [1] some boards and
> devices are unfortunately miswired, and we don't want to enable the
> DATA STROBE pull-down on such boards.
>
> [1]
> https://lore.kernel.org/linux-rockchip/ca5b7cad01f645c7c559ab26a8db8085@manjaro.org/#t
>
> > If this patch fixes a problem on a board that you have, I would suggest
> > that you add the property to enable it, as the binding tells you to.

I agree, I'll post the patches later.

Best regards

Folker


--f7cdc72aa3c9a69fa8ec481bcf6809df63323df0173f7777bf3d43c54eaf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJAEABYKADgWIQQFbmi0A2l3pTuK+esCQHEyPYq7fQUCZgRHmhocZGV2QGZvbGtl
ci1zY2h3ZXNpbmdlci5kZQAKCRACQHEyPYq7fRamAP9MGs6G0N7CCPyktEFGvWmc
v++fFAIl9dcZbzwkg9Dj9wD+KrYIRbmeqWtdkS3AfQoBJgBfYClulmn68BrCShah
EAY=
=o+ot
-----END PGP SIGNATURE-----

--f7cdc72aa3c9a69fa8ec481bcf6809df63323df0173f7777bf3d43c54eaf--


--===============4812939675126626703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4812939675126626703==--

