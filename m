Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E97C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 15:04:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 963F4610A0
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 15:04:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 963F4610A0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:CC:In-Reply-To:
	Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=2GGh0kiN8Dg0H61axZndZI2eUyDzG1v5+Tz7Dbj7HsY=; b=AlheTc6aC9MOIc/3/HYpEU7pf7
	UDK5qey8rFbW+iK0KquPlvmIjw8huD2tDeS+Yu0j8K26pn+KoGoHlEBbpdAeQta+TUjZqQ9Lm4N96
	Jku6IL/BpK9fyptj0BZeclPQpWa3vBO4YStHNXjCzaIsTSDLCfNDXwgFr2AhLH8Uc0VCvwJJUwkKL
	lOjLI/Eg4hRxKJM5neLvt58mr7JdMxPXaMWsSnbImxL7wRwWt5CWQ9WKqxV8AED6iGcFWmpG+B1IB
	49ETaKA3hmq2gVbMlaHVPafmnITPOiyoRvkMzpMajRPjNUitXEBGGd2beAbQv0sMUU6sdjPVGxhNS
	RbimC1Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mShJg-004ouh-De; Tue, 21 Sep 2021 15:04:16 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mShJd-004ose-20
 for linux-rockchip@lists.infradead.org; Tue, 21 Sep 2021 15:04:14 +0000
Received: by mail-pl1-x636.google.com with SMTP id j14so6432660plx.4
 for <linux-rockchip@lists.infradead.org>; Tue, 21 Sep 2021 08:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=U5sHi8cjj306oaDb/RAXcVkT6LaUnwyG2i0jV8EMZXU=;
 b=14iJ+UOQEeWmwBidYb3ZlxxSmCpFBa3g6iXvn7L0ljJoEGakHlSEYQSufQV3/pWn7k
 RmXmNZoOrX2e/qhdKKODpeJg288zZawoWQ5Z3ZQLfbCTHhyrt8FDA8PhA3O0HcK1bD6J
 yUcmupu7CrDazE/5BqnZFO3TkN4L9ho2BmIU8+xEuXblGAYF32fghkbl5PekXw/k2+mE
 MnQjDB8mKe0PmNLzNJitE8kc/zhzXDkVF7X9NoDW1h08qWh4w1x54GXhSGQ7z33PR6qk
 oRqjS6nE+5Z/Q+uaDF4TQ/vV1b8aitFLwAxS36E3Mh2vsNOxOfc8zwIxrYUvg01yEaK4
 2u/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=U5sHi8cjj306oaDb/RAXcVkT6LaUnwyG2i0jV8EMZXU=;
 b=fVe8b40xLrCSKDAaPjCpV/KaKM2xHKbNRYXuCsInFf2Z3qJJl6gLPGPHM4lq/EJ85Z
 RmlnG/J0Up7inDr4OxX2aTZgUDx1fC0p3oOBhW8+/XTmeb2bE2UKxtEcSb9PYG7D0tx/
 9RGD+AvPGPVFd0h7NPEd2hAONbjy9IbYXcHwnNe7Gs2hFRcHtcHkaG9gb/anr7Aa7ZFF
 UyfpIVzNWUHNGDCI+dmKQKttjanA6aRSaZTtQOkqTth3XxTz6TNDFu5SD7Px9209kuF3
 wzZvRexDUV1om4fzbK+5wmEfO8Hd+v9PiXeLJ1LZ2KQCBwtdpX7dLEOLS7ge7ey2dIbL
 cRBg==
X-Gm-Message-State: AOAM530U+Tkj32U+T8tAzwKNi5LCzI4e9/M92yIBsHHa694DbdNEDiu0
 043ExVqXG7w2gEUbMCN5H8s2Mg==
X-Google-Smtp-Source: ABdhPJyW5gW8ge2xfEG0UWnF9Yt+QwvDwtXjhnnktAGJe72JUfUp0V0dPz6+uQuDx7TpYQsDz6PgBQ==
X-Received: by 2002:a17:902:edc7:b0:13b:86dc:c9d7 with SMTP id
 q7-20020a170902edc700b0013b86dcc9d7mr27789483plk.88.1632236651341; 
 Tue, 21 Sep 2021 08:04:11 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id n205sm17776069pfd.38.2021.09.21.08.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 08:04:10 -0700 (PDT)
Date: Tue, 21 Sep 2021 08:04:10 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Sep 2021 08:04:01 PDT (-0700)
Subject: Re: [PATCH v2] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume unused
 warning
In-Reply-To: <163221552907.1876143.10392170678364292267.b4-ty@sntech.de>
CC: Arnd Bergmann <arnd@arndb.de>, hjc@rock-chips.com, heiko@sntech.de,
 kernel-team@android.com, dri-devel@lists.freedesktop.org,
 geert+renesas@glider.be, airlied@linux.ie, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch
From: Palmer Dabbelt <palmer@dabbelt.com>
To: heiko@sntech.de
Message-ID: <mhng-4c5264da-5502-4947-b32d-e9008a79ee90@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_080413_185076_88E8045B 
X-CRM114-Status: GOOD (  12.53  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 21 Sep 2021 02:12:17 PDT (-0700), heiko@sntech.de wrote:
> On Fri, 10 Sep 2021 20:43:18 -0700, Palmer Dabbelt wrote:
>> cdn_dp_resume is only used under PM_SLEEP, and now that it's static an
>> unused function warning is triggered undner !PM_SLEEP.  This marks the
>> function as possibly unused, to avoid triggering compiler warnings.
>
> Applied, thanks!
>
> [1/1] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume unused warning
>       commit: f7c57a4566115657c16fd6603b6ef8a21bae5194

I'm not quite sure where that lives, but is it applied on top of 
something or is it merged from the tag?  Like I said a bit below this in 
the original patch, this has started to break the build for me and I'd 
like to pull it in as soon as possible.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
