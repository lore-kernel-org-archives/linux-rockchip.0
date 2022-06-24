Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61B6AC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 17:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hOeXAryehxjRPiA7GAIT+QlntofhcwpcSA+tG3UMs2g=; b=ObsXDMMe8lKWH3aCU4V/Z/2Wx5
	1xRtY3lonR3zQ2qVIK7KvJ9Pk9B/ompKIHapOXtSjjPEcFbccX0yrDZcgT0oEpgu1t901RPE2eKmG
	U/mZQwk6Al/1uqC17VJgihRfVF/mVRDNyWHHIaDnEnEG2tGraBdOBVqG5jNkNMo0rulpkQw7QeGqQ
	ZsTQqtqXaXqf6+4JOs4zycsfBKgnYN53NiJUtj/EnVGoMBYRKzcED9DHWV8Oyx8zRmD7oGPlUjsYf
	t0nXoO0Yh3y1YgNye9eg5bMiGVjOeN5ZUHXmAsFd7fNQPTt6k1GU9XOaDzKffLrDWpMiWcYb3nSjW
	jPajjJ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4nDz-003HAh-Pl; Fri, 24 Jun 2022 17:36:07 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4nDk-003H6s-Ks; Fri, 24 Jun 2022 17:35:54 +0000
Received: from mercury (dyndsl-095-033-155-155.ewe-ip-backbone.de [95.33.155.155])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E58D7660180A;
	Fri, 24 Jun 2022 18:35:49 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656092150;
	bh=+EH0iTD2RyXg6NOT3T8bkKi66cDg0fDsvnolznRjMug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jm5EGJA/RuRH9YqY0fPGHC1HCqGAsZ1gDSMdoZJ57JKdwOr6EZb7H065XaIibTYF1
	 rQ66T2FvvCJzDIcFPdjQTeKt03K/ObDHktixAJwQwVS2x71Gi3I01UFDmkLN5FuQn5
	 pvTWRrG8vvCueAhrjfAjNXkyrdeur2Y+cgg2sTHFw0c7wC1odNHZQyI1QnehPCozOF
	 FXTdAbJZnO0I1bmAt+aaWsRTDrlVe5eVL1E4MOktBkMQdxjlVFLgsHchavDxXolsn/
	 FFF0Rjt1qFJ+O3nimK0kim8bXvrK59IPC1cU4eKVcVUR4nZBuRmOuE9lCqWXdWkZEJ
	 pW/yIcDD/dznQ==
Received: by mercury (Postfix, from userid 1000)
	id 39FC510605AA; Fri, 24 Jun 2022 19:35:47 +0200 (CEST)
Date: Fri, 24 Jun 2022 19:35:47 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	David Wu <david.wu@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCH 1/3] net: ethernet: stmmac: dwmac-rk: Disable delayline
 if it is invalid
Message-ID: <20220624173547.ccads2mikb4np5wz@mercury.elektranox.org>
References: <20220623162850.245608-1-sebastian.reichel@collabora.com>
 <20220623162850.245608-2-sebastian.reichel@collabora.com>
 <YrWdnQKVbJR+NrfH@lunn.ch>
 <20220624162956.vn4b3va5cz2agvrb@mercury.elektranox.org>
 <YrXryvTpnSIOyUTD@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <YrXryvTpnSIOyUTD@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_103552_968149_29643306 
X-CRM114-Status: GOOD (  18.07  )
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
Content-Type: multipart/mixed; boundary="===============4327881639247757865=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4327881639247757865==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qenzcnj3phman7qo"
Content-Disposition: inline


--qenzcnj3phman7qo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jun 24, 2022 at 06:52:26PM +0200, Andrew Lunn wrote:
> > > So it seems to me you are changing the documented default. You cannot
> > > do that, this is ABI.
> >=20
> > Right. I suppose we either need a disable value or an extra property. I
> > can add support for supplying (-1) from DT. Does that sounds ok to
> > everyone?
>=20
> I'm missing the big picture.
>=20
> Does the hardware you are adding not support delays? If so, rather
> than using the defaults, don't do anything. And if a value is
> supplied, -EINVAL?

The Rockchip hardware supports enabling/disabling delays and
configuring a delay value of 0x00-0x7f. For the RK3588 evaluation
board the RX delay should be disabled.

-- Sebastian

--qenzcnj3phman7qo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmK19e8ACgkQ2O7X88g7
+ppYMA/+N8W88aXHTf0j/BzfDjaK+JD9zY4pvt14NYf4ry3+ZxpQzE2tbKB+UJHN
UXnEGt+ZMn42ouBQ9tV71fpAfMsW3sz6Oz9InLHW6u5m7AxBUC+QJlOxyvsO2gGh
pca/jDy/kMDvkAlzm59JwkvjGNV0Ykdg1zkQGiCzmGIYM0GSXRxEGAi+aSBSvFZU
ey+pshbPGq9EKVUpIj7S9bWLdHxfWjFnH6N0KhlWB+u/BgUZR7fYT16nXUa2wFfv
1g8BU0D42Nn5QzCx6PCfzlB79fH13C7ms+x32iVdd4OKVLaG+qHiTkr1uQ53hTFZ
UrBy+xP5GFZFW4oGyqWLSEs2u3fB9A4f2KB3JABKQ4DEn5/repN6SjBZpx1rCFJP
cKR26TLZAGfbL2YXVYg+5sCH/87/B8g42t8WZFo7T8AdiIBnPe1iC5rJGtqhTJ7w
9F1eKoqhI1Y5VBEWNftQ1EWwKMqyIkQPgw/n1AoTdxZjkRdMr9xgGKPPp09aZTq8
ZKj7tgoaIoQ5QHkmSHpAzeo3tyoRbnt+LggqcdaGeBzpCrQUEk/5bHp+T4IIy5BN
B7jy0vHA4guncxII1K+Sjsp0eii7Of++/exoH3mWenm5As68R3miJvCNvvI7yssh
6cRjUzXV/PpQJq7MpzzZpGJYEcQptzgQm6JcTDTU1ShCnTURRBU=
=pr4F
-----END PGP SIGNATURE-----

--qenzcnj3phman7qo--


--===============4327881639247757865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4327881639247757865==--

