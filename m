Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED4A3C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 15:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NhI8hXRhXWPKvq0clpdudfyWEQ+NMozx+t87cpKuPc0=; b=x7WCnxGqhtsU2sqmDbL7RCKALx
	vCdvFH6sA2P6KimZL5bepZebB62aNO1cWcrGtxybrebqguaaDC1KBkofW0Q/unDmIYU9bguy0p2KK
	i8uFyJJKBxdMlwWOdSLMvHqDAJOmKWDAh8MvLaGaGvN0YNscUAVUW2c00oBPiN6PZ3FeNpPNglghh
	dGqJNBdj4Gwi28oG/P8gAjlQ/SCLRxhFfML3CP62/eOcIcjPjYhXsc27HIZwTuB6FZdJaVuS529YD
	mnupKSVUB2oZJcdmXZAg7+YXD6tbfgEJmngkKu4NWizmeuBzfg4a9FRQAHFqrsdOMLZsBcFt7JrHg
	8j1KfFTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wglhn-0000000CyB2-3AFg;
	Mon, 06 Jul 2026 15:58:00 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wglhj-0000000CyAE-2jaD
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 15:57:58 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-92e5c9211d2so255821885a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 08:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1783353474; x=1783958274; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ccOyiC2jznVKxZDvjoV8BnZRBXz549AenKEwOQZucvI=;
        b=WuprgSA2RWdt2aiEkTbzPFh9kNXf7FMxHbGxkRGjz2cO8+HSQce//odkrrc14SZyFf
         erkQLI3NxUW0VI9yeBJw6x8nnH9NQNNTagxbMgf/XF51W7x7D3XaQQUrL8/e+9cWb52K
         ihOTn0Bzlc0SqU4q7tq+qhOljPvMOxMVAt0UvwEh3wbl1LW/QDp7umWCEkwK147ulMHz
         aFzHOxWh/MfBhJ+TVBZ51z90OGamU06Ejq80vbQgB+d9UI/oG0qVb3O1s3SU0NwbQIw3
         RnKnYtNkaA8K/QAnWQvmL/ob1ydwboq8xXzoCJTpM/j5tCvLIBVPUo2AEfLvwOB+yFKY
         /Rbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783353474; x=1783958274;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ccOyiC2jznVKxZDvjoV8BnZRBXz549AenKEwOQZucvI=;
        b=WrlHWTHncpbvywsoJWWyAojQtPSLGcadTp5NqSBS7TbqW/7+lYsd5CKzJZeC3Z3EBP
         swzKMSv2uoMk8jA56mC1GXovGUYno8LU3x6yPGnL3UsIJM70ZDqP4nKZ4LXR7xeYniQS
         q5rTnHDneoXgbsz/gyv0X+DDKAHKyHoVpwp6NZgvVGQJeOcA77IgN47KcqKwI2PvLY+/
         bx62G3Gyr3ovR2idDs15veFmzSXKOOOl0QkfzX9RpoXEC/QemY2mZeGm91ktNTAq2e+h
         vg8GZuqHjZ30Da6U603tB5rbOPURpBSL+2Skvq4CE0jXsGcRfeQDH0Y1YYyM5qp5/Ay9
         c12A==
X-Forwarded-Encrypted: i=1; AHgh+RqBwWQoovP1hSKP4cepH81LfFlZSIKUGQnQI4/ayQktv8EUHcQ/z/yQGCqq9rDzGzxrmCyo3VTLrq+N2q3liw==@lists.infradead.org
X-Gm-Message-State: AOJu0YylzlbgyXad1D4CKHb7+sH9SPIWTk5mw2WvxPYUfiP937/rQGji
	w1eSBahcJH837Y297UysPTiVfdLJWzu/+V721Ma6gdiWQZpeqCOH5ljTraDx9rAEPYlXIlIKtwR
	z6yxTW3E=
X-Gm-Gg: AfdE7cllSIWPjnqPEyhvFTuz53uQXHFgyffy9FDURmlByXQZpiK/gJ08TmGFiR10RmD
	hCE9dWTWcl2CeQrNbS5W1lSY8Iz7hsp+tCjSREW/HOCGoTs1o2tUNiAJYmn6mCiw5w5rV0mTGWC
	w2VgMM60UCOfR02U1E2eU0zteXhCaJ+1A9P4wyPY2T00qSzKaXGzsoWNx5IsN+TA5degQhrprel
	o4COMa1OQCbcL3akAxB4NWQ3soCc2gwQvFTM05bRB2J2syKMaXSamG6pWyKRlh5zoNyF6drT37T
	t9I5XfTfuBOZNgRq9FWGQ3sPf9DPCTnW4jhp2TjodmA+HGiPuM/TXpuchZWRjXmuRs0aiUSZU++
	N3QNKZ1fpHSAQudB/CJTTKzCMVtUXVpsy9+V7ohJI4PCDaYW1Qu4QlRBf9JNIogrpyTgDQWmHq/
	72c1M+wy0oylCNl/32Qg==
