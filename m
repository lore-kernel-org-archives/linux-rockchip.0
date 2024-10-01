Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DDD4CEACFA
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 18:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=awzRfUhU/hlQykRoFCrFJiUd/yT4iAwNFRUxHMn7K5A=; b=x76GX/6M2cFJR8ITp52TUFstZK
	Oo9IDz6pf3bFLmJl4rPXHh2CQllKKvRlOjPeSk5wh7ncuITtvVAvBkn/TVQJYUkImwL1NJIxRsTGu
	6GT+1laqH1dkgteavdPe119zxbtiJFdITwk8zGaC41C9RxwBTA98dRXCoM44gcT0BBa/AcczbIfoH
	vrsdRT2y2021ikPa9EzDmW4hpdMHXovB4V1iqcACWX17uJYAwsyK1csaBA/lR8E7RDKPW9AejbiQV
	roMTN92rhHMzewc6Z+zPA5kely29L0uSy2ht45qCqMi5ceEv1lYQHmTDFKWQe8za08MEWlRD5pO3M
	L/9wpxLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svhtO-00000003o7e-10OQ;
	Tue, 01 Oct 2024 18:46:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svfl1-00000003YjO-27lc;
	Tue, 01 Oct 2024 16:29:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AD5495C54CD;
	Tue,  1 Oct 2024 16:29:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABDFFC4CEC6;
	Tue,  1 Oct 2024 16:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727800190;
	bh=NADCzdoQHxs70dLpOpbEBc5B9Lh4rNs0x/YVRXbRKtI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FGUpjX+LuiqN3KWetChgzoYXfBenHHtLsdXiXqbBwZ44bjG0kRwOG3cm/F+yeuZ6F
	 UCxop9wZ0qgFzdyF3BJPWp/2/129n+yQim9R6dxLCm4HR9/ZpiOlUY+p1ibiByj+GJ
	 v74QablmQyEHsX5Al0T3YNe0+UHJci2p7RffPLbgjY860SrdkgGsY5ivp0y2rJipgf
	 Fxj1ALXwGTNGHpFL9Iq7ZC3uMFtbj2oSE8GwBxXCXFp/5fOZYsF/QJMWRSk0J5aQRK
	 gMkiklyuESZwIas0Kvhu2G4lbkThSg5L7FNWX8CKFuWSxMBiW7CDQ1us0xDIKEFW/A
	 xLoe1ypz+dR8A==
Date: Tue, 1 Oct 2024 17:29:45 +0100
From: Conor Dooley <conor@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: reset: Add reset ID definition for
 Rockchip RK3528
Message-ID: <20241001-stooge-bok-7ddf3f4b317e@spud>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-4-ziyao@disroot.org>
MIME-Version: 1.0
In-Reply-To: <20241001042401.31903-4-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_092951_633129_E3B335C9 
X-CRM114-Status: GOOD (  10.06  )
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
Content-Type: multipart/mixed; boundary="===============6827376067208073200=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6827376067208073200==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ISxsTydP0q9GjrUj"
Content-Disposition: inline


--ISxsTydP0q9GjrUj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 01, 2024 at 04:23:56AM +0000, Yao Zi wrote:
> Similar to previous Rockchip generations, reset IDs for RK3528 SoC
> are register offsets.
>=20
> Signed-off-by: Yao Zi <ziyao@disroot.org>

IMO, this and patch 1 should be squashed with the binding itself.

--ISxsTydP0q9GjrUj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZvwjeQAKCRB4tDGHoIJi
0qMUAP0R35Kp7N0yiWHGvT8ezIOH7i0YqKkCIk6WMj/ucdRkXQD/eOjndIh/aHFA
+NF/S6xtMCZxgREjsLUe9dSdtvfZ1w0=
=uWpo
-----END PGP SIGNATURE-----

--ISxsTydP0q9GjrUj--


--===============6827376067208073200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6827376067208073200==--

