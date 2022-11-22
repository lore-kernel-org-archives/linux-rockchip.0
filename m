Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88D98C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 13:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4N+KmMmlvgf2PdN1dN2DaFtw0HNZLyR64313APzde/0=; b=3Fz67ExMIYeHuW
	EiC4yXNc3Tj1OLPLTlRstMYRhyZnseFWLMhQBVWxCR9+igCwmC06R+T3IasvFXE3K9nVRrB9bx2al
	75GaEX7n2LG6md6mqoa6GV99or8seM+HSrKX2o5Cuh2C9wCqn3bpj+ZFK+O1NN6BnLiBr3vh/5mTY
	AToRtm3UHknXPhc9fVXspUjSOM5/i8bn+AgGR92+uks9y2/INRR1Je6WsOhnmnw0HzknPvP/i1psX
	XTZbB4RQm+61HgyQAgN1OY/hBmqTnayoYKTSjy1wAFBGTyMjYtvSBWjaVlD1FegWOPgCDVWIea/E2
	+7PKUPKeajWpzTJ4lFRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxTKu-009ejG-So; Tue, 22 Nov 2022 13:29:16 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxTKq-009efz-4O
	for linux-rockchip@lists.infradead.org; Tue, 22 Nov 2022 13:29:14 +0000
Received: by mail-wr1-x42c.google.com with SMTP id s5so7510824wru.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Nov 2022 05:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wEZwlBsaNUHpzzIaIKYU5AHosPkhDJnwQiQeyEIzxao=;
        b=hR4YQdlV1EkXRHumuFyTMUphoGnSOoi+kBYKhoZwncrNATTRb4Aq+D8dU84gikCAjg
         NJH5I3o17DN36Fu5o0sd5qptScMWUHOddYlLHDb4o3o9tnkrBSxmC8N7hMJRdogxkQ5C
         NtzV5tAPHOweNoXQbGVy2H49TkRp5XyA/jXXP1y4gmbC3BMzkUBtqkPj9DLPoBDdUuq/
         tqgPfK1483mmQEIe6eJUmW6XeJ/OlQCgcFO3Sd8361s1aNDohJL+x1lrI/rivrqWawxj
         0bOjWe9JX0T06VXEqDzilosZb0nr9FUQgQ49TzmVGRRO7XwDBJm/1wBnwobvB496NVYp
         877Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wEZwlBsaNUHpzzIaIKYU5AHosPkhDJnwQiQeyEIzxao=;
        b=yYgYDn+sxzs+7T87ea2O/VAzqI0+dQAaAeGdIvoySvzXvTnZ+9/eTL1SKqF1eMaCag
         XNCQKzrrvisY7702CgL28hoZ6G8ek6c8IoT45O4LlwwXG140zZEy+njaeladBphRgyL8
         ThLrkJP/T0KQmLDqvPS5Ea8HeL64ruNT1uMtCjXkrpCKmWQguCyx92j44jxhgOanNHlt
         QKDwNL613EjoyZpgvjDJz0nIEQ4g65f1v4Qt0kvzQ6ixYzcgMfPsYP7t+uhggfyCKPtb
         c1SIewKAI5UK7BSGwdAFUmgPL8KLrJyrojiWbFN6ubDzbJq4T/KBwchR7OaGHU+Y/3R5
         bn/w==
X-Gm-Message-State: ANoB5pnP6xbvna+UmO5Xvfpr+vzcqJEtMG5+Xv63+gbYcDYivn1okynv
	Cu1r2OThFwntltDxOpCkGRmFhA==
X-Google-Smtp-Source: AA0mqf6TJNdia6Nf3lWNpAMXvciXnOpBoF68QQGih3K11l7S5CRfE3Qn1emQkxJlMHXKWTmqnaMjpg==
X-Received: by 2002:adf:f50d:0:b0:23a:cdf5:3676 with SMTP id q13-20020adff50d000000b0023acdf53676mr15105069wro.336.1669123748006;
        Tue, 22 Nov 2022 05:29:08 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id o2-20020a05600c510200b003cf5ec79bf9sm19435110wms.40.2022.11.22.05.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 05:29:07 -0800 (PST)
