Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2CFEC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 19:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pd+mw6AKZ4YBaaf/gEEk4IshSqmeulaLqK7TDDxfntk=; b=n28PXDTQQ9m4yQ
	biKxiz8PKL3f72IcleqFASdakw+AMsg0LFEK/E9qI2CoyZZ1j4B2zY9CCxXtrJ0h1acJTPsGSPsPl
	l4tBcHyNpTSUd82lOUnbOUafDGU/w0VS9lN+FztEMKGmEQV4RvYiYJSGTfDnGpWfwGqBtGlNs77Bh
	6kFFyVG0vti0kjhVlPfdCG0ErrfmU+dELI/EREsDxiawfIBJZuAomTbO8i+wSN100aGONqGUDsLXq
	kIka7mRiuRtch1i9WXbJN9puTbY3W/+/CV4nAGhb7rWCts3dGLgPrrb+y6HvD2+e7IG/srL7A6E1W
	sery8ZU1DFdAHThSzfog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBhlT-007Ids-6n; Wed, 13 Jul 2022 19:11:15 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBhlQ-007IbM-SJ
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 19:11:14 +0000
Received: by mail-yb1-xb34.google.com with SMTP id f73so20861657yba.10
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Jul 2022 12:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uX6Kc2kAxANJpf80UpilSQ2SInJgmyK49SONOFQNv5c=;
        b=iqVLGZ4UHwqB4eZdQyeXhiOEO+3NmpiA/ZmKUZ3pojmgFsncTkpWmPWEH6+ykG18ae
         mHYXJpDCYYAX+LOCja5quKdYDeVwQBkzP5VSKjvA+JOqHRBeG0ePsnW3S6y8aZMwu+Xv
         us7pMqfk3SeJPMf4E8N6+/hDpkiDabfhM6Xus346kN48d+1zkrjBRPjbWfCPS2NGUJVf
         OT/KyT3Vo5ti4qLNEhIuyE1W6+6HvnH+ENqkryha0rdTdP2IyVbgzSxvuJlXWF9HGYDN
         ND6a5hAb2qfk94K/GM/VejQ+ISdNeM7+bhoN96fn8G7yXSbzZP7/52zcbjLwybjCTJOY
         8LwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uX6Kc2kAxANJpf80UpilSQ2SInJgmyK49SONOFQNv5c=;
        b=lpa1g0RzFr0a0MvwNT9NZPeufWUXefXM9zaDRpIkftLz1+M1jN8zM/uBFWG+oQX670
         ao9AHXFHAaUQNnpkibOTl4re0jJCywqmbjZAq0l+tlXj8aV8cfro7xe8l+vp0B17hlxL
         rSE/yWDxidlY1+POroW07TtJ93eEiWGxX6MdWMoI8WN7gMLyPz7uedD/aNgyt42PmPaY
         dfMKTH2NCfuPAjH3gxSHB2rvVvgqNYZip6Rd/qr2rRJG+WdPoXY3Xd6aId2MYuL9kGRR
         cL1+FxpfgqztwkbGVusOmwyWgy/S0rMtm28hdFWMnnkWIKXiwTIS4clLNV/57lg/A3Qt
         /VaQ==
X-Gm-Message-State: AJIora/l5oH8wJPqtvxPVF4EUI+96LmhgFqcTjS5ZsgDmah1GArzpJSO
	8B3Ce1Z+QPRK20u1yqr89OaBLj1ESzpdnKfxfxA=
X-Google-Smtp-Source: AGRyM1ubtEnBQBhsUQ4cfAfwgVqIR998ItYnbTDQhKD2W4fja/tTb/hnXkjG4PQuVLspPo/Bt6mh1j4EftGpjQ1ATcI=
X-Received: by 2002:a05:6902:686:b0:66e:627f:4d29 with SMTP id
 i6-20020a056902068600b0066e627f4d29mr4782371ybt.385.1657739470007; Wed, 13
 Jul 2022 12:11:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220713163201.136202-1-sebastian.fricke@collabora.com> <Ys8Txuq9/u/EL6sj@yury-laptop>
In-Reply-To: <Ys8Txuq9/u/EL6sj@yury-laptop>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 13 Jul 2022 21:10:33 +0200
Message-ID: <CAHp75VeOLfKw4-+Dpn54yy6j=tdiBNA_2Kvhj7mUUjTD-M_vYA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220713_121112_954720_3FB94DE4 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

On Wed, Jul 13, 2022 at 8:56 PM Yury Norov <yury.norov@gmail.com> wrote:
> On Wed, Jul 13, 2022 at 06:31:59PM +0200, Sebastian Fricke wrote:

...

> I'd suggest you to try implementing
>         bitmap_copy_from(dst, src, dst_off, len)
> or even
>         bitmap_copy_from(dst, dst_off, src, src_off, len)
> if you expect that you'll need more flexibility in the future.

Do you think it would be useful?

We have bitmap_replace() & bitmap_remap(). Wouldn't that be enough?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
