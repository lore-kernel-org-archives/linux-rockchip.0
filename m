Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69C8C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 23:35:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DD4960F6D
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 23:35:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8DD4960F6D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSCirfT9GNqHO/VeRjEXezPwDQHp2SuxEILmAqwQ6iY=; b=e8/rTdk0fk7WGA
	RZqW4xemdVTVAZYUMehDwu+ieNJXWpao19sjruRESg54fbJ2M+5kkdB+c2EKDvhaA0fmDC6SvVOKn
	2sWvE7wydUg6IE4ocF44yhn5/YxGH+4cKD27eiyJ2GCvPh16G4SYvZafqAZ2UJeyCLiL8qYDWclwf
	+PvnyAVCQKJPvjIRPb1UDrLdOTqOQQSnvkKWEsbRMaFT12GcxUICCyklWjyyIVIPtaCejX9OHggRb
	QIU4FbawOdMd2S/loV1eGmlcPKk4uOmiO8bJVkMhoIvSO/9pCL5zolD6eukS2urqsjzJsAWm6iU5J
	aDVyV68lIfs+i6UsMNyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRNOI-00F8TV-2F; Fri, 17 Sep 2021 23:35:34 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRNO6-00F8RD-F0
 for linux-rockchip@lists.infradead.org; Fri, 17 Sep 2021 23:35:23 +0000
Received: by mail-lf1-x131.google.com with SMTP id b15so20934455lfe.7
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Sep 2021 16:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PkDGmP0aGYLJS6/pcxej119Ez5GceZ/Qr9wqpNPM2Hg=;
 b=iRflbXUDbQwR8fPuqpGMIZRh5d5XJIBmq1xET2tbgxzSe+8GcHffEhQyAF9XeGYfA1
 l4zVOrlw8Z1Hdpl4/B223pyke78E3D/9CDXOR3ZENcxqmdg4OvgJtr/u8yq3EQXYk6sk
 T7r2o+56gRd5mBmTSwiicZgiyQtw86FFhemFN4LWj0ksot3wSIO4QvNDpuKbIU56ykjC
 T1vggMUqdATSRQnUtCDMnp6Th5CAN+cSR2G3pP1FLHRPaEJlPaJnkbEYGjMGy9Xak558
 kMUztiwqCtIb43GpMoSgmMzVc1IeWXBXaL8dZDHpr2m06b3AjpBbYtLZ9fHOYIfa7uTX
 cC/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PkDGmP0aGYLJS6/pcxej119Ez5GceZ/Qr9wqpNPM2Hg=;
 b=5asjVvQ0BDtjYpvThfQjnZupiiSP7XE5zz4Vl4nwJtVan3Bk1zReSQfaKWnsg6TJAv
 h8am27ttY8uv/ZypRcceh6Io43QpGbYDwhXoppRsw9g0Rc7d/FPSX1a/woKb4+9S+jUF
 RBClW52GWUZdbSSRsTzW5+cc4yxXbTZo79F+Ghckt9UB7KLQClAP/8YfUAQLK1wvVr4q
 kUo3hOkCfTLzndgPA5L0Kdw8y+WFkh6J/r6n2TssYMs51IcQtj/zAWRhtIBObVPsB0Qh
 2BJLBGbvyhZhB8o33985np0J7hdr/BIL3wKjP9qUT6erjcsLjtI1ZvzA4EfAWpoJ49ar
 JSbw==
X-Gm-Message-State: AOAM531vRaSh1sQvPqKU4I5p4Yl63TgBYggep8g4SvTL7W84DYJnO/J6
 OR7gS2RT16ZsXTpHND18eFsBgY5x8EwHGVwX9399CA==
X-Google-Smtp-Source: ABdhPJwCbWUAYcAMUm1bFcDDe3zwixhPDj6NEeY3En+++VFztG2zcjFpXcFPx6/FTV0ZDCyJo9XMKU7O4NzvBvTy9cg=
X-Received: by 2002:ac2:4d03:: with SMTP id r3mr10251096lfi.339.1631921719948; 
 Fri, 17 Sep 2021 16:35:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210913224926.1260726-1-heiko@sntech.de>
 <20210913224926.1260726-4-heiko@sntech.de>
In-Reply-To: <20210913224926.1260726-4-heiko@sntech.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 18 Sep 2021 01:35:09 +0200
Message-ID: <CACRpkdbWR68xv6a96Nt6mXhrMZaEVT=ejMvqm=TPYngEo6C3RA@mail.gmail.com>
Subject: Re: [PATCH 3/4] pinctrl/rockchip: add a queue for deferred pin output
 settings on probe
To: Heiko Stuebner <heiko@sntech.de>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_163522_531563_DA8E8AFC 
X-CRM114-Status: GOOD (  17.86  )
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

On Tue, Sep 14, 2021 at 12:49 AM Heiko Stuebner <heiko@sntech.de> wrote:

> The separation of pinctrl and gpio drivers created a tiny window where
> a pinconfig setting might produce a null-pointer dereference.
>
> The affected device were rk3288-veyron devices in this case.
>
> Pinctrl-hogs are claimed when the pinctrl driver is registered,
> at which point their pinconfig settings will be applied.
> At this time the now separate gpio devices will not have been created
> yet and the matching driver won't have probed yet, making the gpio->foo()
> call run into a null-ptr.
>
> As probing is not really guaranteed to have been completed at a specific
> time, introduce a queue that can hold the output settings until the gpio
> driver has probed and will (in a separate patch) fetch the elements
> of the list.
>
> We expect the gpio driver to empty the list, but will nevertheless empty
> it ourself on remove if that didn't happen.
>
> Fixes: 9ce9a02039de ("pinctrl/rockchip: drop the gpio related codes")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Hm this is not very elegant but what can we do.
Tentatively applied for fixes.

Can we not use device links to get around this?

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
