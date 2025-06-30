Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 065DBC8302B
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 15:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0orKFPvrD+qSjalxHj57uvgrR/fNcPljqvzvWtRrZFI=; b=kOT2+4RtaUsnC38vJolTEAe396
	nefaGSiVB2zovCAA5T6QIqz5noV1lzJWCUF21XTdDzFE5FzyHlo72CUMzaXQsztFrlQWs8q+lkUa6
	SiM2p7Zkc3cNGXsz4Qj4vM2g/5+/uQD37j4GXDm6+f0OL9dYva2f7El3rpNZFt9lQAVUG9pPa0FQU
	uSsQRNsVXBiPNcZIYdlykQ/m5otij8iJbAm25McT2HboHsArFQbvbWV9n6FpFeck7KDuQsf2JvvaD
	Rx48muMQK3kdHEzr2n/SG93KdSOvZ694erRfjdu0Gj/tW52MfTtoBFsRLTnu8H/17SDFvYo1VuvKU
	Z2esRIMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWGJn-00000002jM9-24Ql;
	Mon, 30 Jun 2025 15:21:15 +0000
Received: from out-170.mta1.migadu.com ([95.215.58.170])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWGED-00000002iVM-2EDj
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Jun 2025 15:15:31 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751296524;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3YRg2k4pE0gOn9+I/lnJDdKo+f7+9KmvohYEc+wGSI0=;
	b=Ri0tU0wWigDP4ns/uMhq/DbtVnVrpFJULpOesADQNQN9Ttt6kCBagAkjDVGSK5VZC6AHOM
	ZWn79mbKvrEKuandb53v1+m+CqNi6PLgVySS5MdQjAhv4+/qUgV9wF25K7IsVDxSfRS0tz
	+XjPKyy798dJnbB2jfK5yw5XfQN73eHrk0t17S+dAUryNVgomhKBL21IHHqYAFwTK9HmBc
	1whhZZh15zpymQw8SlW/Fuvba6GlHfvBYWNcjSiT40Z8MuWPEhi54VrZmOEg5YlnFy9i2z
	0shugR0/yu/yovmPA5110JuR/CksANGaGSbA1RUTBBLMdJwasXbX34GBS4iROw==
Date: Mon, 30 Jun 2025 17:15:06 +0200
Message-Id: <DAZYSSIAHK7V.3L51YEB1XPZWN@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Christopher Morgan" <macromorgan@hotmail.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>
Cc: "Chris Morgan" <macroalpha82@gmail.com>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "broonie@kernel.org" <broonie@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>, "sre@kernel.org"
 <sre@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "lee@kernel.org"
 <lee@kernel.org>
Subject: Re: [PATCH V4 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A
 Charger
References: <20250626195343.54653-1-macroalpha82@gmail.com>
 <20250626195343.54653-2-macroalpha82@gmail.com>
 <20250627-lurking-amorphous-elephant-e14c7f@krzk-bin>
 <SN6PR1901MB4654D8420C9F65C8BE2D10ECA546A@SN6PR1901MB4654.namprd19.prod.outlook.com>
In-Reply-To: <SN6PR1901MB4654D8420C9F65C8BE2D10ECA546A@SN6PR1901MB4654.namprd19.prod.outlook.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_081529_990656_F3CBB807 
X-CRM114-Status: GOOD (  10.09  )
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
Content-Type: multipart/mixed; boundary="===============9204566381155615550=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============9204566381155615550==
Content-Type: multipart/signed;
 boundary=bd373288a0d8c3b229a1e6a0dff79d8e39c1f4f8b2c5ab7ef827047dc5fd;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--bd373288a0d8c3b229a1e6a0dff79d8e39c1f4f8b2c5ab7ef827047dc5fd
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Jun 30, 2025 at 4:33 PM CEST, Christopher Morgan wrote:
> On Jun 27, 2025, at 1:58=E2=80=AFAM, Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>> On Thu, Jun 26, 2025 at 02:53:39PM -0500, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>=20
>>> Document the Texas instruments BQ25703A series of charger managers/
>>> buck/boost regulators.
>>>=20
>>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>>=20
>> Didn't you receive tag?
>
> I did, I=E2=80=99m sorry but I thought the changes suggested were substan=
tive
> enough to warrant another review so I dropped it. I did leave it on
> the other patches though. If I should have kept the tag I=E2=80=99ll try =
to
> remember next time.

AFAIK that is a valid reason, but you should explicitly document that
you did and why, so everyone knows it's not an 'oversight'.


--bd373288a0d8c3b229a1e6a0dff79d8e39c1f4f8b2c5ab7ef827047dc5fd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaGKqBQAKCRDXblvOeH7b
bv/9AP9K8HfNsGjfd6lNsvgCpoQ4VKS4FOwXFjz2vljl9DJZEwD/fdDEa/yHtCyk
4/fNaRMhbrX7HECCNCCfkC3VxppukQM=
=00g9
-----END PGP SIGNATURE-----

--bd373288a0d8c3b229a1e6a0dff79d8e39c1f4f8b2c5ab7ef827047dc5fd--


--===============9204566381155615550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9204566381155615550==--

