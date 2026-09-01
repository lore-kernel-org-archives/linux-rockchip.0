Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78E7BC61DD3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 14:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r1CF4lZBL/NYsg0gY2BAlsQpq3PrEUAVvqN9GLjJPbQ=; b=zf6MOxDNYNjid+EaxRED5h8rx5
	btP3m4/tBvqGpbNC+sPaiZDMiS80rav6NO0JGD77ZFOUmwI5ECSFns7KCW8FNB2Tc/ujnBKxnG8cp
	T6U6E0a6R1ocwpirTJgM+HVPStWsn8D6ee6F3bO3UGN1fLm5MOVrIqs9hZwEezqUO6H3KeAh2wiic
	tTvyiQCmA4zhA5KyfK3pHsRtEi9nnl5q/qW9vYZszLgy0yvCqfpbSUUUN3vlbGXBcDe9++s148MdL
	QWHRGty6L2TyjBZGB5jfwneuUSjvrDStd3YFcg9DDDEwiIVioLD/MboP1iDXw9WMsTNHUswkv2q1T
	XjQ+uTCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1PUf-0000000CL4s-3b7H;
	Tue, 01 Sep 2026 14:29:45 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1PUe-0000000CL4U-0FKH
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 14:29:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788272940; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OE3sMsHGHt+41DVvmLQdFJAlRMi7hLs3HHscY3Ihr6W9OGDbi7H6MB3dGdj9lUocE3NPea0wxNmwZwABOGjF/1vpY0rtdIyvJdvKlXg+EasTyUzzowUzyM9Jn542JzL/OmwFru2YXyuLEO4LjZYBG5qfNN/VFA7IfiMr4nIU7SA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788272940; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nibbihiNwTxPtB/Zw0Nqer23SKfgJLqxeJF8NhrvMSg=; 
	b=gRd+XxzWO0vaHlwcxo29Njy5cgr3XzpTsA81J699eOUFC73RSUNhpUdjZlTzOC3Thxg6d6gbauJu1TUJHtw9vXdRTFHWpivqNKcUd83rBAj5+gGG/q4ekwG2i57ltRk1WOLeSBKbbO7qMDz0Yn2tqlM2bwjaI2/QXm0Zhy4qk3I=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788272940;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=nibbihiNwTxPtB/Zw0Nqer23SKfgJLqxeJF8NhrvMSg=;
	b=GEX78Z8/TxVCUZ1uHZCye50DQCx+0mIUo5Nyn5oWYrJLQNE/lRXVnCEZtPHkZoNR
	Hw603To04nIZB9ESBD6b2hFPVoqMbrwz+s6LoKxHeH7okLjsFRgHPaU4SzLN53PP+6H
	e/E7j7fpTgCJHqK8+nKAJ8NvuX7X1o1uplnkVvwE=
Received: by mx.zohomail.com with SMTPS id 1788272938687853.5577781362773;
	Tue, 1 Sep 2026 07:28:58 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 49F6C181B0C; Tue, 01 Sep 2026 16:28:52 +0200 (CEST)
Date: Tue, 1 Sep 2026 16:28:52 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] drm/bridge: dw-hdmi-qp: Compute ACR CTS for unlisted
 TMDS rates
Message-ID: <apbgp2h_tSZQzbdV@venus>
References: <20260901112541.84588-1-christianshewitt@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260901112541.84588-1-christianshewitt@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/288.256.78
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_072944_146195_F0930BEB 
X-CRM114-Status: GOOD (  28.99  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Detlev Casanova <detlev.casanova@collabora.com>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Daniel Stone <daniel@fooishbar.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Douglas Anderson <dianders@chromium.org>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: multipart/mixed; boundary="===============5821089617154470244=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5821089617154470244==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lydbo5pwj5izjpxk"
Content-Disposition: inline


--lydbo5pwj5izjpxk
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] drm/bridge: dw-hdmi-qp: Compute ACR CTS for unlisted
 TMDS rates
MIME-Version: 1.0

Hi,

