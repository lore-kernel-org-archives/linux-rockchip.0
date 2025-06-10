Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36099C5B543
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 13:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Message-Id:Date:Mime-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CrNTqEUU5At3k9f8OOVf2h3wARfYDHoroC19w8YuC7A=; b=XhROfa/NO9KTwgIsDMrHwnTF9H
	Bt+McEkn9NtBu393rwpUrNfrnapPfEsBW401wJe1YJwn5BsjZ9Mq5CiYsq4piu/7o0OwnT6dZJU/F
	ApFFGjC2x1Km5Tuf4wvwRgtZR6x7PsC19qqjrEblifTvSyDS93tly+Psqs4aGd132VoxC5wOw2jHx
	cgT8sCtnna2QVqlBAR8yvjsuXKDoY1b7yEjRgJGV60peDO4N2PHjNXeVfPOyEN6tOsyFJpSpMUS/B
	BgH9dPuRaCChFOPdzz/P4jlQ001M3XaiRQ3sBFNsE6PWWygfVLIc+jGhdi7QhIC7j5yaNrNAqCzvv
	TRNhOt6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOyfX-00000006tF5-0mzm;
	Tue, 10 Jun 2025 13:05:35 +0000
Received: from out-173.mta1.migadu.com ([95.215.58.173])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOxy4-00000006kof-29V2
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Jun 2025 12:20:42 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1749558038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8gK2SwvVpB0iJPc79lktbOi60vhhEtYSC0FV683UEdM=;
	b=MEQgziFX2kglVeu7ANROwKONEqK31HGcNB4WqQ1yJavHnCWNzadDg6T9lt3JrK4q7HnlLV
	OTY2zEh1JoaLjJt2yeuTyPXSQFREz0OBiVPGvClJHqfKZ/HuSZWalW1yYqRvHiEINDQhi+
	aDsvLMtS8J4VwlPDmKPYD7nhbpq2az3RFC/NlX1Ky+Pec+X87Hek/jH33YwTphKP8ztIqq
	n4mqaI45JbJUTOLaggoxvBZgH8TJT48VITX0V97exxBCctpaNp7rp3/vY/iQgr4JPdcrSl
	kEOPbTiMOlHWMham3KM+YZ8RtpyhH2Gk8CRDxjc03IiZjIog6ZHHd9h/EFNotQ==
Date: Tue, 10 Jun 2025 14:20:00 +0200
Message-Id: <DAIUJTK7T4P4.29G3ADVPS0NWG@cknow.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add overlay for RockPro64
 screen
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Diederik de Haas" <didi.debian@cknow.org>, "Peter Robinson"
 <pbrobinson@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Heiko Stuebner" <heiko@sntech.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, "Peter Geis" <pgwipeout@gmail.com>
References: <20250518215944.178582-1-pbrobinson@gmail.com>
 <20250518215944.178582-2-pbrobinson@gmail.com>
 <DAITK5IPG0QA.2EMB23KS83SBE@cknow.org>
In-Reply-To: <DAITK5IPG0QA.2EMB23KS83SBE@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_052040_896202_E20CDFD4 
X-CRM114-Status: GOOD (  11.46  )
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
Content-Type: multipart/mixed; boundary="===============8784663616387169493=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8784663616387169493==
Content-Type: multipart/signed;
 boundary=25c824350af353d1b2d73749738e31465e8af16df69736d7a0df7feb6d52;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--25c824350af353d1b2d73749738e31465e8af16df69736d7a0df7feb6d52
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Jun 10, 2025 at 1:33 PM CEST, Diederik de Haas wrote:
> On Sun May 18, 2025 at 11:59 PM CEST, Peter Robinson wrote:
>> The Pine64 touch panel is a panel consisting of the Feiyang fy07024di26a=
30d
>> panel with a Goodix gt911 touch screen. Add a device tree overlay to
>> allow the display to be easily used on the device.
>> ...
>> ---
>>  arch/arm64/boot/dts/rockchip/Makefile         |  9 ++
>>  .../dts/rockchip/rk3399-rockpro64-screen.dtso | 89 +++++++++++++++++++
>>  2 files changed, 98 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen=
.dtso
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts=
/rockchip/Makefile
>> index 3e8771ef69ba1..c7b13bff3ac20 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -77,6 +77,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4c.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock960.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-v2.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtso
>
> ``s/rk3399-rockpro64-screen.dtso/rk3399-rockpro64-screen.dtbo``

nvm, it was already correctly applied by Heiko.

> Cheers,
>   Diederik
>
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire-excavator.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399pro-rock-pi-n10.dtb
>> @@ -209,6 +210,14 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-puma-haikou=
-haikou-video-demo.dtb
>>  rk3399-puma-haikou-haikou-video-demo-dtbs :=3D rk3399-puma-haikou.dtb \
>>  	rk3399-puma-haikou-video-demo.dtbo
>> =20
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtb
>> +rk3399-rockpro64-screen-dtbs :=3D rk3399-rockpro64.dtb \
>> +	rk3399-rockpro64-screen.dtbo
>> +
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtb
>> +rk3399-rockpro64-v2-screen-dtbs :=3D rk3399-rockpro64-v2.dtb \
>> +	rk3399-rockpro64-screen.dtbo
>> +
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-wolfvision-pf5-vz-2-uhd.dtb
>>  rk3568-wolfvision-pf5-vz-2-uhd-dtbs :=3D rk3568-wolfvision-pf5.dtb \
>>  	rk3568-wolfvision-pf5-display-vz.dtbo \
>> <snip>


--25c824350af353d1b2d73749738e31465e8af16df69736d7a0df7feb6d52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaEgjDAAKCRDXblvOeH7b
bsRUAP9XR9PtWm858vBGa90HrSmYJ/WeviycqMnzM+r8WvPOpQEAzd4rmOMsaI/O
/ufPoni2PgpXh+vcJekght8agtKniQ8=
=fLEb
-----END PGP SIGNATURE-----

--25c824350af353d1b2d73749738e31465e8af16df69736d7a0df7feb6d52--


--===============8784663616387169493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8784663616387169493==--

