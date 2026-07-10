Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E207CC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 21:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VdTFnCRd4nKAsFv/cVOAb+WM/BSHGifKl1dPUnCSqCU=; b=GMy5hFNpMl7yGdoVh1NslfodsN
	EGwa+7VKAWGMs2pHuYqzf6rsid98WsMMKduTudtoKH6JsGQRJOTO2YZiZJRzAwe/6tMG3nf2CbZJy
	cVOpjCySqsnowezQBQVjFV7Tch+893jMrKDZPWfUTr++aIITT0URXVbK4Fby78CarsijX//bJIQ9/
	Zy7jgXnxqYX5QA9doAa0jAhqMlB7vVrhodrv+HFyN5rMSkPEojRKV9aJnZWkpn/UA4P5C+yZWNbtE
	ntt33EAyurXJB9w6YDMLvcNlPWWrkC1oUa3/bz/vsFnHz7nNpyPAkMKAh9x7Sl3n8fjeeqW5AzwW5
	kkvR7eXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIQe-00000005lOn-0pLL;
	Fri, 10 Jul 2026 21:06:36 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIQb-00000005lNu-31fy
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 21:06:35 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-9034b6b7674so5173016d6.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 14:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1783717592; x=1784322392; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=TVT9N7Zf4tzdtEz92uIESo3Z8ztU5bsCLtI2pOZcHKU=;
        b=bNuEFn18EE79RGLbgRW+5hR7/cOZggyXrJbig0GE31qVgkEsLKYJnss3l1YYYxP7MR
         tuOMEqsSat623zd7gFnI11p5rlxP/gj8VRROKadnJkZYonqsDllvhTR7u9IkhfU0JOT4
         kBQMpzMqCv2JBXdFl5Y0X3y5JU4LrSWAV+Vi01fzLksNrtYuhqRL5t2Vk7ZdPivI80KA
         oxQdDUpP1Ocju5fEC/s7YPwzkHul+Mls5FMPatRpXgZjrvQzKkDevhD22FzLRoBwPEyK
         08xooS47Co2qG41sVSu6DiWcWQ61Xgd4V4oD9uVisOskNFEC8MRqYQ2yvbbsGzxdZJs0
         +MAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783717592; x=1784322392;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TVT9N7Zf4tzdtEz92uIESo3Z8ztU5bsCLtI2pOZcHKU=;
        b=fUQsC5HNF0ZO7j1Hu1kFsZmxLuEORK32LoV+SboyxkTU2UZGSA36/Mv1JxDxtt8y8F
         qggvKh9WPo5AqIZE5t2EvzoxrOpUl5nxRujcl2uiNtiS2nJNebpzzSo/djuGk+fZmaOL
         IA/T2/ZJrlw0pcBEnZaPVm2/FPeLRFcFXGEtFy0cH0jSsEA2Ps74rABtBktWXYALnoDG
         d+qmAIY41/PE1WhO53jGalU7DNjOWhy8tP/n52KW0/rQ81HqIhj816CiVribP5EXBgmS
         /0/W4cgOP9Usi+MSr6De1U11NyWrB0z/aJSfcgR36jhjEwKywMK2ivCNYFf9MgfkYoMU
         SalQ==
X-Forwarded-Encrypted: i=1; AHgh+RohFFxyMnjvC8n+Cb8okZ/cGHiHE10YPaf407lU7k5TEpBysM3NM8BkeyUs2zuZCl1KV7osuEWyLNETy/8SJw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywl6Quj6RDj7jUG6+UsZvqhVPYMxj3aqhvSrfMRd75ed0jBHL9G
	kQqEA5PeAprl46OSsXSMTvKdGAVmwzCy0O1pEif4fhbKwU5KJt4sSTLVwwqumPQj41Q=
X-Gm-Gg: AfdE7ckVJ3SSpqFr55dhISu0b3Wm/CvuQLObqlj4PHMhUFImKL0GD6tGcH7RUNJDgo6
	5nUoTQ9V3+OqJtznRzQXsPa1QMZb8gkNJObK1PoC4uJehcf+cKumT+YbToOXwnP7Ymi9wsyMsTG
	3m/mMC95E9Q+PZ2LcOvHYlgaVdQ+gD3OQHUn+nyYsk58CW+Br/4uEpLXDanQhZpGtlQfzoJ2Ql1
	eR8nZ+aXAt3vyRbFBrNijPQSJtT32DHewRkNqC8CMeVJDHNkXCkzzMVkEq6hfW5FHU4TN4ebUVj
	ivETzK1eZDlSOfDEXVP7ooreEMZWb77QDjkjukCb8uqweWtnY4DIgX+L4NTAe9OK+5GWCFqJ9jg
	pIO1qwAuBocjwMRVEb4AK7aQjmlrHRiHr8ovhdjONQ2TRcLjGhkJAU2ZV/TLuR0DAWTkvBXwPV/
	wnwRmimCtsgftDNnyUWcQ/X2VoLkOg
