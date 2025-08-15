Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3FA8CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Aug 2025 14:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zsJBL28wwZ65SI77hdN+FPDTDcth0nJoMTJojoOkk/0=; b=JeiMk0XH0OiP6t3FL9k3j61IEm
	vMDokhCd+++ycT3TJazhTQ/mA51PKG3GNdqe4/dfIwDXglD67lcywhSPNB1kolm+q2RNIQpTSbzrz
	SMgW+lMXAn5Nf4yIKhvav+H6GcyHH4T3Fy9/5XN3FSAIMHLI4yVZMepfFsiPFLlHDqdIh9dbpoeeV
	kK71bT6znWS+iX2z+kIKmNxkYjm2xUUsBKffGp9kLd/d6dpxUNB4uhydyNDDzzzwgYiwUnTFMsDJn
	aEG2pNykzdOz9MZHhfD7jnItzKtkC4Vi+rozQMFULDx5ee64tUwM7A9+rWxEv1M829bYsnLN5Fdi3
	ocpmThEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umvcU-00000002kQb-0cUs;
	Fri, 15 Aug 2025 14:41:26 +0000
Received: from out-170.mta1.migadu.com ([2001:41d0:203:375::aa])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umtDH-00000002PkE-2hhf
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Aug 2025 12:07:18 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1755259632;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S1snjcKnr5T+gZaU0t/7csMoaxio2O5nUXuj8A3C7QA=;
	b=obpPn8MQaE6sEdep1Ia26ok2jP1igFkswh5NXhZgsIanDEcTwThXpGlEMMPSaTT+CGYP/t
	/M+yOmjHMlDJbTfcTKnZKuntmX8kH707C+2MHeoi/kkI2KECDn7E/bJaXxQ9Ivbv2w5Eyr
	JnDtDhjtP7iu5QIpL5TxkJ3cjuR/ZiY6wqtRwKtza77rNlliSC4PErDNS1IjBLPdmcu+e0
	8wNP7N3rWxVHBPRR1J+PuFQe9tuO2NcDq7SFRYCVs0NaC2X1In0rLqbOyfN4XDWq3Ar/CP
	ZRTBl6G3hY8XCXXzoiHvnIhk7T7DMIU7eFRLvRNs2fYjEiWBZVJUke/+tPvDGQ==
Date: Fri, 15 Aug 2025 14:06:49 +0200
Message-Id: <DC2ZLORG11W0.1CS78L6F2OV4Q@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Lee Jones" <lee@kernel.org>,
 "Pavel Machek" <pavel@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>
Cc: "Jacek Anaszewski" <jacek.anaszewski@gmail.com>,
 <linux-leds@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: leds: Clearly mark label property as
 deprecated
References: <20250815104805.405009-1-didi.debian@cknow.org>
 <b30905fa-6bd1-47dd-8371-f609d418387b@kernel.org>
In-Reply-To: <b30905fa-6bd1-47dd-8371-f609d418387b@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_050716_405215_593C0CD3 
X-CRM114-Status: GOOD (  14.30  )
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
Content-Type: multipart/mixed; boundary="===============8385897212502574828=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8385897212502574828==
Content-Type: multipart/signed;
 boundary=8624ee546faf8c26b2a96c7cf02ab2c1b94682b15dc888f8a0edb7954318;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--8624ee546faf8c26b2a96c7cf02ab2c1b94682b15dc888f8a0edb7954318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Aug 15, 2025 at 1:00 PM CEST, Krzysztof Kozlowski wrote:
> On 15/08/2025 12:47, Diederik de Haas wrote:
>> The text description already mentioned the label property was
>> deprecated, but using the 'deprecated' property makes is clearer and
>> more explicit.
>>=20
>> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
>> ---
>>  Documentation/devicetree/bindings/leds/common.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>=20
>
> Please first read previous discussions:

[I reversed the order of the links so the oldest is first]

> https://lore.kernel.org/all/20221122111124.6828-1-cniedermaier@dh-electro=
nics.com/

Rob: "They ['function' and 'label'] serve 2 different purposes."

> https://lore.kernel.org/all/20240509110545.49889-1-linux@fw-web.de/

Krzysztof: "I don't think there was conclusion to make it deprecated on
last attempt"

I agree.
What I don't understand: Why wasn't the text updated to correct the
incorrect statement about deprecation (that's how I interpret it now)?
Or some other conclusion being made and that that will be reflected in
the text and/or a deprecated property.

Otherwise the confusion remains and then it's just a matter of time
before a 4th person comes along proposing the same patch.
And possibly even more harmful: people use it incorrectly.

There's also this line:
"function-enumerator has no effect when this property is present."

if that is true, and I would assume so as that's what the binding says,
then I messed up even bigger then I already think I did in commit
1631cbdb8089 ("arm64: dts: rockchip: Improve LED config for NanoPi R5S")
resulting in commit
912b1f2a796e ("arm64: dts: rockchip: Drop netdev led-triggers on NanoPi R5S=
")

... but I'd have expected that to be pointed out in the review.

I can understand that function-enumerator is used in an automatically
generated label when a label doesn't exist, but I'm inclined to think
the same "They serve 2 different purposes" applies here too.

Cheers,
  Diederik

--8624ee546faf8c26b2a96c7cf02ab2c1b94682b15dc888f8a0edb7954318
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaJ8i5gAKCRDXblvOeH7b
blHPAP47IybHAz/ehXhdDv8uUzgLK6trTHIF4sa580pxeE3YkQD+IT7PvgXPS4r7
s6gjTNa7I7J78T4OjK79J1SWdXcrgQg=
=JWsI
-----END PGP SIGNATURE-----

--8624ee546faf8c26b2a96c7cf02ab2c1b94682b15dc888f8a0edb7954318--


--===============8385897212502574828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8385897212502574828==--

