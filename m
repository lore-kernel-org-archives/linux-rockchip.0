Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC10C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Nov 2021 12:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A7nQC01sgK1emLNwuR+1hsEWrJCnNc1GX+XSoFkipWY=; b=BR2KpDC1/oAjqfgSTBYl1mQD1L
	A5CM3QJcQ60BwtKj9sgBRRGSnLTKXrSFVO95AZ51EHbzFD7NZ6kGiZBRkcxBmRfoa0R1rzNBP+2pv
	2uRO824gNKA+ZHVlSOm73cTY4zcTMPTqm74KveQRMPiDAy5nIb+iEpHyAoykPHMTgPJcTB7ZDoEpT
	gQAXyTV+UPW8BfJeuenU4LdTtXRDyQ0+dc18czeghcnyE6uOTk/1lCFljPPYCLptHEnD6DLcJ2Z7R
	qj/Xhf/CFcuOjlSVxNTH0gsNpLxQOQpA6JvZQqJ04YGWzuNUst2XUHQRgL4m6IyCr5deXC80YA2N3
	NFxy7mgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrfLj-000bz1-V4; Mon, 29 Nov 2021 12:01:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrfLW-000bwm-Sl; Mon, 29 Nov 2021 12:01:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2C6D3612E2;
 Mon, 29 Nov 2021 12:01:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B05BCC004E1;
 Mon, 29 Nov 2021 12:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638187280;
 bh=vBptFj3aUeLExHyhRFb83+obbB6Bl97pRM+m9eY9FBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q72LQRu1mTEz+Jg5z90HKLdULb2cMXdwgRTsKMz52K35+buD2YNdkVuURuvv1+md2
 vmtq9veflhF0hJ14OpijEuNN532o/BnDXS79D+Ip58pbsHR3xWUUa7eWow7xJj1Fxq
 8iSNk00MYyPBz3rQAC4e5sflT5h8N9QIt4hZrq+IVW0yV13KB4m0HD6Jukvx4JDNGm
 6QqC9XTupUhvv5Zo/HlIb4nwftvwGIbvgXEOwJpSk8E9f6rMycyKvw8tI3hLaW0yFT
 0aXohm45Fodjbeh9z2UbW6RiQrt+F7EYLT7MQ5FZRZzEKCRGXddliuaJkHclzE9gM1
 mfVq2mU093pMw==
Date: Mon, 29 Nov 2021 12:01:15 +0000
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: spi: spi-rockchip: Add rk3568-spi
 compatible
Message-ID: <YaTBC0Gw5BzE1qq0@sirena.org.uk>
References: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
 <20211127141910.12649-2-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20211127141910.12649-2-frattaroli.nicolas@gmail.com>
X-Cookie: Thank god!! ... It's HENNY YOUNGMAN!!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_040123_014739_D8684C79 
X-CRM114-Status: GOOD (  13.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0485320771407159253=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0485320771407159253==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="thPcABwJnBXBpjkW"
Content-Disposition: inline


--thPcABwJnBXBpjkW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Nov 27, 2021 at 03:19:07PM +0100, Nicolas Frattaroli wrote:
> This adds a compatible string for the SPI controller found on
> the RK3566 and RK3568 SoCs.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--thPcABwJnBXBpjkW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmGkwQoACgkQJNaLcl1U
h9C79Af/VkQzSokkKhu4i2rEQ3wVt1TXWw6OmUYThFsujeHoBzXRo3iUqgLnvegr
UhqQ9HI5E9eXRfd+EdYCsru73RDrXe2Jxs1/09RYMZHxb7In/FFRdyd1TUTv6PYu
bNUqnhdpnyGV/59n4FVsyt6zcifp9NGqSZhJW5lSQF9RMagaAa1iY+GOf0OTrUoO
Ib7evx1ALUZMtqE+CuQ5PW0EmjvqWk5hlAa63RUZUHkG3v2bE/nn79uHeWdB8mTW
tQVlPbFsFhiBH7pmWqjpEHERfAzSUj+wEcz1WJYqZ6EG/mTJQA6lMncn2RjbAPxY
BXDGGW3SsUs8RFRlFmBwihuE8Bh2iA==
=onyW
-----END PGP SIGNATURE-----

--thPcABwJnBXBpjkW--


--===============0485320771407159253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0485320771407159253==--