X-Received: by 2002:a05:6214:3b81:b0:8f1:581c:4b40 with SMTP id 6a1803df08f44-90400f9540emr8519656d6.7.1783717591801;
        Fri, 10 Jul 2026 14:06:31 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b::c41? ([2606:6d00:15:e06b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ffd87c9500sm50123616d6.46.2026.07.10.14.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 14:06:31 -0700 (PDT)
Message-ID: <1e7a3efb76d84730748b9c47c03a90b51b2d2d20.camel@ndufresne.ca>
Subject: Re: [PATCH 13/17] media: rockchip: rga: bind all cores to the master
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel
	 <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 10 Jul 2026 17:06:30 -0400
In-Reply-To: <20260606-spu-rga3multicore-v1-13-3ec2b15675f7@pengutronix.de>
References: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
	 <20260606-spu-rga3multicore-v1-13-3ec2b15675f7@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_140634_031771_6A7A6BD4 
X-CRM114-Status: GOOD (  24.00  )
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
Content-Type: multipart/mixed; boundary="===============3374208508297277434=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3374208508297277434==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-TbhSyHxkx/Z3fez9TIdu"


--=-TbhSyHxkx/Z3fez9TIdu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le samedi 06 juin 2026 =C3=A0 00:06 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Bind all core components to the master component. Previously only the
> first core has been added to the master device to avoid creating
> multiple video devices. As the video device creation has been moved to
> the master component, it allows us to bind all cores without creating
> additional video devices.
>=20
> We expect that all cores to report the same version number, as we only
> add cores with the same compatible value. This is important, as=C2=A0 we
> setup the command buffer before actually scheduling the work to a
> specific core. Therefore adjusting command buffers depending on the
> version register only works when all cores have the same value.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 22 +++++++++++---------=
--
> =C2=A0drivers/media/platform/rockchip/rga/rga.h |=C2=A0 1 +
> =C2=A02 files changed, 12 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 0413b8518dfc8..6add6c510c127 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -742,6 +742,7 @@ static int rga_core_bind(struct device *dev, struct d=
evice *master, void *data)
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga =3D data;
> =C2=A0	struct rga_core *core =3D dev_get_drvdata(dev);
> +	struct rockchip_rga_version version;
> =C2=A0	int ret =3D 0;
> =C2=A0
> =C2=A0	core->rga =3D rga;
> @@ -750,14 +751,21 @@ static int rga_core_bind(struct device *dev, struct=
 device *master, void *data)
> =C2=A0	if (ret < 0)
> =C2=A0		return ret;
> =C2=A0
> -	rga->version =3D rga->hw->get_version(core);
> +	version =3D rga->hw->get_version(core);
> =C2=A0
> =C2=A0	v4l2_info(&rga->v4l2_dev, "HW Version: 0x%02x.%02x\n",
> -		=C2=A0 rga->version.major, rga->version.minor);
> +		=C2=A0 version.major, version.minor);
> +
> +	if (rga->num_cores) {
> +		/* we are not the first core, expect that we have the same version */
> +		if (rga->version.major !=3D version.major || rga->version.minor !=3D v=
ersion.minor)
> +			v4l2_warn(&rga->v4l2_dev, "Detected multi-core setup with different c=
ore versions!\n");

We should fail, and not just warn.

Nicolas

> +	} else
> +		rga->version =3D version;
> =C2=A0
> =C2=A0	pm_runtime_put(core->dev);
> =C2=A0
> -	rga->cores[0] =3D core;
> +	rga->cores[rga->num_cores++] =3D core;
> =C2=A0
> =C2=A0	return 0;
> =C2=A0}
> @@ -983,14 +991,6 @@ static int rga_probe(struct platform_device *pdev)
> =C2=A0		component_match_add_release(dev, &match, component_release_of,
> =C2=A0					=C2=A0=C2=A0=C2=A0 component_compare_of, core_node);
> =C2=A0		num_cores++;
> -
> -		/*
> -		 * As multi core is not implemented yet,
> -		 * break out of the loop to only have one core per rockchip_rga struct=
.
> -		 * Also put the node, which otherwise would've been done by the loop i=
teration.
> -		 */
> -		of_node_put(core_node);
> -		break;
> =C2=A0	}
> =C2=A0
> =C2=A0	if (!match)
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index fcf1ef7d2029f..6237436b984eb 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -88,6 +88,7 @@ struct rockchip_rga {
> =C2=A0
> =C2=A0	const struct rga_hw *hw;
> =C2=A0
> +	u8 num_cores;
> =C2=A0	struct rga_core *cores[];
> =C2=A0};
> =C2=A0

--=-TbhSyHxkx/Z3fez9TIdu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCalFe1gAKCRDZQZRRKWBy
9GClAP9CEDkckOHaaBs3JSr4kR2glZ91T2+Em462BGZsPI608QEAkZF6ihkk7v4x
pzNO4wHmiemguZjKW2cONNbyb6HNbwQ=
=KoiK
-----END PGP SIGNATURE-----

--=-TbhSyHxkx/Z3fez9TIdu--


--===============3374208508297277434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3374208508297277434==--

