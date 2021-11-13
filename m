Return-Path: <SRS0=KmeF=QA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1072C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Nov 2021 00:52:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF34A608FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Nov 2021 00:52:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AF34A608FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZFuig/gDgQBvjEXgvCRXry53zHzo5GXUfpRx6K7fSA=; b=Krf4aknrH01TaD
	vLw5Yu4ngb0Zqj3k8HqZF7FmFj+k00xv6MTTfxGFvg6Mj0h7s65musP8xtxscNuKRFzjZHEMgSMi9
	kldeQVe7Q3S8PTx3Y6423ohnk1jMP1DRgo56p2M/lxc3a6u808L3N8xEk8W3TQ9fLUzjFGTSB2uJQ
	G92WaSe89pnRrvy1zC5Mv1xvG6GEL8XyMQrqnhda6MXuiMk0/7ekIizBjzlN242MrhwHCcn4RRfGr
	WYYbM3Rlrt427UcM3UzbK6dThDbVdXLCCpKXcD1/BhVM6eej7ltGJbo58a+e1Oh8EYQAS+8mTHWMU
	PQ6yyY2NTUW5bXV5TKGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlhHM-00Bx1h-Md; Sat, 13 Nov 2021 00:52:24 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlhHK-00Bx0e-3b
 for linux-rockchip@lists.infradead.org; Sat, 13 Nov 2021 00:52:23 +0000
Received: by mail-io1-xd2a.google.com with SMTP id m9so13453301iop.0
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Nov 2021 16:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ar+96otnAzeN5XyQtZwRbRvg/01cns8FSyH4rDQT4T4=;
 b=EGyRVXShdBOHi4a5JP4tWIcCl0qnPG5C3nLBIQVAP3oPkc2D14VyhTCDf7WNGPpRWr
 mqinLcayYYsxIC9Uqr88/5qSk85g0nMYmUhOLIr1YMBQRgvwgY3WTPCSU3lMRDcrnE+d
 I6OXzQ9Pqmk6L5tz0hqrgUcLf1+d8cQjHVzuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ar+96otnAzeN5XyQtZwRbRvg/01cns8FSyH4rDQT4T4=;
 b=6sa+X4QFqhh5jcPDQ07rgKgfTRQMuqMykMT/8Y/djZDR3B9QDq/b3woAluh9rDrMau
 XIgv9ne1Q7mBq1VkSyFZrevTVizPw20JInaJjY39xt85/E87OZIwzzQcsg7WsrAx3reo
 +/cSnHguoQvTHUTRpTx9QF24hV9RjsO0XWpLWziff72Sjdba1wYbfBHrQEAbGSwQCd77
 g3fPFDdMiF4LbS7Ua2sNUSx+NQt65z2ISuj9yHciyXN+WN6jxM9oPWtHmnbFsr0JXTVh
 EtBO3G8GmygmmEvLlkrsNUi0/Wu/TOy1+PEnab+nZLTPAtJXbXfhIkvU+03dgoaq+6+O
 YfNQ==
X-Gm-Message-State: AOAM533sZEQPOyFhxwCUhthpLTCyScW8q4WmYi9bwcfQQvocpBa0zxWH
 ANAAinPIqHp6YffZuvs17HA3QzvbTZPCAA==
X-Google-Smtp-Source: ABdhPJz+YNKwcJbw86NpKRi+2O81daeUaFv0XvtZUBjOnr9rljz8hq80/IOcZZZiDPutrvZRCcNCsg==
X-Received: by 2002:a05:6638:2103:: with SMTP id
 n3mr14767913jaj.25.1636764738611; 
 Fri, 12 Nov 2021 16:52:18 -0800 (PST)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id f2sm3899385ilu.54.2021.11.12.16.52.15
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Nov 2021 16:52:17 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id k22so13242160iol.13
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Nov 2021 16:52:15 -0800 (PST)
X-Received: by 2002:a5d:9753:: with SMTP id c19mr13234220ioo.136.1636764735260; 
 Fri, 12 Nov 2021 16:52:15 -0800 (PST)
MIME-Version: 1.0
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.2.Ie6c485320b35b89fd49e15a73f0a68e3bb49eef9@changeid>
In-Reply-To: <20211103164002.2.Ie6c485320b35b89fd49e15a73f0a68e3bb49eef9@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 12 Nov 2021 16:52:03 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WDRDHVSiFW+yxaR=Z+mNdKnUY_eF_CFqKeQhcKmdag5g@mail.gmail.com>
Message-ID: <CAD=FV=WDRDHVSiFW+yxaR=Z+mNdKnUY_eF_CFqKeQhcKmdag5g@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/self_refresh: Disable self-refresh on input events
To: Brian Norris <briannorris@chromium.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, David Airlie <airlied@linux.ie>, 
 linux-rockchip@lists.infradead.org, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Rob Clark <robdclark@chromium.org>, 
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211112_165222_178046_7C06F261 
X-CRM114-Status: GOOD (  19.72  )
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

On Wed, Nov 3, 2021 at 4:40 PM Brian Norris <briannorris@chromium.org> wrote:
>
> To improve panel self-refresh exit latency, we speculatively start
> exiting when we
> receive input events. Occasionally, this may lead to false positives,
> but most of the time we get a head start on coming out of PSR. Depending
> on how userspace takes to produce a new frame in response to the event,
> this can completely hide the exit latency.
>
> In local tests on Chrome OS (Rockchip RK3399 eDP), we've found that the
> input notifier gives us about a 50ms head start over the
> fb-update-initiated exit.
>
> Leverage a new drm_input_helper library to get easy access to
> likely-relevant input event callbacks.

So IMO this is a really useful thing and I'm in support of it landing.
It's not much code and it clearly gives a big benefit. However, I
would request a CONFIG option to control this so that if someone
really finds some use case where it isn't needed or if they find a
good way to do this in userspace without latency problems then they
can turn it off. Does that sound reasonable?


> Inspired-by: Kristian H. Kristensen <hoegsberg@google.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> This was in part picked up from:
>
>   https://lore.kernel.org/all/20180405095000.9756-25-enric.balletbo@collabora.com/
>   [PATCH v6 24/30] drm/rockchip: Disable PSR on input events
>
> with significant rewrites/reworks:
>
>  - moved to common drm_input_helper and drm_self_refresh_helper
>    implementation
>  - track state only through crtc->state->self_refresh_active
>
> Note that I'm relatively unfamiliar with DRM locking expectations, but I
> believe access to drm_crtc->state (which helps us track redundant
> transitions) is OK under the locking provided by
> drm_atomic_get_crtc_state().

Yeah, I'm no expert here either. I gave a review a shot anyway since
it's been all quiet, but adult supervision is probably required...

I can believe that you are safe from corrupting things, but I think
you still have locking problems, don't you? What about this:

1. PSR is _not_ active but we're 1 microsecond away from entering PSR

2. Input event comes through.

3. Start executing drm_self_refresh_transition(false).

4. PSR timer expires and starts executing drm_self_refresh_transition(true).

5. Input event "wins the race" but sees that PSR is already disabled => noop

6. PSR timer gets the lock now. Starts PSR transition.

Wouldn't it be better to cancel / reschedule any PSR entry as soon as
you see the input event?


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
