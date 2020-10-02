Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 303A2C4363C
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 16:32:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B56FD206FA
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 16:32:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="R8c60m+2";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=vanguardiasur-com-ar.20150623.gappssmtp.com header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.b="jTb6EUMh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B56FD206FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QVfzTKV066qUok0k5T9+povin0DPi6xXie6foLFQaZA=; b=R8c60m+2/TVMIg7gqYJRJjOCz
	zNZA6Xw9nlLTPVS4zjrnKMr3ckzGf5hn0v66LrRHKzw8HQ3rylkkNXdDRN5RE/XQNVXzJNF6eMWKn
	jewzsE1pJ2gIph6OPFRyyBzGYaMoMJ4605R263d1aI6BaHmt+KEFaCxr8dQvk2Y/7N1p/xvnWaWKG
	8q0OlWvKa0TLVHKsw5tAmWMsgu5x3z4e+zUKkcla4gXXhZS0q9IPQ004IWYAIauKoM5udfezrfgzS
	Y2p6IEpEysK1DHfKgLQmajHrwNo80ASPmJ2Ak17Aqn/apSavlBRyVT/692D/8VISvolbYpeRqj0pS
	b+mbgcKow==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kONyb-0005Yh-Ao; Fri, 02 Oct 2020 16:32:09 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kONyW-0005X7-V4
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 16:32:06 +0000
Received: by mail-ej1-x641.google.com with SMTP id i26so2803267ejb.12
 for <linux-rockchip@lists.infradead.org>; Fri, 02 Oct 2020 09:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vLLPjfNvFj7pR8od0hNiiSOWfDNa8LYk1h1kkUXgiLI=;
 b=jTb6EUMh+OlIVxa0PimfuLDmy32yYPGXpiPQNOPMPTKpXMlOXqvdBOwJsEqs3UHr0n
 FdHKQYQv8p0C8SbBAXcaTSo9M0hnVFKkc8wQNxABPUydB4w7Ith5G/R/1rKuD3Tk1HAJ
 hjw43tlAuO2zw4gzr2fgq/4Noz+d1eJpnnmpZytHQDEV1Uu4q8ZEF9aeB4dUzi1EZnpe
 sK0bQgEvhw/vmExBNToYiS3Sdty9YXTeMR+qVqdMZ+RVygI7ANh5YS9F8JQ8pxwczwFs
 1SmX7VUV1rahd5NYGXEdiw6EgVJ+PfpzOBReLLCb6besxYeXIsBPzaQegvBk5pFRLdEt
 wfgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vLLPjfNvFj7pR8od0hNiiSOWfDNa8LYk1h1kkUXgiLI=;
 b=f0KZ8F+XKnb0QXr2zH5ppaqnTdXfXNwNesYNvdrypo9Mizqgpmscv4NTbr/YFAZQxh
 UAInoE8EXWTsKk7jDE1pWqojqbGC4w/zyygM8HtoCq6XVzysjpgt4ExSlmLRW1wTXYbL
 52Q3aNdDE4vIk2x66U8/TKkzHFXu3VDN3WuSdmUVkVm8by+il3UBnohNFH7yPJ/VQIjq
 piL/fAg9D5MN9gnyOlTYuYMCa7D+vfqYojHhPW1/KxLdptIM7SUQMpXf6yiQsAZuji8V
 BnOtdU/jvmQ33sThDvYadvdTth9gp6l98DJ3xyIs8gPdTiDQHLn55ybYmncI1SU4UDUn
 J/Ew==
X-Gm-Message-State: AOAM533kv6P3dR6zl4/8/o9HEdvK3oQqVy1sz7kN8/1jKWv5LTDm+979
 O8o0oJnhbNPQ3/+OlPCNOZXqqPsAPArWDopaxvsiNQ==
X-Google-Smtp-Source: ABdhPJzvIGZTSYXeDVvGycc/ET+O0eXN5kjaAPIg+hkk+PtA7S7pK0p+VHcosY6vL17tFeqld+x05+aclFHZCM+hktc=
X-Received: by 2002:a17:906:3399:: with SMTP id
 v25mr3079580eja.51.1601656322242; 
 Fri, 02 Oct 2020 09:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
In-Reply-To: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 2 Oct 2020 13:31:50 -0300
Message-ID: <CAAEAJfCBi3AE23hbHB19FFNpmELp2hh3BU+qrdtmgBFJzv9A_g@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] media: rockchip: Introduce driver for Rockchip's
 camera interface
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_123205_415249_23094056 
X-CRM114-Status: GOOD (  17.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Maxime,

On Tue, 22 Sep 2020 at 13:55, Maxime Chevallier
<maxime.chevallier@bootlin.com> wrote:
>
> Hi everyone,
>
> This is the third iteration of the series introducing a driver for the
> PX30 camera interface.
>
> This was previously known as the "cif" driver in other iterations, but
> was renamed to "vip" following Ezequiel's advices to match the datasheet
> name.
>
> This is based on a BSP driver, and I'm not fully familiar with the media
> and V4L2 frameworks, so I guess some review is still needed.
>
> This new series adds some stability fixes, and introduces the
> double-buffering frame handling, giving better performances.
>
> Thanks to everyone who reviewed the first two iterations,
>
> Maxime
>
> Maxime Chevallier (3):
>   media: dt-bindings: media: Document Rockchip VIP bindings
>   media: rockchip: Introduce driver for Rockhip's camera interface

I can't find this "v3 2/3 media: rockchip: Introduce driver for
Rockhip's camera interface" patch in my mailbox. Perhaps it was too
large and got filtered?
Or maybe it's an issue on my side?

Cheers,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
