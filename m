Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5DC7C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 20:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXhMnEHKlP2QRCW4bdrMT2vHPAMnstThszhtq9DKOQA=; b=d+bRwb7rfol0db
	FA4mSgY1DNsggyqD9TZupHHp+b9RuQSn44kEg6EepCkqUOalhSSknv1lxs8xar1F8fomCI1813jfB
	T73tFWqPaATBV/ZGeybjRahQUis5O8xvgeRIsd+6EhX0xwbemnG/hjN9b3Oix4sjLp97satAWIqUK
	csf056YsccAuYuP2Pi2vcREmAzLsGjP61bc2v0teQuiTnZfPjB/BLPYfPhnt6UHX4Voo+IdeGnqLF
	/YgeN2WZ4OKqxePEZZx3kz6g5KX1U1N8o5ejU138dVddsYfnUNXkLpANlmrT/beeysnjFqm38pWz1
	3H0l3XIH7kBFxLEplErw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBjBk-007lL1-V2; Wed, 13 Jul 2022 20:42:28 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBjBi-007lDz-7n
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 20:42:27 +0000
Received: by mail-qk1-x736.google.com with SMTP id 20so9549472qky.5
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Jul 2022 13:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EgA3xZH3t9Zi9zRLOrZeaQRW5jyanhvvZI8yTDXgSs4=;
        b=e3pT9sVk4ebu5rxOkVvi3A5vzXF3/bx9rOT9OycSA2cJYBt0jTTnMtcmx66L1h8f3K
         HgERgnUfpUdtrTCrL5qNcQm2LccwN85lIvfgA0H8jmjV9qPJlelJn995PeGUUNhZLHbV
         yAZ5NMYOrjY73ZZwlPTBbuw/49518KwjQx1mwAVnBgVR5uZi6w8RRD3RKnXlSjSJoxbZ
         PdYzpYTrxHm3q7zwOiSFisCq4AIuWwktIaZFDkXHaZO/YvcLaBjFiqtcEBxanSMt4h9s
         UK9CvmS6OOZNcnJPNFpXhtKERK1US62God8WWgp294lvESo3sP+0hEpqkdnLot/0KZtp
         g8jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EgA3xZH3t9Zi9zRLOrZeaQRW5jyanhvvZI8yTDXgSs4=;
        b=8EJ2vmHgEprg5bAVW4t2/0l4OyrMDHH5+HWhwuNK9W/F5cqCh0JycIv6eK51zIdWWQ
         xzIM2fmjMy0h/U7h0yJ4eYWNoiP3v85qWZ493bMst8iau4x/zlfq/sEk4NqHriQvIe1w
         4aYenmkHl8OErzc/PIoivLkg/RqvWtFut7QSqHKkWnlRSuC79CcRm0fDZu5nRIJt30+R
         Gz34iAtXTLLGUzMzoAhMwT1IDaoFEQ9u0MmWSZA4DZtJKo5BgKZrh6gtz/ZZNIJQHQRt
         QOI9pPBgm1H9ww/9KAXLqqIkGqK9jju+v2aQtaxbMnR45gmRiYTcyGYhiXRrL5sGo9+n
         L3BA==
X-Gm-Message-State: AJIora+FISVwjuRGgSFH+qnGqtZw0KoaLSYws7UPl3JshEQBI47Qy7G+
	HPuYkTcHgD6CseDpH58+o+8=
X-Google-Smtp-Source: AGRyM1v52gaCFcbVPmIqwbN58q5YtVm3AqVJBDc6aU4aFpenuHjRPorXmWi30FmHMGI23odMN4w6eQ==
X-Received: by 2002:a37:806:0:b0:6b5:c19d:bbfc with SMTP id 6-20020a370806000000b006b5c19dbbfcmr90053qki.155.1657744938660;
        Wed, 13 Jul 2022 13:42:18 -0700 (PDT)
Received: from localhost ([2601:4c1:c100:1230:7360:5d5d:6684:e04b])
        by smtp.gmail.com with ESMTPSA id m6-20020ac807c6000000b00315a5fa4bf6sm10194336qth.7.2022.07.13.13.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 13:42:18 -0700 (PDT)
Date: Wed, 13 Jul 2022 13:42:17 -0700
From: Yury Norov <yury.norov@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>, knaerzche@gmail.com,
	Collabora Kernel ML <kernel@collabora.com>,
	bob.beckett@collabora.com,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	linux-staging@lists.linux.dev, nicolas.dufresne@collabora.com,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 3/6] bitops: bitmap helper to set variable length values
Message-ID: <Ys8uKUKErpoWL873@yury-laptop>
References: <20220713163201.136202-1-sebastian.fricke@collabora.com>
 <Ys8Txuq9/u/EL6sj@yury-laptop>
 <CAHp75VeOLfKw4-+Dpn54yy6j=tdiBNA_2Kvhj7mUUjTD-M_vYA@mail.gmail.com>
 <Ys8gpl3m+vvEM7Sy@yury-laptop>
 <CAHp75VeGSWoq-a10nA9NLKBEX7L_eiL0zPMJHUbX=c64wG8hkg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VeGSWoq-a10nA9NLKBEX7L_eiL0zPMJHUbX=c64wG8hkg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_134226_310984_F4C7F6F8 
X-CRM114-Status: GOOD (  24.03  )
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

On Wed, Jul 13, 2022 at 10:14:24PM +0200, Andy Shevchenko wrote:
> On Wed, Jul 13, 2022 at 9:44 PM Yury Norov <yury.norov@gmail.com> wrote:
> > On Wed, Jul 13, 2022 at 09:10:33PM +0200, Andy Shevchenko wrote:
> > > On Wed, Jul 13, 2022 at 8:56 PM Yury Norov <yury.norov@gmail.com> wrote:
> > > > On Wed, Jul 13, 2022 at 06:31:59PM +0200, Sebastian Fricke wrote:
> > >
> > > ...
> > >
> > > > I'd suggest you to try implementing
> > > >         bitmap_copy_from(dst, src, dst_off, len)
> > > > or even
> > > >         bitmap_copy_from(dst, dst_off, src, src_off, len)
> > > > if you expect that you'll need more flexibility in the future.
> > >
> > > Do you think it would be useful?
> > >
> > > We have bitmap_replace() & bitmap_remap(). Wouldn't that be enough?
> >
> > bitmap_replace and bitmap_remap have no an 'offset' parameter.
> 
> True.
> 
> But then it's a bit too generic to have this src_off, no?

That's why I said:

> > > > if you expect that you'll need more flexibility in the future.

My preferred option is bitmap_copy_from(dst, src, dst_off, len).

> I would rather expect for asymmetrical bitmaps that the other side
> will be either one of the fixed width types (it makes sense to have
> for 32- or 64-bit arguments.

Look at patch #6 - it copies 1,4,5,9,10,32,37... - pretty much a random
number number of bits.
 
> When you have a source bitmap of x bits and  you would like to copy it
> into a y-bit one, I would think that either you have a small amount of
> bits in x anyway, or x is a full-sized bitmap (same order as y).

It sounds like a speculation to me. Why shouldn't we let people to
copy with an offset any number of bits? 

> Also
> keep in mind that granularity is long, so less than long it makes no
> sense.
> 
>   bitmap_copy_from_T(unsigned long *map, start, len, T src),
> 
> where T is type, start is the offset in map, len is the amount of bits
> from src starting from 0. That's what is required in most of the cases
> I believe.

But not in Sebastian's case, according to patch #6.

Thanks,
Yury

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
