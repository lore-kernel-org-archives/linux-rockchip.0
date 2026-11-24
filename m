Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71886606A33D
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 20:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IwXnhtcQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=HkLqXH/e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UW68CjbQw2GnqOb61FpcYMn/LQG+Fchr4wGnAPfowNE=; b=IwXnhtcQp7+Q7yHHfBpYXfjv5c
	7wxdapwKb5tUrnYBRtfl+G0hDEyEaHbtgqXy4iBt1Jdru0DZZQ9oxKZx3agVZfLec9zFtsNw5vBp/
	pCkam5ccwILxtlanewwn3kmtgo/H0+TkWlRDjZPhnyBUoFcMOVUgsDF1mMAo7IdgQrivjb/OJPwif
	a+5vBU4otvZh01XIpkJZx5nCoFrMuDzHz2rlKrSw/hve8TuViq/6LccyPxbOE9eE2/Sfjw1UgqmW0
	MD/y+V26OROEAGEcQ8RJ2jXG51OGuzHMFjS639fNWG0DP6Oi8TpF2zu+vi/4FAu3sf7viaAEucmwO
	AvSRcjeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxXk-00000007nRJ-24k6;
	Tue, 24 Nov 2026 20:55:12 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxXg-00000007nQG-3iX1
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 20:55:10 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-94959217274so530587185a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 12:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795553707; x=1796158507; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=OT57QIIbgw1mNoCmc4Nd4ViyD4coW8RXoU/BWL17AVc=;
        b=HkLqXH/ehrCHR9Atl6qVMsxHso148+POAwCjzQV+K2ADCbD9qHcS0K0wUMXHnXqs37
         6slsHekOixQi0p0vaqUdxhKq/UYuTXpLGaeSdUGbxXrdkUSOf3gNQHWHM6tyr2LwnguI
         Go1sVPl0OvsmDaMLM34NooXE1sFNShjmAXcfmyhzsaw+0ziCsDtTUQMRanDbw2am4Nby
         L7TGXmEw/VCEPeQ3940b2rBvMfy/vtabGEUYhnQGkqWeum+5pf6Ci3soARN1yo0Re0EH
         1G1eSqZ+hpyEHWiyQUEvBLId/69D4LfvXlHP34roiYzvRcPnYNWqQiTIyAMGf9Jqr6Tx
         nyRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795553707; x=1796158507;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OT57QIIbgw1mNoCmc4Nd4ViyD4coW8RXoU/BWL17AVc=;
        b=wNSBBz9WrcmhIhApWOtTJohb4giaDL9T4swqoPuMtzmuyQOHuoaWAB3vjcFNrOzuGc
         h1ontg/5K4HrX7LLh47RZJ62ALPhE6wzlIKihtF9yD7DnO3Wu9PTJoQPF3+qYRkkKPRD
         jtN6sHY/bEpjomUOAQ0EntLdHKFh0BmUmaX1nMlnDPE8yZhcIefDXg5gewl3tCvoOgfE
         aAr6nU6eemPSleipeMKxP4nmlpFTIAupSH+mYHWeAvmFKK3YQVz4EGJ4LLAds0s2Yr1N
         T3y0reDKQl8mfMyEqMvNpe3HExNjX70TO6sxsn4stTdXhn6QKDviJ1MlB3qn4HU3Cu/V
         8+QQ==
X-Forwarded-Encrypted: i=1; AL+hErF7RpGWNEnKwXNpswLiWb1++P7myFGDbdAwaBB9N6lgUUeKKHpAzENka4gyXjlb2kBLWYsQeGMTpu7GLUtbYA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+6Olv06Y3+8m7AvvcjXb4RB0CHL+12Xx30GaRmJLnARkqTkmL+
	4GN7cxTV6MgEmJ7z+E2Fa5D0j3HZVBSvk6+Bp7t3OP0Fic75OyGAcG//3aJrYTdZk3o=
