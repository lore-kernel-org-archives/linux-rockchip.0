Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7EC606A68E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 21:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=t08ye47+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=lpUFG6fY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4Ge0qdwwRffU5g9KS8zEdOM3zQ99F09dDHk6ggXw6XM=; b=t08ye47+DoRA333+Seie4c36mZ
	O6HlRAw8nuMSCiiyrOM641D0ZRA8j3NFhylZp7CoE/K3QvnPvhy0ndS0SdSCvYc6u97o6zYKcX/q/
	Kj8Jv9Xet9RFsXH0/tFsfBfPd719Cb65GsO1GxALzZ1yKKFLggc3b7b8ypw8B7RGTLp0/SLaWlfip
	ICNB61odAok8Mo2oNui7Xf8aHX6T9h75PaUKDddGI9VTQ/ieEV8ixmhgubjOT/Xo+XD/EWCLs7ln6
	TMAU7dzr+uqOB1qqwUShRLIK27I11LUMiUiZJIPSF39cVDHFJ4YXsGO/l1toaoJbK7eH+U/5ExL6k
	14ah//BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyBG-00000007sqm-1Z3r;
	Tue, 24 Nov 2026 21:36:02 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyBD-00000007spx-2PRO
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 21:36:00 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-921318b2eb8so65337226d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 13:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795556158; x=1796160958; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PjbL4Wa8IiosODxBRnpJBDdjeGxS7zFTOO9eh2kHpB8=;
        b=lpUFG6fYGPR04rc/mX3v+sYiJNax2ih6UaoVwcqdLOSF2e+f/52TMLX4mBES8jBc/6
         ec650jIUNeGjUj8pMFA99J0nZCVS3vvBsbp9IW7FwtjN/dUkDVZF7Eb92o+mWmBCTaca
         mG3mDNKH3FKXwgWPuWoEfZMpz9wkxJNCRLLrQCWUpooMXrVPGpAKh0vrhgR/jWuWjVeR
         0gFogE/PMeMF3SWTFCH5Px86OSx5lKPxE2mnpk6gmVDFkbWkQ2mg5VQjo78W94pFDnaX
         VdC3PBs+NONVxhwGpLlboYPYW/YidRJB4BDDJYX5n6N9xsPITUuOFH4Ij2iMwCVmb6tl
         XADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795556158; x=1796160958;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PjbL4Wa8IiosODxBRnpJBDdjeGxS7zFTOO9eh2kHpB8=;
        b=egUT//nItQpu6PcpNXNHELCXdW+I0NnCDyOE+WuU8aZHU8oy0c8n0EAbmNofoevmzT
         DyebWqOHdH4vH60SlQy+apZzfbcqFVTyH536JoLWL0Eu/3sJOutjYfYOd4n8x58cgbEb
         LteMAAN3uIs3TepviPcL2DpYzumbQH6ez0/lq7H3JJDzM0WjHBmLKBbY0DL5SGDxeLQs
         nF/nmxk2h91B6jcGwz7MPScC6jmqsoO/qlj3DpRp2nPKOndu+/FI3R6y40sX0OXGxYOv
         wGKEHTFogIaNPmcXLReh5ndmRRrkz6RyL0kNap2jI8Z+TLWxEOfKqbyj8RqXxxbdkU8F
         47oQ==
X-Forwarded-Encrypted: i=1; AL+hErEeEb1zydYLayDNllbZMzLwWeAQ4YiWza9Xs6dCH8+c5hOYy+IacWtybbT0thNpK5VhxIULrZfkYvyFsqIN+w==@lists.infradead.org
X-Gm-Message-State: APuU4Z+Fvn90oGpS11tYw3Dx07H3RFOf2NbQ1IjFib7iwV24XaemN91p
	5BjnoawJNXomzrd4+l5Jm2cuMv46o/L9TDJRJQzs5Ey4ndx70cXC+G1Osxjm0noWQKc=
X-Gm-Gg: AZFdTZeSnzslyF36G5s12oXT/9yZ5Sqcs4ROcNVRPngIWq1zmSupqwhpPZfDbflskMy
	7gsAdwpqYOPAfqDbcNx77j7KwqddbIKqKkuLJmJ4XaNnoBtLhWnADDhRXpCXBCZzAkoGP98ijyx
	NyCuNrvEvLvcHIj95OkUKkXGDRAYroSTv9PyUsf/zkJo5IEcimqPJehV5YsGUwkFNOPKCiTdObR
	Vn3MX4OPaJepwPqfJJLkJxRpc3R4SFXButY18zxASsTPhAwtUYwJ20xmBivlkYaNet5ceq7Mygj
	sYsknJy6DhhaXBkOa0D/K3w4q+JuTGHgED4sAjys8SkJobane5fp9/ME4B3mqOsCHus0OrYNcM3
	YupVB0ABPhTDQAL3plt2eA7jKD5wjW39QoLAGvmscpZa9XtLqzZ0TgSYzM+LkEnNzVnnz+8zaqr
	cG4UtHOIOOW1QhS9+4OF2b3USeMfGNg8PmK0hhNy3hdPLHHDuVmxziMJj6SwojXqKo8AVq8TsT9
	/B+JkTooO8c+UKDuVuQiurh8pSs4BNYs6Jd7SmecBU6G3w3V6qbg+NI/1yPSOA+9OHzUgQ5mQR/
	m7yoFH3GNm3wR0CpXYKT/y0uLh2zf0ctNg8ayGbbC5ggF7lfWQOgqYx3wXZbchCLljpGPQsLsDa
	H
