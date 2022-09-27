Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2995C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 19:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZN9f2myUiO5gKvfArSWdwexIP1FSfCFacbbTcjZDwXw=; b=iVgZwj3kUIpuaU
	yBkSoeqCeHjCyzf17hQ2YoG2JkCqXs/9ArivPYSmNOI7MITL60pEqLZ4gYCKe8MBjNnklYwh9bV5f
	ymSy4O/u0AoLdlbJcv712b3/N4GV6yP7XNNKMtycH3Zj7aa1uYcHXQFXRzxnIpaH+RXSUpbCJZt8H
	Hjtv7XFqshKmTVwaLAcLkRG727Aw/RzyjZzrHBli7MVp1Io2NhoEJ8oYaUh5AbVMUF8FXbWDe6xSv
	5tO7oMv4z/naTWwVlMrjWpphvPUjWhNiu3cTNpSaYZqvBpDiG2xxyvNmrMoXJ+r4FpqAyFJf2BxMx
	8l1vmydyPXdZp0Pj3q6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odGXE-00CSaz-ME; Tue, 27 Sep 2022 19:46:28 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odGXA-00CSZf-RC
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 19:46:27 +0000
Received: by mail-wm1-x330.google.com with SMTP id o5so7253231wms.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 12:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date;
        bh=DeB7QMH3bIq5iaWc+HNtDZ/EEbhGqYVc00tj6aMlmZM=;
        b=6d19iBbLjJfjcI3h5ypTQXXNp8K1NZfNM8svzDzOme2DYusajPqmg7VXzWgUo7HcTr
         W2lWdZWDO6uGFWijF+Ldubxs9S+syHIV+Hz1syz9fU8RLrk4QWAFvJDRhi+9HJpiNQdf
         Xrk2HP5CXO4HQUT0LnFVC6Fs4Tu/L3QEOk7jYUrcxQs51sO7NrolM5YE2CFoF1iI4tkB
         m12nIJsOnRThu6N7vSxBMDCvO4mqYVtlMGH8pjTubyooLN+iCGKLhwoFUjsCMG+Bv6CT
         LZLblnWW96/5b/tBiUjaEtXmlx7aoeQf+cFSf54sjwvixqarV6w4Fx+0tjTDl1x8vCqJ
         PKng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=DeB7QMH3bIq5iaWc+HNtDZ/EEbhGqYVc00tj6aMlmZM=;
        b=kqiAIKnJ3DE7R/xFS06J5L/F+Dt61sKSr2HUBbmvGDJSyIZYbki3D6x9PbC7rD3buT
         bZibrPlwPunFrVE7qGbFwLT89Hn5q1BWcV7t6zeWOYN8eQYKMkdbm6oO4DYEIXeFtnCU
         Ovz4X5YRWX8fKsZmm9YfnFcHTYSHPsfdbR+GmR1y9ukoEDaRQ9C21b1Ai2DLr0xgZk5J
         XcDesdnHtx6N/UoYcTgPe02Tt96xGQrFcs229BjLleXFcHxczlTbj/RLjv6bKO1jt+pK
         0d5U/7RlqZ4lnPGkzdNgkuRVRk7Ctz4RBJfKuiEbb17Dh3oKF13qDjV+r5H9mE3eMlun
         w24Q==
X-Gm-Message-State: ACrzQf1E2L71LWuGRkMBjAFDYoM0zI6Z1YKges0glTizhxiPl4zUnc/t
	9Uq85s23PF7N9O+KWwp7R6eUeQ==
X-Google-Smtp-Source: AMsMyM6A9nO9S0tgG3oTWD9BFg3cuE4+ACkC9O+BJbF8uOGSQDV2r48m9qfcYk2ORWaJ6ZvG/NUJ8A==
X-Received: by 2002:a05:600c:a46:b0:3a6:9c49:b751 with SMTP id c6-20020a05600c0a4600b003a69c49b751mr4024777wmq.169.1664307979007;
        Tue, 27 Sep 2022 12:46:19 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id ay11-20020a05600c1e0b00b003b47a99d928sm2857278wmb.18.2022.09.27.12.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 12:46:18 -0700 (PDT)
Date: Tue, 27 Sep 2022 21:46:15 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Robin Murphy <robin.murphy@arm.com>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Message-ID: <YzNTB+RQK6yITi7/@Red>
References: <20220919210025.2376254-1-Jason@zx2c4.com>
 <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
 <YzMm4d3sZBHpitm9@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzMm4d3sZBHpitm9@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_124625_084429_1B7A9F4C 
X-CRM114-Status: GOOD (  20.25  )
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

Le Tue, Sep 27, 2022 at 06:37:53PM +0200, Aurelien Jarno a =E9crit :
> On 2022-09-20 10:35, Robin Murphy wrote:
> > On 2022-09-19 22:00, Jason A. Donenfeld wrote:
> > > The Rockchip driver has long existed out of tree, but not upstream.
> > > There is support for it upstream in u-boot, but not in Linux proper.
> > > This commit imports the GPLv2 driver written by Lin Jinhan, together
> > > with the DTS and config blobs from Wevsty.
> > =

> > Note that Corentin has a series enabling the full crypto driver for =

> > RK3328 and RK3399[1], so it would seem more sensible to add TRNG suppor=
t =

> > to that. Having confliciting compatibles for the same hardware that =

> > force the user to change their DT to choose one functionality or the =

> > other isn't good (plus there's also no binding for this one).
> =

> It might make sense for the cryptov1-rng driver (I haven't checked). For
> the cryptov2-rng driver, I looked at the RK3568 TRM (I can't find the
> RK3588 one), and from what I understand crypto and TRNG are two
> different devices, using different address spaces, clock, reset and
> interrupts. The vendor kernel uses two different drivers.
> =


I confirm that TRNG is not on the same IP on rk3568, something I didnt rema=
rk when doing my V2 driver. (I need to remove rng clock from rk3568 dt).
But the rk3588 crypto IP and the TRNG are in the same device.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
