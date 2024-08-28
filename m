Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3400AC5AE5A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kyf0CVk5yBQOxfS/gTl7JzHJKqi27mKwn84n9qDWWAQ=; b=AJj6nUTTLKAi2F3OLsNjafVcLy
	Pui1tEEYqRqAt/GEOK2RR2esDbkjTgUj+LGgefM/E1f+fo+fsCCaSuFG8EDhJHaAEl3ONDdyd7VmZ
	3l45UfZ7zxVA6ALosSyVtrPfs9q5CqZKX5I8QPEBwloXdmnOw74kVpucs74OrQBndiF2NrRm0pnk/
	NosDkJ54OPF2AAgK2emuZ1KbQYm8zbxXDeDtbMPj4byIhWOf9s1g4jxC85sCloPRbGlCO1iyZ0BJz
	WhTzqBm0NDmziQMgFNJ45P04WZgNEu94hF8OOs1qqyCDVIsNcjUVEdSUxwpPC2G6mtjjRAfo4rkoF
	pXM6LFjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKqn-0000000G3AE-2M7i;
	Wed, 28 Aug 2024 15:44:49 +0000
Received: from a7-49.smtp-out.eu-west-1.amazonses.com ([54.240.7.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKfS-0000000FzqK-0ynE
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Aug 2024 15:33:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724859182;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	bh=AwgQiywBprddxXWa1R2Zf7a6ihYSwX0jXoJo1g6heMQ=;
	b=ftp3as7m7Fvw0/4dG2MSlasTRY5MYkun+spDAh2rsVdThmaHHvF0gJWteOmkBudg
	l+f41DTvtjjD1vvSTuMYLminUixigKLveciLX00xyZPy19ponye7LidWaNb9hndbgdj
	lga/VnTPsWZm7nQSCvs7RV5JMbngYujf9vCSIncVJMA5n9lR/5ONXiOSPozeMy8nsPk
	UfJxLFM1AfvUP1XooFswowgjmPjNZKmCgJULO3U16Vh7dZcj+jOSpsBc4LjIRhJ813w
	owdNEv6CjcvuFQuqiPKmH+GEdcOGhlwTeXmZ+CbJUaMuFSAbTJcOpvPgIM9f047jiBo
	lXKRndwGeA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724859182;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Feedback-ID;
	bh=AwgQiywBprddxXWa1R2Zf7a6ihYSwX0jXoJo1g6heMQ=;
	b=FwSMTMLGx8b63sAOkuMBfBhAOTJogDgNll5QJ6WOhyrshPixfD4CppGX+DHQLxfk
	TdQoaZjGGMJOPpvPK/IEPDybbF6jeoq5H2QjeCmMw4XXzyGlEy8vdnssfdhxCXMqDpZ
	Q7UQP9qKojQVqDB3I/oFxSVOomsJamickcF0evPE=
Date: Wed, 28 Aug 2024 15:33:02 +0000
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove unnecessary properties for
 Radxa ROCK 5A
Message-ID: <01020191999e6e7b-7a435847-00b0-4dd0-8fd6-5a8b41c36f40-000000@eu-west-1.amazonses.com>
References: <20240826075130.546-1-naoki@radxa.com>
 <172485421377.1511809.2663736313893585918.b4-ty@sntech.de>
MIME-Version: 1.0
In-Reply-To: <172485421377.1511809.2663736313893585918.b4-ty@sntech.de>
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_083306_489174_BF3859C2 
X-CRM114-Status: GOOD (  10.88  )
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
Content-Type: multipart/mixed; boundary="===============4951486394151240046=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4951486394151240046==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wdutnbnbppbii6tx"
Content-Disposition: inline


--wdutnbnbppbii6tx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Aug 28, 2024 at 05:14:14PM GMT, Heiko Stuebner wrote:
> On Mon, 26 Aug 2024 16:51:29 +0900, FUKAUMI Naoki wrote:
> > There is no "on-board WLAN/BT chip" on Radxa ROCK 5A. remove related
> > properties.
>=20
> Applied, thanks!
>=20
> [1/1] arm64: dts: rockchip: remove unnecessary properties for Radxa ROCK =
5A
>       commit: b8ac0cf405c2092decc5cc102ed3a2d5d3200ab4

Oops, good find. I didn't notice this feature did not make it into
the final ROCK 5A. I have a pre-production version of this board
(which does have a WLAN/BT chip).

I did notice that the M.2 slot was changed between my version and
the one being sold, that's why I never send PCIe patches. That might
be something for you to look into Naoki?

Greetings,

-- Sebastian

--wdutnbnbppbii6tx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmbPQyoACgkQ2O7X88g7
+pr+ihAAg2lM+2s0vEurXWj+6VlIXmMAdnEqob6G3zn0Gd3STjUlx0agIzUpyV2i
q2u5+ASiy0OD3mletP7z1NE0c/B0qW5SIUPmaeOYDvh5YBBtdfirrQR6CB+Lo/Re
b2Ji3HWqDP4XPBXZKV3lKcCkvUY43cCmlm6WzVRmzA4yzVXdZHV6wcmXYJBUbNhY
QtwvLimkSF5ezqFD439XwtCw4YGl4pkOuiQF9ZMgxB6bDLvZXuOD3UY/uS1B2KlY
GzRlbI85AD5HWTUOznLYYxnxcB43941XiNB1CUP78+SBUCAG6jZ5TR09KWLxKlLf
7ecNSGrqa7K+K0VfUSVGj66LywQnks7h+R+1PNNHnhlpgIfAbja8wFQUzKTX6+xW
izFZMCJiSLzHLH5IkZFXrfCdw8J8kWsFwThY9yPq6P0j4kp2Og/IxWzjDuHkaMMA
2DQIQh4+ug4FRiZEb2hjmfNrBN9f0OGZxu8Ys/eRCa+QAZLlSza5s3aN6SCPmjlx
JlIQdMiCOpQlCbccy1sx2OumKJ0p4PwlJG8yr2zEbB2oxhIzB/GJsUAL+vXGVC29
qqUDSyTreIgDt2Lku3GI5sEycJkPeWqOZieCDRaYHHSY2R9uFJnO2qSx7QJQNiCI
O5A2aPhYG+ooP2OE87DDRJyT2jXFFxOw5LkiosOCICCmafs4K+c=
=U1yA
-----END PGP SIGNATURE-----

--wdutnbnbppbii6tx--


--===============4951486394151240046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4951486394151240046==--

