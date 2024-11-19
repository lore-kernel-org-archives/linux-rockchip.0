Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE33ED4415E
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Nov 2024 13:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1xlsvCoNrfkvf404yGvryO7A9BHcBUXOxgATmtSLL1g=; b=nx34t9gcYvkxUmxJcbn7Sdov73
	U9zq+aidTSKL0zw8j9fEW1aDSmXO3gNuNDu+Qu+1l5HXoTZfyJHPffIUk34AsialI+7DkkZQYmAaA
	qu5rj9p+L4B8hkERl3rPdqeGLDui6cMhnirpBaEOx/VIh1B+tV1g1/CJm7dFWgokbPUP1UyjbTpR/
	qsFcpKNRzMVrv3YflZpePPEW/JNH5PxUqSoYsGcw5lbNwU5v3WsniAzfsacDLO3Nt9kIEfNyYBCB6
	6O4ocaFhbNRl6w1VfNryLbWh5XOS/vvjqFlidbHRmnvwj1OniKlyYgyxvGqk5q1s3v3UZ/FwbYl/i
	Qt4bKoXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDOZW-0000000CZNv-0I30;
	Tue, 19 Nov 2024 13:47:14 +0000
Received: from out-174.mta0.migadu.com ([91.218.175.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDOYR-0000000CZ90-1Mls
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Nov 2024 13:46:09 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1732023962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TgHwPslSk2PRB/eadtEYqufFZbDdiWqg5iGoDx9N5MM=;
	b=mvPt7nOJuK3tOZcE4Bh2ETmJE+u3r9PIbXv2ZOOtdFtnCHgF1fXJGMedBs/rdegph8oNS7
	qajfOuU28XVbYTVDoR3zvtqvORg+vLN/A7k3IJdo60Uapz5BM3aFwP1eM0byxfsr7hMw+I
	LkrB9h+q14nLcv7qsdMCWadW5YOpqLe8T27HMggN5+Nrh4HaUMDL8YP5ju/RXDtBLHD/gx
	ZqDSBBovznuJWLtwi/A0egtShz4lTdIXGgIqrmH/ycppiOtecpsuqy+IVB56vpFUPRXyZX
	+KpzxQE45YzQKj4KNgB9A8e2muSN02xkN2griSTwhvYy23k/3G2wEZn6TrnXLw==
Date: Tue, 19 Nov 2024 14:45:53 +0100
Message-Id: <D5Q78ZOX5SE0.2SCB8FEGY7EFA@cknow.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <detlev.casanova@collabora.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-clk@vger.kernel.org>, <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/5] clk: rockchip: rk3576: define clk_otp_phy_g
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>, <srinivas.kandagatla@linaro.org>
References: <20241119132916.1057797-1-heiko@sntech.de>
 <20241119132916.1057797-2-heiko@sntech.de>
In-Reply-To: <20241119132916.1057797-2-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_054607_874008_DE52FBF7 
X-CRM114-Status: GOOD (  12.31  )
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
Content-Type: multipart/mixed; boundary="===============2438594442949502410=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2438594442949502410==
Content-Type: multipart/signed;
 boundary=79d65ceca52770ce73e14ecdf58ae1ec71b511c9b7ca1d91c45705b1ce2e;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--79d65ceca52770ce73e14ecdf58ae1ec71b511c9b7ca1d91c45705b1ce2e
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Nov 19, 2024 at 2:29 PM CET, Heiko Stuebner wrote:
> The phy clock of the OTP block is also present, but was not defined
> so far. Though its clk-id already existed, so just define its location.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/clk/rockchip/clk-rk3576.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/clk/rockchip/clk-rk3576.c b/drivers/clk/rockchip/clk=
-rk3576.c
> index 595e010341f7..029939a98416 100644
> --- a/drivers/clk/rockchip/clk-rk3576.c
> +++ b/drivers/clk/rockchip/clk-rk3576.c
> @@ -541,6 +541,8 @@ static struct rockchip_clk_branch rk3576_clk_branches=
[] __initdata =3D {
>  			RK3576_CLKGATE_CON(5), 14, GFLAGS),
>  	GATE(CLK_OTPC_AUTO_RD_G, "clk_otpc_auto_rd_g", "xin24m", 0,
>  			RK3576_CLKGATE_CON(5), 15, GFLAGS),
> +	GATE(CLK_OTP_PHY_G, "clk_otp_phy_g", "xin24m", 0,
> +			RK3588_CLKGATE_CON(6), 0, GFLAGS),

RK3588?=20

Cheers,
  Diederik

>  	COMPOSITE(CLK_MIPI_CAMERAOUT_M0, "clk_mipi_cameraout_m0", mux_24m_spll_=
gpll_cpll_p, 0,
>  			RK3576_CLKSEL_CON(38), 8, 2, MFLAGS, 0, 8, DFLAGS,
>  			RK3576_CLKGATE_CON(6), 3, GFLAGS),


--79d65ceca52770ce73e14ecdf58ae1ec71b511c9b7ca1d91c45705b1ce2e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZzyWlAAKCRDXblvOeH7b
bgO3AQCaEVGABu4FsN0146ULiB2lKOrKXkI8R3DKOrAFLEGfMwD/TJpSfxGr5g9P
Ytl5DRMSV+Y12kJDJHBNFt8sVM5NpAo=
=Z0zZ
-----END PGP SIGNATURE-----

--79d65ceca52770ce73e14ecdf58ae1ec71b511c9b7ca1d91c45705b1ce2e--


--===============2438594442949502410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2438594442949502410==--

