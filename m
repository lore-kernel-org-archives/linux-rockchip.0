Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 348A5C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Nov 2021 10:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EMGFEr8f8yjVjLytMbch1qc6BEJ4DeCCuiJt0Rq04xo=; b=j1cw6YgJOdX6nhXW2ko7SoUwW6
	CNNGH6kjUDMFOq0zNUBpoJmdI8BTwAMLTE6uXErWohmIi3DIffZ7HMiRTadn80GB5qfTXA8Ty52Vl
	KbSpE+1vDa32HJT8sFDZYSPgSh7bR/Bm/VsjYCmPo0kwYdmfpV9NGdoa0CMq684X+Jkrd4Lt9Vh8G
	ZNoupXN0Ibxxzei+1p2i07Pk/mfppgk3dwdCZE+FjNjXPMBY6lKATbZPh5BiE62HLPaW5K4Yh33za
	biHevSFn8QUorS1+qu/mTXkfQujjzMTWrMhyev8biqZ8vcpMifSve7AywITHwfuY4w+39pmpQq3zO
	ZBWjFwvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mre9i-000RKN-Tz; Mon, 29 Nov 2021 10:45:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mre9U-000RH3-Bl; Mon, 29 Nov 2021 10:44:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DD67861280;
 Mon, 29 Nov 2021 10:44:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EB1CC004E1;
 Mon, 29 Nov 2021 10:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638182691;
 bh=xSycSCHun7nvgriSFuoyHqvSFKVs/MsbAmwoC5vWqnA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iOfzDwwzDcoYazx28YwA5+GZ9vv4ksBNwIVTY+wzyo6pTm/WgK68j9HWsGHhRwd72
 NzlFNpTfwtWKOhAw3YHBlRUlchqUgCIIs+LyuzTzWDgK/PkgAdThDxenCSPRz3LBp2
 JsRCxPi1onFM1GF7z5ffPXfgND+eQO7yd00KuCsVMFuMCK6fJEPmzZB/TJ7aVEf1mZ
 iFw6VB1qQMhhCC1pEDkVdhfAB4zT8AOSBht0yaMtdAMZk/qe1rWmJLEg+FsC1f5qqs
 e2X+OVWGsk/N73qa3cV44O3kRsxa060iAPsx4AHEcCVEWCEMBlGwTvRBlz669D2Vnz
 1qDbRA0fQToGw==
Date: Mon, 29 Nov 2021 11:44:48 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] i2c: rk3x: disable and reenable I2C after timeouts to
 fix stuck low SDA
Message-ID: <YaSvIDfF5YVArOa+@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Tobias Schramm <t.schramm@manjaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>
References: <20210826174632.91887-1-t.schramm@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <20210826174632.91887-1-t.schramm@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_024452_509225_9482656D 
X-CRM114-Status: GOOD (  20.48  )
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
Content-Type: multipart/mixed; boundary="===============0837020371960432130=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0837020371960432130==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6Li5gp6QIDsdtTJv"
Content-Disposition: inline


--6Li5gp6QIDsdtTJv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 26, 2021 at 07:46:32PM +0200, Tobias Schramm wrote:
> Previously the SDA line sometimes remained stuck low after timeouts
> rendering the I2C bus unusable. Testing has shown that disabling and
> reenabling the I2C peripheral after sending the stop condition seems to
> unstick SDA reliably.
> Disable and reenable the I2C controller on timeout after sending stop
> condition to unstick SDA.

Does it also help to not send STOP? This looks a bit like a hack which
went into the driver somehow. The proper solution might be to remove the
STOP and add proper i2c_bus_recovery at the beginning of a transfer.

>=20
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  drivers/i2c/busses/i2c-rk3x.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index 819ab4ee517e..fc330cc3686a 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -1108,6 +1108,16 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter=
 *adap,
>  			val |=3D REG_CON_EN | REG_CON_STOP;
>  			i2c_writel(i2c, val, REG_CON);
> =20
> +			/*
> +			 * Sometimes SDA remains stuck low after timeouts.
> +			 * Disable and reenable the I2C peripheral to unstick
> +			 * SDA.
> +			 */
> +			val &=3D ~REG_CON_EN;
> +			i2c_writel(i2c, val, REG_CON);
> +			val |=3D REG_CON_EN;
> +			i2c_writel(i2c, val, REG_CON);
> +
>  			i2c->state =3D STATE_IDLE;
> =20
>  			ret =3D -ETIMEDOUT;
> --=20
> 2.31.1
>=20

--6Li5gp6QIDsdtTJv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmGkryAACgkQFA3kzBSg
KbbtDA//exD7rdAgLU3RKa0p5TYvpLXxYJpx9MKUCjJVtSTMYaam83u0Yl/LyaDk
fAi3Il8MY/3muqVMp2iukHzqi+QLJftgC/bBR35xuCGXX3O13C3ER5Jcq51yV5YC
4GIKIU4gHywMhT1E++OGbZMcurhlazpHTYkmAz7YjdFEf50ws3DajzotLJgbZ2Cy
XhxTtWOTop4TpjEc59rRhpWZ6+sTITTwMzLng0hMBSYYQrgOohq8UzPy4xxBFUe/
R+zsM8EtjiBkRLwZ+zjm3DzS6RlSsPKMKs5IszW2E/Q1/uDlHBwiPGUxC+W70wL9
BVzR2p7hzSaUwwUNfKCruahJnXA370GFnnpPT9nzqBbKb3/uJZloD03q1k/1pN3V
Fr6YEnomd4UGFehNYWKNy5vFzYQ0PGfxmH8J6qpFU1ud43WYFHXuMWZnzOKhnYyo
aYZGWiMDC/pjTKEaUqq0LLObTLaHoMmXbFNdo6gfYR+pndqkrjxMq4FTz3mucHXk
ikNuDt9zRQf49MlF4O61R3WBeE/SYsmS3pHOF/KlrcyOdBwaLUb7nMqquDmsMiK0
nc06whPerE0fO06divCwcPz047FlAA0YGStkLwRsvCiqWSSa3awjZxCE68mDx6ai
2OpA+1bPIIXxm7zYKE0Cny0IZXJPg2totOkEjozXcnSN4LY/UA8=
=vtQV
-----END PGP SIGNATURE-----

--6Li5gp6QIDsdtTJv--


--===============0837020371960432130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0837020371960432130==--

