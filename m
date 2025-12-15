Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82FB6D5B862
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 18:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfpiRWdacZmUNuRdxW9gGnUKKzA9gWUMj5MrdZ8oyLo=; b=O4oTnmJniEfcfS
	wLj++Xtk+3Cg6uY/Gvu67xcDOIJSkDKEAXYoZMXm7OCyrOP2iTIB9FchDYVd4DvfD5ZVAN/ggy0cK
	PyDy2mP//blDoyu07AiDWRpW2asZNUuLhIoCagSW7wxV8wO6uayu2oRZZ/yigeR8NOmnYEV8TiARu
	oaqEp0PCMPehfxlBSrLE4NpGvVpgJbNOelttwkQ1uTNxAKs3uL/ATLZQcpduc/7DJnjhFbaGckEjM
	EZmDQF2YrNV782qd6th2WbGKoOuU0t4jI8pX5ms5L1kztyJC/G0F+rsxT33yaX9cFVD9Zj7V7XBn/
	ZMR0WjyMiifDbYL4l/gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVD7I-000000047Rl-165P;
	Mon, 15 Dec 2025 18:16:16 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVD7F-000000047Qp-059C
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Dec 2025 18:16:14 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4779a637712so25645195e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Dec 2025 10:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765822571; x=1766427371; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mgNHGQuNqJYS8SDNw0YQDcQ0j9dj4XHzKQA/e9DbvTI=;
        b=WE2QQakDIx1e5qZVLlecHn+E/pdxhios8CZfoACrMZD98EjDh+3K/40kyxvtnVVqMY
         E3kE/SGqYOwMKZm2ZGZ8q0Jr30ZJvnwUACn3JLpq5jUvGxgnlA3o41SrtySp/9Bbxuoy
         xTUkNHzyFciMcZu+UmoBvGWVKA4K3zcmufv91CA8mki93ZCOt9/ptlrqmgyTq76YQoJB
         i5820UcWvgDsSxASUdTnOruTm30klVX7z7T5oykNdRjp9y8958YLvHahRjqPZUKsnK/G
         8I//7ytINic42THdWR9eU+ry9bkCK/yaVd7O59VVThzeZ7s209FmoOs+gNXaRl1B/xhZ
         LgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765822571; x=1766427371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mgNHGQuNqJYS8SDNw0YQDcQ0j9dj4XHzKQA/e9DbvTI=;
        b=RkgU9aDKZGvOjF9Ud3qHr1QU9M4VJEI5WpNlPaKlvGN72MdEAdcyQURQFuBnnfQSIO
         DGMuNqMQcL4nrzsxiWyZmnjn9RvUMEgdpHyPjhgNSbOaxET6AIy6W4mphIKNyZuvt+Br
         fX9o0kwnmuJMoUC0MHDE7h7MFvZ4jgRPsGWzmlDiA+KPcGL93sycn55rnnCLcK1IOLLg
         N7z0Q3kgVyiKHm5uMbF/49Y02iW84RPGIO8MJA9zenLxy58E4A2HxrYrCOprNKZS6xrX
         xxhBK4SeJgaMEjNJaeRAJl6BHT9ZSMObehnS62E0Sx2kNlykI0/dKfxKlJmWjpPG2p9r
         4NdQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0Ka2VbwDpiLkN2iyhDKOpHuFczFstqPVbLWZCSDoIneIRonAL1I3fhExfrySQcljrVJdaT0jDLVY8sKjckg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgZf0zTH12GW8pzjeNZJP3fmFrGgwfDL195Vl5t3Mi8qXeSc6+
	Xf5h3ZVty6fvQ10A7ka+7U1sSxNDHWdPUbpEZuSgr2SuUWThR7XKQG3fYklYHA==
X-Gm-Gg: AY/fxX6omujTJZTt9FLE/zFLtWhBbmidpTSIFces/0qDCdqxcB9tGfbK7gxhbVArxFa
	HiNNFmYx7YqiB9+0WP6fMcUEkk1O4+MEja4QNvcUnyHzuUmw3LIfRf+pgrOJ/pqosxCozUAMu5N
	Ln2yo/wgfpvWFag/bYzOhB1LmH+RvII+GdodFQk1LdWQR6E8Lx3ZIhy2kqY1XLn9pJe/N9JJmXM
	xAZezwog/KyR6pE4Y14jaMQor0bEE7xXa5vysW4m+3/g/CsIULol8cZjCcKXuEg6LowY1QoUlOs
	AiP1zoIk66IorUVe6tGashjUuRjT0qSxy1NM485fBhI+Q+Y/ljgmZTi6A4/BMweWYt6m0Vf/k9M
	4Okw/s21DrlwInusfpV7grqwKgLg17A2ewhWpDZ+BMRX+JTWjgc7urSDOaiYOk3Jqdmw3DXemDU
	T4VW8CRc+VV4BGT257c5KxZU/GnYXc9v5N1c2/RHd9Xn0Sp6YtlZgpPgnZHg80avg=
