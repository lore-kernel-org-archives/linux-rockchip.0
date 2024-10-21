Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FC2FD0E6C5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 17:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Cc:To:From:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K933iv9LGdE/5rWukzvnIWR9deMEq6/Knk0a2ItKijA=; b=dr6RLOm/08SAd9OTaEyrsGauul
	OtElXaFgTUzGuxthEsL8uEF8DNZmihuoRuQQCGgx/77hzxjYEO9BniQ5ntDmKW89hYk3jMmfFtiVs
	Kc58LOW8J/HRq/ZWgcxwdZmE849v8PqzvF3UtwKVV96dl+EZZ8sX5fFTQ7bZhMxlDIBNT1dM26pxx
	PwBtubSpF5G/fNYd0HdsBvI+sxKFz5EVJlxXCasJvZmok4pjqwC7CVUag683iZcbsB+ZFrA4+nntQ
	o67z7FEg3wpUhu3jBERoUDDW0yxPUtUWzgy4sjJXOMFfFjNQ4Md9ok4kpy0/d6/SOAb7MpTr/UNQI
	7iiKpQaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2w63-000000086h9-2NFn;
	Mon, 21 Oct 2024 17:21:35 +0000
Received: from out-181.mta0.migadu.com ([2001:41d0:1004:224b::b5])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2vxm-0000000853H-3GRv
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 17:13:04 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729530777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kvPmkBIx/ivw7uZCk44IFYWnah6/cVTz/JW1FGbUjKI=;
	b=s8zO2rvVtVD9CcaprtGFQ8LrPdb+bLZPCUnGnDpJrlrzP31NQbPavxxG85JIUnshOL1fu7
	roln1zihmHEhiquKA0w745DFuHjIIzPBrndW6xngmpR9w9OOI69F3RV2r6VbEOaj0BLyXN
	l/sY8ixZP8hoSFgp3Usj4a5WJ5YQYIq0pDv/m7Hysxiq7OC4ggHrGRhZKALBDGnF4rbsvW
	BMzlQMkVWun94YLt1HEeqd27yKYQ+JrL0FYbgPYBbFxyfyesnVOFyn6TMB94700IjBhWnF
	8THHa4aYFOaag07mCzwy7yQGfx6VIM8ZLty59CRkdw34/CilVeL+TK01kAAA0w==
Date: Mon, 21 Oct 2024 19:12:53 +0200
Message-Id: <D51NHOTBIUZO.3A40UBLT2ZXCN@cknow.org>
Subject: Re: [PATCH v2 0/5] Enable HDMI0 on several RK3588 based boards
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>,
 "Sebastian Reichel" <sebastian.reichel@collabora.com>, "Luis de Arquer"
 <ldearquer@gmail.com>, "Alexandre ARNOUD" <aarnoud@me.com>
Cc: <kernel@collabora.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "FUKAUMI Naoki" <naoki@radxa.com>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
In-Reply-To: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_101302_998582_4E5605AC 
X-CRM114-Status: UNSURE (   7.18  )
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
Content-Type: multipart/mixed; boundary="===============7628529606756379138=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7628529606756379138==
Content-Type: multipart/signed;
 boundary=bf042a1c9c42b97560b590a0475495dc3bbc5c4b2774aa824be576d86101;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--bf042a1c9c42b97560b590a0475495dc3bbc5c4b2774aa824be576d86101
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Sat Oct 19, 2024 at 12:12 PM CEST, Cristian Ciocaltea wrote:
> Since the initial support for the RK3588 HDMI TX Controller [1] has been
> merged as of next-20241018, let's enable the HDMI0 output port for the
> following boards: Radxa ROCK 5A & 5B, Rockchip RK3588 EVB1 V10, Xunlong
> Orange Pi 5+.

Would the DT changes be the same for the ROCK 5 ITX?
I don't have the board (yet), but apparently some bought it on my
'recommendation' (I only mentioned its existence) and it would be cool
if HDMI out would work for them too.

Cheers,
  Diederik

> [1]: https://lore.kernel.org/all/20241016-b4-rk3588-bridge-upstream-v10-0=
-87ef92a6d14e@collabora.com/

--bf042a1c9c42b97560b590a0475495dc3bbc5c4b2774aa824be576d86101
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZxaLmAAKCRDXblvOeH7b
bh1SAQDblaBTFNz+sCdobwzX/XFw/7vjsd8y5vTigDHV9wRqtQEA2+t2bUSsMAxR
Fr6eO+/kszZiWxFDBBRrMxzb5GouVQ0=
=4uwl
-----END PGP SIGNATURE-----

--bf042a1c9c42b97560b590a0475495dc3bbc5c4b2774aa824be576d86101--


--===============7628529606756379138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7628529606756379138==--

