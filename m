Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE9E4C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 00:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tv6+yqDuZvClJ/zgtW0OK/8xa6JcFiBc4VTRP6FYZQg=; b=I8G2UbDYxbQOYE3JLusyqJPYha
	HWevXQvJKLdNT/A2aoEt/gbuvkQvAYBFCfN+yxDy+rcQ0zBBSMSd8fcvRNr/tPychAuS/fj9mEtv2
	dwb28k33xJHIctXPgnavUA+e0xsK2nKbEQPuIftHHo4w1VvFBpMxJAvEFoXJvGuC2IpnY1BgNafSy
	3ObBBlCPDZkg51su8CAt1l/QJsjeRYcV+SB43h7fHt3JDYuDOZbqMMfk4+AXlYC8ubBAvSPk7Ekvg
	lZoiqe/yyJNYkLNcVLzUawfHYUHYbdlLLgEN5vZ3ohv8fjc43tXyQ18f4MxWaWm1uE8DM0dVI2FGn
	lFY+f84Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9F70-00Cpys-Gc; Thu, 07 Jul 2022 00:11:18 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9F6x-00CpyU-O1
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 00:11:17 +0000
Received: from mercury (unknown [185.209.196.172])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 807CF660195F;
	Thu,  7 Jul 2022 01:11:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657152670;
	bh=xe2QQQvpUl1Yjfdt6nmwK81IMCIblWCHN82b7IvdQ7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jh0zfztGXTR3/xe4d0d15Y1k+0S9O2tRQMs/I8M0LxTMYhMw86aNOZlD6eAVdrsGP
	 SsqbbRmi6WZQ6R/zixuJpO+E/M9+7amlxXaPystowObEZ4c5qRstBynEw8A6eQ77zW
	 NgoNMiTrOIKO5uF1zF8bkY1d+GK2t9ho86mb3FJa9jkMjNrxccPQ0bIMSLUkTBNyyU
	 VCmP/5WihONUqbVsTgHYx8GFrMDY6CjdT9Kvq4iSze09dtcnMatH1N4JiIUqD6FLIp
	 23W958j6IIEqnaxO79ikhAEYsLQIByAxn6r8lrXVsXR1wQaTJeBcme+1C1zvMUdIsA
	 l9Nw/ta5J3Taw==
Received: by mercury (Postfix, from userid 1000)
	id 9F0F7106069E; Thu,  7 Jul 2022 02:11:07 +0200 (CEST)
Date: Thu, 7 Jul 2022 02:11:07 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Wolfram Sang <wsa@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-i2c@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 1/1] dt-bindings: i2c: i2c-rk3x: add rk3588 compatible
Message-ID: <20220707001107.bfdd4jefwzqrrugq@mercury.elektranox.org>
References: <20220623163136.246404-1-sebastian.reichel@collabora.com>
 <2664d6a7-ee4b-9cfa-800e-e97522e3986c@linaro.org>
 <YsXjrUVbGIObUroU@shikoro>
 <a965913e-39ba-640a-0d36-2bf7ecc10e94@linaro.org>
MIME-Version: 1.0
In-Reply-To: <a965913e-39ba-640a-0d36-2bf7ecc10e94@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_171115_957393_882E597E 
X-CRM114-Status: GOOD (  19.85  )
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
Content-Type: multipart/mixed; boundary="===============2014962113558159614=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2014962113558159614==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3cpbanhashaymclp"
Content-Disposition: inline


--3cpbanhashaymclp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 06, 2022 at 09:55:27PM +0200, Krzysztof Kozlowski wrote:
> On 06/07/2022 21:34, Wolfram Sang wrote:
> > On Sun, Jun 26, 2022 at 10:22:09PM +0200, Krzysztof Kozlowski wrote:
> >> On 23/06/2022 18:31, Sebastian Reichel wrote:
> >>> Just like RK356x, RK3588 is compatible to the existing rk3399 binding.
> >>>
> >>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> >>> ---
> >>>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
> >>>  1 file changed, 1 insertion(+)
> >>
> >> That's still some old tree you are based on...
> >=20
> > What do you mean by that?
>=20
> The patch was sent to not updated email, so I assume it was based on
> something before v5.18. Could be relevant, could be not, but it raises a
> question what was a base this (and other Rockchip) series. :)

The last round of rk3588 patches (incl. this one) are based on
v5.19-rc1, but mail destinations are not (I do not generate the
mail destinations fully automatic).

-- Sebastian

--3cpbanhashaymclp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmLGJJgACgkQ2O7X88g7
+prl1A//YrykhjxrG0HEDx+TLLA0SwDdxCSG6YY1iGcJMxRU9tkVV3ibRr99xXrb
7m0kP5okAn4hfNkEhy4/p0Bc7CDo1IYrk7TWcUM2MvrhqSg9ee7h/pfAOn2DzbEa
XuSPUgMaYuZPkrtR4vYzJVctcDixqsVQ+HqKQsHbqVXtNtIiybou5DrSPOxvZ7ye
umXeqS70Ku1DEIA4oexJtFVuV2SB+7S2bhNSgy1SEtlmxbXarSq4cED5FudXnc9s
Tw06dBYH7HInuatwxZFCmaaTGbzjSzhIxPhb/Ufbzr5HpsHaLUBUIKucPPCHh0XO
Yr2ta7ORl+nE8Jd7bFrhYXev9jmbGKYVCGNlDsW0bIaC7D2+saDgDmMXJui1+jd2
K+8fbJf6pnKkfaO/HtUBiJ+kxBC25WBGXA75rUMNEw+ZQFDoBoWF1DR3SRWqoS5N
DyXkafXpBLhA9mg+KaROKpE+qsMG7FCvFbSsnI2/AcvNbu0LRJVhMnyXald/sNTZ
lx83sZf//01jITF+XRnyEJvybsAEQscQ7WbbSNLkwVT+tghWkP4WIdjj0icU33JG
EBfISd+pH0C0IP9zfiXKHyRJA2t/8a7Pv4R57PKxCB+Wkunt4EwlWYyCAyfuKt9Z
kglZijIXe2sh07i/HElia2WSWYmpAYOpF/LlbHZDrtju727BZyg=
=5RhB
-----END PGP SIGNATURE-----

--3cpbanhashaymclp--


--===============2014962113558159614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2014962113558159614==--

