Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1DC8C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 15:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YVtBSNOSxeRkW1ugnv3fJahVGDvO4Kv7t+pcSfO/WyY=; b=g4n4ZWaGBcbW0IWKwj1qfMDolL
	mlAHcNF5cuhtxYKaGYhWzRep+tDzeWmMG4wwOXxo+YJ+387B8IWecx7f/VEH3zdCNjka4HAcDIsND
	n0sIpmhs1Em/Z5QvFEcaIKAhL/gq07hL9X6W1RPP2Nk46OC2r5lLfuxUCqQcWMPuiHFQi+MeBPwx1
	3+5o4Ddo/nePAZC9XQOMo9pXQx/bkiB3LMSaZJB3ipnolcvNkMmc9sHN3xHAdmqzwFYNap1JpVdHA
	0ip3cwCi9+6PRrrxfrpzofcK1R+uov6RciftX6B771vVE0iDyB7fQFdenb3Z9dKpXyKF4NA2Ed697
	zdkw5v2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvIp7-00000000Eke-16B2;
	Fri, 12 Apr 2024 15:28:17 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvIp3-00000000Ei2-3ocZ;
	Fri, 12 Apr 2024 15:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712935692;
	bh=xv5GskYPQh/bdYUrHDvVzkViHT9Q8wEHbflL/X/TEkI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cyTSbVflJjcSfFqNbFhnyVekkJ0HOMl6VOxAWSEMZlIhwqepNVVMXl9nAJxW242h2
	 ipq417AkNny3HCaw3HKxi2l68bzzu9b0YSBXU4GgjNqpcqrTL8ZG3BaAICwk34CrMX
	 DFLWxeX8tdIry5q5usnFuO2IMB6VprNiubJZIVfBBfT6H28IEiAuP5uX1o4ljUGO/u
	 kRj01CaKOo1eL5KjaPejzL8WN/Cqf7XJWP38D0KJVJGu1KVNLJqHRb3eaxpY0ljXPA
	 7pHB2/JWGRqhfGCAA/Q1js44CP4bqSZW2i1Q8mRYwbUDBHESi9LkOsDbdI822uXITi
	 gJjFq+85kUMEg==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 11B923782117;
	Fri, 12 Apr 2024 15:28:12 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id B79B810608F7; Fri, 12 Apr 2024 17:28:11 +0200 (CEST)
Date: Fri, 12 Apr 2024 17:28:11 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Frank Wang <frank.wang@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Kever Yang <kever.yang@rock-chips.com>, Conor Dooley <conor+dt@kernel.org>, kernel@collabora.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: (subset) [PATCH v5 00/10] RK3588 USBDP support
Message-ID: <msttmdg2va7cwutn23f5zsmi6assert62in5esyovdfcpsudgx@6hwh7qwirstb>
References: <20240408225109.128953-1-sebastian.reichel@collabora.com>
 <171293314494.1912962.2483494926339362221.b4-ty@sntech.de>
MIME-Version: 1.0
In-Reply-To: <171293314494.1912962.2483494926339362221.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_082814_125306_B0D85685 
X-CRM114-Status: GOOD (  16.30  )
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
Content-Type: multipart/mixed; boundary="===============5440240219280193574=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5440240219280193574==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="26xfkqfmlvq46c2i"
Content-Disposition: inline


--26xfkqfmlvq46c2i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Heiko,

On Fri, Apr 12, 2024 at 04:46:43PM +0200, Heiko Stuebner wrote:
> On Tue, 9 Apr 2024 00:50:27 +0200, Sebastian Reichel wrote:
> > This adds Rockchip RK3588 USBDP PHY support, which is used for two of t=
he three
> > USB3 controllers in the RK3588 (the third one uses a different PHY, whi=
ch is
> > already supported). The USBDP PHY offers USB3 dual-role and DisplayPort=
=2E The
> > driver and bindings being upstreamed contains the DP parts, but only US=
B3 has
> > been tested by me (upstream does not yet have a DRM DP bridge driver fo=
r this
> > platform).
> >=20
> > [...]
>=20
> Applied, thanks!
>=20
> [...]
>
> I've rearranged some things in the evb1 patch:
> - vbus* before vcc*
> - some newlines between properties and subnodes around
>   the endpoints

Thanks, sorry for the extra work.

-- Sebastian

--26xfkqfmlvq46c2i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYZUwgACgkQ2O7X88g7
+prvMxAAn/qQMN3VahlJ2xicppQhn/iGZC2aaKw6gEGDJy3xAnFr41nzyLyVHEIr
dR/Hw7ip1EUYK47Zx8hk4Xoq93bmtiuasmVq/QudBVwa3fYBWhqWRh51PeMC7h40
ZV0DPXhsTn7imeaDkMI/2Cj1Dqj3guB6VEvlg8L/lReWLA5T5tBNr5rz4Uu/Jab5
QZeGu/UKGU2LUubE73UdrAikTs+PrExgaE2y471k3szChV08LiBBZjYhRwAD2eCL
ykU+fa+pntf2ygr90GzGOD69dBkFJIg8C2WH7uBBWB7qEgSAt5C6eFVtNfixALnA
EBYNSuWQOeSjFxr0ekNdnNETnFMsh1raRK4TqE3rQ+g/WENkp6mLreVHcpg12EgA
LmKuC5iGgngObHPkST0MUEVbszFAmhoyMlEyg2FFT5FZXK0P+ntSJUVN6tAXCECh
ztx0qZPagjc+xUgETknb+0w8/EeZTBRYzXs+VnLJxPtiUff7YPu6PiY0s6nvG1po
I4Es1QSaQ2gR13yzccV3ZEXD/U99VKlq59taeIp+JCEi0AuWhr69eVUaHwyprios
mPPOgsx8UG+oT53o+YhvcSJRBEwdNRVQYikBtna1XOHOidYb+cMRo9CmVLM8cbBf
dc09icsSiYLwwP6MDdrvkQ8CUVBySE0QS6kwB9bnY926kJPNMtw=
=F10l
-----END PGP SIGNATURE-----

--26xfkqfmlvq46c2i--


--===============5440240219280193574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5440240219280193574==--

