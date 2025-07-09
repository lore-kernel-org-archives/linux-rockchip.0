Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 344A4C83F03
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9XV0oxhTx8h2PYalxg8m/tdncKWONsEwQYlZu1xViaE=; b=r/l5uOl9sh+dt5ysXtaGKnZZTQ
	xt+EiWq2AUKWHDrtBVqOLzie2eo+IrqzDRnunM23AadYo5ADH6HLb6AFwISFzg/ijR/LD8KLGoA8W
	s7JzGv2p7TPdrWEc9urtIVUA7PcLl+Cqx19YEwCF73FEb2XkqDsARyX8llsmuFjioM0SWKGu38YCS
	s+tuOZ2yRwafsoAdzrLTfhYhsYiGez+ZLhF7XM3O9oPtizDCXvOImFtNJPJy/cO1l9ayqk97zlW2R
	ptAhOcgfw0YqcVb5Ihy2mHnW5DvfVCJ1H0updQYrWB0hO5cAcV+EopeMuYu7oefXGVsJm3lU8Uypk
	sdiTryfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZaFj-00000009g9T-2xnF;
	Wed, 09 Jul 2025 19:14:47 +0000
Received: from out-183.mta0.migadu.com ([91.218.175.183])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZXxs-00000009Lgi-3kYr
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Jul 2025 16:48:14 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752079680;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wYGHs+rmqAThxK0bAWwe4PbeaiFj7mnmsmdG/2rz7q4=;
	b=jXOQq2rtlwtXNsPPN56seZg4CcCy60xbluMv5iM1AdzqUoFmCwU5SUa7ymKE9Acjf7XL/m
	BkDgW9hmbHIlkrJM/Ovav6HrDZzFzF4DeXpJDWLzn1xhFhl3r0JZhY7sRWqtmaGgXRsVp3
	T0ZRZ/1tORO0g9qW+7hHL55SACN8ZnyOH6YsH7qeRW4VUVUecDmcajhC6QqJ6uxeDDKvo8
	RmGQdkEqLpz/FxiJsQAqdgzmBcQHk5bC/+myowfd/u9CIVqY9Ms7IV27XjgzsqwdAKSDhw
	OY4fgsFtrm64c2BqAsW+HrRBVAkWdLTQHF+RJ8GunZrShdqwBqhsK4o2ojgNEw==
Date: Wed, 09 Jul 2025 18:47:47 +0200
Message-Id: <DB7OENOUTHGM.2JPD73SZQ9P0P@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add reset button to NanoPi R5S
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250709105715.119771-1-didi.debian@cknow.org>
 <649824ea-a420-437e-ace1-2f079235c604@kernel.org>
 <DB7HDOPFOQAE.3NG4SP67ES80J@cknow.org>
 <ea6f2815-5882-4fab-8372-1c252a87e09a@kernel.org>
In-Reply-To: <ea6f2815-5882-4fab-8372-1c252a87e09a@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_094813_070386_C72ED478 
X-CRM114-Status: GOOD (  15.19  )
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
Content-Type: multipart/mixed; boundary="===============2737405061449124458=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2737405061449124458==
Content-Type: multipart/signed;
 boundary=cb4b35baa72f7fb105cc0d763ed3fae62a1823cd6aadf95634871186272a;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--cb4b35baa72f7fb105cc0d763ed3fae62a1823cd6aadf95634871186272a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Jul 9, 2025 at 4:18 PM CEST, Krzysztof Kozlowski wrote:
> On 09/07/2025 13:17, Diederik de Haas wrote:
>>>>  		compatible =3D "gpio-leds";
>>>>  		pinctrl-names =3D "default";
>>>> @@ -127,6 +140,12 @@ eth_phy0_reset_pin: eth-phy0-reset-pin {
>>>>  		};
>>>>  	};
>>>> =20
>>>> +	gpio-keys {
>>>> +		gpio4_a0_k1: gpio4-a0-k1 {
>>>
>>> Are you sure that this passes checks?
>>=20
>> If it's about the 'weird' name/label, it is what is used in the
>> schematic document I have and I asked Heiko (on IRC) if using
>> ``reset_button_pin: gpio4-a0-k1`` would not be better. That would make
>> it more descriptive while also having the schematic traceability in it.
>> The answer was no, use the form I used in this patch.
>>=20
>> Am I missing checks I should've done as well?
> I meant that usually nodes, including pin controller mux/config nodes,
> have specific prefixes or suffixes. Other cases have here as well. Your
> does not.

I agree I've done it inconsistent with how I did the other pinctrl
nodes, so I should've added the '-pin' suffix. For consistency.

I've been wondering whether there are rules for naming [1], both for the
grouping and the node names. Some DTS files use a '-pin' suffix, others
don't. And it's not uncommon to see both variants in the same dts file.

One of the examples I looked at was ``rk3568-qnap-ts433.dts``. While it
uses 'keys' as grouping node, I went with 'gpio-keys' as that was used
more often (in other files). While the gmac0/keys/leds subnodes under
``&pinctrl`` use the '-pin' suffix, the pmic/usb subnodes do not.
(and I just noticed 'hdd4_led-pin' should be 'hdd4-led-pin')

I'd love to know/learn if there are actual rules for these things, but
I don't know them.

Cheers,
  Diederik

[1] https://lists.sr.ht/~diederik/pine64-discuss/%3CDAN429FK06XR.3G8JK8OMGT=
RKN@cknow.org%3E

--cb4b35baa72f7fb105cc0d763ed3fae62a1823cd6aadf95634871186272a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaG6dOQAKCRDXblvOeH7b
bnxSAPoCVZv3DSRcTIXuWD0GoQTcQLm0+bSrUFKoN7lZj65cUwD/QOVG3Uk0vNfE
odCJSTKczf2kfGF7S2EUgc5f3r8/xAc=
=b89H
-----END PGP SIGNATURE-----

--cb4b35baa72f7fb105cc0d763ed3fae62a1823cd6aadf95634871186272a--


--===============2737405061449124458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2737405061449124458==--

