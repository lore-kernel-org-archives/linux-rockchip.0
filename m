Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E9DACAC59A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Sep 2025 17:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OZfDB8xxTj5AB/VusTsIc7GBy/FObp29139dfX5uiXw=; b=Kgr0nl7bGGEShzBy/thax0/Jv9
	rly0QLAqZqdYJeH4RE3HGR5SaSP2NbyKcZv0l9h9k9SmKucAaiuzmIib9ZL9v8X6t2gbOEv/E24Ae
	WXUlFiHuJ2GZzeitCwZZWtu2CPAtuWwarwq9gD3cQ1xOl5en1HEgTc49SOxQ7+8Ns+NEn872LaNft
	Rcxz6S+L6RNtIFG2dP4tbgAr1i5yJSsKkAWltT8HFswuHijJ2npZGmuKAofUydn/kCXW95YvY7RrS
	RBzujZnm7d6UrpFfOsr1MBRMhcmqR+V7oAvlpwryCgbU4Ng14BJGKHOJlFJdPEqFiL4luoDw/eTcv
	s7N6XF/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyw3q-0000000Dcjp-2MZF;
	Wed, 17 Sep 2025 17:35:18 +0000
Received: from out-179.mta1.migadu.com ([2001:41d0:203:375::b3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyw3n-0000000DciA-111o
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Sep 2025 17:35:17 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1758130509;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dLlb+ACdw8BFZ60+LW5IZbLveHRCf/QjOFL02JEqU94=;
	b=K8oWoQesekqRCQW62uCUCaHBUdNVbWLQHi95QsweYx7hB6vX/cFUzBNnSxkoA5Z2fyuh2p
	qVhbXrKBYdXmYKztsLFtmu97m7tZV6QR8lsw5PHEwdHxxjh9sIcqgDuAwHHKdYwjLk4RZo
	+iKcAJ4vTHYM6L5+IHAMFaKH0f1yQiy6l1G7eHvIA6EtahMkWOKErY0247COeV1ttm/UcX
	WaNhYiyyXm5Yxht0J+eVGK9FAlTPWivxq3zLeSQSoHScdrLIoMxORdubjunLnulgnZt0qs
	/rhH9qCpuchd2rFzh989KZgzzulNJ0pTH+3HXWh/3+pFUL5PDuvhfJ/tum6ueQ==
Date: Wed, 17 Sep 2025 19:34:53 +0200
Message-Id: <DCV98UFRGHAS.2DGZOEOVN9WNX@cknow.org>
Cc: "Mauro Carvalho Chehab" <mchehab@kernel.org>, "Heiko Stuebner"
 <heiko@sntech.de>, <linux-media@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <kernel@collabora.com>
Subject: Re: [PATCH v2 00/12] media: rkvdec: Add support for VDPU381 and
 VDPU383
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Detlev Casanova" <detlev.casanova@collabora.com>,
 <linux-kernel@vger.kernel.org>
References: <20250808200340.156393-1-detlev.casanova@collabora.com>
In-Reply-To: <20250808200340.156393-1-detlev.casanova@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_103515_829497_C60A9E34 
X-CRM114-Status: GOOD (  13.05  )
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
Content-Type: multipart/mixed; boundary="===============0156482067953033655=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0156482067953033655==
Content-Type: multipart/signed;
 boundary=89136c1695f34d3b83fd4ce72d81bacb807e5b982b68cb4bb0024c460e06;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--89136c1695f34d3b83fd4ce72d81bacb807e5b982b68cb4bb0024c460e06
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Detlev,

On Fri Aug 8, 2025 at 10:03 PM CEST, Detlev Casanova wrote:
> These variants are found respectively in the RK3588 and RK3576 SoCs.
> This patch only adds support for H264 and H265 in both variants.

I tested this on my Rock 5B (rk3588) with (ffmpeg and) mpv on Debian
Forky with sway and I was quite impressed with the results :-)

In my earlier testing I found that the classic BBB video made for a
really good test video and it played REALLY well. The 1080p version in
both x264 and 8-bit x265 played without frame drops, although when
pressing 'I' to show video info over the video it dropped some frames.
But that never resulted in any visible artifacts.
On the 2160p version I did see quite a number of dropped frames, but
didn't notice any visual artifacts. Maybe that it got displayed on a
1080p monitor had something to do with it?

10-bit encoded x265 files (still) resulted in a completely blue output,
but I have strong reasons to believe that's due to 'missing pieces' (ie
NV15 support) in the rest of the display pipeline.

The displayed video seemed sharper and better then in my other tests.
I thought I did see an artifact around 5:50 when a big rock almost fell
on the little animal. Looking further, it appears to be an artifact in
the original video :-O (I saw it also on my AMD GPU on my amd64 system
and also when using software decoding).
The fact I only noticed it when testing this patch set is saying a lot
... in a positive way! So I'm happy to provide my

Tested-by: Diederik de Haas <didi.debian@cknow.org>  # Rock 5B

--89136c1695f34d3b83fd4ce72d81bacb807e5b982b68cb4bb0024c460e06
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaMrxRQAKCRDXblvOeH7b
bsnvAQCZ4jmQgTN7maZDp1lsG8YqclnRyywPjp/P1XSsqzpXhgD/bWyz2LiDNblM
BgknJRJIVtol8jVgNWJrOxS4oEu8UwY=
=2MAb
-----END PGP SIGNATURE-----

--89136c1695f34d3b83fd4ce72d81bacb807e5b982b68cb4bb0024c460e06--


--===============0156482067953033655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0156482067953033655==--

