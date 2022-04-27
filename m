Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36965C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 22:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0N6HTs2oW+grW8zn1GR+OUVwpJp9JmKGJz/lLtoxsI=; b=EvuQzKJyAg0EV7
	+4bAB3u0NpeddyKc+90XkNoKOf3my0TiueQ/tBZ2qSrGlSrWUAd4/x/UlheLazuVTiXy/jDZ8nC95
	ahBiin8G+BobS2uzSz2RznxChOxkPvP5JvI0JrfllpTvlnEfukHI20ZA7ecqtMdjnWggKVFmm53zl
	Tyaz8N2fTwjY1S2z7p0UBXbaEpDEpXt1wZlCavfoJwLLoIqkQSkUJpDuS9nX3iXMu+TzrwlxcPLzL
	6F2N5WtiOkDHu7AV9O59mGaOYAXE1DdgPi59UOiwCpxopTTkNGXSPB331YdNA0PnG+buRg9/IuZpo
	aPPS8gqLvynCnaWsXliQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njqNh-003oCN-Ak; Wed, 27 Apr 2022 22:43:33 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njqNe-003oBc-RP
 for linux-rockchip@lists.infradead.org; Wed, 27 Apr 2022 22:43:32 +0000
Received: by mail-oi1-x234.google.com with SMTP id s131so3608406oie.1
 for <linux-rockchip@lists.infradead.org>; Wed, 27 Apr 2022 15:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uO1mjNT4t8QFE2H4UTWyMQ/O+XjoVk8wmcfJNXUjbrc=;
 b=SgqFgdXosM/ZYsAUz16MKVkJJBdinSAq5DNb8Wfpvs6H36XROkz/tVPkTu6r0qbWKC
 W3EMwHETOmhuJAJPXayfGbXzUYzGsQLRRP6gDoh6MdqvZmBtm3zYnfYLJatRV/pLeTPP
 +RzlgD1IS4LZAJR1eL5lkO4KHr1YxJ9pDDpK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uO1mjNT4t8QFE2H4UTWyMQ/O+XjoVk8wmcfJNXUjbrc=;
 b=VQlC25aK2EDHsj92nCGGURvstefc7559HpOoduTTC+KDRw15Fzp2uPkfyD0OR3iR9Q
 hPF1+0snHS/4bQiNzA0vGzzWWF6T0EKOXsb2MwXZWKdBk9+8XM3Z6vpkDGorcoID5U0/
 3+6zpmjm8yhy6NDuR4X5mTOl90MTNPALSpCRsIltXY04eqaga1yMYRWWUo036lT366lv
 qrXvXmCpKoiFCtXDEjNRsC2fhMQHn1PQonzbZNJn9+GnjbMticTAseakB7Pa/Koqz0mc
 RqDy2oiDjG5w7cRxjE9bnqToCX+4JuoUO1L5kK0WZTA7kvGYQOJsqNNKb13qfwMRNgRH
 072Q==
X-Gm-Message-State: AOAM532hw/s4wIa62+jQyl8hwwECyk+z7x/2RbJ8aO1r/evQd7Kpd3tt
 7zIrYVMiptqhCgB3H0ZrdC8evfgg4UCo6g==
X-Google-Smtp-Source: ABdhPJx2V/9dBt5OrhkrWmlbL/bOghUEOQ+Xp4QE6Ctj0+Eq4GdSwUrdXfd+lVaZujl1pjX0Jf6N3Q==
X-Received: by 2002:a05:6808:1881:b0:322:9e57:9e56 with SMTP id
 bi1-20020a056808188100b003229e579e56mr18232245oib.97.1651099406007; 
 Wed, 27 Apr 2022 15:43:26 -0700 (PDT)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com.
 [209.85.160.41]) by smtp.gmail.com with ESMTPSA id
 w8-20020a056830410800b00605b48122eesm3609719ott.14.2022.04.27.15.43.25
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Apr 2022 15:43:25 -0700 (PDT)
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-e67799d278so3500821fac.11
 for <linux-rockchip@lists.infradead.org>; Wed, 27 Apr 2022 15:43:25 -0700 (PDT)
X-Received: by 2002:a05:6870:4201:b0:e6:47c4:e104 with SMTP id
 u1-20020a056870420100b000e647c4e104mr16438606oac.257.1651096086895; Wed, 27
 Apr 2022 14:48:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220426014545.628100-1-briannorris@chromium.org>
 <20220426014545.628100-2-briannorris@chromium.org>
 <CAMdYzYqyDr1HFYB4p8NK8ssq60qfjR2jyoSJ=tcRn8CWsZr16g@mail.gmail.com>
 <d72eb7a7-f922-3270-422b-4e27505de530@arm.com>
In-Reply-To: <d72eb7a7-f922-3270-422b-4e27505de530@arm.com>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 27 Apr 2022 14:47:55 -0700
X-Gmail-Original-Message-ID: <CA+ASDXNFPfp6J9bLpYh4uyZDtmhrbSb6Y3=T26_qxd4-YDMtcw@mail.gmail.com>
Message-ID: <CA+ASDXNFPfp6J9bLpYh4uyZDtmhrbSb6Y3=T26_qxd4-YDMtcw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] soc: rockchip: power-domain: Replace dsb() with
 smb()
To: Robin Murphy <robin.murphy@arm.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Arnd Bergmann <arnd@arndb.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_154330_942319_BF7CA0E0 
X-CRM114-Status: GOOD (  19.14  )
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

On Tue, Apr 26, 2022 at 5:25 PM Robin Murphy <robin.murphy@arm.com> wrote:
> On 2022-04-27 00:55, Peter Geis wrote:
> > On Mon, Apr 25, 2022 at 9:46 PM Brian Norris <briannorris@chromium.org> wrote:
> >>
> >> It's unclear if these are really needed at all, but seemingly their
> >> purpose is only as a write barrier. Use the general macro instead of the
> >> ARM-specific one.
...
> >> -       dsb(sy);
> >> +       wmb();
> >
> > Just curious, shouldn't this be mb() instead of wmb()?
> >  From the arm64 barrier.h:
> >
> > #define mb() dsb(sy)
> > #define wmb() dsb(st)
>
> As I mentioned on v2, that would be the literal translation, however
> there's no concurrency since this is happening under a mutex, so there's
> no other agent against whose accesses loads would need to be
> synchronised, therefore the only logical reason those DSBs were ever
> there at all must be to ensure that the prior store(s) have been issued
> to their destination before proceeding. The history implies that this
> dates all the way back to RK3288, where Armv7's argument-less DSB lacked
> that distinction anyway.

Thanks Robin. I already tried to capture part of this in the commit message:

"It's unclear if these are really needed at all, but seemingly their
purpose is only as a write barrier."

i.e., it's intentional that I'm making a change, not a literal translation.

I ran through a few tests on Rockchip RK3399, FWIW, although I suppose
some nasty memory ordering bugs are not exactly the kind of thing that
would fall out in smoke tests.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
