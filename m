Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33868C001B0
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 06:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mxa6lqdX5nVtxtwEfVMqdPHWBoD8SfzzYULekejH+3g=; b=nrlC3UM5EgM9AwJl90e6vX5Od3
	cJc3bgB8CrbRcAyqt7hjmz8hQdCKXmzQk03AnFkl1fwDVdc0LyP00MMOsjgni3+A3niobXjvZkg6/
	ok/qrVR/XtIsqbJ62dl66cioIEPGoh77/P6smhu4mUwASmPJ37jg89CBzwVK2ReaJNzrtq798FpPF
	sO6gKO6SwxAaS7R4pVX3itQKJkmP4V1VNqaJaHYyNBWsPUXlpr6JQV7dwbbKjbuu4hF4yF0J77MeI
	0R0cWXCdDdZovaeCSGI6PrtyAZIYa/tm/WiYDN1Kb1dUuTpzWpeBWwg4MyMVMI4WYAW3l5LHMPIHu
	cHmmA/xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0wj-005stP-3C;
	Wed, 19 Jul 2023 06:46:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0wd-005spN-2U;
	Wed, 19 Jul 2023 06:45:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=9oXQCIE1mtPN51CYAyW8XHkOONySaHo2opOPBgy3vSM=; b=QCkMYceEJJkR+V3PgsGSxWrNRp
	myVRUfLuZ25d/87ofvbkGVPk+nHsJB13q5+pmTynxLD8K/6d++NAac8ErxL1+7My8cuS1LZj4L2PD
	rO7DGQHxTUL8+X0vpKYURMhHFSS8hx7v9gQsRMh18XzNpMKvftDyoHlbmnRY7/p/GlV6fGTqm73wJ
	/tevaatGp6fJC3ZoUPGOhtaGtbaQcoGuNOjfRKMkXLollWMO2C/mCWULfzCBRlQMv1wZS6mEsuOpx
	OngfBVHz+nQ1YZPlSHS7xrCwvNgYSqhe4H+FI09M3lyRPHdmcFTi/ETJ1FZ9e4QK2oLC+A8lBJJGj
	JeeFNWMw==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLrtZ-00C2MS-2H;
	Tue, 18 Jul 2023 21:06:12 +0000
Received: from mercury (unknown [185.209.196.239])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 88FAE6607069;
	Tue, 18 Jul 2023 22:06:03 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689714363;
	bh=P8NfQ7uDwtPYApAvymtjd67EMP/MgNzxJCZGTG1lf9U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ck5xHUSxGTBnWjiwmCdofgUj66JYAJkf7+mfvFzo89gNFmGrCkzFbdpvcWCdTer4Y
	 2V0O0M1lPNqa/+2k+Do8oVAIF0N3seNqhGFnavwoS7HskyI/u3gbIvqEXxUB7OKyO9
	 /Sodz0w4oBY4OQczw+7S9juPU26NIzbQCelnw7D6wQ3qDu0IH9LjebDQpVlk2Ugu6I
	 Dd0+NV6vdK54FeSCOM8M9P9iDbOAuri7xMUQc8r0rYUYT3Py3Wsz8OBCB2t2iHFAQd
	 Zm/fxII+Wd6aNAwJfvTsrRsXZG9XzYCYLqgjpMcbJArUUTK06neDsSuu0i8G78M6B4
	 r64RzPKNEqsgA==
Received: by mercury (Postfix, from userid 1000)
	id 9867710607FA; Tue, 18 Jul 2023 23:06:01 +0200 (CEST)
Date: Tue, 18 Jul 2023 23:06:01 +0200
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
Message-ID: <20230718210601.6hrmnl5lbtl6vinp@mercury.elektranox.org>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
 <20230717173512.65169-3-sebastian.reichel@collabora.com>
 <ZLarQUvUK3v3m6Cg@bart.dudau.co.uk>
 <20230718160137.sfitnkl6gmyi75jx@mercury.elektranox.org>
 <ZLbqPB5yP7Kn6FT6@bart.dudau.co.uk>
