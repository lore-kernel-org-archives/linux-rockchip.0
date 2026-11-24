Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843B5606A32E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 21:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IlgRcCKP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=Br861Yyp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZzvCN379CSSVQkcl8TGF4Lks3YYb1ExDtOWRRNyG6lM=; b=IlgRcCKP6s5jT4d9WJppcyTCEX
	v3qOHXNCcbUfeGhkX8wRP4D/TaJ2tI0uk62GAH0ZxJI4PJAlmZt2wZKs5HiO0a/w/5Wi364uDKod4
	9hCOinV1gAZ0oDU7Joujo1LvVqAqc/4ZNuH9UJH0xrXHyXEAMU0rccd82J3oNqRL5xhdegK96Rtua
	JGOXN8NXwsio0VxGUkOOpd5fEyF9IG1Ypd503YqwYvU05iBJMsyCQKQXlkcZf/D/vCJKMAwk5fBKh
	zHgkInBgh1pIjb/os2METbPdXSkl1Zu08xGjoB+RnOukzU1/GsZvFEIVidL2hw9U6PRpcJPeFNIlm
	rHHiVNdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyRW-00000007vsN-24kO;
	Tue, 24 Nov 2026 21:52:50 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyRD-00000007vff-1Yom
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 21:52:34 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-94999a08973so475520285a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 13:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795557150; x=1796161950; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SoZPg/og+n6XZlBxBoY+E3d63ypK0pFhrHnI5qqIb58=;
        b=Br861YypjpXt8Qd+XXMlRqLzkChh8yEQHHLkgFmETfhvk0YOhjA0oUlymzshFeiiIr
         7qq4i+jc7mnqQ/DGTwVduZkV15U1AOX4pkKMyKNdk0RFEb8CYvIo2ptb04J9h8ULR7dd
         JnI5p9OukCsIpFMmhkFT9mY8wmEWKxTDs9MLs66+3zi9vm23iXgaCn+LNXNwIW2p80JB
         5CUv1o64Z3pRK4aWIcxQknNiJpJBbrpB699Tfx8CGdVo2nXUcJnbEuA/Df6dvhNjOOjB
         Dyy7GblB6t97cO2BhDlUkyatTyL3AjG7diS/o1onA60TCattdYdC5yuEI3efGnRLl7UY
         KmZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795557150; x=1796161950;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SoZPg/og+n6XZlBxBoY+E3d63ypK0pFhrHnI5qqIb58=;
        b=oKsMDoIPSQJN8CdTN8UOysee7CgxZs6XRUZZULs36RKs3jI1BeY8Py+Rz2s8gk6dcs
         OOIsGlXeOXMpu2LTeoUk/Q2YYuDisU3nsEFYH0J2KTcvMON1qNGOWespMGpnfVhJtFdX
         u4oQQdowqtvRZbwzArG/LH00vYQo0WVyujVP5aRghlB2/zA15278+TD8HDnBqbLhDfPy
         zW2dn0ikce60V+otUfAuD5qXF/fy0DohzjwarZaBaFp+XTOtQcoW2ieodyoRydoIUmJT
         S+wa4AxVzLBZL/8gk+LzpN1RUmROTL1nsh23tG9SBiB8YszzyKrNql9X0lztcLlBtrqI
         egmQ==
X-Forwarded-Encrypted: i=1; AL+hErGjnb19vVkgiNl1gEukkENwy1gPe3YtSWiSk71CvUWSTNsuRPZwdZehxo2lzNozvVoHOodCjxHx2I1JIO/qyA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8AJcs0K4I+vtKFlC1iqpZoI1fgaS2cpg46s8XBwPdQEdBvl/zg
	yQ0h//TcTUd6Qc8RUFlnMEU/aHb6F+wviMarHIWihdaBjdi4i+Qe4TmWu65D0ptBaVU=
