Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FA1AC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 20:49:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD91E6105A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 20:49:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DD91E6105A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEvmz53oIFiELk6TZzKPG/YDkc8nrAGh2hFx4WoU/5Q=; b=mmGaKDfu3eZrZN
	8kmHxScsquWL7niI8DC3cfB+0d6OuQ6sSYgijgtElGeeRr/Mlta/lbDI/1xf4MorINCBLCKsz/10c
	BXNB0GoL/nh9LCdbEof2CSyhyxf/QIgPSILlMutn7BhIIOJJFkKKuaROuOcS6sUHsdNsHmX/q0Hjt
	NkdwUHnosXg1mllhMKy9mLPoLQeh8SkfkdW9muWAq5rDoEBA13FytK4HZ5tjtKJOcGPJI6xA26Rwq
	62WxYMv8v8UJ+v0wICCxJpPRI5FMAMXMFbivlMbPUVrKqPa1W7Z/UeBBtMEgWRNbSU1Py8ML0BNzY
	8d62UgIJBDnNcZ4uXcXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQyJn-00CNhj-5H; Thu, 16 Sep 2021 20:49:15 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQyJk-00CNhO-3q
 for linux-rockchip@lists.infradead.org; Thu, 16 Sep 2021 20:49:13 +0000
Received: by mail-pg1-x52b.google.com with SMTP id f129so7404163pgc.1
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 13:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JVccC7Mvhx6o/bD0bV/Vwew1fi+OqcnvpEf6l5YyNgw=;
 b=U11E3cp/VcjDGjgrxf4xUJz9A41+9cWJCoK9pSNjrrUmWl6XrcGmmJA/+yoz415uOR
 KfsmgLy0Ba4ovviFJezWVgCkmrVJC+LbsYSWK4pq5kL/7C+NixrIEwf7dUPC/V8KCYVy
 gmX8t+NrGhcmy74P5MtWN3mT1/MR4y110HLEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JVccC7Mvhx6o/bD0bV/Vwew1fi+OqcnvpEf6l5YyNgw=;
 b=t8z96npqiaOeOF7CUrR09o+3blF43xH4G5puHBDbqVebUTCkGx7Kd9j6+rwpniVAa3
 us57ZsGsVs7NUKnf+v+c/6XXZrr1HSOSfBxSEimvRfSQ4Azl+FZ69wCaBZCKeZrpbXHQ
 6FsqDEb2y5oI6t8EOdYIOkRafzFG6qT6f4A/nX43U570e9XAWANqKozKeOtbvsGjipjY
 GsYs6X7fBpCmjlu1JFiwQ2ArL3GnDAOCqFR+Wp7I4GOGML4nPvMJI8fXdmUJImssV2UX
 HK7QFk6XNnA5zZ/FXSDOn9rKR9BEWruSNhIx+xt5qboLxfDSpPqgCfafEfiQuWDSYzep
 Kr8A==
X-Gm-Message-State: AOAM5321DvPjFFcIHVQa7Go/xxEfleNN0HPI85eZDTQb80t+GJPYVYMf
 mZUrNSdh9dEzBE2mdsawq0RCGw==
X-Google-Smtp-Source: ABdhPJzq5WRtERTJ0m2De8qFYftJnE0yyziQCswwlGf7HMbsFpKLiXrb66wK9nN+GTdx1h+DY6dToQ==
X-Received: by 2002:a62:838b:0:b0:438:2910:25fb with SMTP id
 h133-20020a62838b000000b00438291025fbmr7297568pfe.45.1631825350816; 
 Thu, 16 Sep 2021 13:49:10 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:d3ec:cf63:aaa9:e425])
 by smtp.gmail.com with ESMTPSA id c12sm3215413pfc.161.2021.09.16.13.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 13:49:10 -0700 (PDT)
Date: Thu, 16 Sep 2021 13:49:07 -0700
From: Brian Norris <briannorris@chromium.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 dianders@chromium.org, seanpaul@chromium.org, daniel@ffwll.ch,
 airlied@linux.ie, heiko@sntech.de, hjc@rock-chips.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v3] drm/rockchip: Update crtc fixup to account for
 fractional clk change
Message-ID: <YUOtw8FmQWoSBO/P@google.com>
References: <20210916202907.18394-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210916202907.18394-1-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_134912_219162_FAF665F3 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
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

On Thu, Sep 16, 2021 at 03:29:07PM -0500, Chris Morgan wrote:
> After commit 928f9e268611 ("clk: fractional-divider: Hide
> clk_fractional_divider_ops from wide audience") was merged it appears

What does that commit have to do with anything? Are you perhaps
interested in its parent, where the rockchip clock driver was actually
changed?

4e7cf74fa3b2 clk: fractional-divider: Export approximation algorithm to the CCF users

I'm just trying to follow along what's going on here.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
