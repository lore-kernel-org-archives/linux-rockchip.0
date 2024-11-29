Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB165D729E7
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Nov 2024 15:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+dXypV9wbHojCHTOX9B/kZzZoS8+pZXmlTzrbcHvygU=; b=utJ9dbnQr2dJF1FITZZSIuhkpI
	bZEndRSLjGfXbtuRR8p4p4w4f3hZ9oE5I7caL4pbYj6CPYJORYd4TNziRwCprNU/mbfH/s5rdBfhD
	XLePr4P1ChMPdufzdM7z/rRXBLMfhJ80Y0SplzjzeKfnnSdlXTRhlvuh5Juw09yKy0e1eIfkbj6YT
	GPnVHdn9EJn4EKTUlywFpxgWESWUzZKeVSs4T9CmpYjOYrMhB4Kq9aOTpoa6vUygu1YnfTSUWYJr7
	IiJo4j4pQEoCVxW217HNG1v23jSEkHsz1O6qTbqvAOwPMMUdFe7vgOAaWlcnzKS0CApFaZ8WX9hgx
	pLNh0aUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH2lx-00000000QyZ-1BlY;
	Fri, 29 Nov 2024 15:19:09 +0000
Received: from out-187.mta0.migadu.com ([2001:41d0:1004:224b::bb])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH2lu-00000000Qxj-3cBW
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Nov 2024 15:19:08 +0000
Mime-Version: 1.0
Date: Fri, 29 Nov 2024 16:18:48 +0100
Message-Id: <D5YRHL3A1KCB.17A2YM4TVM6M3@cknow.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <macromorgan@hotmail.com>, <jonas@kwiboo.se>, <andyshrk@163.com>,
 <devicetree@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <dsimic@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add support for device tree
 overlays for Radxa devices
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "FUKAUMI Naoki"
 <naoki@radxa.com>
References: <20241129002419.60404-1-naoki@radxa.com>
 <1952472.6tgchFWduM@diego> <D5YO8QULYWDR.I3T73UCTD0WF@cknow.org>
 <3674598.hdfAi7Kttb@diego>
In-Reply-To: <3674598.hdfAi7Kttb@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_071907_047893_C6288D44 
X-CRM114-Status: GOOD (  10.40  )
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
Content-Type: multipart/mixed; boundary="===============1327715349832437968=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1327715349832437968==
Content-Type: multipart/signed;
 boundary=a966ec00918dbbff9dfc1f6159593de5631b95b42429bdb04fa4b2619c26;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--a966ec00918dbbff9dfc1f6159593de5631b95b42429bdb04fa4b2619c26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Nov 29, 2024 at 3:07 PM CET, Heiko St=C3=BCbner wrote:
> Am Freitag, 29. November 2024, 13:46:12 CET schrieb Diederik de Haas:
> > But IIRC, the objection was about enabling it *globally* and instead it
> > should be done more granually, be it on the SoC manufacturer level
> > ('rockchip') or on the SoC ('rk3588') or on the board level as is
> > proposed in this patch.
>
> I actually meant that less broadly and way more Rockchip-specific ;-)

Ah, sorry, then I misunderstood.

--a966ec00918dbbff9dfc1f6159593de5631b95b42429bdb04fa4b2619c26
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ0nbXgAKCRDXblvOeH7b
bhWWAP4t21+r7gbPCqmVqBRaZiYf36PBCatL1i7bxSFjiwxxLQEAhctHUoGHGusp
WDd5Rs7omMuwRf6FH3zmrDiF8KDR1AI=
=+sPn
-----END PGP SIGNATURE-----

--a966ec00918dbbff9dfc1f6159593de5631b95b42429bdb04fa4b2619c26--


--===============1327715349832437968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1327715349832437968==--

