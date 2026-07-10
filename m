Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C9ABC44501
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 21:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j1Q9OCgGNUZscMCscLFjrbnOup4i4eY1OAd/mqL7X8o=; b=LkJ3HVvhntYYEcwsCmCksNxvGT
	azFZ6OMyNxPS8wDaHpCARTf7q5Jfqdwai0qpPTAVRSnAlxPZeY/RTdTMUuZzdKySP2/GasRHywNJ2
	+vpNPk/UHtxySwDEVurZZ/p2jLK9ZRN1HQh2JLcPbufpCPMVq6EmMQd21e+KRmqItfFC0v56U4KxQ
	bz6R4l8e+OTNJ9JcdQFVIY0ySyP7sPOAvRenGaB5FdKxhU61AAZqdqUKPw8noneWNa3VvteoD/mPJ
	ugvt/6/+79cjDuZiB35xFE0Dw6yF+hmDrz+QcJhD+4IU0wG5EhNzLFGjNo97Z2p9xe0hXm4dMH4oh
	ittXunog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIc8-00000005n69-2Eac;
	Fri, 10 Jul 2026 21:18:28 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIc4-00000005n58-2r1z
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 21:18:26 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-92e5c9211d2so104931885a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 14:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1783718303; x=1784323103; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WsiwI578hidtfXo3Jj5CK8o7cgRkY/PSnZLtr9p7LeU=;
        b=RpNH6SXd5awlW3kM/Nj2cStQUvL+JztXFjNfPBhVBZAN9+3+bGrN9HIUw1XJi1dw0v
         OePRlr+aYi9QWpw2aHlDbM3rvX9FU2UFcxxiLpi8DzselHhts/3HBpUPwVAbrpgekFe5
         T9RPTtR1UMcuTBvOtLPU3lkg4kN+AKam/54FSjk9hkUGA1BPVAZcEKxSewq26qcBwfe9
         Da7LiMWOErwtlLNx/UQowkhRgrkr80ST6JmkrgphQDL6qD5AoV47cqH6Xae+yx1G6DNI
         aJFHH94XNiJJfH1fWNSC/P0OI27NAo4d024zz6nYKNpULlzCrotHlJeRE8YnM7aByw8p
         zHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783718303; x=1784323103;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WsiwI578hidtfXo3Jj5CK8o7cgRkY/PSnZLtr9p7LeU=;
        b=Y/Va6D5S1kkbN5qhtFihJ0agSEQ60HXZGwMZtc+wntn5Q+++T9EgXd1Z5lfGuyGFIx
         6wKKesXt2cSlDJxz+wXSzp7feMGW0WnUBF4jDffcj20oDRHylDexWsCqFyYZ5pJigaz8
         R6lLsv0AZ4PAmUnbMy+YfKtxNnA7HHx7niyZjf4nlDhitdmhqi4tuxl/ovDXnWl0f1By
         yxMZ+sHBhMFEkq30erKkINl5o4kV6aAzAHCBAxv2iPiDMML2Vp7M3Rs6M85pMuEf2ikm
         d2xGq3cBESO7d7Fq1ZUUeAnuLtxd/U5RabkvxaHvJM4iisC6vF5ETBuZiNJxqDrV0JoK
         mltw==
X-Forwarded-Encrypted: i=1; AHgh+RpmC5sVlNkPXUElHT+YS6qQL9c1GeceMbLnNssCA8NSKHlBJTf7izoE7LAFtElBx4lxs+TU4+xq1zixlnCOCw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFgeKOvMslTNtu6WzgGGlq0JDXYLBiXaei9XZOk1zNGYqvogxs
	/gUn60PKUVBJCP99PcIokz9OrJzk6zeqfB3pCzGJUaMZlsPEh0jEcNu5LIEzrqnPXw8=
