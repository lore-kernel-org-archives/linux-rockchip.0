Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 124ACC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Dec 2021 07:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INvzJBYlGfponv7q4y5/1W8n/n03Eo449u/QkrdDCbQ=; b=R0gg55cOd9AzYC
	pd+W3l8B82O30Zls4MG2yJcODtxv4fLvJpVfuCGcOjfKIS/3ASqrDwoX03+RU/Lyl3EUuppOaP8Z1
	1m26TWVtb9AyMwEKTcUuZ1UPZaOatW7HKwLbrxpdPFmBXLtb4gLggTomG+geD5/UrmHsuL8veefnJ
	TbKqIBH1QnKNMHzBAz9dihV+yF7sVHo4NeroC9taF80648tIS6ZOQhP3qyHfQr2tYuWtpMFKVQDmx
	07lANc3wXwit0Eegosryh/fwgKaFWyBd6wt/vgIEvNEZa8TxoXzdSDjvlb72XM7MJ1v//Qt1+KwWK
	aRS04TzgOHkkY8Zyd/tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1kWD-00GJJ4-Fp; Mon, 27 Dec 2021 07:34:05 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1kWA-00GJIh-5U
 for linux-rockchip@lists.infradead.org; Mon, 27 Dec 2021 07:34:03 +0000
Received: by mail-lf1-x12f.google.com with SMTP id bt1so32953990lfb.13
 for <linux-rockchip@lists.infradead.org>; Sun, 26 Dec 2021 23:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IphlBiJuwkvTWlaGouUePkoncfLLkrJz0XZEERgcR1A=;
 b=dh8+DTclQmyh7s+EcvCf2hb6WKEugyNKN35hHVMS7W2IhaMMhBDE2eTNN7ljhCdqWl
 nVlqa/HZb8mFP+hbkB6K+htLaYpA4H08Hq6SNx43HLVAmXp4Duz3aov7sRt1jqK8fplL
 Yhl4sZsFZbRbE4QD7FOSbDeIBbUdzm2KLRfv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IphlBiJuwkvTWlaGouUePkoncfLLkrJz0XZEERgcR1A=;
 b=DRMuniPsyavx8JeeZneXA2kauBQSKnjP91HqWbpuj0TJep72bottZcleWljGdP221P
 m92bhSPJdfIurMPrgpwMiPgcjUk6sjt9kxSekuC5gvTwjitvKGH7iny1nXOm+7k1JY2n
 q7JawEtdDVYgzP2LfnXMEhCoQzmE6dekMdBTc/lH9stSPHiIMZeZnpxXTZy8oVUIWuB7
 Ou7i8C8O0xq9I8LmQ7gbSxv9fmhnLgGzQ4ykPIxUjAHVsnJjq60L5synhAFbsZDl8zbO
 6R2Q04yTvBa1zIQ3G/qzFqC24569uVJJkxGny8OoCZKWmkj2pwpI3rV6HfBh/28V3Mav
 JdaQ==
X-Gm-Message-State: AOAM530XhQjOJiA1+WI3hf4qQ+5VwNAFK0KcnQf5ijvgtnij7YrUBjpk
 fBO6bp6dajJslcYvA6cGML5mz28diS0h7vOg7ICgCQ==
X-Google-Smtp-Source: ABdhPJwPi8ZEN4x6LJlIvtEv1S+Z2YOWAU1DTIc3KIzqBQAYjs6CY0YqUD8gntWVlxa80Y2Z49i7iuku7gad5jNfulE=
X-Received: by 2002:a05:6512:202f:: with SMTP id
 s15mr15224264lfs.501.1640590439292; 
 Sun, 26 Dec 2021 23:33:59 -0800 (PST)
MIME-Version: 1.0
References: <20211224084248.3070568-1-wenst@chromium.org>
 <20211224084248.3070568-6-wenst@chromium.org>
 <YciZZ2hA4uMveN2l@eze-laptop>
In-Reply-To: <YciZZ2hA4uMveN2l@eze-laptop>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 27 Dec 2021 15:33:48 +0800
Message-ID: <CAGXv+5GJzZE1xDxxOqzV3Bq2XfuG2-aFuu-6hNxJ9S2YXFM_og@mail.gmail.com>
Subject: Re: [PATCH RFT 5/7] media: hantro: jpeg: Add COM segment to JPEG
 header to align image scan
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Tomasz Figa <tfiga@chromium.org>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211226_233402_256728_90EE4FFD 
X-CRM114-Status: GOOD (  29.82  )
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