X-Gm-Gg: AZFdTZdliSf6cF5rsH/iQo4AfHrcTiw8UALS0LFECYUiSJyYJsh+4ofQzjw93V60h6G
	TeCfYxUgVl57nUjQcGQpcqJczF1ENGvjjvk1QzxV4JscqqJf0g+f7cOHxLNhx/a2blhJ2olE9BK
	vJG9nLjaqBaDRN66huPKmoz0gGC2/4mbliXYnjXcdhuSlmynJZCai/zq7qI+8KWb796f6UZ4D6J
	AfcJYm2aQSDFM5x61paN3WxnReUqRSgV0iIOoRF2UkQHpdmHaYm1cm9kiyVICAOD+VwDL2LRthy
	6RfYdVOg/OiQX/LvhGnhYubVMi49IHrGfbJg7LFyhtUm8urg0DpxudFkzCYiq87Okwn9Jb5ULfP
	TFpk/uoCW6KHLJ5QT/fM8svG2XMbPjh06SK1uL1jVpnyDDPqrtM014Pk+jjRbYUNPI6tslaMkJZ
	kU0Iy970tAskFvKu0Q/hECgQfRIupWSyjFDNyl01s1De0QNlOA+o21QUuPxX8TB9MQbAOi1Zbh6
	8Es7CCsaTPoM+b1kzwIiErwUUd/vIv7fhB/rg9dSuX2VZfLpe4rk4epH8ePet7Xy43a/E8K+QGu
	C1Kpk5dZuY4hxha5Os1BDg7f8Hwh+23Whyn2pdIauSyT60MLor/g807L
X-Received: by 2002:a05:620a:458d:b0:939:6dea:4f1a with SMTP id af79cd13be357-949ba9c228amr2813987185a.48.1795557149846;
        Tue, 24 Nov 2026 13:52:29 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-949bb34ac1esm1148155085a.15.2026.11.24.13.52.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 13:52:29 -0800 (PST)
Message-ID: <71a121d6b863f31f625abcea20642269881d0b72.camel@ndufresne.ca>
Subject: Re: [PATCH v2 17/17] media: rockchip: rga: schedule jobs to
 multiple cores
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
Date: Tue, 24 Nov 2026 16:52:28 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-17-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-17-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20261124_135231_902993_AED93ECE 
X-CRM114-Status: GOOD (  20.16  )
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
Content-Type: multipart/mixed; boundary="===============6956644873060297499=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============6956644873060297499==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-xervUYoD/U351QaeWOLl"

--=-xervUYoD/U351QaeWOLl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Schedule jobs to multiple cores to utilize all RGA cores. To avoid race
> conditions when selecting the next free core a dedicated spinlock is adde=
d.
>=20
> Note that this doesn't increase the max frame rate of a single
> stream, as a context will wait for the job to finish before starting
> the next device_run call.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

I'll let you go through the Sashiko report here.

Nicolas