X-Gm-Gg: AfdE7cler7XscXhbvVCqnU/XNVKpeg/DZZPUzDC4BtOQcXLXbrZ3yZrHu2YTcUB0Xqn
	eYPOpDewRfPULBLbGL9m251edtF3TlS00NjhL2p9wotQggtA2VcHjGeRV0AO+bD8P47+gBUO9I2
	tNvSzK5AgWU9J2NopPSny+p1ltdrI8aYmn2tD4ZSIIBozlrusU5knq73LSFwYnnm/16ssocOaXv
	gTU0KrpaxcyvAFeCmAK3Mr8tqouzNKtiORwUoG5ml+VmLIE1S0PzSOPLIbJkvNoHAZQFQr92UPG
	82lBZwWCHVK3GvmQy7q6wzJF094xpvN8CLIq9xyWzDvXBhatqyyq5UFw6IItoWgSuOJ70Dyla6H
	eSnPlkSVVHqibSt5GWgqQH4imz76oQQTbdmr2tEn7R03rxzvUkDlUW/PTzlrwChYa8C2IPJF6zz
	Z7byBeABF+vfXRdjuPfQ==
X-Received: by 2002:a05:620a:284c:b0:92e:7f13:1489 with SMTP id af79cd13be357-92ef2b4b8c4mr103370485a.10.1783718303296;
        Fri, 10 Jul 2026 14:18:23 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b::c41? ([2606:6d00:15:e06b::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-92ee5b4b38dsm307659485a.10.2026.07.10.14.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 14:18:22 -0700 (PDT)
Message-ID: <aae16dbfb26c8ee7e54247ca4d123b15748d623f.camel@ndufresne.ca>
Subject: Re: [PATCH 05/17] media: v4l2-mem2mem: support running multiple
 jobs in parallel
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
Date: Fri, 10 Jul 2026 17:18:20 -0400
In-Reply-To: <20260606-spu-rga3multicore-v1-5-3ec2b15675f7@pengutronix.de>
References: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
	 <20260606-spu-rga3multicore-v1-5-3ec2b15675f7@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260710_141824_751121_F63C57B4 
X-CRM114-Status: GOOD (  35.17  )
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
Content-Type: multipart/mixed; boundary="===============9013307995523026993=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9013307995523026993==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-QDW0FalwTgRr/hRObvGf"


--=-QDW0FalwTgRr/hRObvGf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le samedi 06 juin 2026 =C3=A0 00:06 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Add support for running multiple jobs in parallel for SoCs containing
> multiple identical devices. An example is the Rockchip RK3588 SoC,
> which contains two identical RGA3 devices. Therefore it is desirable to
> have the kernel schedule the work across all available devices and only
> expose one video device to the userspace.
>=20
> Previously the curr_ctx member of a v4l2_m2m_dev was used to track the
> currently running context. But the currently running context will always
> be at the top of the job_queue. As the TRANS_RUNNING flag can be used to
> check if the queue head is already running, the curr_ctx member can be
> completely dropped
>=20
> To avoid queueing too many parallel jobs, the
> v4l2_m2m_set_max_parallel_jobs method is added. It allows a driver
> to set the number of parallel jobs and avoids calling device_run when
> the given number of jobs is already running. This is set to 1 by default
> to prevent parallel job runs. Drivers with the need and support for
> scheduling jobs can adjust this value accordingly.
>=20
> Note that this change doesn't allow a context to be used multiple times
> in parallel. So a single stream won't be able to utilize multiple devices
> at once, but N streams can utilize up to N devices. This is caused by the
> fact that a context is not added multiple times to the job_list and also
> holds the job_flags to distinguish if it's currently running.

I do prefer this over Detlev proposal, so let's move toward this. Would be =
it
cleaner though to first remove curr_ctx and then add=20
max_parallel_jobs ?=20

Nicolas=20

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/v4l2-core/v4l2-mem2mem.c | 89 ++++++++++++++++++++++-=
----------
> -
> =C2=A0include/media/v4l2-mem2mem.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 3 ++
> =C2=A02 files changed, 62 insertions(+), 30 deletions(-)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-
> core/v4l2-mem2mem.c
> index a65cbb124cfe0..14ac9c85803d1 100644
> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> @@ -84,16 +84,15 @@ static const char * const m2m_entity_name[] =3D {
> =C2=A0 *			v4l2_m2m_unregister_media_controller().
> =C2=A0 * @intf_devnode:	&struct media_intf devnode pointer with the inter=
face
> =C2=A0 *			with controls the M2M device.
> - * @curr_ctx:		currently running instance
> =C2=A0 * @job_queue:		instances queued to run
> =C2=A0 * @job_spinlock:	protects job_queue
> =C2=A0 * @job_work:		worker to run queued jobs.
> =C2=A0 * @job_queue_flags:	flags of the queue status, %QUEUE_PAUSED.
> + * @max_parallel_jobs:	max job_queue instances number marked as running
> =C2=A0 * @m2m_ops:		driver callbacks
> =C2=A0 * @kref:		device reference count
> =C2=A0 */
> =C2=A0struct v4l2_m2m_dev {
> -	struct v4l2_m2m_ctx	*curr_ctx;
> =C2=A0#ifdef CONFIG_MEDIA_CONTROLLER
> =C2=A0	struct media_entity	*source;
> =C2=A0	struct media_pad	source_pad;
> @@ -108,6 +107,7 @@ struct v4l2_m2m_dev {
> =C2=A0	spinlock_t		job_spinlock;
> =C2=A0	struct work_struct	job_work;
> =C2=A0	unsigned long		job_queue_flags;
> +	u32			max_parallel_jobs;
> =C2=A0
> =C2=A0	const struct v4l2_m2m_ops *m2m_ops;
> =C2=A0
> @@ -123,6 +123,12 @@ static struct v4l2_m2m_queue_ctx *get_queue_ctx(stru=
ct
> v4l2_m2m_ctx *m2m_ctx,
> =C2=A0		return &m2m_ctx->cap_q_ctx;
> =C2=A0}
> =C2=A0
> +void v4l2_m2m_set_max_parallel_jobs(struct v4l2_m2m_dev *m2m_dev,
> +				=C2=A0=C2=A0=C2=A0 u32 max_parallel_jobs)
> +{
> +	m2m_dev->max_parallel_jobs =3D max_parallel_jobs;
> +}
> +
> =C2=A0struct vb2_queue *v4l2_m2m_get_vq(struct v4l2_m2m_ctx *m2m_ctx,
> =C2=A0				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum v4l2_buf_type type)
> =C2=A0{
> @@ -229,14 +235,22 @@ EXPORT_SYMBOL_GPL(v4l2_m2m_buf_remove_by_idx);
> =C2=A0void *v4l2_m2m_get_curr_priv(struct v4l2_m2m_dev *m2m_dev)
> =C2=A0{
> =C2=A0	unsigned long flags;
> -	void *ret =3D NULL;
> +	struct v4l2_m2m_ctx *first_ctx;
> =C2=A0
> =C2=A0	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> -	if (m2m_dev->curr_ctx)
> -		ret =3D m2m_dev->curr_ctx->priv;
> +	if (list_empty(&m2m_dev->job_queue)) {
> +		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +		return NULL;
> +	}
> +
> +	first_ctx =3D list_first_entry(&m2m_dev->job_queue,
> +				=C2=A0=C2=A0=C2=A0=C2=A0 struct v4l2_m2m_ctx, queue);
> =C2=A0	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> =C2=A0
> -	return ret;
> +	if (first_ctx->job_flags & TRANS_RUNNING)
> +		return first_ctx->priv;
> +	else
> +		return NULL;
> =C2=A0}
> =C2=A0EXPORT_SYMBOL(v4l2_m2m_get_curr_priv);
> =C2=A0
> @@ -252,13 +266,11 @@ EXPORT_SYMBOL(v4l2_m2m_get_curr_priv);
> =C2=A0static void v4l2_m2m_try_run(struct v4l2_m2m_dev *m2m_dev)
> =C2=A0{
> =C2=A0	unsigned long flags;
> +	struct v4l2_m2m_ctx *ctx;
> +	struct v4l2_m2m_ctx *chosen_ctx =3D NULL;
> +	u32 running_jobs =3D 0;
> =C2=A0
> =C2=A0	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> -	if (NULL !=3D m2m_dev->curr_ctx) {
> -		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> -		dprintk("Another instance is running, won't run now\n");
> -		return;
> -	}
> =C2=A0
> =C2=A0	if (list_empty(&m2m_dev->job_queue)) {
> =C2=A0		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> @@ -272,13 +284,30 @@ static void v4l2_m2m_try_run(struct v4l2_m2m_dev
> *m2m_dev)
> =C2=A0		return;
> =C2=A0	}
> =C2=A0
> -	m2m_dev->curr_ctx =3D list_first_entry(&m2m_dev->job_queue,
> -				=C2=A0=C2=A0 struct v4l2_m2m_ctx, queue);
> -	m2m_dev->curr_ctx->job_flags |=3D TRANS_RUNNING;
> +	list_for_each_entry(ctx, &m2m_dev->job_queue, queue) {
> +		if (!(ctx->job_flags & TRANS_RUNNING)) {
> +			chosen_ctx =3D ctx;
> +			break;
> +		}
> +
> +		running_jobs++;
> +	}
> +	if (running_jobs >=3D m2m_dev->max_parallel_jobs) {
> +		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +		dprintk("Maximum number of parallel jobs reached\n");
> +		return;
> +	}
> +	if (!chosen_ctx) {
> +		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +		dprintk("All jobs already running\n");
> +		return;
> +	}
> +
> +	chosen_ctx->job_flags |=3D TRANS_RUNNING;
> =C2=A0	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> =C2=A0
> -	dprintk("Running job on m2m_ctx: %p\n", m2m_dev->curr_ctx);
> -	m2m_dev->m2m_ops->device_run(m2m_dev->curr_ctx->priv);
> +	dprintk("Running job on m2m_ctx: %p\n", chosen_ctx);
> +	m2m_dev->m2m_ops->device_run(chosen_ctx->priv);
> =C2=A0}
> =C2=A0
> =C2=A0/*
> @@ -469,15 +498,14 @@ static void v4l2_m2m_schedule_next_job(struct
> v4l2_m2m_dev *m2m_dev,
> =C2=A0static bool _v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
> =C2=A0				 struct v4l2_m2m_ctx *m2m_ctx)
> =C2=A0{
> -	if (!m2m_dev->curr_ctx || m2m_dev->curr_ctx !=3D m2m_ctx) {
> +	if (!m2m_ctx || !(m2m_ctx->job_flags & TRANS_RUNNING)) {
> =C2=A0		dprintk("Called by an instance not currently running\n");
> =C2=A0		return false;
> =C2=A0	}
> =C2=A0
> -	list_del(&m2m_dev->curr_ctx->queue);
> -	m2m_dev->curr_ctx->job_flags &=3D ~(TRANS_QUEUED | TRANS_RUNNING);
> -	wake_up(&m2m_dev->curr_ctx->finished);
> -	m2m_dev->curr_ctx =3D NULL;
> +	list_del(&m2m_ctx->queue);
> +	m2m_ctx->job_flags &=3D ~(TRANS_QUEUED | TRANS_RUNNING);
> +	wake_up(&m2m_ctx->finished);
> =C2=A0	return true;
> =C2=A0}
> =C2=A0
> @@ -544,16 +572,19 @@ EXPORT_SYMBOL(v4l2_m2m_buf_done_and_job_finish);
> =C2=A0void v4l2_m2m_suspend(struct v4l2_m2m_dev *m2m_dev)
> =C2=A0{
> =C2=A0	unsigned long flags;
> -	struct v4l2_m2m_ctx *curr_ctx;
> +	struct v4l2_m2m_ctx *ctx;
> +	struct v4l2_m2m_ctx *ctx_safe;
> =C2=A0
> =C2=A0	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> =C2=A0	m2m_dev->job_queue_flags |=3D QUEUE_PAUSED;
> -	curr_ctx =3D m2m_dev->curr_ctx;
> =C2=A0	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> =C2=A0
> -	if (curr_ctx)
> -		wait_event(curr_ctx->finished,
> -			=C2=A0=C2=A0 !(curr_ctx->job_flags & TRANS_RUNNING));
> +	list_for_each_entry_safe(ctx, ctx_safe, &m2m_dev->job_queue, queue) {
> +		if (!(ctx->job_flags & TRANS_RUNNING))
> +			break;
> +
> +		wait_event(ctx->finished, !(ctx->job_flags & TRANS_RUNNING));
> +	}
> =C2=A0}
> =C2=A0EXPORT_SYMBOL(v4l2_m2m_suspend);
> =C2=A0
> @@ -896,10 +927,8 @@ int v4l2_m2m_streamoff(struct file *file, struct
> v4l2_m2m_ctx *m2m_ctx,
> =C2=A0	q_ctx->num_rdy =3D 0;
> =C2=A0	spin_unlock_irqrestore(&q_ctx->rdy_spinlock, flags);
> =C2=A0
> -	if (m2m_dev->curr_ctx =3D=3D m2m_ctx) {
> -		m2m_dev->curr_ctx =3D NULL;
> +	if (m2m_ctx->job_flags & TRANS_RUNNING)
> =C2=A0		wake_up(&m2m_ctx->finished);
> -	}
> =C2=A0	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags_job);
> =C2=A0
> =C2=A0	return 0;
> @@ -1194,12 +1223,12 @@ struct v4l2_m2m_dev *v4l2_m2m_init(const struct
> v4l2_m2m_ops *m2m_ops)
> =C2=A0	if (!m2m_dev)
> =C2=A0		return ERR_PTR(-ENOMEM);
> =C2=A0
> -	m2m_dev->curr_ctx =3D NULL;
> =C2=A0	m2m_dev->m2m_ops =3D m2m_ops;
> =C2=A0	INIT_LIST_HEAD(&m2m_dev->job_queue);
> =C2=A0	spin_lock_init(&m2m_dev->job_spinlock);
> =C2=A0	INIT_WORK(&m2m_dev->job_work, v4l2_m2m_device_run_work);
> =C2=A0	kref_init(&m2m_dev->kref);
> +	m2m_dev->max_parallel_jobs =3D 1;
> =C2=A0
> =C2=A0	return m2m_dev;
> =C2=A0}
> diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> index 31de25d792b98..e6177d0eaf637 100644
> --- a/include/media/v4l2-mem2mem.h
> +++ b/include/media/v4l2-mem2mem.h
> @@ -594,6 +594,9 @@ static inline void v4l2_m2m_set_dst_buffered(struct
> v4l2_m2m_ctx *m2m_ctx,
> =C2=A0	m2m_ctx->cap_q_ctx.buffered =3D buffered;
> =C2=A0}
> =C2=A0
> +void v4l2_m2m_set_max_parallel_jobs(struct v4l2_m2m_dev *m2m_dev,
> +				=C2=A0=C2=A0=C2=A0 u32 max_parallel_jobs);
> +
> =C2=A0/**
> =C2=A0 * v4l2_m2m_ctx_release() - release m2m context
> =C2=A0 *

--=-QDW0FalwTgRr/hRObvGf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCalFhnAAKCRDZQZRRKWBy
9PrwAQDNSzCL5oAGQfVmC3OhUffae971mvKMYg7A8/oRYIIxKgD/cgSHWJHtif2N
4LPSEtHdmWGJ5UHRpA48+LdsQPOBYgU=
=lbZn
-----END PGP SIGNATURE-----

--=-QDW0FalwTgRr/hRObvGf--


--===============9013307995523026993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9013307995523026993==--