On Tue, Sep 01, 2026 at 11:25:41AM +0000, Christian Hewitt wrote:
> common_tmds_cts_table[] holds only six TMDS character rates (25.175,
> 25.2, 27, 54, 74.25 and 148.5 MHz), so dw_hdmi_qp_find_cts() returns 0
> for everything else. dw_hdmi_qp_set_cts_n() then clears the CTS override
> enable and programs a value of 0, leaving the sink with no CTS to
> regenerate the audio clock from.
>=20
> Any deep colour link falls into this gap: a 10 bpc RK3576 HDMI output
> runs at 185625000 Hz (148.5 MHz * 1.25), which is absent from both
> tables. N is computed dynamically and comes out correct at 6144, but
> AUDPKT_ACR_CONTROL1 reads back as 0.
>=20
> Give CTS the same dynamic fallback that N already has, using the formula
> from the Audio chapter of the HDMI specification, and drop the -ENOENT
> returned into an unsigned int for the unlisted sample rates.
>=20
> Fixes: fd0141d1a8a2a ("drm/bridge: synopsys: Add audio support for dw-hdm=
i-qp")
> Assisted-by: Claude:claude-opus-5
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
> This was found after testing unrelated patches from DetlevC that rename
> the RK audio cards to see the impact in Kodi. RK3588 had audio output,
> while RK3576 did not. I'd not used an RK3576 board for a while so tasked
> Claude to help triage the problem, and this was the finding. The problem
> appears to have been exposed since Kodi reworked plane selection logic
> and support for 10bpc planes; earlier Kodi/LibreELEC images were using
> 8bpc planes thus avoiding the problem.

You are looking for this series:

https://lore.kernel.org/linux-rockchip/86fcf349-0a7a-4618-9001-612371b0f71b=
@symple.nz/

Greetings,

-- Sebastian

>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 45 ++++++++++++--------
>  1 file changed, 27 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/d=
rm/bridge/synopsys/dw-hdmi-qp.c
> index 5f4718c3b9db..7cf327de0249 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> @@ -12,6 +12,7 @@
>  #include <linux/export.h>
>  #include <linux/i2c.h>
>  #include <linux/irq.h>
> +#include <linux/math64.h>
>  #include <linux/minmax.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
> @@ -307,8 +308,15 @@ static unsigned int dw_hdmi_qp_find_n(struct dw_hdmi=
_qp *hdmi, unsigned long pix
>  	return dw_hdmi_qp_compute_n(hdmi, pixel_clk, sample_rate);
>  }
> =20
> +static unsigned int dw_hdmi_qp_compute_cts(unsigned long pixel_clk,
> +					   unsigned long sample_rate,
> +					   unsigned int n)
> +{
> +	return div64_u64((u64)pixel_clk * n, 128ULL * sample_rate);
> +}
> +
>  static unsigned int dw_hdmi_qp_find_cts(struct dw_hdmi_qp *hdmi, unsigne=
d long pixel_clk,
> -					unsigned long sample_rate)
> +					unsigned long sample_rate, unsigned int n)
>  {
>  	const struct dw_hdmi_audio_tmds_cts *tmds_cts =3D NULL;
>  	int i;
> @@ -320,23 +328,24 @@ static unsigned int dw_hdmi_qp_find_cts(struct dw_h=
dmi_qp *hdmi, unsigned long p
>  		}
>  	}
> =20
> -	if (!tmds_cts)
> -		return 0;
> -
> -	switch (sample_rate) {
> -	case 32000:
> -		return tmds_cts->cts_32k;
> -	case 44100:
> -	case 88200:
> -	case 176400:
> -		return tmds_cts->cts_44k1;
> -	case 48000:
> -	case 96000:
> -	case 192000:
> -		return tmds_cts->cts_48k;
> -	default:
> -		return -ENOENT;
> +	if (tmds_cts) {
> +		switch (sample_rate) {
> +		case 32000:
> +			return tmds_cts->cts_32k;
> +		case 44100:
> +		case 88200:
> +		case 176400:
> +			return tmds_cts->cts_44k1;
> +		case 48000:
> +		case 96000:
> +		case 192000:
> +			return tmds_cts->cts_48k;
> +		}
>  	}
> +
> +	dev_dbg(hdmi->dev, "Rate %lu missing; compute CTS dynamically\n", pixel=
_clk);
> +
> +	return dw_hdmi_qp_compute_cts(pixel_clk, sample_rate, n);
>  }
> =20
>  static void dw_hdmi_qp_set_audio_interface(struct dw_hdmi_qp *hdmi,
> @@ -471,7 +480,7 @@ static void dw_hdmi_qp_set_sample_rate(struct dw_hdmi=
_qp *hdmi, unsigned long lo
>  	unsigned int n, cts;
> =20
>  	n =3D dw_hdmi_qp_find_n(hdmi, tmds_char_rate, sample_rate);
> -	cts =3D dw_hdmi_qp_find_cts(hdmi, tmds_char_rate, sample_rate);
> +	cts =3D dw_hdmi_qp_find_cts(hdmi, tmds_char_rate, sample_rate, n);
> =20
>  	dw_hdmi_qp_set_cts_n(hdmi, cts, n);
>  }
> --=20
> 2.43.0
>=20

--lydbo5pwj5izjpxk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmqW4R0ACgkQ2O7X88g7
+poXfQ/+LDpMXaTNcjSRBdF7rpSOyIoT6KZHOa3awhqdJI9OjPWkqnMgtXC820Tn
Qpadkaoae0eEaL0DgwK++3m08U0ZSchWttGJWDcxUMnULEwtxuGh0y5wa9MotUOr
iUmSahIbDW7M9CnpLWvOFIn0na5s5m1NdiWSO57cwMhRJaO2dg+tB2+b7wkaE3ak
fZVQPlcwx7RpQpKe1Q8Gio9gxZVSPKdGAsbbdxCqsi+AjcDuPe+OVe0FEr12y1LI
/SjQaTQ8Nb8eFdZ8bqBKWcHlNQ4RPaeA64eKE+hoqy7zgUMM4chfFI8WaksU+1oP
VdFHkORrU1e6OU4bvDP0zCM3sOyEA7z0O0DSqNAzRquQ4MkoliSwKVTx2NDDY2Sv
n9iGmeixpIweQWsZJBS1q+3+H1sue3CiaeKlkhKVrXs8wngTbo7gMFF/G+BBRfGs
cW/hwCzOE+x7H4C2kWKly5YJcl3mt1QNPk++xw5/mafYV9PUwWMlOnu/d4i7FnOo
I+ZUZ73uAe+KnvKI7lDAlE/bdwtmIRYYbnDHJYVOLFa2BOx/Qwz5kiyvD9Y0NB1S
n0NJJWqXZjtkDrvF/0E8DqJar54sn5i/9viWWwR1gkpfp6K/J/pNhbt5Tq6Y7+Pd
DXc6TQE4r8KhDhtsDiY1XW9EVa/zad82OwedhecxHnwUWvFefdY=
=udif
-----END PGP SIGNATURE-----

--lydbo5pwj5izjpxk--


--===============5821089617154470244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5821089617154470244==--