MIME-Version: 1.0
In-Reply-To: <ZLbqPB5yP7Kn6FT6@bart.dudau.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_220610_164030_6662BCC2 
X-CRM114-Status: GOOD (  17.75  )
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
Content-Type: multipart/mixed; boundary="===============5747786373646221349=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5747786373646221349==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="negfuutklnlaveud"
Content-Disposition: inline


--negfuutklnlaveud
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 18, 2023 at 08:38:36PM +0100, Liviu Dudau wrote:
> On Tue, Jul 18, 2023 at 06:01:37PM +0200, Sebastian Reichel wrote:
> > On Tue, Jul 18, 2023 at 04:09:53PM +0100, Liviu Dudau wrote:
> > > On Mon, Jul 17, 2023 at 07:35:12PM +0200, Sebastian Reichel wrote:
> > > >  	pipe_phy1_grf: syscon@fd5c0000 {
> > > >  		compatible =3D "rockchip,rk3588-pipe-phy-grf", "syscon";
> > > >  		reg =3D <0x0 0xfd5c0000 0x0 0x100>;
> > >=20
> > > What tree is based this on? Even after applying your PCIe2 series I d=
on't have the above
> > > node so the patch doesn't apply to mainline.
> >=20
> > You are missing naneng-combphy support:
> >=20
> > https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.gi=
t/commit/?h=3Dv6.6-armsoc/dts64&id=3D6ebd55b3bba383e0523b0c014f17c97f3ce807=
08
>=20
> Thanks! It looks like the PCIe2 commit that adds support to rk3588(s).dtsi
> files is also missing an #include <dt-bindings/phy/phy.h> for the PHY_TYP=
E_PCIE
> use, otherwise the DTS fail to compile.

Yes, that's also already in linux-next:

https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/co=
mmit/?h=3Dv6.6-armsoc/dts64&id=3D34d6c15d8e86256ef2456c604b1c8d8242720871

Greetings,

-- Sebastian

--negfuutklnlaveud
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmS2/rUACgkQ2O7X88g7
+poRUQ//bWq65lFTU9ZY7ptS5NZJgJGv19zMVv12ex71HIVrPglf+IXlKlCG76yv
HygNtK+lU7MnATs9ZcTMf0oW95sr/6GQRwsnAOlqspsdx3vnpqVZASdAYYiF64jI
9MBjsXXey4VbvnLqSUO6KyORxWpIQV/rT6ppewTxdRU02b5T9WmGUmKsFXcnAewL
Y5+rLhfPncD9RuSewzXeBoY4S337sZB7q8CzOzZrtEq2hTiZQUcNFd8LF7EgF+er
PnoVgC1mhuYbnmaphfTW1A9lP7TBLvRcGi6EiI4Qa9i0PLcaWPdZ3zEbnqjBeZdP
nVOTVr4Z8ZgP9JG6em5lcQBOQPO/Ae1ne9A8n98kmc6xQqpiFkx38XCwOgwqBxHT
gOXj8qFI022fWG8VmS7pBest26nZ6/TYNlHXxdq2FtA9fG8+Pk029pDHUpX6yLNw
zpIj3zkaPHzdFywJ0aFJH2zTHxQFTCkgvfDjlqWOjfSzR2v4yNr5uurVEE+nEDo0
o2SoEUXX53l0Pcbewa6tTgD+pnVNgsDnydXsN6qvhXK7/4m5aNGBsJqI5hvFbELF
D9iu3XUkcUI2sin1c8SO+OwBsBfFem24u/0ODDqkx87wyzXSnbXR0NzDF+DwD5Wm
8h1cyB2ja3yC3/+YSsXtovn1sxuJlOOM+rtHJe2Ht/N/OJk59Y0=
=Brsb
-----END PGP SIGNATURE-----

--negfuutklnlaveud--


--===============5747786373646221349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5747786373646221349==--

