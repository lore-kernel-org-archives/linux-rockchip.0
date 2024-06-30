Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D530DC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 15:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SESdgngd6ADTKLmQA95E17uUzpe0IJlODYbUEatvFYk=; b=nl0CxnnS5co033IgkMB2KEibDq
	a127idCn5Vsc45MCccS0LMZfCk4ICduzUqZDcKjNlaS1aRaBjhbveWpHKVrq6znXEA1iq/p/96Qr5
	JJVj5ohV65DD/zDsDSpG3VSA4UhkACP/PlOzgbJHQUYLQ7V57e3F25/aMdjjXgzCOMYNVwow5Kxm8
	MLSuWjl6dSMHDopmJKIxlN61BTiI4rEKIxpClUPmZvuRX6JUNZoKeh9elhDbwGF7Uzh+a0GyBPaeR
	FKjpNu6uFp8kIoLrVSCAct/khTHIrP2aM4KFlCqupgoLtL5bgTl2MtYNuf+5R3BWEHVCREglAmWyh
	fV6Qky2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwi5-00000000dQP-0c4y;
	Sun, 30 Jun 2024 15:43:25 +0000
Received: from out-175.mta0.migadu.com ([91.218.175.175])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwi2-00000000dPX-09XT
	for linux-rockchip@lists.infradead.org;
	Sun, 30 Jun 2024 15:43:23 +0000
X-Envelope-To: dsimic@manjaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1719762198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wJzZ3477L/XZ9+MboeTgz9sk1fFCg1tDlQJ3aVTYhSc=;
	b=N0x1hXEYCl5UUvG0T2FsNMb8/KJ1nkk7nMOyENDU6LXly51iZCMAVCWNh9rLTbiHw/W319
	/zDEg4l7UGyAD7IOcm7sX1l9ts0It1sIpS8+FSfZCur11KldCixQgICk56V7f4c2lL7+nz
	1BcHOty8s1OiHvrfkwknrTuZl62JkjjXJqwN6VdrGvpuIsuxmLUIWBMt/rO0WXHyEv6q3b
	+A0uN8mk5Etjwp62UgRcDUfjaNYcL6DhvQvI/0xpfX+664ySLcRcU3iD7pg7bZJDAdkNZC
	I3VbUWjUg5ZKakvKgXBMSffK4+cPhKrD3Uhczx0lkpzwtsbgYR1TRgg9HppC7A==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC
 dtsi
Date: Sun, 30 Jun 2024 17:43:05 +0200
Message-ID: <2573506.7YG5XaKc65@bagend>
Organization: Connecting Knowledge
In-Reply-To: <b8951ac4e29184fa35919c6ab85b8f87@manjaro.org>
References: <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
 <2442162.AJoTavkB1d@bagend> <b8951ac4e29184fa35919c6ab85b8f87@manjaro.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_084322_399386_A4753E13 
X-CRM114-Status: GOOD (  19.12  )
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
Content-Type: multipart/mixed; boundary="===============8031033201169570228=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8031033201169570228==
Content-Type: multipart/signed; boundary="nextPart3294961.YX3dR29aPv";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3294961.YX3dR29aPv
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Dragan Simic <dsimic@manjaro.org>
Date: Sun, 30 Jun 2024 17:43:05 +0200
Message-ID: <2573506.7YG5XaKc65@bagend>
Organization: Connecting Knowledge
In-Reply-To: <b8951ac4e29184fa35919c6ab85b8f87@manjaro.org>
MIME-Version: 1.0

Hi Dragan,

On Sunday, 30 June 2024 14:04:50 CEST Dragan Simic wrote:
> > I also expected that (for v1) there would be a similar construct as was
> > recently added for rk3588. But I should interpret Heiko's comments as
> > that strategy should not be applied to rk356x?
> 
> The trouble with applying the same strategy, ...

One of the reasons I like/hoped for it is that I'm a 'sucker' for consistency.

> ... the need for voltage ranges depends on one of the board features,
> i.e. the GPU and NPU voltage regulators.  As such, it still has to
> affect the RK356x SoC dtsi, which may warrant separate
> rk356x-gpu-range.dtsi, for example, but the troubles would arise ...

... but it's probably better if I (generally) abstain from taking part
in the discussion about the correct/desired implementation as I don't
understand the material in enough detail to meaningfully contribute.

> That's why the v1 went with a macro instead.

... which didn't seem to help with my consistency wish ;-)
(AFAIC there's no need to discuss this further (publicly))

> > When we/upstream adds npu support, I think we should also follow
> > downstream's OPP values, unless we have a very good reason to
> > deviate from that.
> 
> That would make sense, especially because we haven't had the NPU
> supported before in the mainline.

I first wondered why you hadn't *updated* the npu OPP values ... 
to later find out they haven't been specified at all in 'upstream'.

Cheers,
  Diederik
--nextPart3294961.YX3dR29aPv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoF9CQAKCRDXblvOeH7b
bkBSAP0azzram50AgiLu7+7CoG5ibxdTLWfqWJXFnDz/NRklwQEA2F+7ZSC8Ny2q
vSJyaTgsxoSxeIKiNdrNgVIRgBAx/w8=
=NjR2
-----END PGP SIGNATURE-----

--nextPart3294961.YX3dR29aPv--





--===============8031033201169570228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8031033201169570228==--




