Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE191CCFA05
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Nov 2025 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/333XzO9q8sMsuAeiabamk+bUUui4s8FzZICI8xTd1I=; b=30EmpwERd8oSC2u+kMMuR9APeX
	WScDH+CSnM8Tc8kHkfLpMHAc2ahHXM5YfWiDJkTNctS0I1uBZjLAwJOfFhCurxzTGwarFBQIWmuCB
	shtEHHWlTHhOIeAt9X72z0DBeZCd/V44wJ23QYGwgQnjTsUxSAOf0SDIf18OKBo0j+QEqldpGeiJA
	sb1e/r+OwRuqoyGTbXxpv+jljJMT+eNc/wnJebtl+WrYpTrRKW69n03SybW+8KjnovQbMgD6SB/fo
	BZ+xA/biOlxRQNM2n3cT57J0ewNZ7CVumNekTU3+Z67zAcvzTDm1Vnbn6S9QlbHvBlxqyZzAQxv8P
	JK2SRNMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGKmd-0000000CGmf-2yFF;
	Tue, 04 Nov 2025 17:25:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGKma-0000000CGlT-00BA;
	Tue, 04 Nov 2025 17:25:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DA99D41878;
	Tue,  4 Nov 2025 17:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D3F7C4CEF8;
	Tue,  4 Nov 2025 17:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762277122;
	bh=7aYmwGwBDUYQ7VqbcwEdBsnlFLdnNbLvQp2h4mZD/aU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cyN4zn6Oxil+gSh9XzVLNVS0iBN2c6eW5echRWW64joxBsDwbB/7MqVQq4RbAKzbv
	 cax5Xfn0745ta9Ysb4JhfbvqZN/do26aorgSP5rd8RYyzF/s+0x8KAO7vn0OV/2/ZY
	 XRz6jJa7nY+toZh4NjW7AM7S4RAv336NWkkaKeROwDNlEAysrHqLQgctDRaPt7dDrx
	 gGvaM2Oq428uCIFD0UPwwEUs+ZW9Nwt/7DsbasYljox5YtkCv8A3XKdIewCL3L/R0Z
	 7j4k4/0t7HMhhUcIfIJLhjBbFgCGgPFlXHTNwQQ3dju3nisceqj+qZZYptdPfQB9ad
	 6l8ofBQOl7MUw==
Date: Tue, 4 Nov 2025 17:25:18 +0000
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	michael.riesch@collabora.com
Subject: Re: [PATCH 1/3] dt-bindings: clock: rk3568: Add SCMI clock ids
Message-ID: <20251104-royal-stir-ee4df643e3ff@spud>
References: <20251103234926.416137-1-heiko@sntech.de>
 <20251103234926.416137-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20251103234926.416137-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_092524_060113_8B73711D 
X-CRM114-Status: UNSURE (   6.70  )
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
Content-Type: multipart/mixed; boundary="===============1306956338101424087=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1306956338101424087==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cRAjLMPfblXcgdZS"
Content-Disposition: inline


--cRAjLMPfblXcgdZS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--cRAjLMPfblXcgdZS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQo2/gAKCRB4tDGHoIJi
0hsdAP9ntPaYIuuUM8fCimgWccu0AE1sB4lF0aTfYVW5HORKCwEA/hh8sno8jBWE
x5UzPmkmc96+i5yN6Z1Q/6Jn4oTmCwg=
=oiSb
-----END PGP SIGNATURE-----

--cRAjLMPfblXcgdZS--


--===============1306956338101424087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1306956338101424087==--