>=20
> ---
> v2
> - Set core->curr to null first in pm_runtime_resume_and_get error path
>   (https://sashiko.dev/#/patchset/20260606-spu-rga3multicore-v1-0-3ec2b15=
675f7%40pengutronix.de?part=3D15)
> - Also protect adding/removing cores with the spinlock in bind/unbind
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 30 +++++++++++++++++++++++++=
++---
>  drivers/media/platform/rockchip/rga/rga.h |  1 +
>  2 files changed, 28 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index b2eeae0a61771..6294825eaacfd 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -38,13 +38,29 @@ static void device_run(void *prv)
>  {
>  =09struct rga_ctx *ctx =3D prv;
>  =09struct rockchip_rga *rga =3D ctx->rga;
> -=09struct rga_core *core =3D rga->cores[0];
> +=09struct rga_core *core =3D NULL;
>  =09struct vb2_v4l2_buffer *src, *dst;
>  =09unsigned long flags;
>  =09int ret;
> +=09unsigned int i;
> +
> +=09spin_lock_irqsave(&rga->cores_lock, flags);
> +=09for (i =3D 0; i < rga->num_cores; i++) {
> +=09=09if (!rga->cores[i]->curr) {
> +=09=09=09core =3D rga->cores[i];
> +=09=09=09core->curr =3D ctx;
> +=09=09=09break;
> +=09=09}
> +=09}
> +=09spin_unlock_irqrestore(&rga->cores_lock, flags);
> +
> +=09WARN_ONCE(!core, "No free core although max parallel jobs matches the=
 core count!\n");
> +=09if (!core)
> +=09=09return;
> =20
>  =09ret =3D pm_runtime_resume_and_get(core->dev);
>  =09if (ret < 0) {
> +=09=09core->curr =3D NULL;
>  =09=09v4l2_m2m_buf_done_and_job_finish(rga->m2m_dev, ctx->fh.m2m_ctx,
>  =09=09=09=09=09=09 VB2_BUF_STATE_ERROR);
>  =09=09return;
> @@ -58,8 +74,6 @@ static void device_run(void *prv)
>  =09}
>  =09spin_unlock_irqrestore(&rga->ctrl_lock, flags);
> =20
> -=09core->curr =3D ctx;
> -
>  =09src =3D v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
>  =09src->sequence =3D ctx->osequence++;
> =20
> @@ -748,6 +762,7 @@ static int rga_core_bind(struct device *dev, struct d=
evice *master, void *data)
>  =09struct rockchip_rga *rga =3D data;
>  =09struct rga_core *core =3D dev_get_drvdata(dev);
>  =09struct rockchip_rga_version version;
> +=09unsigned long flags;
>  =09int ret =3D 0;
> =20
>  =09core->rga =3D rga;
> @@ -785,7 +800,9 @@ static int rga_core_bind(struct device *dev, struct d=
evice *master, void *data)
> =20
>  =09pm_runtime_put(core->dev);
> =20
> +=09spin_lock_irqsave(&rga->cores_lock, flags);
>  =09rga->cores[rga->num_cores++] =3D core;
> +=09spin_unlock_irqrestore(&rga->cores_lock, flags);
> =20
>  =09return 0;
>  }
> @@ -796,6 +813,7 @@ static void rga_core_unbind(struct device *dev, struc=
t device *master,
>  =09struct rga_core *core =3D dev_get_drvdata(dev);
>  =09struct rockchip_rga *rga =3D core->rga;
>  =09u8 i;
> +=09unsigned long flags;
> =20
>  =09/* Remove our core from the list */
>  =09for (i =3D 0; i < rga->num_cores; i++) {
> @@ -810,8 +828,10 @@ static void rga_core_unbind(struct device *dev, stru=
ct device *master,
>  =09=09=09=09iommu_detach_device(domain, core->dev);
>  =09=09}
> =20
> +=09=09spin_lock_irqsave(&rga->cores_lock, flags);
>  =09=09rga->cores[i] =3D rga->cores[rga->num_cores - 1];
>  =09=09rga->num_cores--;
> +=09=09spin_unlock_irqrestore(&rga->cores_lock, flags);
>  =09=09break;
>  =09}
> =20
> @@ -977,6 +997,9 @@ static int rga_bind(struct device *dev)
>  =09=09goto rel_m2m;
>  =09}
> =20
> +=09/* after binding all cores num_cores has the proper number of cores *=
/
> +=09v4l2_m2m_set_max_parallel_jobs(rga->m2m_dev, rga->num_cores);
> +
>  =09v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
>  =09=09  vfd->name, video_device_node_name(vfd));
> =20
> @@ -1047,6 +1070,7 @@ static int rga_probe(struct platform_device *pdev)
>  =09=09return dev_err_probe(dev, -ENODEV, "failed to get match data\n");
> =20
>  =09spin_lock_init(&rga->ctrl_lock);
> +=09spin_lock_init(&rga->cores_lock);
>  =09mutex_init(&rga->mutex);
> =20
>  =09dev_set_drvdata(dev, rga);
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index 522021c3e0249..b046083244bf6 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -86,6 +86,7 @@ struct rockchip_rga {
>  =09struct mutex mutex;
>  =09/* ctrl parm lock */
>  =09spinlock_t ctrl_lock;
> +=09spinlock_t cores_lock;
> =20
>  =09const struct rga_hw *hw;
> =20

--=-xervUYoD/U351QaeWOLl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawYHHAAKCRDZQZRRKWBy
9BkdAQDViMbWw7ZIgkMJFFddGVM8H0l7fqIrL1g/8RohkUjwyQEA4rRzp7+Odfyt
Gc2+uGfr//xab4zmFlHvwWN8TkrIiAc=
=pKUO
-----END PGP SIGNATURE-----

--=-xervUYoD/U351QaeWOLl--


--===============6956644873060297499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6956644873060297499==--

