Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2CC7C83F1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 10:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kYhBL4vhUVpDR4k42i+chfgPH8xKpO1P5Lq6AGDZhHM=; b=1vcDdwbTA/Y0HlO2Y7DzLVwWEo
	O9mrKBpVwsBxeG0VIbrR38Q7r17dKhQCiFA5pEFDIckihhLwuVQpFvA0GCR1OBHNXBn/deUz1Zpm0
	gD2gD4YR88S/gcKy5JPiIoqWmy97MVVD3YYjK+TY2PYwEu5Dn6/4TA+Qepn9Qtme9QLPTOcocwOgC
	o7EuiiH+Uc6mXPl4l1X4yCla2w+6PE1Scr65fCd6yxUxsA5aIN8zrqmfvANu6koaaGGejGXqOOp/8
	/VbZ6J2CxMieSrI1iKgmIo9a2JHtai6q/ntw69jHvIuARswGSrVdhz/Nh2U1kZc2NOXqFsqN/Nptd
	R8YFLNOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoHI-0000000BRA0-01Ic;
	Thu, 10 Jul 2025 10:13:20 +0000
Received: from out-172.mta0.migadu.com ([91.218.175.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnIQ-0000000BIqI-0qWf;
	Thu, 10 Jul 2025 09:10:27 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752138623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sGaNMk1Nb5uDkougr0JHI6djA5s2FrcturNzxHjLd2w=;
	b=xbG6UlchkL4vuwnA6X5fvzcs/+BGWE9E2QDy9ueXRRbvDTV32lB8bhIao/UlPUDFjti9hh
	77VkbFM4ahaWF57B4aD06nfBnwtDcZCO387O6HloDr4JjwuYagTKzyKerNPqKJcxJKdK6r
	86IZmdS6TTrwA+3TUHGMx+gq+wQVVnGhnjTAtvp2mw00DfePiJ8tdd46f83cMGi2sTFOK6
	sWZaOw0vRVch8vn9SHHNZ8YEE9uG0UtMc4UwFWbqBJso9hJoHrGXy0aaM1MlsMLzfTwctF
	ZJO2qu7FB+jTAPpQ3i6dsXl2E2I6+bVmgyHVsOSFwMqSeMyFivDqKlP14VqSBg==
Date: Thu, 10 Jul 2025 11:10:14 +0200
Message-Id: <DB89AVFYVBG3.11WV856SX4PDP@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add reset button to NanoPi R5S
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
References: <20250709105715.119771-1-didi.debian@cknow.org>
 <ea6f2815-5882-4fab-8372-1c252a87e09a@kernel.org>
 <DB7OENOUTHGM.2JPD73SZQ9P0P@cknow.org> <11937120.2WqB4rESCP@diego>
In-Reply-To: <11937120.2WqB4rESCP@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_021026_716820_B64B34D6 
X-CRM114-Status: GOOD (  29.10  )
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
Content-Type: multipart/mixed; boundary="===============3644878144697807861=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3644878144697807861==
Content-Type: multipart/signed;
 boundary=5487c075f993717a80e96c46976a9b05c2e5ee5ea6d3bac3fbff171d5762;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--5487c075f993717a80e96c46976a9b05c2e5ee5ea6d3bac3fbff171d5762
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Jul 9, 2025 at 9:49 PM CEST, Heiko St=C3=BCbner wrote:
> Am Mittwoch, 9. Juli 2025, 18:47:47 Mitteleurop=C3=A4ische Sommerzeit sch=
rieb Diederik de Haas:
>> On Wed Jul 9, 2025 at 4:18 PM CEST, Krzysztof Kozlowski wrote:
>> > On 09/07/2025 13:17, Diederik de Haas wrote:
>> >>>>  		compatible =3D "gpio-leds";
>> >>>>  		pinctrl-names =3D "default";
>> >>>> @@ -127,6 +140,12 @@ eth_phy0_reset_pin: eth-phy0-reset-pin {
>> >>>>  		};
>> >>>>  	};
>> >>>> =20
>> >>>> +	gpio-keys {
>> >>>> +		gpio4_a0_k1: gpio4-a0-k1 {
>> >>>
>> >>> Are you sure that this passes checks?
>> >>=20
>> >> If it's about the 'weird' name/label, it is what is used in the
>> >> schematic document I have and I asked Heiko (on IRC) if using
>> >> ``reset_button_pin: gpio4-a0-k1`` would not be better. That would mak=
e
>> >> it more descriptive while also having the schematic traceability in i=
t.
>> >> The answer was no, use the form I used in this patch.
>> >>=20
>> >> Am I missing checks I should've done as well?
>> > I meant that usually nodes, including pin controller mux/config nodes,
>> > have specific prefixes or suffixes. Other cases have here as well. You=
r
>> > does not.
>>=20
>> I agree I've done it inconsistent with how I did the other pinctrl
>> nodes, so I should've added the '-pin' suffix. For consistency.
>
> Also fine by me :-) .
>
>
>> I've been wondering whether there are rules for naming [1], both for the
>> grouping and the node names. Some DTS files use a '-pin' suffix, others
>> don't. And it's not uncommon to see both variants in the same dts file.
>>=20
>> One of the examples I looked at was ``rk3568-qnap-ts433.dts``. While it
>> uses 'keys' as grouping node, I went with 'gpio-keys' as that was used
>> more often (in other files). While the gmac0/keys/leds subnodes under
>> ``&pinctrl`` use the '-pin' suffix, the pmic/usb subnodes do not.
>> (and I just noticed 'hdd4_led-pin' should be 'hdd4-led-pin')
>
> The TS433 suffers from that "no schematics" thing I mentioned in the
> other mail, so the device-specific pins are named after their functon.
> As I was assuming the TS433 will follow the reference design, those
> pins are named after how other boards do it

That sounds (very) sensible for the 'base' name.
What I'm trying to figure out is whether there are some rules which
determine whether the should be a '-pin' suffix or not.
Because some have and some don't.

>> I'd love to know/learn if there are actual rules for these things, but
>> I don't know them.
>
> From looking at pinctrl bindings, it seems patterns are set per controlle=
r
> with no global rules. Which makes sense in a way, because they do
> represent pin(-groups) differently each.

I think I don't understand this.
I know there are pattternProperties which describe the format for
several node names, but I haven't found a rule for '-pin' suffix.
The "rockchip,pins" property is defined in pinctrl/rockchip,pinctrl.yaml
and I don't see it there. And in the example in that binding file, there
is one node with a "rockchip,pins" property ... and it does not have a
'-pin' suffix.

I'll sent a v2 with the '-pin' suffix even though I still don't know
why. It looks more consistent though.

Cheers,
  Diederik

--5487c075f993717a80e96c46976a9b05c2e5ee5ea6d3bac3fbff171d5762
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaG+DeAAKCRDXblvOeH7b
bm8wAQDC/7RwQKw8W5acfgmJOlF9Yd/jpPxII9M5WLLzV2zSEQEA+ZyoUW3i+QT0
XYt5dtbVv6ODUpEp8G03nlsPitbW+QA=
=ryk6
-----END PGP SIGNATURE-----

--5487c075f993717a80e96c46976a9b05c2e5ee5ea6d3bac3fbff171d5762--


--===============3644878144697807861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3644878144697807861==--

