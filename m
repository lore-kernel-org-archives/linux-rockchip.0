Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE0581091917
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 20:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kVrWLWL9lp3elwavduuuEJZU0ADymJ1G6Ar/GUhF12I=; b=gV5/r9mjb200y2sCIEE2AHiz+O
	0lBLL5JZ+P0cHJ/UixbwK5ZHLLYVyqQBSZGK/j9qO+sasSX/x8ShaI0tKpn4qVvpJ0I10xTh39MNF
	u4GEUjM19W0Awifj21BJWZng5UwGQyCXMiwEB4zrhtAY9f1ZEi1CNH7q3IdySIB3qxBAClC/LEX5J
	j1ZNG0xqg5d0YAAsMQQPIJHtgjCIeflakrO57FBdZ3HqiCYp+N7HCXHwxymGk5cVw86zRWKmSN0W1
	I761hMvIfMd12sgODS4bvM5h5Ooru+AmwroqAnIddtW7bUr31E5I83l4ySwBl7iYF3qEyv1HbFb0D
	pFtiKodQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3KFS-0000000BYYz-1aan;
	Thu, 19 Mar 2026 20:45:42 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3KFP-0000000BYYe-3N0O
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 20:45:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1773953128; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=FBLt8bbVBQoMUpQgSDuBNHSYtcR5nXxVFzmyXVhekRpKMbaCHY3CEvUJKgpLiJ42ciCQoTmiEOKumIWsDnJ+gQQeyGsGbdq4b6zNYmWePSxk6C4Xp1s00rUaSpG9drx161AItkpYrM43HfCgAJE4bGxo/TMW8Z7/FAmRHHxwhC0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773953128; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=oJjF13cLrY2C8Lwe6vZDt+5t2BT+dVTzc9vqZjS5Y0Q=; 
	b=dQjB+4PvAADgdrLjYC0RefV1dwVrJFh/LKfnME5fhUrWM5mYnAZjHCEonCN3eDZ2VwqvvzmwYfEO+mcFkwazk25/lV23lqnfGtPAJAmTDlozpSrkYT53Un94uErGuIYW5yGF76cabaDbjyhLE6VrBr48isHqgpkrqvlUkRCfNwI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773953128;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=oJjF13cLrY2C8Lwe6vZDt+5t2BT+dVTzc9vqZjS5Y0Q=;
	b=Q3TuNzV3TqXL5ZAyR/K/r+sAZ8vdraZR4vLho+X5peTuTCL57wbBYAtnFTRV/Xfp
	IgCuKzog/zWImXtB3f+SPZdOxVEk+zVHU5Dhcu3RQqpaZ8ziMyV7+nKXvWVGsWo1RMj
	WcyLCMOB5vr6ykODvHjclLxEhpqY6Fli4JF6vTGs=
Received: by mx.zohomail.com with SMTPS id 1773953126223827.4198037672601;
	Thu, 19 Mar 2026 13:45:26 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 9592A1808AC; Thu, 19 Mar 2026 21:45:22 +0100 (CET)
Date: Thu, 19 Mar 2026 21:45:22 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Ross Cawston <ross@r-sc.ca>, kernel@collabora.com, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1] media: hdmirx: snps, rk: Fix HPD hold time
Message-ID: <abxfd7SdlaMWag_-@venus>
References: <20260318192619.3910060-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20260318192619.3910060-1-dmitry.osipenko@collabora.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.2.1.5.2/273.911.55
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_134539_911877_8BDE6ED2 
X-CRM114-Status: GOOD (  18.66  )
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
Content-Type: multipart/mixed; boundary="===============4318882874951901969=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4318882874951901969==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q35k3qr4wpgazbla"
Content-Disposition: inline


--q35k3qr4wpgazbla
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1] media: hdmirx: snps, rk: Fix HPD hold time
MIME-Version: 1.0

Hi,

On Wed, Mar 18, 2026 at 10:26:19PM +0300, Dmitry Osipenko wrote:
> Increase time of holding HPD pin low by 50ms. This fixes EDID change not
> detected by sink/display side.
>=20
> Fixes: 7b59b132ad43 ("media: platform: synopsys: Add support for HDMI inp=
ut driver")
> Reported-by: Ross Cawston <ross@r-sc.ca>
> Closes: https://lore.kernel.org/linux-rockchip/20260209061654.54757-1-ros=
s@r-sc.ca/
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---

The prefix in the patch subject should probably be
'media: platform: synopsys: hdmirx:' or 'media: synopsys: hdmirx:'.

Greetings,

-- Sebastian

>  drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drive=
rs/media/platform/synopsys/hdmirx/snps_hdmirx.c
> index 61ad20b18b8d..4c8957505a50 100644
> --- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
> +++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
> @@ -506,9 +506,9 @@ static void hdmirx_hpd_ctrl(struct snps_hdmirx_dev *h=
dmirx_dev, bool en)
>  	hdmirx_writel(hdmirx_dev, CORE_CONFIG,
>  		      hdmirx_dev->hpd_trigger_level_high ? en : !en);
> =20
> -	/* 100ms delay as per HDMI spec */
> +	/* 100ms delay as per HDMI spec + extra 50ms to cover internal delay */
>  	if (!en)
> -		msleep(100);
> +		msleep(100 + 50);
>  }
> =20
>  static void hdmirx_write_edid_data(struct snps_hdmirx_dev *hdmirx_dev,
> --=20
> 2.52.0
>=20

--q35k3qr4wpgazbla
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmm8YFsACgkQ2O7X88g7
+ppEIw/7B3PY5NAEJtHyK6Xomwg3aEXDq5+Se2cbgSJW2+JV7XSDtI7ZJw4kFo9C
/DclnUficoRHgTpGbsksaBpyRhk8iAS05rB67TGKE51O/VyYx5fAeJvzUbFA8gTD
iIpPwtsURF3INbTZbsIWpjrIV0M8ZRW8D1FhErsmRZLOJZuCEp/7WzgILftGqzy/
eMPfbr67f0b93QxoEJ0NeR2R0mV0LsGIgDkO0vF0bWogbno+mJL7PHz99nA2RTtv
CHl2CflyPml9gAc9DE3rrI2uWoBr68ewofSmtuQ18DeeeGFIErXoiCEpT10ON3J4
tG3muy7HJ32iaCjOzUm/tUw+3bOW7u5lRMWkNP6kkSoKTYsFGhX5wlMOOPkSXGwn
0M3+qQX+eY84sFYp6V/7Akwm2xg5wctS8GWKbBMJhYaH6GqHgxsZRviNhavFSNnL
GCYGisv/RAeQGBljfsm9v+xcsBWuwGiuQjcsm+FtQinmtyZ0pLbNQ02YNsco2NAk
8cN8340Bq/eOfI+efRH8JFac9F7aXisamqgJhcIBOWNQNlMvPTUQaEQ6Cr0y+dhs
LpY3X157MGhU49OHocNtwdpO5hOTk7bd+I5v+4dtUivjlo5pIHABf1HLwWw2t9vS
am5UpklWhK3RkBPROGXmxxsDEgV9aZkUKrNekWfIAyB3fxKcA78=
=orzv
-----END PGP SIGNATURE-----

--q35k3qr4wpgazbla--


--===============4318882874951901969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4318882874951901969==--

