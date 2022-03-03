Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60032C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 21:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlQakHctWC+oJL2E9Shm01kSW+NKW4aMC8wfIENU0ow=; b=xee/cWDmLdOcvC
	OLMi9lkdxC478U1rztnTYyV3HxdJY9udqvzFE5MA2OT0wGRrYtVHIoxyYkjZN+nlcBzxU92tPL+Fx
	BozMDj9vV7C1k2ySPma3Oxlb7fMrO354zpu77dfgvtx7wTLsNwRboHQ+SMRsuSrmAGbXg7IktfHjH
	j4ejt7o1Fw847hcFzLVLo9SPu2FPz7oVYtwlSssqqULKv2HVTcKcPDstEk0HX1j3sVzYnGZPgp0tU
	qkpFXi4h3rcEd2kQFmbN0qtfSB9GOKn18X0nr76x1mxqed/e+QsOGjZVz7pG1S2u7DXBOfZ6Y3z5S
	h+uJ8MjVHNjsd+y9KBZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPtN8-007slA-JQ; Thu, 03 Mar 2022 21:52:30 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPtN5-007sjW-Gy
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 21:52:28 +0000
Received: by mail-ed1-x531.google.com with SMTP id w4so5852506edc.7
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 13:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GYiLJYYPJSjUhcXRGu1IuMA7OVQstg8mWS33iyknnRU=;
 b=Zc/WF7ywL7MhnMKbU00JCToNkD/++ZgWE+Y89kS14vE0kJ93fDvXJU5KZ4j0/9sqRK
 u9AjOEVVqB293uk/CyLW01XQKf8FgYoh55sm0DdlmYgEg1i9BkiLpKzZDXMyBcFxiTKe
 r1vJZPhN00yxmarO4mEaCG8FJaDbFVV0xnbKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GYiLJYYPJSjUhcXRGu1IuMA7OVQstg8mWS33iyknnRU=;
 b=eRizT3GAPMaj3Ar0XmGKM6jJgKQlXIOW1bXOf+OLtqN3TZzxGe/bjhXvggJv3aSFec
 0FKr/zrWsYAPSFmfIZLf9ujpAp4eBBkI+6tWNSSmXDmdG6NMkYIWnguRFAveJYAWFbRq
 E4dEiJ6kx+ZAF3LttZYzRlNRavJlyNpG35/ZCNSb94Rt0Nsob14S/KJjh8L+3zTxrJ5I
 Id2FoXwWQYgTY0wjikv+yJvEhpFTXzMKLzoXJH4lFUOwbgwRqsWRRMxP/Js4ZsFOQUZj
 7gOvXJ5geL5wrlRtba4mv/E9v/oTh5zC8EpJq9BBvWtehBe6p6wEOlcGPH8CqvchukzX
 OPLw==
X-Gm-Message-State: AOAM533/DaMTjJSOj6Zlijy2fRU43nPsIyCECUi2GI6d1LrmWQzzdhxT
 FGkA2/q9DsvS0vfo2ysD9YYdLpyZrAUWAuCZ
X-Google-Smtp-Source: ABdhPJxc/H7Zo9Rp5MPV770wdamwK41h6LlwULtnyt7APkXz5TIeF4uUFRDnNCvKCkP3X4G1EaUSFQ==
X-Received: by 2002:a05:6402:5241:b0:415:b1c4:4c6a with SMTP id
 t1-20020a056402524100b00415b1c44c6amr11023801edd.324.1646344343320; 
 Thu, 03 Mar 2022 13:52:23 -0800 (PST)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41]) by smtp.gmail.com with ESMTPSA id
 u1-20020aa7d0c1000000b004132c0a9ee3sm1311251edo.84.2022.03.03.13.52.21
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Mar 2022 13:52:22 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id i8so9819094wrr.8
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 13:52:21 -0800 (PST)
X-Received: by 2002:a5d:64ed:0:b0:1f0:6672:f10c with SMTP id
 g13-20020a5d64ed000000b001f06672f10cmr1142174wri.679.1646344341238; Thu, 03
 Mar 2022 13:52:21 -0800 (PST)
MIME-Version: 1.0
References: <20220303015151.1711860-1-pgwipeout@gmail.com>
In-Reply-To: <20220303015151.1711860-1-pgwipeout@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 3 Mar 2022 13:52:08 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W6O5TtOHdVCbOyu221HrQWB8CnvcKA-5G49UF6TJaaHQ@mail.gmail.com>
Message-ID: <CAD=FV=W6O5TtOHdVCbOyu221HrQWB8CnvcKA-5G49UF6TJaaHQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: fix handling invalid clock
 rates
To: Peter Geis <pgwipeout@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Addy Ke <addy.ke@rock-chips.com>, Linux MMC List <linux-mmc@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_135227_616339_A6C9F2D9 
X-CRM114-Status: GOOD (  17.20  )
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

Hi,

On Wed, Mar 2, 2022 at 5:52 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> The Rockchip ciu clock cannot be set as low as the dw-mmc hardware
> supports. This leads to a situation during card initialization where the
> ciu clock is set lower than the clock driver can support. The
> dw-mmc-rockchip driver spews errors when this happens.
> For normal operation this only happens a few times during boot, but when
> cd-broken is enabled (in cases such as the SoQuartz module) this fires
> multiple times each poll cycle.
>
> Fix this by testing the minimum frequency the clock driver can support
> that is within the mmc specification, then divide that by the internal
> clock divider. Set the f_min frequency to this value, or if it fails,
> set f_min to the downstream driver's default.
>
> Fixes: f629ba2c04c9 ("mmc: dw_mmc: add support for RK3288")

I don't spend tons of time either Rockchip or dw-mmc these days, but
your email tickled a memory in my mind and I swore that I remember
this whole 400 kHz minimum thing, though I never dug into it myself.
It actually looks like the 400 kHz minimum disappeared sometime in
2016! See commit 6a8883d614c7 ("ARM: dts: rockchip: replace to
"max-frequency" instead of "clock-freq-min-max"") which only accounted
for the high end, not the low end?

I'm pretty sure I've tested on veyron since then, though and I didn't
see any errors, but perhaps this is because I was never using
cd-broken and the 400 kHz always worked?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
