Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5CA6C001DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 08:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2TCvS1UuLYH2Gs2M3lGUulR7Ocvfud2g+5+f2OJUmrA=; b=zJRHZtfseUxumvVVmUJKKRHOgZ
	jL5wvLycXyzwIGcBEyuY0BFR6oJv+Pto84p/WhPCiXBwC0DB0ekJBzr5HMQttR1zyUj03uTxvuUs/
	y+fVlIXmqZ67YydUwnAPOL0FxwuFBjkHe6jjXvFkjvOCld+7LG+ZSbskvxV4kYs+7rs6z4gxubP7G
	VPXpmJ2X02ESiG7AAN6EL8CfaMmo7lZrK9lll+/iKb7vGj79JbYjKMyOMJTr84vFau35o1aCr9mwh
	VnDSJ3RR22scTx+mh1Or5Sz1AvLiXf5ZVu7nTmZJXHFzw3WYAsikn52dKPag4KUYCqoRfrodG3H5V
	d/INiO1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2M3-006H1e-2M;
	Wed, 19 Jul 2023 08:16:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2M1-006Gzq-18;
	Wed, 19 Jul 2023 08:16:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=crpYAHM+p4nLfGPEJI9h6zUBx8PTfRw/JqYWS3dfJmw=; b=BEJA3ODl1RMXBqU56Bu/pHszTm
	q58qSoJCyaK3dZD2Duk/6pk/tSO65nmSMuQV6FJjt7EzQsPiGqKc2gN/vwjoBm9o0XVur+RVbwWpp
	yH9UNAlfXDcj3PkOS8uaR/VMXW56vJV653ixFlTkW1gFUjLQibwJw6nUeXs90aSl6omH10X+7gHGs
	Ghgqsp5B1jUNqrfErtEuIWl1AB+aiQIkljohGvba1+xoVHrX0tWFegHcysJWjnHlfwKjg8Lt7MAvX
	nTQI7iUzihZCrmZS8irQoyRbHSCBAGojk4wFv61D79UrNjvc8BEsymf60+UZN75OlQFJLrbXxuAuH
	S4k/lXYQ==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLn93-00BkCt-2H;
	Tue, 18 Jul 2023 16:01:52 +0000
Received: from mercury (dyndsl-091-248-212-239.ewe-ip-backbone.de [91.248.212.239])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 06D716607029;
	Tue, 18 Jul 2023 17:01:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689696100;
	bh=fjD/ofT/AJheOC0PpncIwEm97OhHZA/Z2aAcGGQekfE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QgKIwJjTZLCYtJFI9C3oTjp3n/iC1v4sfaZySSF6luarFGrq212CEA63pyZN4Wv4w
	 I9SYa9dQcjJfBCZSbae+1xeSgfb3V/Eo6CrPj5rv3RovFYVc9xJa18Iq8xboSoO/uX
	 Ye1IpLqjlGbw5GA4KE2SgMCqCGLsCfRqDhFErHd9biSHPiz/NxzIRsxMr3OgOrtosv
	 Ee9kTJptGs/bqm+oj806e66MWjpUt6u0QiaPfobNNYJd5lXFKjNG2MRRnE9odSH0uG
	 x+QLk2GR9Q1M0YGcNg1GixOkLrl2bV1YJ9un0qyRUbK1FJFfef7sxMruE4vmApL/MN
	 Uo0XN6rFUBzAA==
Received: by mercury (Postfix, from userid 1000)
	id 78BB510607FA; Tue, 18 Jul 2023 18:01:37 +0200 (CEST)
Date: Tue, 18 Jul 2023 18:01:37 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Liviu Dudau <liviu@dudau.co.uk>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, John Clark <inindev@gmail.com>,
	Qu Wenruo <wqu@suse.com>, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: rk3588: add PCIe3 support
Message-ID: <20230718160137.sfitnkl6gmyi75jx@mercury.elektranox.org>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
 <20230717173512.65169-3-sebastian.reichel@collabora.com>
 <ZLarQUvUK3v3m6Cg@bart.dudau.co.uk>
