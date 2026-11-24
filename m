Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A07606A685
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 21:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zewHikmK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=uIBGKnDD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1gp8ljI1ctwvsVewrqQX/Hp/7auygPNlHB3o3uNXvtM=; b=zewHikmK7EuGmkrm0ahUI+GTZl
	8LjugJJSWRYvb3i/mPHaVjUysnCHw1/HhSsPKnTMgDQA16Mdx0XDi69BecScy8TYD2sm12vrncUk6
	rRnSIYrLveyrRPxpFFYjH5Ktm4SMv1A4ecASOOhoBz6HsjsqW6jqhagNvX8OEO2puLVLFg9hez4nR
	bbWud/uzd10x8jWZi0i94WygGquO/VFDvpk72LMTgLs0H4ylT+PrLCytO1hXi0VDqS+52ONHZBvcy
	5xNwla1mQjOxarJboQSLv3TjfatWryzw3XsULnYpYM0G07h4Ys8zGhYt+w8eHnS9f2WSmWzAijrVV
	W3dhgTOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxqq-00000007pVp-25a9;
	Tue, 24 Nov 2026 21:14:56 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxql-00000007pSD-0yY3
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 21:14:54 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-949680e6d83so454298785a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 13:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795554890; x=1796159690; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=W9arlbU5hy5tgNRpcN7WmEtmYSBI8GYP25HN7JEKy5U=;
        b=uIBGKnDDZhfVSUVJ5rybg6sFLDTieanBKLFDSy3WjdWtGqtcGzdgHsjD+YGwj/L22w
         dAFQCmEw5Qr/lAzsoqi9GYkQypbCP5CU3ZEvpSYoapHi+io2D0LwGZCN4WwWwEha5Bza
         J3cqMBchrLvjh899OuP/XyH68UD3tcRR6rF2I/Bf77U6QoO447CBShS1DMz/xurtSIl+
         N8NnsM+nhvWwOeD3/QrcWKXCOdedTtXIBjl7uWP6HJcSOM8ynJtXrwTknZu4eXhoHJk1
         WVGdCKiIISCCnTrP1MdlNTo94BiO4kDkl5YPGkJU6MMOcsDYla2gLHsKLYkiZkwtb6Qu
         +HCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795554890; x=1796159690;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W9arlbU5hy5tgNRpcN7WmEtmYSBI8GYP25HN7JEKy5U=;
        b=1fRp2rR/n4/jA+/Zgo7A/Yyx7HKMHcgrD1VGCzj31KNGY+RrTGDVXylUleli0qWipW
         oPNESas/7OequdgPAhQn7yBKg1so+LaZVWG6Oe3XTpFJOQsYPPmib8ksv6IbjgkMtt7K
         /UvTAR22iYkaivrcS6+wgflx8ZSBpWOUCXUGaefSwgzUASlimQodKwq8Hje4aU24pn+M
         QxY8IKfuj3cVSdhFqJkaK+K4Yn+cLyHfSfvTHQ3+Dx3vcWRGTZ4rPfBLUlKr1s48tiqa
         lNv6wJVtMY8dmJu+ZPlU+wFNkbCWVSe7FyUGB+AHpfcacoIQGbEFhLMtGI3x1Kj84Gal
         xFmg==
X-Forwarded-Encrypted: i=1; AL+hErEjzVV65iry8litc5JLff7iY6dOJHOYX8uOhap6JudqOcsggt0aIvLxPjVvIa8eHcDpv3uV07qCDRhFTz2HnA==@lists.infradead.org
X-Gm-Message-State: APuU4Z9y5tBHVNYHxB1OWy+5IolDK52HtQDOcxlyvcfv+LiOLcuFjOlT
	RyjJC5LuEiP5UtxpmShCQOuMJ3yf+nsWhXosfveC5sdXs1RbimVod6f14l2ELWF9alE=
X-Gm-Gg: AZFdTZfzPXgz2NHYuSD2m22h+o6Kg0Vpklz0983xpO0/MdcFM/Ktp2o3FQtnzrIc5We
	s7MCWrkwody8R9znFhcu9DK5THzTB2Hg9ctwNMOo6QQr1Tt0r24SuRUzf08p0aIBaLct0Wt2y5g
	r7WAcIV7uVDe/EDcpDtkFHDDcqsr8IzwqiygsRuMPWlcHX6pHWPLoKfqK9xhm8CapY/X78R9VUF
	4pXDc61etxDSYOhr38CR1Z0KgX5sToli1LGNT4QPRG2WrhM4qhWkQHGMBEy4RftEiOjMZAdCpOT
	3eNIPD+7EWe1qi2KyB9vAqptqlCarbWlCthfHpNO4cGhvM/y5grdK3YTC0U3t+yG8aY/w7mhZm9
	ODladTE6GUvV7t/hsyXBkRT6S//VRZicYvakVBgx2s0+IHgXWSN0xGvp+GSV0JfpETLHtfXPF0V
	IFPZiN32VImwDC1oifgDB3mP1vRenY8gQ94/WKEvHkYCr3FluGPj+a2pnVToS6147OXzk230PRO
	aUck52LVgVUkA5x1Ts0UD5Pzxflj8ovX0hB2AQf2slzzjCTB6814y6p0qDtAWp8jDgxZn2zIpfb
	nNA+5ErSRblQU8AaTbr/wl/8/bvCT22HeqtCl7weSlL2HdaqQfH3SUjMXVp3oHwMzuuEtYJIQ5B
	w