X-Gm-Gg: AZFdTZfEXV1uL0uXZeJ/jit/2p9eEP8Sb7rlj8VCGZiibrd0hO3kGVaY05yHRor4b40
	ln+AvY589JLAOlBZBD7BBUS39awm6ZkmbNUuHVzKBKMbWSluJw/e63ajXHJAM2c6x+eTnWezxfo
	uDOd3Bae41bU5wZR54Xnl33gn4g3X4+zuq242GtGZEux1OVZyFvUN/Cdz6qdAtuWjXv5dlg43nt
	okOgZbXHBATn/Cn02daCO+o5EEjTUCy2dawQwbwKy/QBUMSr/XnjANcC4AtM1wIDdmZbYjvOkoR
	QPLfgJdjJU0c7W7MwaE1fho3HncqADa01vW/MfKwKTpF7cOw5mfcVM8lGHmMkzgKAz8LIfbVBtE
	CvTfJwDMWT6/H9Zg/yQRp/0uLNCRfvI6NE+PR7SToxyifdVBJgYhwpL3lmAv6+CbxazkmTXNQQM
	GGtDzPcQ6xKQEgpA9hvFAizGskEtBVX/m7liX3ERIvetD1taVgjQoZrrq8uMSaJaKEBsIO/QJTz
	mrkhSipvhNCkZxn85apPrBjHYASljhhYl+sxSYiwfvh6YmCAR0zwKjmY6xas6xb7zL9w4cHBrEA
	5Wm3f4/vY7sPmn8NBLqER3DXSNkSW+EWWU9Mm8OwxNWICAYyQe6Z9ks=
X-Received: by 2002:a05:620a:6f02:b0:93b:bc51:b40 with SMTP id af79cd13be357-949ba84ac50mr2649854985a.2.1795553707568;
        Tue, 24 Nov 2026 12:55:07 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-949bb40ea12sm1141447585a.35.2026.11.24.12.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:55:06 -0800 (PST)
Message-ID: <82a6933335048ca8f9969481cde8340dac19ccb1.camel@ndufresne.ca>
Subject: Re: [PATCH v2 06/17] media: v4l2-mem2mem: drop curr_ctx member from
 v4l2_m2m_dev struct
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
Date: Tue, 24 Nov 2026 15:55:05 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-6-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-6-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20261124_125508_959935_C8305E88 
X-CRM114-Status: GOOD (  26.28  )
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
Content-Type: multipart/mixed; boundary="===============3487805354888311437=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============3487805354888311437==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-qDFQbRP8sfMUezyW9fo/"

