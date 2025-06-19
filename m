Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB701C7115C
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 15:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AjJ0XSKut2UcQQJwHhr/2BrVJ6rSzrvOMIqAYKjkCJg=; b=3l8gOZfoOBfRIybxDhkFdakyMe
	RfMAnoPtAF2+IsefftlAxHnRr6sXvZZf76t0TQyghoZP52rY26wYrcRqQG55mz1Tx4MrQNMthy8R3
	91/UY14ndAW1A3FtCrEreQ01/soAJ2B8L/7iKjDColTqMFmVYwjUrW9cvsQHe4ZyavVIFhBaKcr8F
	Mv8bv1PC3SZZs3zGvwsh3cQh8pXftBF8FUNPfL4xRPO2qCiwKeWrKslytmz17GItXqrjTocEejGim
	mxW2usB8+0CEDXqaTY40u2m97r19+cICXKyc3en4TzsPriQ+W+ysYgaom1QWQRjz4iGCHZM4i6YmF
	gPQUiM9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSHSU-0000000DT3n-0LuN;
	Thu, 19 Jun 2025 15:45:46 +0000
Received: from out-172.mta0.migadu.com ([2001:41d0:1004:224b::ac])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSDdt-0000000CvNw-2y4d
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 11:41:19 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1750333273;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UlxTUj5Ir+oO3iGWYKmoJ9ycuaXkjQkkYTvLvsQbhwI=;
	b=P92wfx2kjqVESzvsjtMDG06Ohguto8BeIB3FFHgIMXvCnwAQj49+r7N2yWFEA4MI6m4Q59
	shyyFpYG9kEpxklcX2EbTabMIHxV0RJH4z6DOP5bnrtIWy7KlMqWw0cUYlovxX2Y3O0vaJ
	IDWXdqxT98Ge7B7XTe7HuYVWBLXeC+TscRPYns1xaFP4vdI7g2Itwx2jK7hjZCwm2e4BFd
	VAsBsm1t5U6vOFMINsb/VMqcX71NMDHyU/QfKac88/qitTP5aYH8q9p7cWoKujwJUj79Nv
	+TvErZLKsDYOSXadvbF9iz7EaVd7Xrun7+xwJqCDCW3lR6wLDt88+H0abmFNvA==
Date: Thu, 19 Jun 2025 13:41:03 +0200
Message-Id: <DAQHCWR6W4LD.2Q1H9B9JO2LJZ@cknow.org>
Cc: "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix the PinePhone Pro DTS'
 panel description
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Olivier Benjamin" <olivier.benjamin@bootlin.com>, "Heiko Stuebner"
 <heiko@sntech.de>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
References: <20250619-dtb_fixes-v2-1-abd711d11b67@bootlin.com>
 <DAQEX04P5320.CQDU7SL7AV4A@cknow.org> <5461462.0VBMTVartN@phil>
 <c26ce505-343a-4759-90b5-a026c66979c7@bootlin.com>
In-Reply-To: <c26ce505-343a-4759-90b5-a026c66979c7@bootlin.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_044118_151148_51A17D4A 
X-CRM114-Status: GOOD (  17.35  )
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
Content-Type: multipart/mixed; boundary="===============3347206293583665164=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3347206293583665164==
Content-Type: multipart/signed;
 boundary=b5fff2ebebde679f93dfaf923c9136a97ab4b047f673687733da1b95f36b;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--b5fff2ebebde679f93dfaf923c9136a97ab4b047f673687733da1b95f36b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Jun 19, 2025 at 12:47 PM CEST, Olivier Benjamin wrote:
> On 6/19/25 12:31, Heiko Stuebner wrote:
>> Am Donnerstag, 19. Juni 2025, 11:46:15 Mitteleurop=C3=A4ische Sommerzeit=
 schrieb Diederik de Haas:
>>> On Thu Jun 19, 2025 at 7:21 AM CEST, Olivier Benjamin wrote:
>>> Thanks for working on upstreaming PPP things :-)
>>>
> My pleasure. I also have
> https://lore.kernel.org/linux-rockchip/20250509-camera-v3-0-dab2772d229a@=
bootlin.com/
> pending =3D )

Happy about that too, but I 'happen' to research DSI connected displays
(for other devices), so I felt comfortable to chime in with that.
I haven't looked at camera stuff yet (and it's not high on my prio
list), so hopefully others will chime in for that :-)

>>>> Fix a few issues in the panel section of the PinePhone Pro DTS:
>>>>    - add the second part of the Himax HX8394 LCD panel controller
>>>>      compatible
>>>>    - as proposed by Diederik de Haas, reuse the mipi_out and ports
>>>>      definitions from rk3399-base.dtsi instead of redefining them
>>>>    - add a pinctrl for the LCD_RST signal for LCD1, derived from
>>>>      LCD1_RST, which is on GPIO4_D1, as documented on pages 11
>>>>      and 16 of the PinePhone Pro schematic
>>>>
>>>> Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
>>=20
>>>> +	lcd {
>>>> +		lcd_reset_pin: reset-pin {
>>>
>>> I don't know if there's a 'hard rule' for it, but I'd recommend to use
>>> ``lcd1_rst_pin: lcd1-rst-pin {`` as that would match the naming from
>>> the schematics. I realize that some but not all (other) pinctrl nodes
>>> follow that 'rule', but it helps with traceability.
>>=20
>> not a "hard" rule, but a strong preference.
>> I.e. we want people to ideally be able to just hit search in the
>> schematics PDFs for the name they saw in the devicetree.
>>=20
>> But following the schematic names, is the general goal.
>>=20
> Very fair. I used "lcd_reset" because even the schematic is not super=20
> clear: it uses "LCD_RST" on page 16 and LCD1_RST on pages 11 and 16.

AIUI, the GPIO pin (GPIO4_D1) is labeled LCD1_RST and on page 16 you can
see that is connected to LCD_RST from BL102-G39-1FR.
The definition here is about the GPIO pin, hence LCD1_RST.
The other part of my suggestion was related to another 'convention':
the name and label/phandle are the same with ``s/-/_/`` (and 'reset-pin'
is not specific enough; there are a number of reset pins).

Afaic you don't need to mention that I suggested the mipi_out related
changes; the reason to do that (unneeded redefinition of already defined
things), is.

Cheers,
  Diederik=20
=20
>> If this stays the only suggestion though, I can fix that when
>> applying. Or you can send a v3 - up to you :-)
>>=20
> I'll correct to lcd1_rst_pin and send a v3 (most likely later today)
>
>>>> +			rockchip,pins =3D <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
>>>> +		};
>>>> +	};
>>>> +
>>>>   	leds {
>>>>   		red_led_pin: red-led-pin {
>>>>   			rockchip,pins =3D <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>>>
>>> Otherwise,
>>>
>>> Reviewed-by: Diederik de Haas <didi.debian@cknow.org>
>>>

--b5fff2ebebde679f93dfaf923c9136a97ab4b047f673687733da1b95f36b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaFP3UgAKCRDXblvOeH7b
bi9DAP9ZolhYlKXrTz+ChkMa/hViAuhi8CvNP7H+iQUeMfPungEAvGMwNigMNSff
1ZcRaGagcoiWom9lXI7yxhvd5TpmGws=
=K75Z
-----END PGP SIGNATURE-----

--b5fff2ebebde679f93dfaf923c9136a97ab4b047f673687733da1b95f36b--


--===============3347206293583665164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3347206293583665164==--

