Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5EE5CD6E68
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 07:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhDCQfC2gJOEBZOLpaEfSTzI6eA1K8vI5TE1/+pksBI=; b=XL9jKSFoACR34W
	PNxN0QM8ItPnC8aPMVEpyyGI5HtWmMuZG1wm34kKTgRw9gZYomdEt4W6D21e87khkKktOSSLtaT90
	eFuFC1lTnE3rXXqcLKaAUSKwIlVEL5CSm6Vujzy1Xf5R0zyNsk+K55q99ZxcxIPj8TQzIrcF8YyaL
	v4NDv/Bz5p45yxnV24Lwxa0KflPbOKGfLk8QQYr3UzDoDkyMztaqywh33kjyzDcINPqqlOmJAJV4F
	D3i7V5OoZ1z2wmvFCcd8Lqbzgy5DZzlekmA/ROajNelT3554yXN+VXTzXbAofVDG74ESiQxu1acHA
	FwEpHC0eXWTK6GNkVE2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV2wB-0000000GLQG-2BC2;
	Thu, 04 Jun 2026 07:56:23 +0000
Received: from mail-ej1-f52.google.com ([209.85.218.52])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV2w9-0000000GLPT-0M1b
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 07:56:23 +0000
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-bec4639953dso62528466b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 00:56:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780559779; x=1781164579;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1/rC1fo+bW1nAFIVdIH1ju8UCCu+wCVbA2zMBO1aJME=;
        b=HDbaBiFCKP6jz0BIA3w82b/LmsA3Fty+1Mezk+HhzVCO4/DTY539HVaTrQViW9zDHs
         h58Ywz695/4T9sOFr/PaRb/SRV/+KUIpQ2JaPhJb6U/Kc5ZzQABVwoEuQzFKkUJe8mM1
         /A880bNlUrL7FsmrlMcv54f5NdOKOqCJAKzlbTp4AZ+xEs7/wg72yjwTI5+dC9ROMu8R
         lQPPBAQrnp4UiVSSF5nn4b2V84ew4k8i6eRHiPN4PYRhC2XQr/nY2ILbFpm/lP8AAGTE
         B4h/0/tMSVlO+QrEgsqB9qFhimjqxOY0gIXL23fCnDteD0vHtcNMdTCssJM6zT/DRz+A
         SFrg==
X-Forwarded-Encrypted: i=1; AFNElJ82cQZDGISBIXdXa+bEZKXLJJOQxAAZNjgaJcHY6tRtJdOea7oqf1CzLmco0+8DsguhJy3TjoTpfaEEwU4Syg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkOj+dvH5bWqg089Ay28Bqxn6Ro4RZUJpSOQXljYkkOsGHeFPr
	bKPCrTdFkMrGk30BhCmMCdmz5/jAslRclYQ7HSVGjFoecnkXHO4gmip+6YtPlT0eJbw=
X-Gm-Gg: Acq92OGe0P0Q84fMiFn9Rn2wpJY8sbEsqWdgAfuLCm8PfeTBLa0172cuvqkCi/qxNIz
	irpz0hw9/m/+ZNEUgRgHcnLB8hrFZRrLYkZKlwwJiDsEZ3RKhJ6bnx0mdxTHs4nvALpz2D9uOQC
	E02STRBlDVuq9N2YOOcLA1y/uOeCnZt0KNcEtz2ZBHaRegwr4B59FG851Ulz2UWjRkajmcFpMNv
	WmVc8dJBT8UvqZc1HN8MausyYKpbYI6Jp8p0KzjDhvrpLDHMKXfcq6JPHaFWs233ouX4CK5LmWc
	fc8c39YbgbZN56U++OjyeJsMtfB8YWmI21EYN0RX2ZmH48A0IQizooA+DgNKEkkIAnsBH5acEFP
	UH3EW859JYcPMhc8ldOWVfmIVrSXJDOOihSsjrhCuU+AYL2j1dkgrfEi63F04n+DfYRILptmYIB
	qzaVFuDoe+vQ4mTu4MAsTeg+hJe4swEzJTOu5eaq8panzDI2UWIZjcsFgtWHYRiI/elIa4QPU=
