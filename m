Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD3E1C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 10:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YgvVxP4hSwnFXebbIx+0Pt8sRzwu34TYpm4ca18e610=; b=q9Tr5CR2Qs2/k5eK/hV0F4OhTA
	FyJGvge1/zCLmXPpmypuubB1QLsPO8oUGJCOoyqpzBDrTfgZIZYMklnAyi69h5kMoyMhZFW/n8usA
	bDNYy8uZOEuKlLopEaAD+1Tw8ZVYwQc4LpGHND9m2iy6TUjESD/QNxwCDgWQGCTF4JJAuF11sNmWB
	c0Bm9Mq4JBh52PXza49P39NDU9E2MueWQsLZ4QFPGt43fuEsYy6Qc42yUoVSxYiiIlfFk5vD9uenO
	dfTFEBSmvhLWrx7lGFM8kfMg5+MP4GQ/olqJliE8vf3e6DGriGBZdc2OkVcQZl2EpD0k3wnRWdFuu
	hKd7oEwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXOr-00000007214-0tyy;
	Mon, 26 Aug 2024 10:56:41 +0000
Received: from out-180.mta1.migadu.com ([95.215.58.180])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXKx-000000070sl-3jrd
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 10:52:43 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1724669556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pC3CXd7b3nW6nitMDOzjNF3/d6+JckC+lUMoiAYLDf0=;
	b=Nuvp2MVVjRShLuEha/c9tEtw/4BlB19sA/1t/LZZu8tzaTYBh3nx9gUlO5z3LliW25dPNO
	W6sqL8JLRVeqakTDNknPlz5x1BpkNkGiVUeY/Wrnl9NXGAaf3nRZytCIuJSLzptpn7PEAQ
	ao5USRXm1FmBTfsqxXl67kYj7bDasO33hTmT0ysTdSmd3F2pXzF+L4tWTnQYmPi9L4GYuo
	E30nf6A+gP6kJ65gopeB1y3K5AshSJgeJiYdiHNgKQUxDaVn66Jq1VXbXZGI5Sg5zAnN9t
	JD9owdWbBQmUCPpM5c9YFdWV29P1Tt8i2E5Cy2cxioLTP59vXQUEE8IyJOSbFQ==
Date: Mon, 26 Aug 2024 12:52:21 +0200
Message-Id: <D3PSBTJGFOST.3DJNY2LQ65A3Z@cknow.org>
To: "Marcin Juszkiewicz" <marcin.juszkiewicz@linaro.org>, "Heiko Stuebner"
 <heiko@sntech.de>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
Cc: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 "Jonas Karlman" <jonas@kwiboo.se>
Subject: Re: [PATCH v5 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org> <20240826-friendlyelec-nanopc-t6-lts-v5-2-ba33edda7f17@linaro.org>
In-Reply-To: <20240826-friendlyelec-nanopc-t6-lts-v5-2-ba33edda7f17@linaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_035240_418005_189E43AC 
X-CRM114-Status: GOOD (  18.51  )
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
Content-Type: multipart/mixed; boundary="===============2225155047941267859=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2225155047941267859==
Content-Type: multipart/signed;
 boundary=88a03f0ace39b47353b9d5c8338341db7b73870548ed87a92bc4735c126f;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--88a03f0ace39b47353b9d5c8338341db7b73870548ed87a92bc4735c126f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Aug 26, 2024 at 10:02 AM CEST, Marcin Juszkiewicz wrote:
> FriendlyELEC introduced a second version of NanoPC-T6 SBC.
>
> Create common include file and separate DT files for each version of the
> board.
>
> In the LTS version the miniPCIe slot got removed and USB 2.0 setup has
> changed. There are two external accessible ports and two ports on the
> internal header.
>
> There is an on-board USB hub which provides:
> - one external connector (bottom one)
> - two internal ports on pin header
> - one port for m.2 E connector
>
> The top USB 2.0 connector comes directly from the SoC.
>
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 910 +--------------------
>  ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} |  16 -
>  4 files changed, 66 insertions(+), 922 deletions(-)

Would it be useful to split this patch up as follows?
- Move common parts to dtsi and update the non-lts version to use that
- Improve the dtsi file (optionally)
- Improve the non-lts dts file (optionally)
- Add the lts version

> ...
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> index ad8e36a339dc..2a2dc77c71b1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> ...
> -&uart2 {
> -	pinctrl-0 = <&uart2m0_xfer>;
> -	status = "okay";
> -};
> -
> +/* USB 2.0 in minipcie slot */
>  &u2phy2_host {
>  	phy-supply = <&vdd_4g_3v3>;
>  	status = "okay";
>  };

I like comments like these, but I wonder if such things don't make the
diff (way) larger then needed.

Cheers,
  Diederik

--88a03f0ace39b47353b9d5c8338341db7b73870548ed87a92bc4735c126f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZsxeawAKCRDXblvOeH7b
bujlAQD7mr7iLUh0ESifXvOPiHNSTNHrH21hpoQu0JlLz6Gs2QEAu36UVu9WLegQ
ngDg7BmbxXJ1zRQgsYE0HhaG6ybCeQw=
=fPcS
-----END PGP SIGNATURE-----

--88a03f0ace39b47353b9d5c8338341db7b73870548ed87a92bc4735c126f--


--===============2225155047941267859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2225155047941267859==--