X-Google-Smtp-Source: AGHT+IHyDJpQHBms/ienI8KAmWZu5MhqukBnjyYtenMu2CYLWW1CjFUhtTLo4yMnCvX9Pd/MmTJfXQ==
X-Received: by 2002:a5d:6643:0:b0:42f:bad9:20c9 with SMTP id ffacd0b85a97d-42fbad92628mr9345753f8f.19.1765822570360;
        Mon, 15 Dec 2025 10:16:10 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f9339d86sm11129355f8f.29.2025.12.15.10.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 10:16:10 -0800 (PST)
Date: Mon, 15 Dec 2025 18:16:05 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Daniel
 Stone <daniels@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v4 1/8] drm/rockchip: vop2: Switch impossible format
 conditional to WARN_ON
Message-ID: <20251215181605.29f6afcc@pumpkin>
In-Reply-To: <CAPj87rMeJWLm9J=7kMrEvbpzVOMiQc-TThSNE-Gfac7nhUB3bw@mail.gmail.com>
References: <20251211-vop2-atomic-fixups-v4-0-5d50eda26bf8@collabora.com>
	<20251211-vop2-atomic-fixups-v4-1-5d50eda26bf8@collabora.com>
	<20251211223822.6eeabb4d@pumpkin>
	<14738785.uLZWGnKmhe@workhorse>
	<CAPj87rMeJWLm9J=7kMrEvbpzVOMiQc-TThSNE-Gfac7nhUB3bw@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_101613_089672_AF5EABBF 
X-CRM114-Status: GOOD (  26.18  )
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

On Mon, 15 Dec 2025 17:55:13 +0000
Daniel Stone <daniel@fooishbar.org> wrote:

> Hi,
> 
> On Fri, 12 Dec 2025 at 12:46, Nicolas Frattaroli
> <nicolas.frattaroli@collabora.com> wrote:
> > On Thursday, 11 December 2025 23:38:22 Central European Standard Time David Laight wrote:  
> > > Except that all the systems with PANIC_ON_WARN set will panic.
> > > I believe that is somewhere over 90% of systems.  
> >
> > I also like making up statistics. Warning here is the correct move
> > in my opinion because this warning being triggered indicates a bug
> > in the kernel code, and with PANIC_ON_WARN the user explicitly says
> > they would rather panic in such a case than treat it as an abnormal
> > condition that is recoverable.
> >
> > The reason why this condition ever occurring should be treated as an
> > abnormal condition is because the DRM subsystem should guarantee we
> > don't get a framebuffer of a format we didn't explicitly declare
> > support for in the first place. So this condition being hit either
> > means drm_universal_plane_init is broken, or the array of formats
> > that's passed to it is out of sync with the conversion code, which
> > is also a bug. Or someone managed to thoroughly hose DRM's internal
> > kernel-side data structures, which is precisely the kind of thing
> > PANIC_ON_WARN users want to abort for.  
> 
> Yes, that's exactly it. We make all kinds of load-bearing assumptions
> everywhere: that PM code won't pass in a NULL struct device pointer to
> the resume handler, that our driver callbacks won't get called whilst
> the device is runtime-suspended, etc. We could try to handle every
> single one of those with if (clk == NULL) return 0; /* ??? */, or we
> could not.
> 
> If you'd like, we could just delete every one of these checks and
> replace them with comments, explaining what we assume the invariants
> to be, and wait for an OOPS due to dereferencing invalid pointers. But
> the MISRA style of 'handling' every possible impossible case is not
> tractable.

Especially since it is often easier to debug the NULL pointer reference
that the work out why a BUG_ON(!ptr) happened.
(In the former case you should have the contents of all the registers
making it easier to backtrack to where the NULL came from.)

	David

> 
> Cheers,
> Daniel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
