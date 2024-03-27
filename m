Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C6A2C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 17:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WNo+HB0oBv00UyitZbnXY6sa/Spq0ufR7sI/egRlf7U=; b=MZfN6v0gWZ5w9ns1TzPtpJg57n
	pXKnVB4OoRH/kxmQ1ae1oTHi5KwWQio5pjZpGHvrNTJGq0lTs524zJG8pw08bcBxNlM/5ZczEQiZZ
	lYYT5XikEs0yRjgv6VanHKFX68gUl2QUXOd1799wd0qO5bw4x4pjJKWIUOi+jtVuOJYJggYLeA1IF
	JHPHBRjpoq57w+WnKuEQ6y37lsewN0IVWbh6W5CKjksUEHDaACGEt2vBvYPgdH1k5SMk+Qy7ChEjx
	dmyxcvI5QzdGhJknBatkUHAdFYpxDItHfrRGj7KZwrUpmIkwyRCmCAV/iiNY5HX44tvr7rchwOMJu
	W+84CM/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpWyH-0000000AH7U-0KIr;
	Wed, 27 Mar 2024 17:21:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpWyB-0000000AH5Q-3lIu;
	Wed, 27 Mar 2024 17:21:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1A1AF60C44;
	Wed, 27 Mar 2024 17:21:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BB83C433F1;
	Wed, 27 Mar 2024 17:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711560106;
	bh=xROqHGua4j6HcszJt7ZG/hqG8TaOs2PmwN195yXx6hI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RkImE1FJHLz0Xv9jw+4vLwPD8Oq+E3m9s1Im/KSpkWfV5O3b3fs1Wx2oQmZ8jY7SM
	 vOPzxfL5oLH4VnEC9nvuwnjMM/3vkesrI9CxY2eJkgSbsmwVcuBzwBV2gY0D0WNE4T
	 9/AtNS0r+mJhHpMjMKxAqxBOplYBMo7+NcpOCZQbVCEXHB+lQZPCr7S5a31aB1bEVH
	 Pb6sNCHY9W2OhkVIP5svVIa40CCJXyb+3KXjJi9WEzLQMv63gDNV36olH6RKwwkXvg
	 fw79W+Ko4rNsLJ6hqCA/6agFzRl4EVzUiZJbkNxCVTBmGaSTV1RAxQ4CaezxEHa5J8
	 fllbgdiEyUiAw==
Date: Wed, 27 Mar 2024 17:21:40 +0000
From: Conor Dooley <conor@kernel.org>
To: Folker Schwesinger <dev@folker-schwesinger.de>
Cc: Dragan Simic <dsimic@manjaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Alban Browaeys <alban.browaeys@gmail.com>,
	Doug Anderson <dianders@chromium.org>,
	Brian Norris <briannorris@chromium.org>,
	Jensen Huang <jensenhuang@friendlyarm.com>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe line
Message-ID: <20240327-reopen-subsoil-4b8434cbb41e@spud>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
 <20240326-rk-default-enable-strobe-pulldown-v1-1-f410c71605c0@folker-schwesinger.de>
 <20240326-tactical-onlooker-3df8d2352dc2@spud>
 <436f78a981ecba441a0636912ddd1cf2@manjaro.org>
 <D04O57YQHYI4.1QNGSVKVT44CS@folker-schwesinger.de>
MIME-Version: 1.0
In-Reply-To: <D04O57YQHYI4.1QNGSVKVT44CS@folker-schwesinger.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_102148_242008_9E863742 
X-CRM114-Status: GOOD (  26.01  )
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
Content-Type: multipart/mixed; boundary="===============0834698822772943617=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0834698822772943617==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BktBpU3GHnzCWrgO"
Content-Disposition: inline


--BktBpU3GHnzCWrgO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 27, 2024 at 04:21:45PM +0000, Folker Schwesinger wrote:
> Hi Conor and Dragan,
>=20
> thanks for your feedback!
>=20
> On Tue Mar 26, 2024 at 8:55 PM CET, Dragan Simic wrote:
> > On 2024-03-26 20:46, Conor Dooley wrote:
> > > On Tue, Mar 26, 2024 at 07:54:35PM +0100, Folker Schwesinger via B4
> > > Relay wrote:
> > >> From: Folker Schwesinger <dev@folker-schwesinger.de>
> > >>
> > >> Restore the behavior of the Rockchip kernel that undconditionally
> > >> enables the internal strobe pulldown.
> > >
> > > What do you mean "restore the behaviour of the rockchip kernel"? Did
> > > mainline behave the same as the rockchip kernel previously? If not,
> > > using "restore" here is misleading. "Unconditionally" is also
> > > incorrect,
> > > because you have a property that disables it.
>=20
> Apologizes for the misleading commit message. Prior to 5.11 the Linux
> kernel did not touch the pull-down registers. However, it seems the
> register's (factory?) default was set to enable the pull-down. As it
> was mentioned elsewhere that was the configuration recommended by
> Rockchip. The 4.4 vendor (Rockchip) kernel reflects that by enabling the
> pull-down in its kernel.

Yeah, seems like a bit of a sticky situation. Probably the wrong
polarity was chosen when the property was implemented and the property
should have been the one you wanted to switch to given the default
before it existed was the factory defaults.

> Of course, this has nothing to do with the Linux kernel, so "restore"
> was a bad choice here.
>
> I previously had split the driver patch into two separate patches, one
> for changing the default (unconditionally at that point), the other for
> adding the disable property. As both changes were minimal I decided to
> squash the commits. I updated the cover letter, but forgot to update the
> commit message. Sorry.

No worries. Squashing them was probably the right thing to do anyway.

--BktBpU3GHnzCWrgO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgRVowAKCRB4tDGHoIJi
0vZBAQCa7Y4ALYnndw09ojj/rscvv2/ascq71lwrZORFc7LgWwEA2fBPIlz+6yb+
Su6b6pt5k4wywnxerLOAC3N/zmJbEwY=
=lcb4
-----END PGP SIGNATURE-----

--BktBpU3GHnzCWrgO--


--===============0834698822772943617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0834698822772943617==--