On Mon, Dec 27, 2021 at 12:33 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> Hi,
>
> On Fri, Dec 24, 2021 at 04:42:46PM +0800, Chen-Yu Tsai wrote:
> > The JPEG header size is not 64-bit aligned. This makes the driver
> > require a bounce buffer for the encoded JPEG image scan output.
> >
> > Add a COM (comment) segment to the JPEG header so that the header size
> > is a multiple of 64 bits. This will then allow dropping the use of the
> > bounce buffer, and instead have the hardware write out to the capture
> > buffer directly.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  drivers/staging/media/hantro/hantro_jpeg.c | 3 +++
> >  drivers/staging/media/hantro/hantro_jpeg.h | 2 +-
> >  2 files changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/hantro/hantro_jpeg.c b/drivers/staging/media/hantro/hantro_jpeg.c
> > index 7d4018bd6876..51e67e5cf86f 100644
> > --- a/drivers/staging/media/hantro/hantro_jpeg.c
> > +++ b/drivers/staging/media/hantro/hantro_jpeg.c
> > @@ -247,6 +247,9 @@ static const unsigned char hantro_jpeg_header[JPEG_HEADER_SIZE] = {
> >       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> >       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> >
> > +     /* COM */
> > +     0xff, 0xfe, 0x00, 0x03, 0x00,
> > +
> >       /* SOS */
> >       0xff, 0xda, 0x00, 0x0c, 0x03, 0x01, 0x00, 0x02,
> >       0x11, 0x03, 0x11, 0x00, 0x3f, 0x00,
> > diff --git a/drivers/staging/media/hantro/hantro_jpeg.h b/drivers/staging/media/hantro/hantro_jpeg.h
> > index f33c492134e4..0b49d0b82caa 100644
> > --- a/drivers/staging/media/hantro/hantro_jpeg.h
> > +++ b/drivers/staging/media/hantro/hantro_jpeg.h
> > @@ -1,6 +1,6 @@
> >  /* SPDX-License-Identifier: GPL-2.0+ */
> >
> > -#define JPEG_HEADER_SIZE     619
> > +#define JPEG_HEADER_SIZE     624
>
> Can we add some compile-time check for the 8-byte alignment,
> so this is always enforced?

Ack.

> Perhaps getting rid of the JPEG_HEADER_SIZE macro,
> something like this....

I don't think that's doable. The other parts of the driver need to know
how large the header is, and we can't use "sizeof(hantro_jpeg_header)"
in those places unless the size is predetermined in the header declaration,
or we move the definition into the header file. Otherwise we need to
keep the macro and have another static assertion to check that
JPEG_HEADER_SIZE == sizeof(hantro_jpeg_header).

> @@ -140,7 +140,7 @@ static const unsigned char chroma_ac_table[] = {
>   * and we'll use fixed offsets to change the width, height
>   * quantization tables, etc.
>   */
> -static const unsigned char hantro_jpeg_header[JPEG_HEADER_SIZE] = {
> +static const unsigned char hantro_jpeg_header[] = {
>         /* SOI */
>         0xff, 0xd8,
>
> @@ -304,8 +304,13 @@ void hantro_jpeg_header_assemble(struct hantro_jpeg_ctx *ctx)
>  {
>         char *buf = ctx->buffer;
>
> -       memcpy(buf, hantro_jpeg_header,
> -              sizeof(hantro_jpeg_header));
> +       /*
> +        * THE JPEG buffer is prepended with the JPEG header,
> +        * so 64-bit alignment is needed for DMA.
> +        */
> +       BUILD_BUG_ON(!IS_ALIGNED(sizeof(hantro_jpeg_header), 8));

Probably bikeshedding, but I was thinking more of a static assert just
beneath hantro_jpeg_header[], along with some comments.


ChenYu

> +
> +       memcpy(buf, hantro_jpeg_header, sizeof(hantro_jpeg_header));
>
> Thanks,
> Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
