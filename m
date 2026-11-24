Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5186606A69E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TVM5/b1u;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=PWLLp7S4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IYby+IN+81aV6+XGJfTrjDrZEprMHYgP1milItyFI4w=; b=TVM5/b1u7Rnzg7HgVk0WPlSY8G
	gC2CwOxpdf/Nt6BJRmcXbwjdcSu3RnVegTwiKlrum8uII1rUek1drBt1vMy/QsEIduuvoqnMwrqjK
	3lJ+Ic02km2qGX0ln5489L//ZQUXYubHTsmKf79+De0WjJN1T73lRhY+SvIZHyhX/G5EBOlLdNlMx
	gfZMjYrdGfYiEFPYpvwtCdKGqU8i31hQ0J6w9pz3J4g5u+tQa5wAIxTlqqmx/cE9K9Eg4lkT+ROnF
	YJkyrFQ8aUyX6/Bbo04OGBoSKErsTBdK3sNlDAv/sy9TjhrbCgXK/uhpjFZ25TasvtafQvv+zPMHZ
	9RhdOUGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyDe-00000007t9P-2RVe;
	Tue, 24 Nov 2026 21:38:30 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyDJ-00000007t5U-0ot8
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 21:38:29 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-949680e6d83so456320485a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 13:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795556288; x=1796161088; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XvU8I+vB/hnkSYqyvTC9KODVvqvC++EcA5WWKHIkmy4=;
        b=PWLLp7S4jf3Ac8oxvJeks905cxZ3/nsfan97XhrdYTsKc5h5MZAnSuR7T1lUkpC3CZ
         Qflo3z361VLot/tObGtKKAhG1raJyqSV2ffRjNSFFYvDaMBWDLEtvzaic4JKCLr+JjEq
         oE9XxCfbgsyJvfDcipLhrvtRvKSnE6qfy2IBMakyxPWfDl4YQjjv3Q0u+wQRuBzWzswc
         RWIwZXVQ+LF1T4RK2sXE78S14EhyyPacj2fupdDtOwmkc0J2JzTT6Kb1lkHdz+vDDF75
         Obs9hODwsqiXDsiyUmaVjIH1fxcueAaPIBs4CAZ5kJNT2xtMLY80RUhCiDbQt1Gehso8
         CjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795556288; x=1796161088;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XvU8I+vB/hnkSYqyvTC9KODVvqvC++EcA5WWKHIkmy4=;
        b=ZUqK2uz8bzhjlkD+7JmyfVg4yIVG1W+AW09KDuK+dYBsYG+qDSyuyY1fE67HP0/wII
         pIY5btkFAdU/8mNQPTixJcxOjboyhE5CemucSaZ89GJ6zAg8jnPHofcGr1wrlUpZp5nj
         ZUfoqjuShzsQeY6866+aAqZ8NU41SLBP36WSzqj3fp4UB3zSGx/ptGrDKdsmNNN0y0Tu
         VwVgugfETMTST53akzxBXofWpnfY1QEvYHDqTK5+0pNqnfpxMgWTVznf/72FNRnex6eK
         Z+cbosdv/wCe0IRbuSRNvj8MLs1m/iuHM5drVYYup7G3JvX7lFqOgSQQGpF+NrNlf1Kv
         dHlw==
X-Forwarded-Encrypted: i=1; AL+hErFDDtlhQJWKr18K7OgyZbnD6uz9jrdl9QmV/rM6QK+SFduOKZu0vVVthVTRXjsIPpDzZfRsroG2I1tF9R5NZQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/DVjjSp7i9tUjP6a6xfCbVhxKV+E0rBT0wkKtLU3F2KjJzsWDi
	iSMMsTCkACFABbXMbMH6mSiMAQp/iURIJppAlXO//TwyMGOAc1lX4v5/o0vkgefRA7M=
