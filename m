Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 656E7C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 20:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrXZqszZRocXpd5mHjfPN1/GC2drjtguuuyQvJZsNPY=; b=QBO5GHFnTSUTUi
	4ed6B99YxSpkFHnzxNu19qZbszXgkUzv6ba2yqKlPBATnQLlVxheH6+bfOX8OxNP7RmCF/NWL8M54
	sD2E3aX3pKISqEj1RzX7b9u4EvvqyMqB4GTgFMkDZ6AR0rj/Cc2EFbl52gL04bs0gv7bNIPsjTV2t
	oXNhcXkGsghTHiJmRtncw3H9YagdS20ya86CBVOVQA/Tnuqq0SvH67hLUgAObQFY47BFOuF30Oy8d
	fMqLf5IeIUdFqX3Y0Co8vDf2wYduANQaLKbsa/bi5C6KRkAMrTEaJL3tkqClNiTd6ne5qnGoFiLVG
	Yrgzuk0ASmTghzkKfTDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBilI-007cIs-NF; Wed, 13 Jul 2022 20:15:08 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBilG-007cGY-6a
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 20:15:07 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-31c86fe1dddso124744107b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Jul 2022 13:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JcckXV4vcsS2l/x+/u953cckoakHIp9f7/cP8rerxZE=;
        b=anlOJCiMrQgqUL3vsJNDj/PuCveRb4PSCTzrBgey28HdzAIh2iRanGaXPZj+BvoCIC
         aZiKguqPQq9NuLjBsPcHaEgTOrayU2x0jPiljTZMV8qiuxXdLzcgYZ2+NG7R8yU98Ffp
         e1QmJlYMpF7fIG/l8zGF9Z7myRnNDKme02Mr+6JpS3HdzeyjdgkLaDUfvUlkQbgOjOxs
         2x9/mZch870lKcWV45aNseqRHnH7bAKkWganEVdY8yPD9cqsd9Fy3MY23D6xtKSoNF+5
         ryTR5ZFM7JBBAWjRCv79rmJJ6GHP54I2QxFvPke4XNNd4QeV/QtlgnNg0dFRks9fMpDc
         QnOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JcckXV4vcsS2l/x+/u953cckoakHIp9f7/cP8rerxZE=;
        b=5PeDJqX8LOFuuMbo1m9rT2SeI7b+IR4iLexCmBXOqC7UFdFbZNK6TwMw56KlHBn8HK
         pCEkg5E2TN/7+Wcaz4/82vtXtDIS4FrJpXjoAvAkQ1qRiBJrhkrGzTLNtnvIjFA/2OPu
         tjVx7v3LZUwfkgbS14YzrtVJGdzy6b8tFEphYQdIWJJOwhH3Y0m1FZgd2i6ZcqSNBWtA
         /BJp+2g+giQldzLGDSMGUMLeJdjfWjtegbH54HzN69CLaJvMYWd86HlxNUwlzlS3u/sc
         q3Sv74SsWDpGV9zs6ppz/HMi5HrIL2qEdXF61UXOEPG4lljFGi+S0YqaPv8LcCcQFP5W
         LByw==
X-Gm-Message-State: AJIora/nnnteOZBnq6sJky2IOe60BhRfhFjGBX7LU4JPX6j4cHnZzble
	Ohc6aJE9CtQIWtWoPDsyUyF3mi2+owPomAtNTFLdII6lPbpGQw==
X-Google-Smtp-Source: AGRyM1sdgv3mvfCz2ZSOb164tqPgKAdiyD+LPHLwhHyC3p3u3G4R9aGXA/Q080Jl/AzHSEipJn65gDAlH35Cxg34xoI=
X-Received: by 2002:a81:3984:0:b0:31c:b59e:a899 with SMTP id
 g126-20020a813984000000b0031cb59ea899mr6196759ywa.195.1657743300495; Wed, 13
 Jul 2022 13:15:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220713163201.136202-1-sebastian.fricke@collabora.com>
 <Ys8Txuq9/u/EL6sj@yury-laptop> <CAHp75VeOLfKw4-+Dpn54yy6j=tdiBNA_2Kvhj7mUUjTD-M_vYA@mail.gmail.com>
 <Ys8gpl3m+vvEM7Sy@yury-laptop>
In-Reply-To: <Ys8gpl3m+vvEM7Sy@yury-laptop>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 13 Jul 2022 22:14:24 +0200
Message-ID: <CAHp75VeGSWoq-a10nA9NLKBEX7L_eiL0zPMJHUbX=c64wG8hkg@mail.gmail.com>
Subject: Re: [PATCH 3/6] bitops: bitmap helper to set variable length values
To: Yury Norov <yury.norov@gmail.com>
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	knaerzche@gmail.com, Collabora Kernel ML <kernel@collabora.com>, bob.beckett@collabora.com, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-staging@lists.linux.dev, 
	nicolas.dufresne@collabora.com, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_131506_263903_0A87059D 
X-CRM114-Status: GOOD (  18.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jul 13, 2022 at 9:44 PM Yury Norov <yury.norov@gmail.com> wrote:
> On Wed, Jul 13, 2022 at 09:10:33PM +0200, Andy Shevchenko wrote:
> > On Wed, Jul 13, 2022 at 8:56 PM Yury Norov <yury.norov@gmail.com> wrote:
> > > On Wed, Jul 13, 2022 at 06:31:59PM +0200, Sebastian Fricke wrote:
> >
> > ...
> >
> > > I'd suggest you to try implementing
> > >         bitmap_copy_from(dst, src, dst_off, len)
> > > or even
> > >         bitmap_copy_from(dst, dst_off, src, src_off, len)
> > > if you expect that you'll need more flexibility in the future.
> >
> > Do you think it would be useful?
> >
> > We have bitmap_replace() & bitmap_remap(). Wouldn't that be enough?
>
> bitmap_replace and bitmap_remap have no an 'offset' parameter.

True.

But then it's a bit too generic to have this src_off, no?

I would rather expect for asymmetrical bitmaps that the other side
will be either one of the fixed width types (it makes sense to have
for 32- or 64-bit arguments.

When you have a source bitmap of x bits and  you would like to copy it
into a y-bit one, I would think that either you have a small amount of
bits in x anyway, or x is a full-sized bitmap (same order as y). Also
keep in mind that granularity is long, so less than long it makes no
sense.

  bitmap_copy_from_T(unsigned long *map, start, len, T src),

where T is type, start is the offset in map, len is the amount of bits
from src starting from 0. That's what is required in most of the cases
I believe.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