Date: Tue, 22 Nov 2022 14:29:03 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>,
	Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Message-ID: <Y3zOn5IO1ziJXKUT@Red>
References: <20220919210025.2376254-1-Jason@zx2c4.com>
 <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
 <YzMm4d3sZBHpitm9@aurel32.net>
 <YzNTB+RQK6yITi7/@Red>
 <YzNthZ0MtfwjIqdH@aurel32.net>
 <YzVNBcF7TCDldPwF@Red>
 <87y1sasrf2.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y1sasrf2.fsf@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_052912_413971_730E0B8A 
X-CRM114-Status: GOOD (  32.25  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Wed, Nov 16, 2022 at 09:04:07PM +0300, Mikhail Rudenko a =E9crit :
> =

> On 2022-09-29 at 09:45 +02, LABBE Corentin <clabbe@baylibre.com> wrote:
> > Le Tue, Sep 27, 2022 at 11:39:17PM +0200, Aurelien Jarno a =E9crit :
> >> On 2022-09-27 21:46, LABBE Corentin wrote:
> >> > Le Tue, Sep 27, 2022 at 06:37:53PM +0200, Aurelien Jarno a =E9crit :
> >> > > On 2022-09-20 10:35, Robin Murphy wrote:
> >> > > > On 2022-09-19 22:00, Jason A. Donenfeld wrote:
> >> > > > > The Rockchip driver has long existed out of tree, but not upst=
ream.
> >> > > > > There is support for it upstream in u-boot, but not in Linux p=
roper.
> >> > > > > This commit imports the GPLv2 driver written by Lin Jinhan, to=
gether
> >> > > > > with the DTS and config blobs from Wevsty.
> >> > > >
> >> > > > Note that Corentin has a series enabling the full crypto driver =
for
> >> > > > RK3328 and RK3399[1], so it would seem more sensible to add TRNG=
 support
> >> > > > to that. Having confliciting compatibles for the same hardware t=
hat
> >> > > > force the user to change their DT to choose one functionality or=
 the
> >> > > > other isn't good (plus there's also no binding for this one).
> >> > >
> >> > > It might make sense for the cryptov1-rng driver (I haven't checked=
). For
> >> > > the cryptov2-rng driver, I looked at the RK3568 TRM (I can't find =
the
> >> > > RK3588 one), and from what I understand crypto and TRNG are two
> >> > > different devices, using different address spaces, clock, reset and
> >> > > interrupts. The vendor kernel uses two different drivers.
> >> > >
> >> >
> >> > I confirm that TRNG is not on the same IP on rk3568, something I did=
nt remark when doing my V2 driver. (I need to remove rng clock from rk3568 =
dt).
> >> > But the rk3588 crypto IP and the TRNG are in the same device.
> >>
> >> Ok, thanks for confirming about the rk3568. It seems the only one in t=
he
> >> family with separate devices for TRNG and crypto. Does it means we need
> >> a separate TRNG driver only for it? Or could we handle it the same way
> >> than for instance rk3588 anyway?
> >
> > I just got now the part 1 of rk3588 TRM which I has missing and it show=
 some conflicting information.
> > rk3588 seems to have both a dedicated TRNG (TRNG_NS/TRNG_S) with dedica=
ted address space and a TRNG inside the crypto IP.
> > But for the moment, the TRNG inside crypto IP seems defective.
> =

> So what's the ultimate decision? Does anyone work on merging this into
> the existing crypto driver? I have a use case with an rk3399-based board,
> where having hardware rng enhances boot times dramatically (at least for
> some userspaces; see also [1]).
> =

> [1] https://bugzilla.kernel.org/show_bug.cgi?id=3D216502
> =


Hello

I started to work on adding RNG to rk3288_crypto.
I need to publish the work on my github and take time to send it for review.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
