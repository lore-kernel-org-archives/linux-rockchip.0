Return-Path: <SRS0=PFct=EI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A585FC00A89
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 15:39:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F05F2222B
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 15:39:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZkdKaOA2";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="M5MSnBQw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F05F2222B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l1wkZvV88P1ySiWxVYOrijR/fuxFS0bAxok0unPka0k=; b=ZkdKaOA2t4egUcdU+uquC/gq2
	FAiqJD2/dw5crfz1DGQ1/cmDziOj/brp+sOsrlPFVxCC1eHCEYglgWg9NZq4vR6Gq98YZMhQVbfi9
	wCm7mbqzuJUqVwCWqvCoV+Nu8gu1pESSydnpqw1xVQ0rxd0WgjDzquc31dZGfCCDa9/T/ge3MwwBg
	jZV4sstkWb4gh7YsHFnTr+tLfr0yIZRnTR2ga6eV6XBkpJIsUtNHtq9MV3YqMiB62Xb4iQIjdBTlc
	az+gptSVmxru7xfNlU4xlJu3omGdMHjkN1e5KtYWjqHsSxFXtF6X7AMKE+6DyTKZe66GwXAD9wmWV
	om8gWvIPw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZbv8-0002u3-TU; Mon, 02 Nov 2020 15:38:59 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZbv6-0002ta-UM
 for linux-rockchip@lists.infradead.org; Mon, 02 Nov 2020 15:38:57 +0000
Received: by mail-vs1-xe44.google.com with SMTP id w25so7666388vsk.9
 for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2020 07:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fqxNzB9bebjKacS6hCKnWOzs/I4JbN6NsAjF2jZxB5A=;
 b=M5MSnBQw4VuA4GM+wUMVpYnnF898Zci+8IDRgzspk8rVnDVQoYnYpMXs75GmuijejU
 pUykKDtOIARTSfi/0tW08tOHkRLNXJWGVFUIUt1KMxYAfdF/Mh4mAv4N/crX0QzNJOS0
 F3rl3orFZTBb5OMwT6rOXpp5C5sjltk41c5aY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fqxNzB9bebjKacS6hCKnWOzs/I4JbN6NsAjF2jZxB5A=;
 b=mbbA8ZyIphZsCKNZXAE1H0ErvoBFHmfOgKssUMTuBlxeQ6gFQ99WxWEiSpzGwgTw8P
 A6AhUbGgCt9gXJlNaKs7eaJ5cnjVRmEFSZOGdDTn5rW1fFaCZFYHxrYrKk+asaje4RWh
 osQbsR3gKI7f/e4VR5w0zCmpBcijx+C1Ug0Jct5lUZrQJuovqR6bD+EFsT5sIcRHaWNT
 tfbsPS82yRxpvtjOPuW/oTL1dk4Acly5+bMNCPmLHoRsg21qUUwxVvRxG4jS0bjitlGM
 sYZpbf6Ed//kZoFoQPsRk4R7VUMnUBCaQrCSeK7OECrGLOcY64V5d1CLaB2ohUMXJdsE
 hqcw==
X-Gm-Message-State: AOAM530VATsz64E7g3Z+knT7/T01pqUUr+q7sn7GuG4m2i3dtBfCXusO
 5YlSdpsD/GNSKdnotGrw4122QR9TLPgs5A==
X-Google-Smtp-Source: ABdhPJwt4mcloJOl+J5Hd2zwntmW0/R2EDgFOeGF9dWOKCTM2skD7Y+oiYDHjgU9jlTAlT5tjZtOdQ==
X-Received: by 2002:a67:fe12:: with SMTP id l18mr15955675vsr.35.1604331532956; 
 Mon, 02 Nov 2020 07:38:52 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com.
 [209.85.217.49])
 by smtp.gmail.com with ESMTPSA id l16sm188377vke.27.2020.11.02.07.38.50
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Nov 2020 07:38:52 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id y78so7687108vsy.6
 for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2020 07:38:50 -0800 (PST)
X-Received: by 2002:a67:ec9a:: with SMTP id h26mr14954133vsp.34.1604331530584; 
 Mon, 02 Nov 2020 07:38:50 -0800 (PST)
MIME-Version: 1.0
References: <59a5676c-cbf7-4a8e-ace1-f079e09d21a8@gmail.com>
 <CAPDyKFocOzHfaZyGPJbUDMiTrV1DoEUjdu7TMN5B1wPjBiBS2Q@mail.gmail.com>
In-Reply-To: <CAPDyKFocOzHfaZyGPJbUDMiTrV1DoEUjdu7TMN5B1wPjBiBS2Q@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 2 Nov 2020 07:38:38 -0800
X-Gmail-Original-Message-ID: <CAD=FV=U1arH7-VRL_Xevvu_=1A9XKjqf4rZ4JqOM0ZUtWP716w@mail.gmail.com>
Message-ID: <CAD=FV=U1arH7-VRL_Xevvu_=1A9XKjqf4rZ4JqOM0ZUtWP716w@mail.gmail.com>
Subject: Re: [regression, bisected] no MMC on rk3399-gru-kevin with 5.10-rc1
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201102_103856_996825_AC606392 
X-CRM114-Status: GOOD (  15.91  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Vicente Bergas <vicencb@gmail.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Thierry Reding <treding@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Mon, Nov 2, 2020 at 7:02 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Fri, 30 Oct 2020 at 23:04, Vicente Bergas <vicencb@gmail.com> wrote:
> >
> > Hi,
> > commit 21b2cec61c04bd175f0860d9411a472d5a0e7ba1
> > mmc: Set PROBE_PREFER_ASYNCHRONOUS for drivers that existed in v4.4
> > broke booting rk3399-gru-kevin.
> >
> > The kernel waits forever for the root device to appear on MMC.
>
> Waiting forever sounds weird to me.
>
> > Removing the line containing PROBE_PREFER_ASYNCHRONOUS in
> > drivers/mmc/host/dw_mmc-rockchip.c fixes the issue.
>
> I am guessing when we enable async probe, we reveal some other
> existing error. Or, perhaps the rootfs mount point become wrong?
>
> Would it be possible to share a boot log (before/after) with some
> driver probe debugging enabled?

Are you sure you haven't just got your MMC block IDs shuffled now?
Perhaps a careful application of the newly-supported MMC aliases would
help fix things?  When we landed, Ulf pointed to:

[1]
https://patchwork.kernel.org/patch/11747669/
https://patchwork.kernel.org/patch/11747671/

The async probe can cause shuffling of block IDs which were previously
quite stable though never guaranteed (everyone always yelled loudly
"use UUIDs").

I will also note that I just put v5.10-rc1 on a rk3399-gru-kevin and
confirmed that it booted up OK.

-Doug



-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