X-Received: by 2002:a05:620a:17a5:b0:92e:7e4f:eaf8 with SMTP id af79cd13be357-92ebb4d8ad6mr158283285a.23.1783353474136;
        Mon, 06 Jul 2026 08:57:54 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b::c41? ([2606:6d00:15:e06b::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-92e90ba7e62sm979531685a.13.2026.07.06.08.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 08:57:53 -0700 (PDT)
Message-ID: <06f42aae24e2e441b04549bf5be2825cf1f8e2df.camel@ndufresne.ca>
Subject: Re: [PATCH] media: rockchip: rga: quiesce IRQ before releasing m2m
 state
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Fan Wu <12321260@zju.edu.cn>
Cc: Fan Wu <fanwu01@zju.edu.cn>, jacob-chen@iotwrt.com, 
	ezequiel@vanguardiasur.com.ar, mchehab@kernel.org, heiko@sntech.de, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
Date: Mon, 06 Jul 2026 11:57:51 -0400
In-Reply-To: <CB4C9604-8CCF-4A2E-B8B0-FC49AAFEA514@zju.edu.cn>
References: <20260704022853.77291-1-fanwu01@zju.edu.cn>
	 <ba54b43f90b46960ce4e57f99ead11e4200d283d.camel@ndufresne.ca>
	 <CB4C9604-8CCF-4A2E-B8B0-FC49AAFEA514@zju.edu.cn>
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
X-CRM114-CacheID: sfid-20260706_085755_812369_C14EF25D 
X-CRM114-Status: GOOD (  40.99  )
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
Content-Type: multipart/mixed; boundary="===============0447031199694363478=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0447031199694363478==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-E7tq3eJKSti7xqM09Bs/"


--=-E7tq3eJKSti7xqM09Bs/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le lundi 06 juillet 2026 =C3=A0 23:27 +0800, Fan Wu a =C3=A9crit=C2=A0:
> Hi Nicolas,
>=20
> Thanks, that is a fair point that RGA is not a free-running IRQ source;
> the interrupt should only be raised for job completion.
>=20
> I looked again for the abort/drain path, though, and I could not find one
> in the RGA teardown path. `v4l2_m2m_release()` only frees the m2m device.
> RGA does not provide a `.job_abort` callback, and `rga_remove()` does not
> reset the engine or disable the IRQ before releasing the m2m state. The
> driver also leaves the devm-managed IRQ installed until devres cleanup
> after remove returns.
>=20
> So unless I am missing another path, teardown does not actively abort an
> in-flight RGA job; it relies on there being no in-flight job by the time
> remove gets there. In the normal case that is probably true, since the
> hardware is not free-running and the submitted job has normally completed
> already. The case I was trying to cover is the narrower one where
> unbind/remove races with a still-running job.

I've never looked very deep into that, and so this report isn't a bad thing=
 at
all. With the m2m frame work, we have m2m_dev (which is in fact the schedul=
er)
and m2m_ctx, which are the instanced. The second are found to open/release,=
 the
first is probe/remove.

I don't know by which mechanism, so I'll try and learn that, but we expect
platform remove() to only be called once all the file ops release() have be=
en
called. If that is broken, we should certainly do something about it.

Now, about not having RGA specific code to abort, this is fine. What the m2=
m
framework do, in the default ctx_release() impelemtation is to call
v4l2_m2m_cancel_job(). That function optionally call job_abort(), for drive=
rs
that requires it, but otherwise, it will just wait for running jobs to fini=
sh.
Since most m2m, specially the simple case like RGA finishes quickly, the de=
lay
isn't a problem. After this, no more jobs will be scheduled, and no more IR=
Q are
expected. Meaning protection against late IRQ is defensive. We've seen some=
 HW
bugs with other drivers, so its not generally wrong to do so.

>=20
> That said, I agree the explicit irq field, `devm_free_irq()` and the long
> comment may be too much for a defensive corner-case fix without a
> reproducer. I can drop this patch, or respin it as a smaller ordering
> cleanup if you think that is useful.

What I meant is that a hardening patch based on quite hypothetical case sho=
uld
come with matching wording. Reading your submission, it felt nearly critica=
l
(and it could have been for sure). Let's investigate the remaining bits abo=
ve.
Then you can either reword or drop.

Nicolas

>=20
> Thanks,
> Fan
>=20
> > On Jul 6, 2026, at 22:22, Nicolas Dufresne <nicolas@ndufresne.ca> wrote=
:
> >=20
> > Hi,
> >=20
> > Le samedi 04 juillet 2026 =C3=A0 02:28 +0000, Fan Wu a =C3=A9crit :
> > > rga_probe() requests the interrupt with devm_request_irq(), so devres
> > > does not release the IRQ until after rga_remove() returns. rga_remove=
()
> > > currently releases rga->m2m_dev before that point.
> > >=20
> > > rga_isr() uses rga->m2m_dev through v4l2_m2m_job_finish(),
> > > leaving a window where an interrupt can run after the m2m device has =
been
> > > released.
> >=20
> > I have a doubt that this can really happen for this type of hardware. I=
ts
> > not a
> > free-running HW that emits IRQ randomly, plus we have the abort sequenc=
e
> > that
> > ensure all jobs are completed before we pull it down.
> >=20
> > >=20
> > > Unregister the video device first to stop new userspace submissions, =
then
> > > free the devm-managed IRQ explicitly before releasing the m2m device.=
 Move
> > > the command buffer release after the IRQ teardown as well, so it is n=
ot
> > > released while a completion interrupt can still arrive.
> > >=20
> > > Store the IRQ number in struct rockchip_rga so rga_remove() can free =
the
> > > IRQ without looking it up again.
> > >=20
> > > Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
> > > Cc: stable@vger.kernel.org
> > > Signed-off-by: Fan Wu <fanwu01@zju.edu.cn>
> > >=20
> > > ---
> > > diff --git a/drivers/media/platform/rockchip/rga/rga.c
> > > b/drivers/media/platform/rockchip/rga/rga.c
> > > index 43f6a8d..118887a 100644
> > > --- a/drivers/media/platform/rockchip/rga/rga.c
> > > +++ b/drivers/media/platform/rockchip/rga/rga.c
> > > @@ -828,6 +828,8 @@ static int rga_probe(struct platform_device *pdev=
)
> > > =C2=A0 goto err_put_clk;
> > > =C2=A0 }
> > > =C2=A0
> > > + rga->irq =3D irq;
> > > +
> > > =C2=A0 ret =3D devm_request_irq(rga->dev, irq, rga_isr, 0,
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_name(rga->dev), =
rga);
> > > =C2=A0 if (ret < 0) {
> > > @@ -919,13 +921,21 @@ static void rga_remove(struct platform_device *=
pdev)
> > > =C2=A0{
> > > =C2=A0 struct rockchip_rga *rga =3D platform_get_drvdata(pdev);
> > > =C2=A0
> > > - dma_free_attrs(rga->dev, RGA_CMDBUF_SIZE, rga->cmdbuf_virt,
> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rga->cmdbuf_phy, DMA_ATTR=
_WRITE_COMBINE);
> > > -
> > > =C2=A0 v4l2_info(&rga->v4l2_dev, "Removing\n");
> > > =C2=A0
> > > - v4l2_m2m_release(rga->m2m_dev);
> > > =C2=A0 video_unregister_device(rga->vfd);
> > > +
> > > + /*
> > > + * The IRQ was requested with devm_request_irq() and is freed by dev=
m
> > > + * only after this function returns. Free it explicitly here, after =
the
> > > + * video device is unregistered, but before v4l2_m2m_release() frees
> > > + * rga->m2m_dev, which rga_isr() dereferences via v4l2_m2m_job_finis=
h().
> > > + */
> > > + devm_free_irq(rga->dev, rga->irq, rga);
> >=20
> > I'm not saying we cannot do that, but its quite verbose for something t=
hat
> > probably can't happen in practice.
> >=20
> > Nicolas
> >=20
> > > +
> > > + dma_free_attrs(rga->dev, RGA_CMDBUF_SIZE, rga->cmdbuf_virt,
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rga->cmdbuf_phy, DMA_ATTR=
_WRITE_COMBINE);
> > > + v4l2_m2m_release(rga->m2m_dev);
> > > =C2=A0 v4l2_device_unregister(&rga->v4l2_dev);
> > > =C2=A0
> > > =C2=A0 pm_runtime_disable(rga->dev);
> > > diff --git a/drivers/media/platform/rockchip/rga/rga.h
> > > b/drivers/media/platform/rockchip/rga/rga.h
> > > index 72a28b1..f76c45b 100644
> > > --- a/drivers/media/platform/rockchip/rga/rga.h
> > > +++ b/drivers/media/platform/rockchip/rga/rga.h
> > > @@ -81,6 +81,7 @@ struct rockchip_rga {
> > > =C2=A0 struct device *dev;
> > > =C2=A0 struct regmap *grf;
> > > =C2=A0 void __iomem *regs;
> > > + int irq;
> > > =C2=A0 struct clk *sclk;
> > > =C2=A0 struct clk *aclk;
> > > =C2=A0 struct clk *hclk;
> > >=20

--=-E7tq3eJKSti7xqM09Bs/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCakvQfwAKCRDZQZRRKWBy
9OVfAP94FHLtll5BlcbiiLMERXWh7DIgX6IEnNzCIlpoODQfiAEA6nGpiFHNTGzm
fvKnFRG59nQFWkLb0cCxj2cuEXoyogQ=
=jDV3
-----END PGP SIGNATURE-----

--=-E7tq3eJKSti7xqM09Bs/--


--===============0447031199694363478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0447031199694363478==--

