Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E638C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 10:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DUb+Fdgj2J9sMiUvto44TrcVkc0g2bfxaeOsCDKiJQg=; b=w82wU+WdGKSWJkzEuJ5meC45ff
	T0oJCFbMcfDO7dd0wgZ8sv9Ck8SXZjhWtQomofinyjw72nQ/uv6vLc9OpEaz1FiGhqOVQQbkbpqUm
	XFW1YhvoeYuNcrQxsjasEKfU1e/t7J57H9DM51CtuFZ/iwqsIGzjgGkr/KiljHPIuxrvHga14g8U/
	/WMqsx3okmE9otYcmhwGaXijm9q5NPYv6cSfAQr44vd9Q3GvSl8LtWsSk0Y5Nau6wNE3L0te29mxb
	sV642dr9Z5J7yioQOcFI4K3/y85MHievu8IUDFA0kxfZSAyXBa4BJIpb4tr0a/I21UVNwStMaYGmP
	WJnKy2zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3xyS-00A0Zz-Ne; Wed, 22 Jun 2022 10:52:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3xyH-00A0Wf-Fi; Wed, 22 Jun 2022 10:52:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BE73261158;
	Wed, 22 Jun 2022 10:52:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCBDEC34114;
	Wed, 22 Jun 2022 10:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655895148;
	bh=rwk8hgLhyEq75QrfTeWAqx8ejeRm0e1M99H+oLicMnk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nX24UuZL9S4TE9/a6fogP5oLkCv/s7fHSepSKb2LVz54fUPotYpsmnEIhfOKUIaCq
	 qImBTvDQ9ZRzZ0YJSI7gJA5n5i6tXJRCUO5IYQh4dWAfJ2N18IwNsGrAH+vlykRvre
	 5WryU7ziTXzslzbjqacGzayPAum1ExcBrGnfiRuJSiOozRlQjrOQKTP50n3uYaGp+E
	 YD7kLVD/9z0b92Q3Y+1iN0M1GpCDKbge6YO59HMXf7zjVX0fLvUuWuJnuamRPwrNBg
	 XVBtKySVNv8jAklhn3X1YwYfz1TCMGwJWXkePEN1WRpMbjWn1J4eJI14QZghK8FoaC
	 r89fOCTTbgktQ==
Date: Wed, 22 Jun 2022 11:52:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Judy Hsiao <judyhsiao@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>,
	Linux-ALSA <alsa-devel@alsa-project.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Message-ID: <YrL0ZkIKF1U2OWNp@sirena.org.uk>
References: <20220619095324.492678-1-judyhsiao@chromium.org>
 <20220619095324.492678-2-judyhsiao@chromium.org>
 <CAGb2v64WsRV_pPsD4BQOjtFXOwca5xVkrXRxyxz2OLvQqKifPg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v64WsRV_pPsD4BQOjtFXOwca5xVkrXRxyxz2OLvQqKifPg@mail.gmail.com>
X-Cookie: Truckers welcome.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_035229_603559_94C51795 
X-CRM114-Status: GOOD (  18.64  )
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
Content-Type: multipart/mixed; boundary="===============6850560329718183859=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6850560329718183859==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BIVYhsqQd7Iog8ZD"
Content-Disposition: inline


--BIVYhsqQd7Iog8ZD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 22, 2022 at 02:02:41AM +0800, Chen-Yu Tsai wrote:
> Hi,
>=20
> On Sun, Jun 19, 2022 at 5:54 PM Judy Hsiao <judyhsiao@chromium.org> wrote:
> >
> > We discoverd that the state of BCLK on, LRCLK off and SD_MODE on
> > may cause the speaker melting issue. Removing LRCLK while BCLK
> > is present can cause unexpected output behavior including a large
> > DC output voltage as described in the Max98357a datasheet.
> >
> > In order to:
> >   1. prevent BCLK from turning on by other component.
> >   2. keep BCLK and LRCLK being present at the same time
> >
> > This patch switches BCLK to GPIO func before LRCLK output, and

Please delete unneeded context from mails when replying.  Doing this
makes it much easier to find your reply in the message, helping ensure
it won't be missed by people scrolling through the irrelevant quoted
material.

--BIVYhsqQd7Iog8ZD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmKy9GUACgkQJNaLcl1U
h9A7MQf7BlCSyORrbv1Z1U1fwvocqMOp/zQ3ScF3gRjRuDSNSrc3rkFkEHkeviE/
1LpuBEcnpUIETJy3OltG1wNBZDQwx7lvGEhCEqn8JWCmdX9njKXd4tdU9Zs6/37v
nTJwRCJajfq+qlLJZIMjdycECSojoUe2VSQwwe+recGeE+glYfFMLD1JuWsHU/IO
LhhFX7Xt9gtFPjZ+lavlytNdY+r9F7kttndFGKy9gcEIw4u23tNIde48Fu0Fr5JA
9fAMlQB8BV4bgAwet7As6wudbSaK7xbmUPAxnK9bX1P44XO5VmmuCbtzZM0J09Gs
Y0IzBvxAq8WKbOfhZzfTE9g4wYjzDA==
=VY9T
-----END PGP SIGNATURE-----

--BIVYhsqQd7Iog8ZD--


--===============6850560329718183859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6850560329718183859==--

