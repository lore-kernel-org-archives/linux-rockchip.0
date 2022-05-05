Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7E6EC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 14:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=182DhBzwnTQvdWRxCle0Fmkmz20srqCAWUXNjZy8Hyk=; b=UUyQUjX55yDUDbpowI1bMOQsdG
	T/AHlOFNof6WjoO7W/2gEYuhpbE8rbqPAeobDqQ8jHrXvTL85ksgcTBzFTJzhlnrBulruAa/UM6pc
	Wr8eaUpXaZGqG+EJggD53QwAttAdlb1P+5ZrmvmFgJ/560xB7RwUUQj+7crTC1V3irw9rznIHi5ao
	gUqGw1tsmjHM6HWlhXPKejnMDLlUwck9DxBDjOU9/CzMXanfDfjP+AbL7SFnbGiQlRCvnYNuhJ5L/
	b0UxQOtioxAu7cuklvT30OjnzfcovTzYX5I4SLKKKZgNG/xZEojpvKzixYV5RFeQoHs7/rxUq6YLW
	7cJgpIuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmcH9-00GJoO-UB; Thu, 05 May 2022 14:16:15 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmcGv-00GJhn-5V; Thu, 05 May 2022 14:16:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id C8CE51F457A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651760159;
 bh=W4SZhjT6xZkzhOrReGV1YPJvbxvwLaVfN3yGmI/6XVw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=btmxl3G8sDIAPPdG1+hUMFjECMvX+iri8m431iaZXu9AYDVoOa5I+oLD04/2xDKhU
 YsITj8AwxTR14nLRzZWb1WxTFHHqatH58vjU55vtj/3YLoTXnrgyxwHt1G8/CsrrwC
 /PMrgmjDsWrHXMKmPbkH+UlzqBuXSmKsHdyhebLhHeNP6kKxzlkpLsQrwWhmLD0i0T
 9p3T48DW3IlxM6C9DHD7qD8dc0I0+tFcbbWETIaN/XArqfSS3PMD4UcjFg18T6+uGA
 E60GT9kG09E6EXQu9XDKy9+zBR3hVTO2O2VW/AB0QqFUStuoJ4JVTlAAHndBRtMJAa
 lG1LvrzgN7f2Q==
Received: by mercury (Postfix, from userid 1000)
 id 234601060437; Thu,  5 May 2022 16:15:57 +0200 (CEST)
Date: Thu, 5 May 2022 16:15:57 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCHv2 02/21] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rk3588
Message-ID: <20220505141557.txgr4ngcxhwr57oe@mercury.elektranox.org>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20220504213251.264819-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_071601_398068_52A54CD0 
X-CRM114-Status: GOOD (  16.03  )
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
Content-Type: multipart/mixed; boundary="===============7426876050293448531=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7426876050293448531==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ikswav6d3jtgfdq4"
Content-Disposition: inline


--ikswav6d3jtgfdq4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 04, 2022 at 11:32:32PM +0200, Sebastian Reichel wrote:
> Add compatible value for the Rockchip rk3588 dwcmshc controller.
>=20
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

This patch has already been applied, but I accidently resend it.
Please ignore it.

-- Sebastian

>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yam=
l b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index f300ced4cdf3..71f8e726d641 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      enum:
>        - rockchip,rk3568-dwcmshc
> +      - rockchip,rk3588-dwcmshc
>        - snps,dwcmshc-sdhci
> =20
>    reg:
> --=20
> 2.35.1
>=20

--ikswav6d3jtgfdq4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmJz3BwACgkQ2O7X88g7
+przfg/9FbMnqzN7qvpUMSuTIRwd9SJSrzxF+gH4JtICrgZvUPmXt1N+Pk/gebXg
jeG5x0ldbj/HLRJ+EqMkER8QGhB1aKHtDSLIT02XAh1kZEYEwUeNcIpdfLggfi41
vqvMPtM7u5skv/Pbdq4VbRAgEeKuWHMHlvqETZQzykbsfbUH71zNTQspLAubtTy2
AFev02lYfb/njlYgqdudSbHJwHORR0JP1Mmuy2M7Iuihbf0cBa22aHe0kXwgvY7m
EXWopIIKJmWSSFFCt+ubRpwG4K7NY1LWMgHFEE9Mfaxt8YlnZht832Gn5FJTYyG4
tDfw/cNNhl32b+W3qxFqdFsm1Wn29VZjOk/pO404Jexyu6PO2nlKgK3r2W5yDAhC
Kc00Z+8pLMTlhwZktCx6Bs3vzFttkqRYxUMRgu5hmVFzNMidxBssYys+Ni+namvk
588Wm2STU0kVg2yBTqUlJxlrfArbmC8hIOZ95N/oHkrWR9P2kO1wH6rhwAvUpJVV
eTDDddmcLKXIrbV1EtcjF2OnwpQR/uLLP1cIGVccagmahiWrzjePFShYfQ0wPEnq
CUQDIFfgtNUwKk2F8Ya/7Ytj/mHtQdahkR7FVhlCs9YwNB0OdoLSYQHKw0vvi3BD
b2Rl3V2/IAF5AmWcHynuIZjbKf8dXo9X5o0R2DA6+7SOjcKO3mI=
=MsHG
-----END PGP SIGNATURE-----

--ikswav6d3jtgfdq4--


--===============7426876050293448531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7426876050293448531==--