X-Gm-Gg: AZFdTZdGZ5PRF6f1bV/yHlTf26D+4PcRs9eO2OQMy6Uv9na22iYKb18PBPtWYO+hwTw
	qcaJhDXDujRTy/8+2RtM8CpQ6Nr8oaKSi9SKBLVleYOj91dpQGt00DYV5C0fUuN4OmmxBVp6wyW
	oUNEQjvtF/35S+Dz+PAFmN+/auyC9/cJzSWlLVoHht3Npp1y87kFgbrybkejtXVV2vywkVZHa1S
	ypHSJJDDtNoRzZOfyAOWkpN2l6zPCwCuCzkpMajC/qi2prG23bO4xGdP7MFp6HYeHqxsEQ7YF0u
	n0Pm6bWSZmtOU+GaGLlX6TCLd7NrTqWHbymJMOBlYGw00ZWT6ggiRRz6NygjJUYTQ5vKhpSKnfN
	40Tcpyeu0lnJToxiEJaLJ3Lyd8TWa0eSHicY1mHfUCJDc6ER5dq+oI+rc6QI2I9DNKPPwdL+iB9
	cLARmIDNqyoKmTRZlHu8cD54UgUk8PHW6fOueWmIFsmsj9mQnVmYOAe0gNqlNLSLhOKVF+biNFU
	4TovuHHnaZ47KRJzvKeRmEvtJuqlIQ1YFZjk9jqgjtT5RUmvp5EX9oCOud+xj+DRuPpDR/VpLsc
	IU5NRdH9UQ5apYtxE+EwUN+UPi9JckMXEM0jOh+D01qDpcKC1Fh2Hh0=
X-Received: by 2002:a05:620a:2988:b0:93e:c12c:f11f with SMTP id af79cd13be357-949bab3a1edmr2796314185a.75.1795556287741;
        Tue, 24 Nov 2026 13:38:07 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-949bb4481c2sm1133265885a.43.2026.11.24.13.38.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 13:38:07 -0800 (PST)
Message-ID: <5282c61813191d778e724ea27e0b81c554ccc945.camel@ndufresne.ca>
Subject: Re: [PATCH v2 14/17] media: rockchip: rga: move video device to the
 master
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
Date: Tue, 24 Nov 2026 16:38:06 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-14-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-14-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20261124_133809_265541_0142F75F 
X-CRM114-Status: GOOD (  28.04  )
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
Content-Type: multipart/mixed; boundary="===============0467050535619969376=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============0467050535619969376==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-0uIQZovRXgZxDGcSLoFT"