X-Received: by 2002:a17:907:2d2a:b0:bce:80db:77ef with SMTP id a640c23a62f3a-bf0b3ea958bmr345537366b.43.1780559778766;
        Thu, 04 Jun 2026 00:56:18 -0700 (PDT)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com. [209.85.208.43])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf0522834dbsm261577566b.27.2026.06.04.00.56.17
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 00:56:17 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-68d23396ed3so678409a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 00:56:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8OM2BH700iPcEi9uAT+1/zqC36RDVeB6Lp9MYwNY8xeP6vJwwF/NB4TsAuYvjHlqtDV3qsqxq0ojdF/tfhCQ==@lists.infradead.org
X-Received: by 2002:a17:907:7748:b0:bf1:8faf:d94e with SMTP id
 a640c23a62f3a-bf18fb047c0mr166351166b.40.1780559777705; Thu, 04 Jun 2026
 00:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260603213726.1025094-1-heiko@sntech.de>
In-Reply-To: <20260603213726.1025094-1-heiko@sntech.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jun 2026 09:56:04 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUAoUmCNMBVRGgZzSt9SbZqV6SVW2brkvsBKuHrfWHKvw@mail.gmail.com>
X-Gm-Features: AVHnY4IvkoGavCb3kflRroLCR9W-9Zf0z8gdDvwCFWuBrY3WYcj_OOUKtkUAgL4
Message-ID: <CAMuHMdUAoUmCNMBVRGgZzSt9SbZqV6SVW2brkvsBKuHrfWHKvw@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: don't COMPILE_TEST builds on M68K
To: Heiko Stuebner <heiko@sntech.de>
Cc: rosenp@gmail.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, 
	kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_005621_157928_73779D33 
X-CRM114-Status: GOOD (  20.70  )
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

Hi Heiko,

On Wed, 3 Jun 2026 at 23:37, Heiko Stuebner <heiko@sntech.de> wrote:
> Rockchip clock drivers use hash-tables with enums as inputs.
>
> M68K does interesting things in its __hash_32() implementation, casting
> that u32 input to an u16 and therefore triggering warnings like:
>
>    drivers/clk/rockchip/clk-rk3528.c: note: in included file (through include/linux/hash.h, include/linux/slab.h):
>      arch/m68k/include/asm/hash.h:57:24: sparse: sparse: cast truncates bits from constant value (18720 becomes 8720)
>      arch/m68k/include/asm/hash.h:57:24: sparse: sparse: cast truncates bits from constant value (1e8e8 becomes e8e8)
>
> As M68K should never ever need Rockchip clock drivers, simply disable
> compile-tests for M68K.
>
> Fixes: 7edfb7fb58ee ("clk: rockchip: allow COMPILE_TEST builds")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202605191434.PQkj2Rki-lkp@intel.com/
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Thanks for your patch!

> --- a/drivers/clk/rockchip/Kconfig
> +++ b/drivers/clk/rockchip/Kconfig
> @@ -4,6 +4,7 @@
>  config COMMON_CLK_ROCKCHIP
>         bool "Rockchip clock controller common support"
>         depends on ARCH_ROCKCHIP || COMPILE_TEST
> +       depends on !M68K
>         default ARCH_ROCKCHIP
>         help
>           Say y here to enable common clock controller for Rockchip platforms.

Obviously this is the wrong fix ;-)

I have sent a better one, fixing the issue for every user:
"[PATCH] m68k: hash: Use lower_16_bits() helper"
https://lore.kernel.org/b55e9bd0532c0cad519809c86e0a8400060d75a1.1780559561.git.geert@linux-m68k.org

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
