Return-Path: <SRS0=7n+9=JG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DC12C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 04:18:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F4B161177
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 04:18:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9F4B161177
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tjL34xdbwOyTvnliToKGsoe/la2W1mJoSiOGT7RKXXE=; b=euJ6I2CUGxXnrDSiX3279Ilzn
	dzlBohyOdQQf4IyMYngfz0egTRMcVcT1SZS9xzo0jvoMai2EocC+wHeseC8wOYMK62A+wklCjuc+I
	2sbBJOHBGkXEILbovhe6O4OPiLlkm4FQ2GYGzD/ARP5R8Uv7pXlvoVt99WimSJxcQrDMKnm8Y46zC
	7inKktiZSnCjaN7o/7DxqH1OKadTty+Cjwmy+kUIxpajJl2RoSwjtCa90N0GMxpoGWV7NBLmIkiGd
	tuxPX1ASEarFf3cRG9QHO1Tpz/AZk5dw8916q5IvURMIHRrpGZ/s/LSE35nH/S2u7LHNtmh1QUInr
	qkAF/JCqg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUiav-009zxs-9I; Fri, 09 Apr 2021 04:18:09 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUiak-009ztV-Qd
 for linux-rockchip@lists.infradead.org; Fri, 09 Apr 2021 04:18:06 +0000
Received: by mail-ej1-x62b.google.com with SMTP id w3so6510068ejc.4
 for <linux-rockchip@lists.infradead.org>; Thu, 08 Apr 2021 21:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xjLmX+0W+Jqko8UnmbNDaV4NBI6cs+ZapnzWx2XbzL8=;
 b=FueXYB6uy3pZNO93x50/2tghHZBuN7kLOv+hepFCjZj3H/EyNcEesP35TElP3218qh
 0KOwlx5TMO24WACwX7dOLoTEPSqUa5gXJ8Mt4mWVUKJ2tM6qCtU5u1MdO2mdDE42rYEc
 OqdYKctOv5UwSMco5ED7OIVGyjeOEQyS+FfKdqlJUvOC5LK1askcPiGg5XBytqZ7KDQj
 xnZyLZpi2TL7YbmjQDgECQz+saEWMgqH3u17NRf5E4seu8YoszhrHQtVsafd6nDgn1e1
 KJl+izlDeqGOaWu1WQlm9CyqNoaBlrbFRL3tzZ9S6dZVZgJx1e1ttObDd/UnNZTNfqHm
 KfXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xjLmX+0W+Jqko8UnmbNDaV4NBI6cs+ZapnzWx2XbzL8=;
 b=gJNtI9HteiNlMaGW3J7hP5SyN7yRxtsWRmyVM+Y5eLpSnXXLCU8umoo+p4IyDXqgDA
 seFDFhryt/ZcoJ9e9kUPK2uB2jqJKBDo20cwY2WoLr2IgNhPeO1qjjky5A+yvH2uUjs6
 WNCauK2ifTZe8PlmoF1xZsZryhQlqL99KB1jTEReaTv7HiJ50P8IFe4zXiRCZK1eamCo
 Uqr1qO4yWW8XOIHldVKFmquGxEq04ILsCvPt1MttiTmWukgACTp6yKyM9b2pCETcX1SN
 ZQlGZvoERT0vtv3SLhNCC5qLzsbxKKo0+f7uQ/TbbH1nqthtxg119znhLMK+knHFj833
 8LWA==
X-Gm-Message-State: AOAM531pOrw7DBcR+/pkEy9rrqMH2Ca1hbPVRXUlPE5oaOVg0gKo4TMH
 /QVBzqc9IpNrjYAkvAnyqVj3SXdd2ecaH3cMVBRlTMMlOX019w==
X-Google-Smtp-Source: ABdhPJzLwQMMroP5RiiLjJwxVb4h7XR/9MCox0k4BlZf5q/dnYFVfklNVCiigBwqcaAU7+O3JPdawaf00SekOCw9ZHQ=
X-Received: by 2002:a17:906:148a:: with SMTP id
 x10mr14411250ejc.92.1617941876621; 
 Thu, 08 Apr 2021 21:17:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210304013342.1106361-1-jay.xu@rock-chips.com>
 <20210319081441.368358-1-jay.xu@rock-chips.com>
 <CACRpkdY+A4bsW28yXRGeGVnK_UcR70sMeX3jpABGVJc49A-xcg@mail.gmail.com>
In-Reply-To: <CACRpkdY+A4bsW28yXRGeGVnK_UcR70sMeX3jpABGVJc49A-xcg@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 9 Apr 2021 01:17:44 -0300
Message-ID: <CAAEAJfB3csiXBtAioV768PYMb4Sv8UYvmaVaOXZDhJWEzXPLeA@mail.gmail.com>
Subject: Re: [PATCH v4] pinctrl: rockchip: add support for rk3568
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Jianqun Xu <jay.xu@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_051759_715948_439BCF82 
X-CRM114-Status: GOOD (  10.94  )
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

Hi Linus, Jianqun,

On Thu, 8 Apr 2021 at 10:41, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Mar 19, 2021 at 9:14 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> > RK3568 SoCs have 5 gpio controllers, each gpio has 32 pins. GPIO supports
> > set iomux, pull, drive strength and schmitt.
> >
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> > ---
> > v3:
> > - fix route_type to route_location, compile error fix
> > - remove slewrate option
>
> This v3 applied. Any additional review comments can be fixed in follow-up
> patches.
>

I'm really glad to see RK3568 happening this early :-)

Seems we are missing the dt-bindings for the new compatible string
"rockchip,rk3568-pinctrl". Is there a patch for it somewhere?

Thanks a lot!
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