X-Received: by 2002:a05:6214:5348:b0:921:2215:5ca0 with SMTP id 6a1803df08f44-92134a3a1bdmr287245606d6.14.1795556158160;
        Tue, 24 Nov 2026 13:35:58 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-92134a1d948sm144137676d6.40.2026.11.24.13.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 13:35:57 -0800 (PST)
Message-ID: <ad0545e9caf7ea1e0f4804f7b461f0747fb9b129.camel@ndufresne.ca>
Subject: Re: [PATCH v2 13/17] media: rockchip: rga: move core initialization
 from bind to probe
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel
	 <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, Guangshuo Li
 <lgs201920130244@gmail.com>
Date: Tue, 24 Nov 2026 16:35:56 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-13-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-13-23aa2cb74e61@pengutronix.de>
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
User-Agent: Evolution 3.62.1 (3.62.1-1.fc45) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_133559_640981_426B60DB 
X-CRM114-Status: GOOD (  23.41  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4590011167803809692=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============4590011167803809692==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-1LAzSwIaGZzBAdtbh8uL"

--=-1LAzSwIaGZzBAdtbh8uL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Move the core initialization from the core binding function to the core
> probing function. This better matches the actual sequence, where the
> core probe initializes most things and the bind function just binds the
> core to the actual rga struct from the master device.
>=20
> As the probe has no rockchip_rga struct, it has to get the
> rga_hw struct from the of match data to determine if the given core has
> an iommu.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

I don't think sashiko report is that much relevant, but please have a look.

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

>=20
> ---
> v2
> - indirectly fixed component_add error path not using goto err_put_clk
>   by using devres version for pm (pointed out by Sashiko and Nicolas)
> - reordered commit for a better diff
> - Avoid NULL pointer deref when interrupt fires on an unbound core
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 97 ++++++++++++++++++-------=
------
>  1 file changed, 55 insertions(+), 42 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 37ccac5b406a4..fa34b93b1b7a5 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -72,6 +72,10 @@ static irqreturn_t rga_isr(int irq, void *prv)
>  =09struct rga_core *core =3D prv;
>  =09struct rockchip_rga *rga =3D core->rga;
> =20
> +=09/* ignore interrupt on an unbound core */
> +=09if (!rga)
> +=09=09return IRQ_HANDLED;
> +
>  =09if (rga->hw->handle_irq(core)) {
>  =09=09struct vb2_v4l2_buffer *src, *dst;
>  =09=09struct rga_ctx *ctx =3D core->curr;
> @@ -740,55 +744,16 @@ static int rga_parse_dt(struct rga_core *core)
> =20
>  static int rga_core_bind(struct device *dev, struct device *master, void=
 *data)
>  {
> -=09struct platform_device *pdev =3D to_platform_device(dev);
>  =09struct rockchip_rga *rga =3D data;
> -=09struct rga_core *core;
> +=09struct rga_core *core =3D dev_get_drvdata(dev);
>  =09struct video_device *vfd;
>  =09int ret =3D 0;
> -=09int irq;
> -
> -=09if (!pdev->dev.of_node)
> -=09=09return -ENODEV;
> -
> -=09core =3D devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);
> -=09if (!core)
> -=09=09return -ENOMEM;
> =20
>  =09core->rga =3D rga;
> -=09core->dev =3D &pdev->dev;
> =20
>  =09rga->cores[0] =3D core;
> =20
> -=09ret =3D rga_parse_dt(core);
> -=09if (ret)
> -=09=09return dev_err_probe(&pdev->dev, ret, "Unable to parse OF data\n")=
;
> -
> -=09ret =3D devm_pm_runtime_enable(core->dev);
> -=09if (ret)
> -=09=09return ret;
> -
> -=09pm_runtime_set_autosuspend_delay(core->dev, 50);
> -=09pm_runtime_use_autosuspend(core->dev);
> -
> -=09core->regs =3D devm_platform_ioremap_resource(pdev, 0);
> -=09if (IS_ERR(core->regs))
> -=09=09return PTR_ERR(core->regs);
> -
> -=09irq =3D platform_get_irq(pdev, 0);
> -=09if (irq < 0)
> -=09=09return irq;
> -
> -=09ret =3D devm_request_irq(core->dev, irq, rga_isr,
> -=09=09=09       rga_has_internal_iommu(rga) ? 0 : IRQF_SHARED,
> -=09=09=09       dev_name(core->dev), core);
> -=09if (ret < 0)
> -=09=09return dev_err_probe(core->dev, ret, "failed to request irq\n");
> -
> -=09ret =3D dma_set_mask_and_coherent(core->dev, DMA_BIT_MASK(32));
> -=09if (ret)
> -=09=09dev_err_probe(core->dev, ret, "32-bit DMA not supported");
> -
> -=09ret =3D v4l2_device_register(&pdev->dev, &rga->v4l2_dev);
> +=09ret =3D v4l2_device_register(dev, &rga->v4l2_dev);
>  =09if (ret)
>  =09=09return ret;
>  =09vfd =3D video_device_alloc();
> @@ -804,7 +769,6 @@ static int rga_core_bind(struct device *dev, struct d=
evice *master, void *data)
>  =09video_set_drvdata(vfd, rga);
>  =09rga->vfd =3D vfd;
> =20
> -=09platform_set_drvdata(pdev, core);
>  =09rga->m2m_dev =3D v4l2_m2m_init(&rga_m2m_ops);
>  =09if (IS_ERR(rga->m2m_dev)) {
>  =09=09v4l2_err(&rga->v4l2_dev, "Failed to init mem2mem device\n");
> @@ -855,6 +819,8 @@ static void rga_core_unbind(struct device *dev, struc=
t device *master,
>  =09v4l2_m2m_release(rga->m2m_dev);
>  =09video_unregister_device(rga->vfd);
>  =09v4l2_device_unregister(&rga->v4l2_dev);
> +
> +=09core->rga =3D NULL;
>  }
> =20
>  static const struct component_ops rga_core_ops =3D {
> @@ -864,7 +830,54 @@ static const struct component_ops rga_core_ops =3D {
> =20
>  static int rga_core_probe(struct platform_device *pdev)
>  {
> +=09struct rga_core *core;
> +=09const struct rga_hw *hw;
>  =09int ret =3D 0;
> +=09int irq;
> +
> +=09if (!pdev->dev.of_node)
> +=09=09return -ENODEV;
> +
> +=09hw =3D of_device_get_match_data(&pdev->dev);
> +=09if (!hw)
> +=09=09return dev_err_probe(&pdev->dev, -ENODEV, "failed to get match dat=
a\n");
> +
> +=09core =3D devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);
> +=09if (!core)
> +=09=09return -ENOMEM;
> +
> +=09core->dev =3D &pdev->dev;
> +
> +=09ret =3D rga_parse_dt(core);
> +=09if (ret)
> +=09=09return dev_err_probe(&pdev->dev, ret, "Unable to parse OF data\n")=
;
> +
> +=09ret =3D devm_pm_runtime_enable(core->dev);
> +=09if (ret)
> +=09=09return ret;
> +
> +=09pm_runtime_set_autosuspend_delay(core->dev, 50);
> +=09pm_runtime_use_autosuspend(core->dev);
> +
> +=09core->regs =3D devm_platform_ioremap_resource(pdev, 0);
> +=09if (IS_ERR(core->regs))
> +=09=09return PTR_ERR(core->regs);
> +
> +=09irq =3D platform_get_irq(pdev, 0);
> +=09if (irq < 0)
> +=09=09return irq;
> +
> +=09ret =3D devm_request_irq(core->dev, irq, rga_isr,
> +=09=09=09       hw->has_internal_iommu ? 0 : IRQF_SHARED,
> +=09=09=09       dev_name(core->dev), core);
> +=09if (ret < 0)
> +=09=09return dev_err_probe(core->dev, ret, "failed to request irq\n");
> +
> +=09ret =3D dma_set_mask_and_coherent(core->dev, DMA_BIT_MASK(32));
> +=09if (ret)
> +=09=09dev_err_probe(core->dev, ret, "32-bit DMA not supported");
> +
> +=09platform_set_drvdata(pdev, core);
> =20
>  =09ret =3D component_add(&pdev->dev, &rga_core_ops);
>  =09if (ret < 0)

--=-1LAzSwIaGZzBAdtbh8uL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawYDPAAKCRDZQZRRKWBy
9C8BAP96KhNnPyp6c7icyZBmiQPklgkS45OBuWgpKtV74WtG4gEAg0B6t6w8Hkn9
CttDJvFiRAACUl3ielwZ52l2M0lO7Q4=
=YPtw
-----END PGP SIGNATURE-----

--=-1LAzSwIaGZzBAdtbh8uL--


--===============4590011167803809692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4590011167803809692==--