X-Received: by 2002:a05:620a:700e:b0:949:735c:90c4 with SMTP id af79cd13be357-949bab1df97mr2669499685a.70.1795554889851;
        Tue, 24 Nov 2026 13:14:49 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-949bb0319fcsm1129758785a.4.2026.11.24.13.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 13:14:49 -0800 (PST)
Message-ID: <728acfd6e085408e7998bc9e7dfbb2d110cd53ed.camel@ndufresne.ca>
Subject: Re: [PATCH v2 08/17] media: rockchip: rga: move power handling to
 device_run
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
Date: Tue, 24 Nov 2026 16:14:48 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-8-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-8-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20261124_131451_296633_9099A290 
X-CRM114-Status: GOOD (  23.02  )
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
Content-Type: multipart/mixed; boundary="===============1808445887923285134=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============1808445887923285134==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-VHje7+kFOoy685T8Rgq0"

--=-VHje7+kFOoy685T8Rgq0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Move the power handling to the device_run function in preparation for
> enabling multiple cores. This allows to power the only the necessary core=
s
> instead of powering all available cores.
>=20
> As the decision on which core the given job is executed will be done in
> device_run, we can only power to correct core there.
>=20
> To avoid unpowering the core in a streaming state switch to autosuspend.
> This avoids powering down the core when the next frame is scheduled in
> the next 50ms. The timeout maps to a framerate of 20fps, which should be
> pretty uncommon in a normal video stream.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

>=20
> ---
> v2
> - also set autosuspend flag with pm_runtime_use_autosuspend
>   (https://sashiko.dev/#/patchset/20260606-spu-rga3multicore-v1-0-3ec2b15=
675f7%40pengutronix.de?part=3D6)
> ---
>  drivers/media/platform/rockchip/rga/rga-buf.c | 12 ------------
>  drivers/media/platform/rockchip/rga/rga.c     | 13 +++++++++++++
>  2 files changed, 13 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/medi=
a/platform/rockchip/rga/rga-buf.c
> index c0ea6003336bf..3f7c3c68e0cb8 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -242,14 +242,6 @@ static int rga_buf_prepare_streaming(struct vb2_queu=
e *q)
>  static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int cou=
nt)
>  {
>  =09struct rga_ctx *ctx =3D vb2_get_drv_priv(q);
> -=09struct rockchip_rga *rga =3D ctx->rga;
> -=09int ret;
> -
> -=09ret =3D pm_runtime_resume_and_get(rga->dev);
> -=09if (ret < 0) {
> -=09=09rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
> -=09=09return ret;
> -=09}
> =20
>  =09if (V4L2_TYPE_IS_OUTPUT(q->type))
>  =09=09ctx->osequence =3D 0;
> @@ -261,11 +253,7 @@ static int rga_buf_start_streaming(struct vb2_queue =
*q, unsigned int count)
> =20
>  static void rga_buf_stop_streaming(struct vb2_queue *q)
>  {
> -=09struct rga_ctx *ctx =3D vb2_get_drv_priv(q);
> -=09struct rockchip_rga *rga =3D ctx->rga;
> -
>  =09rga_buf_return_buffers(q, VB2_BUF_STATE_ERROR);
> -=09pm_runtime_put(rga->dev);
>  }
> =20
>  const struct vb2_ops rga_qops =3D {
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index d7f0712177b70..c24bc8e26b91e 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -37,6 +37,14 @@ static void device_run(void *prv)
>  =09struct rockchip_rga *rga =3D ctx->rga;
>  =09struct vb2_v4l2_buffer *src, *dst;
>  =09unsigned long flags;
> +=09int ret;
> +
> +=09ret =3D pm_runtime_resume_and_get(rga->dev);
> +=09if (ret < 0) {
> +=09=09v4l2_m2m_buf_done_and_job_finish(rga->m2m_dev, ctx->fh.m2m_ctx,
> +=09=09=09=09=09=09 VB2_BUF_STATE_ERROR);
> +=09=09return;
> +=09}
> =20
>  =09spin_lock_irqsave(&rga->ctrl_lock, flags);
>  =09if (ctx->cmdbuf_dirty) {
> @@ -81,6 +89,8 @@ static irqreturn_t rga_isr(int irq, void *prv)
>  =09=09v4l2_m2m_buf_done(src, VB2_BUF_STATE_DONE);
>  =09=09v4l2_m2m_buf_done(dst, VB2_BUF_STATE_DONE);
>  =09=09v4l2_m2m_job_finish(rga->m2m_dev, ctx->fh.m2m_ctx);
> +
> +=09=09pm_runtime_put_autosuspend(rga->dev);
>  =09}
> =20
>  =09return IRQ_HANDLED;
> @@ -801,6 +811,9 @@ static int rga_probe(struct platform_device *pdev)
>  =09if (ret)
>  =09=09return ret;
> =20
> +=09pm_runtime_set_autosuspend_delay(rga->dev, 50);
> +=09pm_runtime_use_autosuspend(rga->dev);
> +
>  =09rga->regs =3D devm_platform_ioremap_resource(pdev, 0);
>  =09if (IS_ERR(rga->regs))
>  =09=09return PTR_ERR(rga->regs);

--=-VHje7+kFOoy685T8Rgq0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawX+SAAKCRDZQZRRKWBy
9BvLAP9Q5/iAdKDJ6TMCJMFG+qc3MCvexx/cnmIvxTp7c1XLhgEA2wrgdWTeGaKA
sk6wt4xFNb7zeeIPPdyxQHP8JK17XQc=
=r19R
-----END PGP SIGNATURE-----

--=-VHje7+kFOoy685T8Rgq0--


--===============1808445887923285134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1808445887923285134==--

