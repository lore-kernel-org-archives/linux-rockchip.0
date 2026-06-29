Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9669C43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 13:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HT/Dk2tr/hujz0D2bs2v5cfdkpGBIDaZIZSiKzlt2Zw=; b=JhexkzVArrSGfUzQJzdoxv9Qyi
	vtgfxuGQzkg7d8zgsiGWHBrW0SidaTA1ZlXpXe44COMixzlwqGuYM2n48tMWKYa7T1NInkvjUgRRQ
	kDUQWyAu5XjtzSbC1HPimWZwkpfviqoG9xQehwYiaYyqevuS6HzJcRUUh737BLTf3N+e11j7Ox5so
	ze9psqUmambN17E40do2slGElF4YfkDx9bG8n6pM5CNc/we6lFXL/jLj2Qu1Tu9CTj+4+xBiaPilX
	m5GGCPuMLX13rNZbYf8WTYfOBUlvTOq9XZo+9Q5P44CRTs+Lx15bJGTQAdiVZFAR++o7rTPOJ0YS3
	1rIw7Peg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weCUb-0000000EoU0-1gnC;
	Mon, 29 Jun 2026 13:57:45 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weCUY-0000000EoR2-1Ls6
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 13:57:43 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4921eed3fa2so25362365e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 06:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782741460; x=1783346260; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Fi+aOF3X0XE+EnDA3NYao73z90dCW8BKgRHxnIWsmow=;
        b=CIw77trLl3xXwjBmRuCqroLawvQO2a0bpBOJqeqBtkAKYY/JnyTvVc+qEPJ5QHxjCQ
         GDs0ExEtUfN8SahUaS7vKgSeEhL5t55zs+SFiuoKQ5uwAVFmJgNy7FgsHfhH644DJLZc
         IrB1Q9ViTCfE86kfHwMf1B0JLu74fdTYvT/+DtZtYy9V+HBrbOe4Ub9zhEeowyJFSou+
         Pt02m2Jo9aMoe79yiSB6XiJ7zsaKaGXeLUE5Y5DChp2VdToBXWQqyTcBJTgeBLlwlnGq
         wc2kHmVQRSkZGyNnYR2BjTxC3zGybVXTfIM0rOgmxUp5foKR9ALyysq1j2TfB/+CRy+m
         ieGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782741460; x=1783346260;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fi+aOF3X0XE+EnDA3NYao73z90dCW8BKgRHxnIWsmow=;
        b=Z4+tM3rGcnFHHaNueUdSL0NeO26LL5QDaoi52QfMt+hz8MwzdX4ln4uAMCRB4RtloX
         62/W8+tQiujGVxHB8ztzVPLVYhrqyDz2NywWmdJJt/0OWbivOecK4ZHsC0SK7oSLy5/h
         qd4wKyG13S+pov8pct7DYc4Lbf5P96ZVxkXSnNAh5F2aX19g1TQKCQJ/7tMRKaAlWA2b
         UNbCkxC8gNAOz9QVze4N8yx7039iFBr+Qi0zmDns15/qpLTagIZxh1ynMMoHdIrA7ZDu
         BvEto+u5Aru9FQWBFb4g620xgXVIviGW0OAeu4hwDHZs4oUkCPIhPZwTACKYEgWNYkjo
         mppA==
X-Forwarded-Encrypted: i=1; AFNElJ9o+tL/uCODT6ZspoDpnUAlf+xfoOxCBrWOWfO93AEOmYwO5N66URnQNHcsfNnxLD06rBCfayFY+kW5/8f17Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxLy7HcR+M8W2UPVjAzMCHWA97n/EKe5Z5dhBVVg9P0N86p8DGs
	4ruZFQfI+yT3wAUxvI73udQQXaXS/OtuJGWKXBXH6GzXdUpFfTBWtY2z1L5tBJZcDNE=
