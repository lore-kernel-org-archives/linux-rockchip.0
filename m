Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED0FEC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 21:05:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 82D4E610CC
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 21:05:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 82D4E610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ykGklTBPOp/cvIUdtZQ1AOpYqmGzTX/1BQTyz5nLFI=; b=ifs+bym9jK//ni
	sBdrqdGgLaGME6zUXHx++YEcNXciWJ3ge5iHkbxhy+eXqNqRzPQCy2D8UUnGMp0nqt3/0g4hQd42G
	miWc96z9icBqNEfCctDQoAC8GSzz261I+kQxwTBhvBfm0jsAAzYZ8j1QxYdCiOb2LIvHT9h4lNcHQ
	cJkBejUDMYYGwfAlTTHBZUjbvPJzeiFSmVEY0c26kjLuAu5RerYx63lYrRQWVskkvcDaxkqyh/zkz
	FzKJ8Qf5qyTJzRIFbzaa61nJUtEAl1ENZ6XNR/kYbTbocBkfC2MdGl1liLP1kCbwlYJhsGzh+2hu9
	aEYzfiHp7x1wXbOegaPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHBhP-00C76q-Rh; Fri, 20 Aug 2021 21:05:11 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHBhK-00C75n-PD
 for linux-rockchip@lists.infradead.org; Fri, 20 Aug 2021 21:05:10 +0000
Received: by mail-il1-x130.google.com with SMTP id j18so10794212ile.8
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Aug 2021 14:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AHuE68SZeZJgo+ZJ5047NRixzSrlnFN0gqAr82i7YR8=;
 b=mn6E6ELoWiFgPJPOOfbw3ckSVf0xoK3tXZ1RucjWFtWtIdk6bbX+bhVl69KHevLS6o
 5eT2qowd6SG4JEwqxjmWQcE+aL1SElXiJ+ofmGEyhpny9Fr8O6OEd3blMOBTfn4xPnFj
 Y0EcBTzvH76uzG2rh5QuY6BYihUcoEm2QMrQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AHuE68SZeZJgo+ZJ5047NRixzSrlnFN0gqAr82i7YR8=;
 b=bJ4XZdwbqNuCrVEdRGgJj9ZE6gjhejInwaKF5ioX8hLI1s+lf+sQoQeA6PA6vWX8Jq
 XI6rBQPKrXg480ZkD3TfnksO82SyQ4UUYnN25QSPC3BE6PynXS4Z/Zhv6sIjI/Rd3Z4O
 yR9+ys6WQBaeB7S8IxtnEBdm2WbGR517QAuwDdeXZzpEKL1v1C8x6kSGWLiPPFpJEyF4
 ueUf/AK6JnOTHMaFygoTJ+aSR52Iyjj6T0YEHC/OvtWeqW2g22yo9NudI77lC0WgkLIF
 ApxuktMKsHOjLITXva52c/J54Dozx1LGwp8bc+AQZOFgHwURJR56/wUrNX6D+TsiIwz6
 1MHg==
X-Gm-Message-State: AOAM532NcBV0XpYaf4dpZvgvtfWq3aFzCQGqEgqv/2hWbuzNlBD0nCJR
 Jz8RipWYOJFfF7Tyza4EHRJm6aoFuOXFnQ==
X-Google-Smtp-Source: ABdhPJwL5Tf6mPmnKICH1knSxNNe+3JpT1Gh0cY7TS/XOPmPvRkodqlrmhQHCFXPDbYszRVbLUuR4w==
X-Received: by 2002:a92:870b:: with SMTP id m11mr14239716ild.132.1629493504516; 
 Fri, 20 Aug 2021 14:05:04 -0700 (PDT)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com.
 [209.85.166.176])
 by smtp.gmail.com with ESMTPSA id s5sm553824iol.33.2021.08.20.14.05.04
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Aug 2021 14:05:04 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id s16so10772416ilo.9
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Aug 2021 14:05:04 -0700 (PDT)
X-Received: by 2002:a92:d304:: with SMTP id x4mr15198676ila.82.1629493503689; 
 Fri, 20 Aug 2021 14:05:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
In-Reply-To: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 20 Aug 2021 14:04:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UwAcJEDE3BQYuCDq4kRKPFAsuzPOseGY66wfXcW8Wn7A@mail.gmail.com>
Message-ID: <CAD=FV=UwAcJEDE3BQYuCDq4kRKPFAsuzPOseGY66wfXcW8Wn7A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add RK3399 Gru gpio-line-names
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 LKML <linux-kernel@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_140506_898515_68AC74AD 
X-CRM114-Status: GOOD (  18.36  )
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

On Fri, Aug 20, 2021 at 1:38 PM Brian Norris <briannorris@chromium.org> wrote:
>
> It's convenient to get nice names for GPIOs. In particular, Chrome OS
> tooling looks for "AP_FLASH_WP" and "AP_FLASH_WP_L". The rest are
> provided for convenience.
>
> Gru-Bob and Gru-Kevin share the gru-chromebook.dtsi, and for the most
> part they share pin meanings. I omitted a few areas where components
> were available only on one or the other.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  .../dts/rockchip/rk3399-gru-chromebook.dtsi   | 176 +++++++++++++++++
>  .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 180 ++++++++++++++++++
>  2 files changed, 356 insertions(+)

I didn't walk through the schematics and double-check the rails
personally, but the idea here is right. This matches the type of thing
we did for veyron, like in commit ca3516b32cd9 ("ARM: dts: rockchip:
Add pin names for rk3288-veyron-minnie")

I guess one minor nit (now that I look back on the veyron patch where
I mentioned it explicitly in the commit message) is that on the veyron
ones we sorted this down at the bottom with the other pinctrl stuff
instead of sorting it alphabetically with everything else. I'll let
Heiko say which he likes better.

I also notice for veyron that we had a second "ABI" exception for the
recovery mode pin, but I believe that goes through a different
mechanism now so we're good there.

Even though I didn't do a line-by-line review, I'll still give:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

...though it's possible an "Acked-by" would be more in the spirit of
that? Not sure...

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
