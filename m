Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2632C982D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 12:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NQSVsmyqSYKRJeXvzOooy+mFKkdMr+sr4pUl6PBDvdg=; b=SHfFIKiOt2OmyvIKWtXcsFbu+X
	RvWDGJdpF1TLkYCFJqoqUDqx3B6X5G1e8i25XH9uxzqretkAkpusqVuWd/UaT+80gcUER88be0h5K
	9YtMb3YMYB5gWGxF72M70m9iHV4vboaPnQPATo/FUwGeF973m0SqC6anUhePnW28yMcBjMefejEkV
	WQLwhq08oQ+a0YI0uV7+fZbsKCtoUNaGG936xOiriRaefpppNgA24oNkz3cdC60stFm/bODLvEm7o
	YZFmfg1c7fh1P7wfhB1CeQJ2WYPVvp5hmh3psB75RoEPYgqMQ6RCc2oy5pI3+fcZr0VMAwQHu7hDY
	/IN28mVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Y5B-0000000EPj8-0oR5;
	Fri, 18 Sep 2026 12:52:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Y59-0000000EPi6-3bge;
	Fri, 18 Sep 2026 12:52:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3ED3160546;
	Fri, 18 Sep 2026 12:52:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4059B1F00898;
	Fri, 18 Sep 2026 12:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789735966;
	bh=eMAwhSecBguKf9zhurlsrZP8cYpXwkSpQjLdVVJV5HM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Q4YZmGGUKOOgjMDW4kZn/DRIguizmWMGSlikhzsVOysbSclX10LO/cqU4V7w262Wd
	 +AvCSBBE85Dp/qlZVO67f6CuqVbupJd09GON2TdcrNKgrO9G75aT2W7LXxP0BmVnJG
	 StH+A6GKuxAayksF+AKk/wa6C873VQatOnhg8Yu1PkRwfdUlJna97XsAoy8L7pjEjV
	 14AbaYc9uP/NfBvc8ShAq49F/NP+1scPBg5N591LDlunca78B83mLv6N2fPHKMqhaX
	 XONfmsNc+1DSnmkPYmx8cAcFCPX6gDLel7ZWAx9lq8L+gtbMHfbBsAnERZd5F9qE/g
	 q2a96c8TncK7g==
Date: Fri, 18 Sep 2026 14:52:43 +0200
From: Thierry Reding <thierry.reding@kernel.org>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Jimmy Su <jimmy.su@intel.com>, 
	Matthias Fend <matthias.fend@emfend.at>, Mikhail Rudenko <mike.rudenko@gmail.com>, 
	Daniel Scally <dan.scally@ideasonboard.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Michael Riesch <michael.riesch@collabora.com>, Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Paul Elder <paul.elder@ideasonboard.com>, Martin Kepplinger <martin.kepplinger@puri.sm>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, Tommaso Merciai <tomm.merciai@gmail.com>, 
	Svyatoslav Ryhel <clamor95@gmail.com>, Richard Acayan <mailingradian@gmail.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Jonathan Hunter <jonathanh@nvidia.com>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux@ew.tq-group.com, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	David Heidelberg <david@ixit.cz>
Subject: Re: [PATCH v6 3/6] arm64: dts: renesas: Convert to new media
 orientation definitions
Message-ID: <aq00E7Q9Cn1STzno@orome>
References: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com>
 <20260918-kbingham-orientation-v6-3-5e8b1f01be29@ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <20260918-kbingham-orientation-v6-3-5e8b1f01be29@ideasonboard.com>
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
Content-Type: multipart/mixed; boundary="===============3150318015833046375=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3150318015833046375==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pagjwrvwvtq5khva"
Content-Disposition: inline


--pagjwrvwvtq5khva
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 3/6] arm64: dts: renesas: Convert to new media
 orientation definitions
MIME-Version: 1.0

On Fri, Sep 18, 2026 at 11:44:15AM +0100, Kieran Bingham wrote:
> From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
>=20
> The orientation property for video interface devices now has definitions
> to prevent hardcoded integer values for the enum options.
>=20
> Update the users throughout the renesas device trees to use the new
> definitions.
>=20
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Reviewed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> ---
>  .../arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx219.dtso |=
 3 ++-
>  .../arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx462.dtso |=
 3 ++-
>  .../arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx219.dtso |=
 3 ++-
>  .../arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx462.dtso |=
 3 ++-
>  4 files changed, 8 insertions(+), 4 deletions(-)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--pagjwrvwvtq5khva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmqtNBsACgkQ3SOs138+
s6HqZBAAuYLmqszpeh7QKsoe5huf9UuCFpD60w1v/Ps2GNLGGvRvAYaPAo4GYyW+
SMADqajKXEQoVuuPbQB/9M4ZoVKcAI5sL8s88Uny2kA0lcIP2S8WgnE8IuxzXGW0
KUY9vCjd3Frq189kpzyexc+uUjeAfo4AMKdB6h3wpOUY0NSysXE4JXk/x8b5CU8i
vV68xLnE0V4ccmnsUqbvsEFyWJon4a6J0k8Ofv+jqd22pnNHhi8+9QYLCSHRj4Yp
CKk8rXvXXLijmBjYf/rvRd+vJ/OviDYjqtH2J0Plsd4XX5ZEjQZFWydFsiMh7WVN
aaLsMyOzp7wNAz8vE/YvMmAPh6KG7rgQyyviDutPi8LrQmDLnGioPX6+pa3Oi2+6
Px743Ejcp/7DZIUGujzlbvI+Lb/ZWWP9XhorqEnSJQBVkTuhasYJthnksBXcf2yF
aFBcYR8ceazaSLGuFC9aemZ3oZShRHLRswRyRS0beeRwcJk4H3m44/dXRkb9RvUX
ZVZH6kfKrn+UPLgiQ4XKhSpYlFQ1nMaaoIhQPZyC8RsFox3QnDzEif5zOPEx/4bK
fK1FTh5aFA7rj1D/5wMV7Jrybnkm2bTkbq4c6imUG76ggvph0I2ME5znDJM6T2i+
z3GFWsiRM/BXkrTQgGDv3KcCQO4cUpnwQSPri4Y5OHdC4Zt742I=
=3UN0
-----END PGP SIGNATURE-----

--pagjwrvwvtq5khva--


--===============3150318015833046375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3150318015833046375==--