X-Gm-Gg: AfdE7cl8o89IlcPWvxdzWx8QkTmuaiqP6xL/O5znIgeKSmz3BP2Fw89kS8CwPdRjPrY
	721gytkknFD2IeQ8vB+ivxLROvHYSkIXyVd0qKCU7AWfhb6hnX0S5ueaxwFiVLUHfrI9P6/DORg
	oIMnFjpwbKM0P7oJUdqMUULhIaWDoTCa6QTwvC+wWBBdcwaP/eIRg904yK1yCMTVtPFbCGw9lza
	WCVQSHH3DOLAVEuyof/0XFi081tRsBjc0OoYhY/yKkksnUoIboubTTHLWFK3XdGvNLKCaf6zVIR
	VoO2SjfRaYapGpRev0j6xQH75qdqVfTj3NtQMBT4JCZ8we5VUGL33kclV6blfrnrZIdTkUDSsnj
	chUIxCk9YRHbjydQKFbIVeH2BWipEb5uicpnjitegM6QvZ+xAV+7VsweadWOo/UQ27wvTy6VhFI
	j/8sabi+wUOZogoLSLx1C5sjV8RbjsnpyMLa619OX/eC5lSfDgB+qNO9pSg4d5Y3LGMDWffPXvr
	lxC
X-Received: by 2002:a05:600c:5290:b0:493:b7a6:3dac with SMTP id 5b1f17b1804b1-493b7a63dbdmr608125e9.33.1782741460528;
        Mon, 29 Jun 2026 06:57:40 -0700 (PDT)
Received: from localhost (p200300f65f47db04294e5bd34a12a699.dip0.t-ipconnect.de. [2003:f6:5f47:db04:294e:5bd3:4a12:a699])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-49268fe949csm375305105e9.5.2026.06.29.06.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 06:57:38 -0700 (PDT)
Date: Mon, 29 Jun 2026 15:57:35 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 03/17] ASoC: rockchip: rockchip_sai: #include
 <linux/platform_device.h> explicitly
Message-ID: <akJ5lkLieSgkdfW9@monoceros>
References: <cover.1782490566.git.u.kleine-koenig@baylibre.com>
 <d2fe7dc85277b01526f9320ed5baab2acd29660b.1782490566.git.u.kleine-koenig@baylibre.com>
 <8dcfcd10-4b9d-4775-9e23-3884b896a7b9@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <8dcfcd10-4b9d-4775-9e23-3884b896a7b9@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_065742_376246_BCB0F89A 
X-CRM114-Status: GOOD (  12.88  )
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
Content-Type: multipart/mixed; boundary="===============8725452857651808769=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8725452857651808769==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4sshmqzaaw52uohq"
Content-Disposition: inline


--4sshmqzaaw52uohq
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 03/17] ASoC: rockchip: rockchip_sai: #include
 <linux/platform_device.h> explicitly
MIME-Version: 1.0

Hello Mark,

On Mon, Jun 29, 2026 at 12:17:04PM +0100, Mark Brown wrote:
> On Fri, Jun 26, 2026 at 08:00:22PM +0200, Uwe Kleine-K=F6nig (The Capable=
 Hub) wrote:
> > Currently that header is only included via:
> >=20
> > 	<sound/dmaengine_pcm.h> ->
> > 	<sound/soc.h> ->
> > 	<linux/platform_device.h>
>=20
> Acked-by: Mark Brown <broonie@kernel.org>

You're too late for the Ack, this patch already is applied and part of
v7.2.

Best regards
Uwe

--4sshmqzaaw52uohq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpCecwACgkQj4D7WH0S
/k4QuQf+IZ3MYAOoCiX56AcddT2ysdPwmOlVVSv/6YS6KhChCyJRk6ZSdHoDg3Qn
xGnj118aX3gekqAPdZGK+3E7fkhwmSCRh9y3c2QgmPZlcwdJqeHrsMbthgmp4+r+
0GSSh+LTi6ndwo1JU+dP6aUhpyGk5AuRGTvL4ZMA7yuTmVfoSAFk/UrzBqtRXfV9
PeNnlWg92EyYbL4HQeH1S0xzB7O3KQoB4ni2q4wpQYbFSoQN+FpNRe4oNzkUlXuc
BBZDGFl7zH8/laFhRMpvfQPxXpksv5JxWWrtgcDINgpwz3+Zm7nYtVuG7r402M8T
mg//pdx2TidvXsmJe3CMWgTmnZlBAQ==
=Ojc5
-----END PGP SIGNATURE-----

--4sshmqzaaw52uohq--


--===============8725452857651808769==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8725452857651808769==--

