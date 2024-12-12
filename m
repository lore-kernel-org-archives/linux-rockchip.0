Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5C61E7717F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 19:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vDfoR+sdN6LClPWWIfi0v6NhPYqylxxwITWFXBWv23E=; b=HNZ8L3bK+gOxtJ80r7tSGX6zxi
	82rZpJLIL4JcYl41N4ZSdSWSGcIJipoIwDCtFdAI/ukW/qgpXtfp8D9dlZ89MvFdI76eCKXkIhxP5
	hBNUkNZ3qhlITOcj4E7KqW1ZoTdwduWAAZZ3JoGKpowjzhNeaX4A3LP5RaCJbBwDJBuY/bgV6TE/r
	LhRAchX6KUCFHT0htjFvFrHjs6ApQhTJiTqw49WnqCpekGySj+kt06hecJUQEnYjvNw14fTbGptRT
	gjc8S2jzz5KNMvgHKnXE4KZv0fmsXtNFzSoc3GAvhz99GFus3DsFMdJnD47z1qzIT7VWZ3fetYp2s
	lo9g8NKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLowT-00000001f9G-30QD;
	Thu, 12 Dec 2024 19:33:45 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLok1-00000001cAr-0szT;
	Thu, 12 Dec 2024 19:20:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1734031239; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=hv3pMKnVGMQwJkekmHeL7LjXMImIf+604RZ+vFWB8clSywL0s8606l692wKCRauqztXbbu0B6A2+2vKfIVVJKpSbEcFPFubKlulBCmTZqVSXffMGsd9q4GILhQ4eqzrmnDHBUA/Zjg/5XYGQiCyfn/wV7IbrWFNMtME8aX4Uko4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1734031239; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cTjkIgTpmVLR/SFFv4x6gVWSD6/UyHK9Mz2fPwKPeqc=; 
	b=SZ816jn/eZIXEtHBFKgy4qvWAkKRLS4FCd7wkTXfR95VIdsaj0fppDkJTY6pNTlMB2IYR777zackFUaXppIMN/Fg29VmKi4QZi/ZnPGwFEBGy5J4OZP4Q+Kl+/ihy7AlyswgbhqRyADGtelgmQqr55iJTqJeJ7fi+q+U8tNlTdU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1734031239;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=cTjkIgTpmVLR/SFFv4x6gVWSD6/UyHK9Mz2fPwKPeqc=;
	b=UXJZs3XfwiJKwKhDAbQlSo9msmOJx2iSiv3PfKQd77qWfQ2BIxEwlRfXnGdZAWgY
	6SxHMDpzMm5zhsi/BoBcXXoGf14OETsQqYDNescbTs4e1tAvlRLljDp8rYgjFwvrnRi
	BpDDTBKGEM9ZDIdPTbW6ud+9SEcwdq2PTJ8WtJAY=
Received: by mx.zohomail.com with SMTPS id 1734031237501123.28761842157633;
	Thu, 12 Dec 2024 11:20:37 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id E4C6810604B1; Thu, 12 Dec 2024 20:20:33 +0100 (CET)
Date: Thu, 12 Dec 2024 20:20:33 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 1/1] arm64: dts: rockchip: Add USB-C support to ROCK 5B
Message-ID: <iloxbrj7ktqto5yphr7i3tioq3cbecqwu4ovxmezovux3nw7t3@j2siyintvy7j>
References: <20241210163615.120594-1-sebastian.reichel@collabora.com>
 <FFD6E87BED20DB1B+38b8064e-9945-4cd8-a30e-7800a8c6f37b@radxa.com>
 <3D830E407DCD15A2+de00ea1d-96d5-4766-9dc5-616fc76f404b@radxa.com>
MIME-Version: 1.0
In-Reply-To: <3D830E407DCD15A2+de00ea1d-96d5-4766-9dc5-616fc76f404b@radxa.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/233.931.41
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_112053_299801_CCFB8890 
X-CRM114-Status: GOOD (  11.94  )
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
Content-Type: multipart/mixed; boundary="===============5123057046621428289=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5123057046621428289==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5aanin4ghjoz6zq2"
Content-Disposition: inline


--5aanin4ghjoz6zq2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 1/1] arm64: dts: rockchip: Add USB-C support to ROCK 5B
MIME-Version: 1.0

Hi Naoki,

On Wed, Dec 11, 2024 at 09:40:13AM +0900, FUKAUMI Naoki wrote:
> I got random reboot during booting kernel/userland...

That is probably related to USB-C PD communication resulting in
another hard reset :( Can you try to get some tcpm_log() data
=66rom debugfs while the board is powered from the GPIO header or
PoE?

Greetings,

-- Sebastian

--5aanin4ghjoz6zq2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdbN4EACgkQ2O7X88g7
+prghA//cw22TCdJFEV/aPEbXVU4VC06Qj2R7CNV7lRGfsQFVzv8OFK7qkkWjTqt
/7jF+oc2slSdPJEkXvpFNz44On84KcrPyKqGgCaDegY3+rx468nNTcUCBXRc19/7
6VMyJWlSReXFg9/SDpze3edKVY6vTiMVZrqb+1wC/563e21EQNC92jwTAQ0ZAHvn
BCv5mr6YEX0184k7KC58wAHmKbD3zJ7lblba37ba8cHSJL9wIqL+iDhdJL6TGl6s
f41Hwy147NBM5G8Usk9zRfS0MWwZFgDQCQ9xq51cJ8uKRanr8RyW1JciGe4CzAp3
bxi4CfCTsBuXkJdFluq6hribUdZISyJ2qtdpNiMqCv0htjcdvsmFJiRnPm7bCo6Y
4iXvLGooLQIuKQlzjrbzH8ZGDzqYia/yvzZ8uHvvbZXCaFNXHIaPWv7ExGMQ2geo
tAi2qlEUpjHiGdhjfMYxmJ+6EQb3OVk5+jKpD7wLkNvktjYo5Vn+2Mwq9HEplfvW
GWNNaTuLOZveIkGeiuVJ6/Z8nUXnX/xV44FnwIJMP4p6rzmfqR6076UmCmUG20Xg
jEwL77CGF+MUkSc5JsZ7Y4hpuefIgIoH0MjwrMqQFsHRLm/MSjLdFOaRc1QekPIW
4Kgs9kTF50ZVEi8f7gcIdw5c8wiCIXyvRhY4cDzOTUvhnPtdm+g=
=W28Q
-----END PGP SIGNATURE-----

--5aanin4ghjoz6zq2--


--===============5123057046621428289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5123057046621428289==--

