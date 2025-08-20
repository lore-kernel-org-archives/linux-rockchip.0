Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC32CA0EDC
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 11:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iJEfKawja0uRs/qAXTB4HsFjt8senwtVk8l/y0kPeQU=; b=T7IdkEiULezoYenGulM1InBoO3
	SLPyvUmRRjAc/f7xex+glvPk/3zCCiIysAf25cvIkMEaVa4jOjGw1WjPQ69iInY46jYakuvwxr/UJ
	nBab5yR66peh9APbYoNYl754+hN6d3eJkQ5ytI64wyWntXD0wQ/x9eKsQ9dEJKDKJS2pkOebN8DdR
	enR8TnC74tIWLzdHIZDzG4oHQNbAot9r6FCVo47ZYeuzgyfd6UnBc3LLDQGgxihQOS/YvvZ1xmCGl
	M4U5A0obLgGivFPZenG4l8TPfgjxEXEr+ZaimKtZuCDxO2PUKpgdZQra9umCZCSih8m7b6wcTbvdO
	gaEabNvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoh4Y-0000000DQHN-1jfd;
	Wed, 20 Aug 2025 11:33:42 +0000
Received: from out-174.mta0.migadu.com ([91.218.175.174])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogEW-0000000DC9Z-3GnU
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 10:39:58 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1755686270;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LR7oamsLXiIEp2PWmQM+Y8/7Bo4DrxhgzvH8C2oVFno=;
	b=O8I9Ir9gH5qd+hA7zlVyuHursR2TU0TquTG3CH6W8Da655CBQGQf8IJ2gZBBp4lhxqSmnU
	kgaViDUqKxtRmX+ltQ/vfSkdZAPaJEOymgYqztV0eySs+IwF32Lh03GE00qA6oSYtEzXtp
	KBqrHFG5g3PjXCWryY/KuaEnheFpVCgB5mcQlyMDDSLOvNIilKorJQ67Scmr1ouP6ShJVF
	mn/zsHP5dzEjvz2wKEa8fRSTh4gI8D/b5P08Sqvxk1nV6jc82QP1VPYZnTUZyhonA9tGBm
	YDHIDf9NkD5srFSy0dckRleBON/Y5c1BPvqTQ9vQWpVa7gUnlq7en9Et5hCBJg==
Date: Wed, 20 Aug 2025 12:37:38 +0200
Message-Id: <DC76U4GVR0O2.1HXLEPCF8BG02@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: "Lee Jones" <lee@kernel.org>, "Pavel Machek" <pavel@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Jacek Anaszewski"
 <jacek.anaszewski@gmail.com>, <linux-leds@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: leds: Clearly mark label property as
 deprecated
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20250815104805.405009-1-didi.debian@cknow.org>
 <b30905fa-6bd1-47dd-8371-f609d418387b@kernel.org>
 <DC2ZLORG11W0.1CS78L6F2OV4Q@cknow.org>
 <20250820-hairy-economic-wildebeest-ba25a1@kuoka>
In-Reply-To: <20250820-hairy-economic-wildebeest-ba25a1@kuoka>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_033956_955372_F9F4FCE2 
X-CRM114-Status: GOOD (  21.33  )
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
Content-Type: multipart/mixed; boundary="===============1946024269328271632=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1946024269328271632==
Content-Type: multipart/signed;
 boundary=1d9ff9570717d375168b9ca28d86c87a4db6edce1af1be67cd4ffe114401;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--1d9ff9570717d375168b9ca28d86c87a4db6edce1af1be67cd4ffe114401
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Aug 20, 2025 at 10:14 AM CEST, Krzysztof Kozlowski wrote:
> On Fri, Aug 15, 2025 at 02:06:49PM +0200, Diederik de Haas wrote:
>> On Fri Aug 15, 2025 at 1:00 PM CEST, Krzysztof Kozlowski wrote:
>> > On 15/08/2025 12:47, Diederik de Haas wrote:
>> >> The text description already mentioned the label property was
>> >> deprecated, but using the 'deprecated' property makes is clearer and
>> >> more explicit.
>> >>=20
>> >> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
>> >> ---
>> >>  Documentation/devicetree/bindings/leds/common.yaml | 1 +
>> >>  1 file changed, 1 insertion(+)
>> >>=20
>> >
>> > Please first read previous discussions:
>>=20
>> [I reversed the order of the links so the oldest is first]
>>=20
>> > https://lore.kernel.org/all/20221122111124.6828-1-cniedermaier@dh-elec=
tronics.com/
>>=20
>> Rob: "They ['function' and 'label'] serve 2 different purposes."
>>=20
>> > https://lore.kernel.org/all/20240509110545.49889-1-linux@fw-web.de/
>>=20
>> Krzysztof: "I don't think there was conclusion to make it deprecated on
>> last attempt"
>>=20
>> I agree.
>> What I don't understand: Why wasn't the text updated to correct the
>> incorrect statement about deprecation (that's how I interpret it now)?
>> Or some other conclusion being made and that that will be reflected in
>> the text and/or a deprecated property.
>>=20
>> Otherwise the confusion remains and then it's just a matter of time
>> before a 4th person comes along proposing the same patch.
>> And possibly even more harmful: people use it incorrectly.
>
> Whatever change you want to do here, I expect to address one way or
> another these previous discussions. If the code is confusing, refine the
> description. But not in a way which ignored previous feedbacks.

I'm not going to make a change.

I thought I would be making (more) explicit what the binding says.
Apparently I read/interpreted it incorrectly. What I described above is
how I currently interpret the *confusion* text/discussion. Is that
correct? I have no idea. That I'm at least the 3rd person proposing this
change indicates I'm not the only one who is confused.

IMO it's up to a/the maintainer to make a decision and that should then
be reflected in the binding, which should fix any confusion.

I hadn't looked at the code yet, but *I*IUC the code should follow the
binding, not the other way around. That's how I have interpreted
(mostly your) comments related to various binding patches ever since I
started actively following upstream(ing) work. Which (again) may be an
incorrect interpretation.

Regards,
  Diederik

--1d9ff9570717d375168b9ca28d86c87a4db6edce1af1be67cd4ffe114401
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaKWldwAKCRDXblvOeH7b
btBmAQD1JHjz6wVqq6gTPmRfqgFiNxJqJCcz46DN0b+ZxQsbxAEArC+y6rxDn6tN
msQRrdwHK3Ic9gU5uPGEpj5/vERYRwU=
=tljW
-----END PGP SIGNATURE-----

--1d9ff9570717d375168b9ca28d86c87a4db6edce1af1be67cd4ffe114401--


--===============1946024269328271632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1946024269328271632==--

