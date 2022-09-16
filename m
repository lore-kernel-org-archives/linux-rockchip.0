Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 078A7ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 19:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PxtSJVi+NB3T8vpsuXrchdZl0iuvkdLgo6TubtpgT00=; b=GTYAJb8fPKbVbQHyo/MPDXBsjF
	pnS+PSltEojWV0Spekd+qWJyLbasPG7Uoil3HlTRvGbFl+UKa2jiso+/jdA8swsbIgPCB+AQvNAYL
	M+BXd0r3WQtGIWOh8kbAtTm82n4Z5ApZXWrliuY7ciNlne6T3tPORi4FtlHBanZ5tMiG6jQiGobnV
	ZZWopXoLJuer9sRsWUlQQbVt98NQDYsXK9yK7uKIs0EAy6zpP0V3Bvwdi5a8MoEAGVBLZhGHTXRCs
	KiutbetH/cwRF65aix3i0eyD7jPEwYb4UkFpqRwcp8upeU7pVobmiYL9iDI3ZDkaftRmUEiwfhyW1
	9iFKtwGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZH2S-00GGxp-UQ; Fri, 16 Sep 2022 19:30:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZH1m-00GGjk-Rv; Fri, 16 Sep 2022 19:29:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4F6FA62D19;
	Fri, 16 Sep 2022 19:29:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0E12C433D6;
	Fri, 16 Sep 2022 19:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663356568;
	bh=tzk3t7V8ttjBET+05bB6lS+OgI6VS5dvuGoiNpicLww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RzbbWAXJW7SXapU3aGxzwC7Sa8pTk/Vea6SsDBwP4M97X8gqO9KDphV0fKC5AJ3Wl
	 vjx690OkvIPiDHppuBWeAYYLBTjPddbvzwg6KI2NEBwmLYYgzg0e6OIw17ZO7A3G+k
	 Goe3nbhelxdw9W9Z6/NrLurRpLUnEJnVmhoIrFfgnfI9HwbEUW8n3FpfiVQEcjDtJd
	 ekxEFMcWS+v/W6PgUYLAu4V3tBLFiK7s5OjNCj22YN2z/uKrmfbtM12srhG7LCzXbi
	 /TEdu6ILDL7j5aXufhxCgaon7RVMmIvJp6zS8nk76/4iAuqzwCoAJGZmTUzmOl05H+
	 GB2K5Ntnw82nQ==
Date: Fri, 16 Sep 2022 20:29:08 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org, David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH v5 1/6] i2c: rk3x: Add rv1126 support
Message-ID: <YyTOhBJdK8l2ZTVQ@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org, David Wu <david.wu@rock-chips.com>
References: <20220915163947.1922183-1-jagan@edgeble.ai>
 <20220915163947.1922183-2-jagan@edgeble.ai>
MIME-Version: 1.0
In-Reply-To: <20220915163947.1922183-2-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_122931_017948_C501CD74 
X-CRM114-Status: GOOD (  12.43  )
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
Content-Type: multipart/mixed; boundary="===============1491795585715871361=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1491795585715871361==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="F0ZKK/iF5YjAHD4y"
Content-Disposition: inline


--F0ZKK/iF5YjAHD4y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 15, 2022 at 10:09:42PM +0530, Jagan Teki wrote:
> Add i2c support for Rockchip RV1126 SoC.
>=20
> Cc: linux-i2c@vger.kernel.org
> Cc: Wolfram Sang <wsa@kernel.org>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Applied to for-next, thanks!


--F0ZKK/iF5YjAHD4y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmMkzoAACgkQFA3kzBSg
KbZf2g//QOd14HvALQA/110/bhCs/fkCXunLYK8UNZnXsYR3gC1SFnK0uDv2ftAu
L3fbFWEP9Us9KOcFK9VgQhc9sAEtU3lii8YUkaFd3GC7cAOi7p7zEaYSVQDdfs95
IBlHYHC1AbiS8znPoH6arF1nqT9oz9qqlf94rIhnALlasOeErE4XcycottveI4sy
F9upSlApWK1h1sVhYqT+FikVx7L4IxRk7RLbedngeaISQpcT29zsbCmFFkAwET/2
jWcD1X5SVDD5u+iHYc4zrxKEWHWzngDBdt5+0GDPMg62hV/FtMu7ZAPpEuPsQ56s
beDsOcj6Tm90G+pL5/0iXal/nw64YLFHVgzOeBPh3kznID+TBRr4dcxQekp7fz8T
uL0San1A+Oy+E0qgqI+IOvb3tO0UWWwQznYGEw12Uh7dunF04MP/rA3tnyX9yvRR
+nhd0fP6z6Uw3nSaX5ZwR+8pgM3tyBFAmk0O97iprY3yA3rvF3E4+f+rko9L4TKm
e4z2WApfGFO2jwXtYRJ1vl0Bpoy/yibLvqibV8l2ugsboubBl3uvc3r+FOC4oox2
RWtAbv4o86gJVEQPpXCKgDBYXUBYgnNVxEyotl1OEDe6MKAI8NLJkMy19xtwPZHI
/KaBbvaGdDPpinc8FU4Th0jcHLbJTUkLL+eSVLsj8M1gaBzslaQ=
=K0E9
-----END PGP SIGNATURE-----

--F0ZKK/iF5YjAHD4y--


--===============1491795585715871361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1491795585715871361==--

