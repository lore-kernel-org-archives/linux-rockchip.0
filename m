Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2B1C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 10:31:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C88060FE3
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 10:31:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9C88060FE3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2InLT7gT7q/C87D2XVRyr9DQQzQwNERWJ9nzE1GNoI=; b=46i31KKPzqR322
	l7zhiuPPYEEJeMsGQ7zUXqjwh7R3jmUG8+6nDbZEj7DWZaKvmztl5UoRMhAzwoZAdrPybYdL1wkc3
	Bk9JSZidhwbOwh5hJ1s+gNNpac83iHdLYZF+l3eYm5v/lVXN1A23NPUQ4CrQghqcdTDFZETdswMSj
	vSWg+vrVcWqPyB59TioqGy86VPGPN07roQY3IppT3RRfEsI7R90dwwnQumhlGP6Jvk4zhuXOdUeRM
	B9+auMMgRyXyt1ny4Nrqcd89SZOZ8RdEWz6DaMhf7GY4sVwfdGYMozZ4TSzbUTJHh/+7NsomvIuMG
	HhmY5Thq3IDIynJWuc/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYn9w-002Nel-52; Fri, 08 Oct 2021 10:31:24 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYn9D-002NMa-SS
 for linux-rockchip@lists.infradead.org; Fri, 08 Oct 2021 10:30:41 +0000
Received: by mail-lf1-x12c.google.com with SMTP id m3so37512515lfu.2
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Oct 2021 03:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xAJV6rpYehfTK9nnciNhDpMqZQK02ZVmng3Ho9JExgo=;
 b=WUFufoTxqA+JTTGukQW4lBGtCc6qPp3iXYEHJKCwXNRrYOf9uteuXRod7K/a5tl41d
 TyytV5xNYgGRRU0zyrhr8aPQD6NAbmd8ax/ctLn3bTFIDRqmRLGFvIIwcsriB/9RNglW
 l58ng7vWsERBcsUQ6nKAO/9d/vt1wUdtqb0MA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xAJV6rpYehfTK9nnciNhDpMqZQK02ZVmng3Ho9JExgo=;
 b=S+pyaKWHCxzIA/M3dZwle9ebgE92nFzMByDirtF54omsTDNjidzE//Tu9jUdAnSvO1
 alvZy2FDuNHiNDJ2UABixwfVIYwG0aLEdBs2qjRuRRbNIbLl1UoqbP1CTFRP14NJADIZ
 zX39b3dB8SvLvuKo2CnDP4hQMOY2V+GamH8ZudA789L6iLe3wKLDrvC8TbdwkJsVT7Bb
 p6+RMjB6bUhbmajIg7zpOE43RwZ/bn7+BkcQ5eLi9dwXhBABLdS4xdvwd5KGrkINfaf4
 n3ZwfeqBotmXGTJYpYic5sUGxyVBv/nfMBU3p6ueVqb1CdI5/p5C3/lwP9o+9i3PmfHe
 6z/Q==
X-Gm-Message-State: AOAM532umyPw1zhWszYzFCnc0FvAZtRRV9AbdUPw9r4IsLBDfTV34XU8
 y6jv3VZJd3BC3bmQOsK+nYygpqpZtyjMTS/AQf4voA==
X-Google-Smtp-Source: ABdhPJyNLLNnwHcH3PPTk54y5XMO2BahGGz++OdUH26GrfjhbgYTvnY0SqT1yb9T3vmlVy2LqM13V+w9DHH6Lm20TWI=
X-Received: by 2002:a2e:9c4b:: with SMTP id t11mr2805530ljj.376.1633689037713; 
 Fri, 08 Oct 2021 03:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210929160439.6601-1-andrzej.p@collabora.com>
 <20210929160439.6601-8-andrzej.p@collabora.com>
In-Reply-To: <20210929160439.6601-8-andrzej.p@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 8 Oct 2021 18:30:26 +0800
Message-ID: <CAGXv+5GU3f40BijQxazGVtJ0o9rZY_cux9mxRUEtXYHF2Oz-UQ@mail.gmail.com>
Subject: Re: [PATCH v7 07/11] media: rkvdec: Add the VP9 backend
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-staging@lists.linux.dev, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com, 
 Ezequiel Garcia <ezequiel@collabora.com>,
 Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_033039_965725_B10A22A4 
X-CRM114-Status: GOOD (  24.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Thu, Sep 30, 2021 at 12:07 AM Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> From: Boris Brezillon <boris.brezillon@collabora.com>
>
> The Rockchip VDEC supports VP9 profile 0 up to 4096x2304@30fps. Add
> a backend for this new format.
>
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> Co-developed-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/staging/media/rkvdec/Kconfig      |    1 +
>  drivers/staging/media/rkvdec/Makefile     |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c | 1078 +++++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c     |   52 +-
>  drivers/staging/media/rkvdec/rkvdec.h     |   12 +-
>  5 files changed, 1137 insertions(+), 8 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
>

[...]

> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 7131156c1f2c..6aa8aca66547 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c

[...]

> @@ -319,7 +354,7 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
>         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>         const struct rkvdec_coded_fmt_desc *desc;
>         struct v4l2_format *cap_fmt;
> -       struct vb2_queue *peer_vq;
> +       struct vb2_queue *peer_vq, *vq;
>         int ret;
>
>         /*
> @@ -331,6 +366,15 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
>         if (vb2_is_busy(peer_vq))
>                 return -EBUSY;
>
> +       /*
> +        * Some codecs like VP9 can contain dynamic resolution changes which
> +        * are currently not supported by the V4L2 API or driver, so return
> +        * an error if userspace tries to reconfigure the output format.
> +        */
> +       vq = v4l2_m2m_get_vq(m2m_ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
> +       if (vb2_is_busy(vq))
> +               return -EINVAL;

This check is already done in rkvdec_s_fmt(), though it returns -EBUSY
instead. And I don't see similar changes to Hantro, so maybe this isn't
an API limitation as described in the comment? My recent patch [1] also
loosens the restrictions on this.

ChenYu

[1] https://lore.kernel.org/linux-media/20211008100423.739462-3-wenst@chromium.org/

> +
>         ret = rkvdec_s_fmt(file, priv, f, rkvdec_try_output_fmt);
>         if (ret)
>                 return ret;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
