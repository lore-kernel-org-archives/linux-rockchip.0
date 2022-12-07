Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62F4FC352A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Dec 2022 13:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HjceYDJaWziXHvYKaR5o/FOFV8BDnliniraGkNAaaOU=; b=gnstRjzxI4tEsID3qFYrxOctsi
	u9w3s3UeVQ71kAHaw/CB93ypj718aOBdPV2A36LL0Ee8Gb0yOG0eIdltVnY+2RUijJs4KDwPxWdEg
	bjHKB/786/MP0LtmiPvNMwdTiSl+14qMX04KXFHU22qV8W/mHUPWAqdi3qRdSd4xYdeCscqDEJS23
	QfYL33f47VwwQGL/sZUtJ8TYE4iZNi63Fh5w3tlWKGG3G3wIEZacuQneFzoMbFt8h3F2pml0RzZ4m
	/dHwqLU6tiZefCmny4jv8U/ahkfIweVj+3KcsUpvH+RpTtwjwIfnzb32lUjFTrqbO8dosbKbT7ELF
	gtSDEqzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2uwg-004LSO-HB; Wed, 07 Dec 2022 13:58:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2uwQ-004L8f-9l; Wed, 07 Dec 2022 13:58:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D406B616F6;
	Wed,  7 Dec 2022 13:58:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 288DCC433C1;
	Wed,  7 Dec 2022 13:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670421509;
	bh=RIC1Cb1hSR/PoVvVlchvFUy6mScD0XG2dUhLJIgDbnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tcHuDKAix1m05GVzFUIB4skjq7TswGJZAvs1HDb4mp9YiO5Jr1/hLbOd/kSnLUjyC
	 TIuipnB6EgbXdGKkBoOKKaysXl3oKWpe9IAbFlkuehQRVtH/smAHnFV6EJvP/B7sUj
	 PVJIwq57X2tzVq9TWx51dew5jQv3SJLg3wAe0zG3tYvZ2+ttJAQWap2EoCQ15Ft4fT
	 ik1dH0vmDfAieN/JzrBgYZY8LYCkaTpPUSgx0EnL4L2X+Vy4CezKbDHOaIdmYQSXn2
	 pAgMd+G3cqGw0QuLmopfX0uLuDOHMO86VwYUdYFBLQ00jtA51PoDXPbFPgjKi/u/Oq
	 uH0mmVDXPKd1Q==
Date: Wed, 7 Dec 2022 13:58:23 +0000
From: Mark Brown <broonie@kernel.org>
To: Wang Jingjin <wangjingjin1@huawei.com>
Cc: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, heiko@sntech.de,
	sugar.zhang@rock-chips.com, alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: rockchip: spdif: Add missing
 clk_disable_unprepare() in rockchip_pdm_runtime_resume()
Message-ID: <Y5Cb/1kRQVOrOT0Q@sirena.org.uk>
References: <20221205024317.2422223-1-wangjingjin1@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20221205024317.2422223-1-wangjingjin1@huawei.com>
X-Cookie: What!?  Me worry?
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221207_055830_411209_4AF73F79 
X-CRM114-Status: GOOD (  17.34  )
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
Content-Type: multipart/mixed; boundary="===============8190125245319395978=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8190125245319395978==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Yfqkupk0cs8hEwm8"
Content-Disposition: inline


--Yfqkupk0cs8hEwm8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 05, 2022 at 10:43:17AM +0800, Wang Jingjin wrote:
> The clk_disable_unprepare() should be called in the error handling of
> rockchip_pdm_runtime_resume().
>=20
> Fixes: fc05a5b22253 ("ASoC: rockchip: add support for pdm controller")
> Signed-off-by: Wang Jingjin <wangjingjin1@huawei.com>
> ---
>  sound/soc/rockchip/rockchip_pdm.c | 1 +
>  1 file changed, 1 insertion(+)

The subject line says this is a fix for the S/PDIF driver but the patch
is for the PDM driver and I see you sent a separate fix for the PDM
driver.

--Yfqkupk0cs8hEwm8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmOQm/8ACgkQJNaLcl1U
h9ClSAf+PYmaTOX76hZfmg6lP/5WGJr8lhDunNZmxMYdQc2BEK/H/wN2l+nR6ES8
v6jxI3ceMQ+78mMpQebV8Hiuvd880D3jjaPh/dZKObPYQvIP6sUthPwAr9nlZh91
s/EDK3rgQcJuOxR2gQdACyfIM+PvJ0HlNaz8RrGKyM3yq2Ik7ZqjeBJ6gPjODOUg
eXG5J5GD0Z64hhs572q95LKTTjtCPtcQ3uXqOSmhSqqPbb/pNqZAik069u3/UesA
JMInss8miBtQv7RfI9ffz4LiINXZpIAFJCeA2BfaLdpenSzz1zfEUfoNZtkQUqJI
6yCz5HFdPCyky7EA/IrsAO8EDNtTUw==
=TDQy
-----END PGP SIGNATURE-----

--Yfqkupk0cs8hEwm8--


--===============8190125245319395978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8190125245319395978==--

