Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A056E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 16:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IEfOM/ISgNELmGVWKpwLXPom4ylhfxnYVtF840g3smw=; b=L5eMeKEjYJYZLymkw7kVwDbCNe
	kpXWiBDzfmH31seMk/5hPmFIWpoXc/R6QcAd6a7/zdxRHhU5Vk+sHMPB9+ZddRVFGxjks+Oiclla7
	gEJgvaHZZyLQbjpT12a1DcKvjYSCzhoxgMWPqLQ5ghORRio/NSb85uG5Cr65LwzYdBJp8i09oXIlE
	uAv4vqPynMyYTSD1rKZdmaXVeGH2nBgtCYjoi6dExbxQA/5spiEBPw8jqCOywM7tnC9sHQtOu+lJT
	a2nM4ds+K0qEwjp12YOJqoekvyR2t5rJ6azRw7zpe5ugA7L3D6yPSX7NETUSo4UNF/5gMF1Ruq4Hs
	qzmW/B0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNDhF-0000000AWjB-366S;
	Mon, 16 Dec 2024 16:11:49 +0000
Received: from out-187.mta1.migadu.com ([95.215.58.187])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNDhC-0000000AWgT-24ht
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 16:11:48 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1734365501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CkgrHu2ccpbodeitRs0XzfSSQE5c+RMWLmBF2B58xXw=;
	b=BjroLvwMYCUatjha9BU9C0cmINvI03LnFwHxXpSMS+ikUbOiKDztMvo3gJY3iR9JlVoeFZ
	nsmqVNucQVWPVliVI7u+8J33mZ233UllKFtE7RsP8gLDQqeW71RvCTQNmIOfTYyqjlhB9e
	XYt34qA7Gov9M5xAh7uyE6GO6Qt1Jkdtbh515zBXtrViMHiHkIcILoJ03ML3ye4fuGQa4N
	kVmHVXt1yYllytrY3I7JlFu2QuAh6BovyFNMa3naFgVkgj85YucCfF+34byD4+U8YBHrSv
	8i2fTSmqEmLIzunasA1pYUVdEXTIoCQVa1gSVXYdFMJuViYpHBwHhiRKVCvEUQ==
Date: Mon, 16 Dec 2024 17:11:31 +0100
Message-Id: <D6D997JACT2Y.294J06IIIVEY7@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "FUKAUMI Naoki" <naoki@radxa.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, <heiko@sntech.de>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <dsimic@manjaro.org>, <devicetree@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
 <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
 <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
 <C6FD94DDF2E16CAE+22e3003e-0d66-4092-a9a2-def5daa6c202@radxa.com>
 <feec46a1-76b9-4479-b364-b09cd79b3d69@kernel.org>
 <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
In-Reply-To: <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_081146_904363_44890A7C 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============4937583901599443354=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4937583901599443354==
Content-Type: multipart/signed;
 boundary=0c7bf3ea387a8860aef29fc1f8c5f41f41a57cc9690a740184f2099cb024;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--0c7bf3ea387a8860aef29fc1f8c5f41f41a57cc9690a740184f2099cb024
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Dec 16, 2024 at 3:38 PM CET, FUKAUMI Naoki wrote:
> On 12/16/24 23:27, Krzysztof Kozlowski wrote:
> > On 16/12/2024 15:19, FUKAUMI Naoki wrote:
> >> On 12/16/24 22:56, Krzysztof Kozlowski wrote:
> >>> On 16/12/2024 14:48, FUKAUMI Naoki wrote:
> >>>> On 12/16/24 22:37, Krzysztof Kozlowski wrote:
> >>>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
> >>>>>> Use more common name "pwm-fan" for pwm-fan node. No functinal chan=
ge.
> >>>>>
> >>>>> No, generic name is fan.
> >>>>
> >>>>     https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@man=
jaro.org/
> >>>>
> >>> And? That's incorrect advice.  There is no such device as "pwm-fan".
> >>> There is a "fan" and whether it is pwm or gpio it does not matter.
> >>>
> >>> See DT spec and generic names recommendation.
> >>
> >> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tre=
e/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml#n67
> >>
> >> Is it wrong?
> > Yes.

There's an(other) issue with the binding:
line 91 references `&fan0` while it isn't defined (in the binding
example)

Cheers,
  Diederik

--0c7bf3ea387a8860aef29fc1f8c5f41f41a57cc9690a740184f2099cb024
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ2BRNwAKCRDXblvOeH7b
bix1APsHHrEX9mQ9kqG/TGOmW/JFwnyos1wZc2LmqKFMCnCaZgD/eeK6TEmd835t
mhgxBP26FdiNC9GUFZqB6BlTM4BItQg=
=yfVy
-----END PGP SIGNATURE-----

--0c7bf3ea387a8860aef29fc1f8c5f41f41a57cc9690a740184f2099cb024--


--===============4937583901599443354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4937583901599443354==--