MIME-Version: 1.0
In-Reply-To: <ZLarQUvUK3v3m6Cg@bart.dudau.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_170150_194622_733E744B 
X-CRM114-Status: GOOD (  19.22  )
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
Content-Type: multipart/mixed; boundary="===============4062376238965459529=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4062376238965459529==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4xub73vban4yxnem"
Content-Disposition: inline


--4xub73vban4yxnem
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Liviu,

On Tue, Jul 18, 2023 at 04:09:53PM +0100, Liviu Dudau wrote:
> On Mon, Jul 17, 2023 at 07:35:12PM +0200, Sebastian Reichel wrote:
> > Add both PCIe3 controllers together with the shared PHY.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588.dtsi | 120 +++++++++++++++++++++++
> >  1 file changed, 120 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot=
/dts/rockchip/rk3588.dtsi
> > index 88d702575db2..8f210f002fac 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > @@ -7,6 +7,11 @@
> >  #include "rk3588-pinctrl.dtsi"
> > =20
> >  / {
> > +	pcie30_phy_grf: syscon@fd5b8000 {
> > +		compatible =3D "rockchip,rk3588-pcie3-phy-grf", "syscon";
> > +		reg =3D <0x0 0xfd5b8000 0x0 0x10000>;
> > +	};
> > +
> >  	pipe_phy1_grf: syscon@fd5c0000 {
> >  		compatible =3D "rockchip,rk3588-pipe-phy-grf", "syscon";
> >  		reg =3D <0x0 0xfd5c0000 0x0 0x100>;
>=20
> What tree is based this on? Even after applying your PCIe2 series I don't=
 have the above
> node so the patch doesn't apply to mainline.

You are missing naneng-combphy support:

https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/co=
mmit/?h=3Dv6.6-armsoc/dts64&id=3D6ebd55b3bba383e0523b0c014f17c97f3ce80708

-- Sebastian

--4xub73vban4yxnem
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmS2t1IACgkQ2O7X88g7
+pqi5w/+MtPLKzu0zQdj3a5g9sZvB/lE1Ajhuqbg99UmDnDpcKnAmovt4GrDpl9D
czMjsyIfV2yuvu3cb2quGMdn0oU61vE/Kbi5vnr9PWCWAeljpko+f45Qm9qR9GHb
+EWu4q5jtw5hsQrMLrGztOcKeM16eY/ArHFlwNtc2paHAS0AyAGDrJFsX31+3/b6
rWGd2bdbeo+06VOcFjNO+eZPPb2ayUOzgPk8pvtUrUbHlE2pUj6XAAlvLHk7Cb/x
yPkW9lw29OY/+acWnZTDBTCEGHfwHr8my8L3JN0K1ayMTFlDhDFWyxZCZH8iDweB
Aiwmhnt7hR1GhY9590dIgOjt+GV3Qph1G2wVAaWV4KMEbBG6xf+X3IpOwC55nqDt
W9/Z9wpb0OZye+JTIeap7L8tGPVP6SFjQdPf4fWt9D3O13EhgwHSOZLTCaq0oGXu
Cp05ioeDHq9NU/NA6YrOa8YBC/i9FfheGwaRGcpKqMakhMxk9TNpMWqDQ00ASY+9
33IgWjLXICSnrgogB0hXwrPwT7+loIBCbXNy8+U8F0IuICu0WCy6x0TlyDfJP+aM
vAscSUpMqYRHVPSbfO5eOS+dUtnBOLimZt5GpRYHu0cjSisD1rAh+kzPAGpsAE6W
sY9NKRcNxncmrDygY3nmTX6z7gVMVtPMXkBu19+KvRtq3y/o7U0=
=hXOJ
-----END PGP SIGNATURE-----

--4xub73vban4yxnem--


--===============4062376238965459529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4062376238965459529==--

