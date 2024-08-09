Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDDABC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zfJPtoQe/enMCzmxQM3V9VuD9/+xk1l5QvUu8iIumuA=; b=J4aq9ftM5O9H7zEcQk3pmpfOIu
	wUUhliROnUqcciUw/0g4wc23ay5ByJZtbZ0yQXm0lqMthqTv1kllDoBb9xL0uscexAG7NtxkeDlkl
	h0LUkvgq7Yac3XykKrXVCHuw35jg0Ks/hF4LOLAmUaYR/ZRx5b4v2rhnb/TP9dH6pjeMd7Ivqwpc5
	7+mpgNjWtVqvNUZkj+558TgUevnuLFPhk8q+k50ttqsiCt8X0Vs6UcclmZZvD9xZsWuZweb1h/35I
	irhkJB6fXF483BsOms1htDuu5IYhio0pv0vNwaViXN+oxRifo/EzdyZwma/kC0r/RikQ23lTYqs1j
	9FO0GWmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scRHd-0000000BetS-1hY8;
	Fri, 09 Aug 2024 15:12:01 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scRH2-0000000Belq-0TP6;
	Fri, 09 Aug 2024 15:11:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2AA41CE17D5;
	Fri,  9 Aug 2024 15:11:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00A1EC32782;
	Fri,  9 Aug 2024 15:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723216281;
	bh=9R2NKMWQqNjzvTm5mD4XvqzZMMa1bqVjqcONwMIe8jY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oA916N8+cz6JtAd2vkZQrKN8SOtpRD8xzIPTr5U6pnLuauUbaC9R/RoxRjtSS4hV8
	 iH6Wwprq8nIxom5cuoHT1SLJIHgbWD65BIXPp6HwEb7oNghQ8iOEK+Er+U6TxwoPfm
	 6bBMBEs7pLqJhyq6NUHNM1DAmUonza2nEU+M1i6pWx8+mFduBiXsRwIBbvzpzWdKir
	 zESSitKMvWzyaeyqZs5LIY9R6+ezaYv9W65q30aROIedzoLTVNdrM3NpLyZViJs86o
	 +6BWSdw86Hc1FKaGIlVF/ls4u7ZFP83eRce1A9kk6Zdlc8wB3z04c7M1ZQVZSVUuI9
	 a1ou+MexXVAww==
Date: Fri, 9 Aug 2024 16:11:15 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: reset: Add rk3576 reset definitions
Message-ID: <20240809-retired-rug-517972cde092@spud>
References: <20240809125553.3889-1-detlev.casanova@collabora.com>
 <20240809125553.3889-2-detlev.casanova@collabora.com>
 <20240809-linoleum-ogle-ace67939d9a0@spud>
 <8409208.T7Z3S40VBb@trenzalore>
MIME-Version: 1.0
In-Reply-To: <8409208.T7Z3S40VBb@trenzalore>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_081124_368889_8BF48D08 
X-CRM114-Status: GOOD (  16.93  )
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
Content-Type: multipart/mixed; boundary="===============1892187574133703507=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1892187574133703507==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wCc8uvbAGo3F87mQ"
Content-Disposition: inline


--wCc8uvbAGo3F87mQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2024 at 10:49:42AM -0400, Detlev Casanova wrote:
> On Friday, 9 August 2024 10:15:12 EDT Conor Dooley wrote:
> > On Fri, Aug 09, 2024 at 08:54:52AM -0400, Detlev Casanova wrote:
> > > Add reset ID defines for rk3576.
> > >=20
> > > Compared to the downstream bindings this uses continous gapless
> > > reset IDs starting at 1 instead of register offsets as IDs, as
> > > introduced in the RK3588 bindings.
> > > Thus all numbers are different between upstream and downstream,
> > > but names are kept exactly the same.
> > >=20
> > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> >=20
> > IMO squash this with the other binding patch.
>=20
> Yes, I wanted to but the issue is with the subject line: do I use "dt-
> bindings: reset+clock: [...]" in the squashed commit ?=20

Yeah, I guess you could do "dt-bindings: clock, reset:".

--wCc8uvbAGo3F87mQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrYxkwAKCRB4tDGHoIJi
0u4bAQDbfTmaC6mGuyb1tOI8hRt4dtHfi1tdv+frSiGKKcg1PAD/SpuNV7bmfg5j
yQkal1bS7WmQ4ojLJiY1Fi2MYmCfAw8=
=0g09
-----END PGP SIGNATURE-----

--wCc8uvbAGo3F87mQ--


--===============1892187574133703507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1892187574133703507==--

