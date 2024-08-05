Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D151DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 16:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8jB+alnRnpVZH9yFJ+l4iaiuq/QgxXTectlFeL60wLE=; b=nVkGLOanqFUPEPL8g074BavUZE
	+izLqaa/9warZ2Zt5k9YAPxHYHskN/q0R5eZaL7TWJy6TktLkWn6EQyYQ27O9BEgjOB7bhSw1oHCV
	sPd16NE9nOzZLcR1GGFuXYw50/YAmhWe5xdcYOHrF1+QDv5KN8fJzHe29rCZtChaDodBzjpKHxwSa
	iAC/TQlmO12CLjohHeJdUxZXzWx4FQf04vQBeH1FtWbzRhalMvV8jTf8W1p7GTlOPEywR8etCJjUY
	TwSK1K8DLZmono32BPKl0RY9Q7TEpwP1dAqhvuXzGfBa8qLPhHcO+UuJUH4fhwCWfAuSNy6jg4rmA
	ZL2QF66A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0sq-0000000GZGJ-0JLC;
	Mon, 05 Aug 2024 16:48:32 +0000
Received: from out-188.mta0.migadu.com ([2001:41d0:1004:224b::bc])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0sH-0000000GZCx-44AL
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Aug 2024 16:48:00 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1722876473;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=c3SmaiVPPLs2hONey/aNVxcb17+6xPWlsjIFaONzPvU=;
	b=rBuwlH8ij539SFwl2kqiJwb9CKVu8oZU+lMExFW/214tvhq5xCLr/0VR8x6Elj9trYDLR7
	fnCd1Sk67+V6SxxOBIqUopcF242vSBRqJ3kN9wEt5GDazyrCC+W9P8XnkMfW5SrEKbDeoR
	DaVAulBJK9knCcvN5VU44/v/MkCPyG96gK5ZqJ3wkS5XsXo5u7+CaCDbSqG88MH/eHVPbj
	0sBgWVL9FYkIzlUvx+VKBMsVzBUiI7EHfDwP5QHYbqHepneC6fUpsh2YGVp3L37bHBKKfL
	MFnEH/x0R0FbYhvS4zi9LwYfs6JeBdh2y9neRIUcL6e+10WZRy0nY3lHTrPOWw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-rockchip@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 05 Aug 2024 18:47:41 +0200
Message-ID: <17406373.mzVfN28SmL@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3723411.CpGBqz00pN@diego>
References: <20240304084612.711678-2-ukleinek@debian.org> <1805269.IgJLvJe6uz@bagend>
 <3723411.CpGBqz00pN@diego>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_094758_542521_8CEBAEB6 
X-CRM114-Status: GOOD (  18.68  )
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
Content-Type: multipart/mixed; boundary="===============5507914265743359185=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5507914265743359185==
Content-Type: multipart/signed; boundary="nextPart3973342.vqsyN3JNkh";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3973342.vqsyN3JNkh
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Date: Mon, 05 Aug 2024 18:47:41 +0200
Message-ID: <17406373.mzVfN28SmL@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3723411.CpGBqz00pN@diego>
MIME-Version: 1.0

On Monday, 5 August 2024 18:33:52 CEST Heiko St=FCbner wrote:
> Am Montag, 4. M=E4rz 2024, 17:47:22 CEST schrieb Diederik de Haas:
> > On Monday, 4 March 2024 16:46:59 CET Jonas Karlman wrote:
> > > Sorry for not getting back to you sooner, but yes I would check with
> > > phy-mode =3D "rgmii-id". There is also a possible issue with rk gmac
> > > driver in both U-Boot and linux, it always set enable tx/rx delay bit.
> >=20
> > > Please, try with following in U-Boot:
> > No worries :)
> > Will try your suggestions soon, but it's probably better to take that
> > discussion somewhere else to not further clutter up this patch/thread.
>=20
> did you get somewhere with your testing?

Yeah, none of the patches made a difference:

On zaterdag 9 maart 2024 15:51:50 CEST Diederik de Haas wrote:
> I did the following tests based on 2024.01 on my Q64-B:
> - conditional delay: FAIL
> - grf fix: FAIL
> - conditional delay + grf fix: FAIL
>=20
> Then I rebased upon 2024.04-rc4:
> - conditional delay + grf fix: FAIL
> I skipped the other variations, but could do that if that could be useful.

After the 2024.07 release I checked again and it still failed and my=20
workaround (partial revert) still worked, so I reported it to the u-boot ML:

https://lore.kernel.org/u-boot/2086393.9F9pDXStbY@bagend/
--nextPart3973342.vqsyN3JNkh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZrECLQAKCRDXblvOeH7b
bqo2AQDPZcQ5p+p8UDgZcnwIoRd4WNAVMk4M1rqC2X8ZQ0ZyEAEAyKxpE9PRolVR
sxppaamCj8Ku9ruBwrjxCn5AC5nI7w4=
=jE67
-----END PGP SIGNATURE-----

--nextPart3973342.vqsyN3JNkh--





--===============5507914265743359185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5507914265743359185==--