--=-0uIQZovRXgZxDGcSLoFT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Move the video device allocation and registration to the master
> component bind function in preparation for binding multiple cores
> to the master. Moving it to the master bind function allows to
> only register the v4l2 device when all cores have been successfully
> bound to the master device. This also causes the video device to be
> bound against the master platform device instead of a specific core.
>=20
> As v4l2_device_register sets the drvdata (if it hasn't been set) to it's
> v4l2_device struct pointer, v4l2_device_unregister also zeroes it if the
> drvdata matches this pointer. This creates a problem, as the driver
> allocates it's main rockchip_rga struct during probe and sets it as it's
> drvdata. As the v4l2_device struct is the first element of the
> rockchip_rga struct, it has the same pointer than the rockchip_rga
> struct. Therefore v4l2_device_unregister incorrectly assumes that it has
> set the drvdata and clears it. This causes problems, as unbinding a
> core will unbind the master component, but not remove it. Therefore when
> adding the core again, the master component will be bound again and
> tries to access an NULL pointer.
>=20
> As the rga core binding expects the rockchip_rga struct to be fully
> initialized, bind the cores as the last step of the rga master bind.
> This also avoids a potential isr to hit just between the core bind and
> the actual initialization of the m2m device.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
>=20
> ---
> v2
> - unbind components in the error handling of rga bind
>   (https://sashiko.dev/#/patchset/20260606-spu-rga3multicore-v1-0-3ec2b15=
675f7%40pengutronix.de?part=3D11)
> - Bind cores at the end, as they expect a fully initialized rga struct
>   (https://sashiko.dev/#/patchset/20260606-spu-rga3multicore-v1-0-3ec2b15=
675f7%40pengutronix.de?part=3D11)
> - Fix v4l2_device_unregister clearing the drvdata set on probe
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 109 ++++++++++++++++--------=
------
>  1 file changed, 58 insertions(+), 51 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index fa34b93b1b7a5..39fcb5623095b 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -746,39 +746,15 @@ static int rga_core_bind(struct device *dev, struct=
 device *master, void *data)
>  {
>  =09struct rockchip_rga *rga =3D data;
>  =09struct rga_core *core =3D dev_get_drvdata(dev);
> -=09struct video_device *vfd;
>  =09int ret =3D 0;
> =20
>  =09core->rga =3D rga;
> =20
>  =09rga->cores[0] =3D core;
> =20
> -=09ret =3D v4l2_device_register(dev, &rga->v4l2_dev);
> -=09if (ret)
> -=09=09return ret;
> -=09vfd =3D video_device_alloc();
> -=09if (!vfd) {
> -=09=09v4l2_err(&rga->v4l2_dev, "Failed to allocate video device\n");
> -=09=09ret =3D -ENOMEM;
> -=09=09goto unreg_v4l2_dev;
> -=09}
> -=09*vfd =3D rga_videodev;
> -=09vfd->lock =3D &rga->mutex;
> -=09vfd->v4l2_dev =3D &rga->v4l2_dev;
> -
> -=09video_set_drvdata(vfd, rga);
> -=09rga->vfd =3D vfd;
> -
> -=09rga->m2m_dev =3D v4l2_m2m_init(&rga_m2m_ops);
> -=09if (IS_ERR(rga->m2m_dev)) {
> -=09=09v4l2_err(&rga->v4l2_dev, "Failed to init mem2mem device\n");
> -=09=09ret =3D PTR_ERR(rga->m2m_dev);
> -=09=09goto rel_vdev;
> -=09}
> -
>  =09ret =3D pm_runtime_resume_and_get(core->dev);
>  =09if (ret < 0)
> -=09=09goto rel_m2m;
> +=09=09return ret;
> =20
>  =09rga->version =3D rga->hw->get_version(core);
> =20
> @@ -787,38 +763,13 @@ static int rga_core_bind(struct device *dev, struct=
 device *master, void *data)
> =20
>  =09pm_runtime_put(core->dev);
> =20
> -=09ret =3D video_register_device(vfd, VFL_TYPE_VIDEO, -1);
> -=09if (ret) {
> -=09=09v4l2_err(&rga->v4l2_dev, "Failed to register video device\n");
> -=09=09goto rel_m2m;
> -=09}
> -
> -=09v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
> -=09=09  vfd->name, video_device_node_name(vfd));
> -
>  =09return 0;
> -
> -rel_m2m:
> -=09v4l2_m2m_release(rga->m2m_dev);
> -rel_vdev:
> -=09video_device_release(vfd);
> -unreg_v4l2_dev:
> -=09v4l2_device_unregister(&rga->v4l2_dev);
> -
> -=09return ret;
>  }
> =20
>  static void rga_core_unbind(struct device *dev, struct device *master,
>  =09=09=09    void *data)
>  {
>  =09struct rga_core *core =3D dev_get_drvdata(dev);
> -=09struct rockchip_rga *rga =3D core->rga;
> -
> -=09v4l2_info(&rga->v4l2_dev, "Removing\n");
> -
> -=09v4l2_m2m_release(rga->m2m_dev);
> -=09video_unregister_device(rga->vfd);
> -=09v4l2_device_unregister(&rga->v4l2_dev);
> =20
>  =09core->rga =3D NULL;
>  }
> @@ -944,20 +895,76 @@ static struct platform_driver rga_core_pdrv =3D {
>  static int rga_bind(struct device *dev)
>  {
>  =09struct rockchip_rga *rga =3D dev_get_drvdata(dev);
> +=09struct video_device *vfd;
>  =09int ret;
> =20
> +=09ret =3D v4l2_device_register(dev, &rga->v4l2_dev);
> +=09if (ret)
> +=09=09return ret;
> +=09vfd =3D video_device_alloc();
> +=09if (!vfd) {
> +=09=09v4l2_err(&rga->v4l2_dev, "Failed to allocate video device\n");
> +=09=09ret =3D -ENOMEM;
> +=09=09goto unreg_v4l2_dev;
> +=09}
> +=09*vfd =3D rga_videodev;
> +=09vfd->lock =3D &rga->mutex;
> +=09vfd->v4l2_dev =3D &rga->v4l2_dev;
> +
> +=09video_set_drvdata(vfd, rga);
> +=09rga->vfd =3D vfd;
> +
> +=09rga->m2m_dev =3D v4l2_m2m_init(&rga_m2m_ops);
> +=09if (IS_ERR(rga->m2m_dev)) {
> +=09=09v4l2_err(&rga->v4l2_dev, "Failed to init mem2mem device\n");
> +=09=09ret =3D PTR_ERR(rga->m2m_dev);
> +=09=09goto rel_vdev;
> +=09}
> +
> +=09ret =3D video_register_device(vfd, VFL_TYPE_VIDEO, -1);

Shouldn't this be kept last like it was before?

> +=09if (ret) {
> +=09=09v4l2_err(&rga->v4l2_dev, "Failed to register video device\n");
> +=09=09goto rel_m2m;
> +=09}
> +
>  =09ret =3D component_bind_all(dev, rga);
>  =09if (ret) {
>  =09=09dev_err(dev, "component bind failed\n");
> -=09=09return ret;
> +=09=09goto rel_m2m;
>  =09}
> =20
> +=09v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
> +=09=09  vfd->name, video_device_node_name(vfd));
> +
>  =09return 0;
> +
> +rel_m2m:
> +=09v4l2_m2m_release(rga->m2m_dev);
> +rel_vdev:
> +=09video_device_release(vfd);
> +unreg_v4l2_dev:
> +=09v4l2_device_unregister(&rga->v4l2_dev);
> +=09dev_set_drvdata(dev, rga);
> +=09return ret;
>  }
> =20
>  static void rga_unbind(struct device *dev)
>  {
> +=09struct rockchip_rga *rga =3D dev_get_drvdata(dev);
> +
> +=09v4l2_info(&rga->v4l2_dev, "Removing\n");
> +
>  =09component_unbind_all(dev, NULL);
> +
> +=09v4l2_m2m_release(rga->m2m_dev);
> +=09video_unregister_device(rga->vfd);
> +=09v4l2_device_unregister(&rga->v4l2_dev);
> +=09/*
> +=09 * As &rga->v4l2_dev =3D=3D rga, v4l2_device_unregister (incorrectly)
> +=09 * clears the drvdata. Therefore just set it again
> +=09 * (ensuring it's correct regardless of the struct member position)
> +=09 */
> +=09dev_set_drvdata(dev, rga);
>  }
> =20
>  struct component_master_ops rga_master_ops =3D {

--=-0uIQZovRXgZxDGcSLoFT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawYDvgAKCRDZQZRRKWBy
9GqGAP4q+QYBtXorY2V20/Fjjuwd/k9H1RlDAJC1g2YbcNegfwD+N43LeKqeaQ/8
2zEP9Za6fbSKXjaFDf0/ir5zRkms4gs=
=wsLc
-----END PGP SIGNATURE-----

--=-0uIQZovRXgZxDGcSLoFT--


--===============0467050535619969376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0467050535619969376==--