--=-qDFQbRP8sfMUezyW9fo/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Drop the curr_ctx member from the v4l2_m2m_dev struct in preparation of
> adding support for running multiple jobs in parallel.
>=20
> The curr_ctx member of a v4l2_m2m_dev was used to track the
> currently running context. But the currently running context will always
> be at the top of the job_queue. As the TRANS_RUNNING flag can be used to
> check if the queue head is already running, the curr_ctx member can be
> completely dropped.
>=20
> By eliminating the struct member the code is mostly agnostic whenever
> only one job is running at a time or multiple run at the same time. The
> main exception is the v4l2_m2m_get_curr_priv function, which is by it's
> design incompatible with running multiple jobs in parallel.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
>=20
> ---
> v2:
> - split curr_ctx removal into a separate commit
> - add WARN_ON to _v4l2_m2m_job_finish to prevent mismatching context to
>   device (and an unused m2m_dev argument)
> - rewrite v4l2_m2m_get_curr_priv to get private data inside the spinlock
>   (https://sashiko.dev/#/patchset/20260606-spu-rga3multicore-v1-0-3ec2b15=
675f7%40pengutronix.de?part=3D5)
> ---
>  drivers/media/v4l2-core/v4l2-mem2mem.c | 61 ++++++++++++++++++----------=
------
>  1 file changed, 33 insertions(+), 28 deletions(-)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-=
core/v4l2-mem2mem.c
> index a65cbb124cfe0..60cca94195166 100644
> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> @@ -84,7 +84,6 @@ static const char * const m2m_entity_name[] =3D {
>   *=09=09=09v4l2_m2m_unregister_media_controller().
>   * @intf_devnode:=09&struct media_intf devnode pointer with the interfac=
e
>   *=09=09=09with controls the M2M device.
> - * @curr_ctx:=09=09currently running instance
>   * @job_queue:=09=09instances queued to run
>   * @job_spinlock:=09protects job_queue
>   * @job_work:=09=09worker to run queued jobs.
> @@ -93,7 +92,6 @@ static const char * const m2m_entity_name[] =3D {
>   * @kref:=09=09device reference count
>   */
>  struct v4l2_m2m_dev {
> -=09struct v4l2_m2m_ctx=09*curr_ctx;
>  #ifdef CONFIG_MEDIA_CONTROLLER
>  =09struct media_entity=09*source;
>  =09struct media_pad=09source_pad;
> @@ -232,8 +230,14 @@ void *v4l2_m2m_get_curr_priv(struct v4l2_m2m_dev *m2=
m_dev)
>  =09void *ret =3D NULL;
> =20
>  =09spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> -=09if (m2m_dev->curr_ctx)
> -=09=09ret =3D m2m_dev->curr_ctx->priv;
> +=09if (!list_empty(&m2m_dev->job_queue)) {
> +=09=09struct v4l2_m2m_ctx *first_ctx =3D
> +=09=09=09list_first_entry(&m2m_dev->job_queue,
> +=09=09=09=09=09 struct v4l2_m2m_ctx, queue);
> +
> +=09=09if (first_ctx->job_flags & TRANS_RUNNING)
> +=09=09=09ret =3D first_ctx->priv;
> +=09}
>  =09spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> =20
>  =09return ret;
> @@ -252,14 +256,9 @@ EXPORT_SYMBOL(v4l2_m2m_get_curr_priv);
>  static void v4l2_m2m_try_run(struct v4l2_m2m_dev *m2m_dev)
>  {
>  =09unsigned long flags;
> +=09struct v4l2_m2m_ctx *chosen_ctx;
> =20
>  =09spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> -=09if (NULL !=3D m2m_dev->curr_ctx) {
> -=09=09spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> -=09=09dprintk("Another instance is running, won't run now\n");
> -=09=09return;
> -=09}
> -
>  =09if (list_empty(&m2m_dev->job_queue)) {
>  =09=09spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
>  =09=09dprintk("No job pending\n");
> @@ -272,13 +271,18 @@ static void v4l2_m2m_try_run(struct v4l2_m2m_dev *m=
2m_dev)
>  =09=09return;
>  =09}
> =20
> -=09m2m_dev->curr_ctx =3D list_first_entry(&m2m_dev->job_queue,
> -=09=09=09=09   struct v4l2_m2m_ctx, queue);
> -=09m2m_dev->curr_ctx->job_flags |=3D TRANS_RUNNING;
> +=09chosen_ctx =3D list_first_entry(&m2m_dev->job_queue, struct v4l2_m2m_=
ctx, queue);
> +=09if (chosen_ctx->job_flags & TRANS_RUNNING) {
> +=09=09spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +=09=09dprintk("Another instance is running, won't run now\n");
> +=09=09return;
> +=09}
> +
> +=09chosen_ctx->job_flags |=3D TRANS_RUNNING;
>  =09spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> =20
> -=09dprintk("Running job on m2m_ctx: %p\n", m2m_dev->curr_ctx);
> -=09m2m_dev->m2m_ops->device_run(m2m_dev->curr_ctx->priv);
> +=09dprintk("Running job on m2m_ctx: %p\n", chosen_ctx);
> +=09m2m_dev->m2m_ops->device_run(chosen_ctx->priv);
>  }
> =20
>  /*
> @@ -469,15 +473,16 @@ static void v4l2_m2m_schedule_next_job(struct v4l2_=
m2m_dev *m2m_dev,
>  static bool _v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
>  =09=09=09=09 struct v4l2_m2m_ctx *m2m_ctx)
>  {
> -=09if (!m2m_dev->curr_ctx || m2m_dev->curr_ctx !=3D m2m_ctx) {
> +=09if (!m2m_ctx || !(m2m_ctx->job_flags & TRANS_RUNNING)) {
>  =09=09dprintk("Called by an instance not currently running\n");
>  =09=09return false;
>  =09}
> =20
> -=09list_del(&m2m_dev->curr_ctx->queue);
> -=09m2m_dev->curr_ctx->job_flags &=3D ~(TRANS_QUEUED | TRANS_RUNNING);
> -=09wake_up(&m2m_dev->curr_ctx->finished);
> -=09m2m_dev->curr_ctx =3D NULL;
> +=09WARN_ON(m2m_dev !=3D m2m_ctx->m2m_dev);
> +
> +=09list_del(&m2m_ctx->queue);
> +=09m2m_ctx->job_flags &=3D ~(TRANS_QUEUED | TRANS_RUNNING);
> +=09wake_up(&m2m_ctx->finished);
>  =09return true;
>  }
> =20
> @@ -548,12 +553,15 @@ void v4l2_m2m_suspend(struct v4l2_m2m_dev *m2m_dev)
> =20
>  =09spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
>  =09m2m_dev->job_queue_flags |=3D QUEUE_PAUSED;
> -=09curr_ctx =3D m2m_dev->curr_ctx;
> +=09if (list_empty(&m2m_dev->job_queue)) {
> +=09=09spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +=09=09return;
> +=09}
> +
> +=09curr_ctx =3D list_first_entry(&m2m_dev->job_queue, struct v4l2_m2m_ct=
x, queue);
>  =09spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> =20
> -=09if (curr_ctx)
> -=09=09wait_event(curr_ctx->finished,
> -=09=09=09   !(curr_ctx->job_flags & TRANS_RUNNING));
> +=09wait_event(curr_ctx->finished, !(curr_ctx->job_flags & TRANS_RUNNING)=
);
>  }
>  EXPORT_SYMBOL(v4l2_m2m_suspend);
> =20
> @@ -896,10 +904,8 @@ int v4l2_m2m_streamoff(struct file *file, struct v4l=
2_m2m_ctx *m2m_ctx,
>  =09q_ctx->num_rdy =3D 0;
>  =09spin_unlock_irqrestore(&q_ctx->rdy_spinlock, flags);
> =20
> -=09if (m2m_dev->curr_ctx =3D=3D m2m_ctx) {
> -=09=09m2m_dev->curr_ctx =3D NULL;
> +=09if (m2m_ctx->job_flags & TRANS_RUNNING)
>  =09=09wake_up(&m2m_ctx->finished);

Sashiko report that wake_up() is unreachable, that job_flags have been clea=
r
previously.

If that is correct, its not a big issue:

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> -=09}
>  =09spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags_job);
> =20
>  =09return 0;
> @@ -1194,7 +1200,6 @@ struct v4l2_m2m_dev *v4l2_m2m_init(const struct v4l=
2_m2m_ops *m2m_ops)
>  =09if (!m2m_dev)
>  =09=09return ERR_PTR(-ENOMEM);
> =20
> -=09m2m_dev->curr_ctx =3D NULL;
>  =09m2m_dev->m2m_ops =3D m2m_ops;
>  =09INIT_LIST_HEAD(&m2m_dev->job_queue);
>  =09spin_lock_init(&m2m_dev->job_spinlock);

--=-qDFQbRP8sfMUezyW9fo/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawX5qQAKCRDZQZRRKWBy
9AHWAQCmqcFAQMkugv7AJiaX/VEcrfFOq0yeQoHoehSg1I0udQEAkDiuFPHBWI6B
ZlpYRZjVAmYDkdC/FdAGAE99MAig2ww=
=f+mj
-----END PGP SIGNATURE-----

--=-qDFQbRP8sfMUezyW9fo/--


--===============3487805354888311437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3487805354888311437==--

