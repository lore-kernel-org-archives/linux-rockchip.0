Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66C82C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jan 2022 19:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYgNfLMNPUItYA9ZEydhXh0xHhRT9eGnczB4O+67iak=; b=CUm4Lw5H0McfkZ
	HZhbDzy8r4ixN62/wBE55NEZUsXsAtNob9W1jiSaMVP/cNuDwtrz4M55DniYpcLAxBEmpY1LQejUJ
	JQqGyUe1PDjkGwroPb9p2rlxmMsjVQCbbCmeZSnULAaVoJSrsDBYhONqTOKIOLIwXLaiN84cPjIZU
	2AwxCMe5R45Y8uyiRcSwx/TrXsxwEwo7g1RQIGxZoVEFKLKMgfDQU5XX/RvSQqn8HM4H23bhCBDgQ
	cJWM020Szt/3JtqScRdZs5O8B7oxDU7ekuKKAFBryEOb2FoirYanNPRUnWVfX4ZfqgZT9ynWdqa/4
	Wtiera18VuhTqGESjyew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5CNh-00FioZ-W6; Wed, 05 Jan 2022 19:55:34 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5CNf-00Fin7-Kl
 for linux-rockchip@lists.infradead.org; Wed, 05 Jan 2022 19:55:32 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 n17-20020a9d64d1000000b00579cf677301so570770otl.8
 for <linux-rockchip@lists.infradead.org>; Wed, 05 Jan 2022 11:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JlPJsMW5yVPe7P3RKOvMwPlqeJN1/Nu2FfKIApHsgbo=;
 b=DwPxC3cLLNM8XVTzd55gQ7bhxNML705Ttl/ErwNTDEyJwlW4XJMuoiodES7QQ//mSL
 NqvSpNl3q6yIa44pWFb8gv6RfQh9JDnxYAV18DuYJc10XKzkRm4oMwtHC9HPCapN6hMm
 iqc0/E4iLeL6kOCUEBwGPMA/dnUvUs7BdnY/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JlPJsMW5yVPe7P3RKOvMwPlqeJN1/Nu2FfKIApHsgbo=;
 b=jXOcHTHrKNADVSTJAVAmek+YCFjds93syQFRNiSKCu0mEmXVVOn3cIoT7ae0fa7rOQ
 N1f71MM6nauCtUMRKyYpjuHp1/eNzUO6ct+nvwIX+3PoExqSwESrJBEeOn04nXIT4ByQ
 v7Da8f0hsnN/C8aBe/0pCspuWNIcMt1LhuStVFfeTwTrCEM9FU6IsYU9w8aEGcT3Dhwi
 4M4vTJFgF0kgOtLJTgRTONHTrndFYUQh9E6KTktkaCbPoxm9ybbjaHoYdmJ7uNkKgMKO
 lBFhqDAcoOSS6nfF2vXt8Ow9DfUMyGbPRu5vBx3IbFdrnhKpozN/qTsVyPFQuaGR4k+0
 feNg==
X-Gm-Message-State: AOAM531cXpHCR7oDFcd+RTs4/ZZ0hDL0ck8FCBzn8J5atBgItFdEhBFP
 z2lfy2SZl+qVnQFTgCdPf4B/2wbi+TzFdQ==
X-Google-Smtp-Source: ABdhPJxW+h1dZMi++vL2jwKAt4IiWjs82OybAvoaKugFt3vNisCMZRCufNCFPiIaWvfb5FQVsJYcRA==
X-Received: by 2002:a9d:7386:: with SMTP id j6mr930081otk.263.1641412528535;
 Wed, 05 Jan 2022 11:55:28 -0800 (PST)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com.
 [209.85.167.169])
 by smtp.gmail.com with ESMTPSA id g61sm9127005otg.43.2022.01.05.11.55.27
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Jan 2022 11:55:27 -0800 (PST)
Received: by mail-oi1-f169.google.com with SMTP id u21so501398oie.10
 for <linux-rockchip@lists.infradead.org>; Wed, 05 Jan 2022 11:55:27 -0800 (PST)
X-Received: by 2002:a05:6808:3097:: with SMTP id
 bl23mr3823157oib.77.1641412527103; 
 Wed, 05 Jan 2022 11:55:27 -0800 (PST)
MIME-Version: 1.0
References: <20211001144212.v2.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
In-Reply-To: <20211001144212.v2.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 5 Jan 2022 11:55:05 -0800
X-Gmail-Original-Message-ID: <CA+ASDXOEv3xigBaEwtYcGM7Q9uNHrwijoWTHoiLg--UT=vA7TA@mail.gmail.com>
Message-ID: <CA+ASDXOEv3xigBaEwtYcGM7Q9uNHrwijoWTHoiLg--UT=vA7TA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/bridge: analogix_dp: Grab runtime PM reference for
 DP-AUX
To: Neil Armstrong <narmstrong@baylibre.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Sean Paul <sean@poorly.run>, Jonas Karlman <jonas@kwiboo.se>, 
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 stable <stable@vger.kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_115531_725140_ABF31ADF 
X-CRM114-Status: GOOD (  13.50  )
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

(updating Andrzej's email)

On Fri, Oct 1, 2021 at 2:50 PM Brian Norris <briannorris@chromium.org> wrote:
> If the display is not enable()d, then we aren't holding a runtime PM
> reference here. Thus, it's easy to accidentally cause a hang, if user
> space is poking around at /dev/drm_dp_aux0 at the "wrong" time.
>
> Let's get the panel and PM state right before trying to talk AUX.
>
> Fixes: 0d97ad03f422 ("drm/bridge: analogix_dp: Remove duplicated code")
> Cc: <stable@vger.kernel.org>
> Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> Changes in v2:
> - Fix spelling in Subject
> - DRM_DEV_ERROR() -> drm_err()
> - Propagate errors from un-analogix_dp_prepare_panel()
>
>  .../drm/bridge/analogix/analogix_dp_core.c    | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)

Ping? Do I need to do anything more here?

Thanks,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
