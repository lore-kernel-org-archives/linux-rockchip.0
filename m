Return-Path: <SRS0=3LcM=OU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 458F3C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 16:17:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BB1C613CE
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 16:17:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1BB1C613CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gW6JYWxa9nMWo/ktRL44TORFGGase835T6ImF9Yqek=; b=Va9+J6Fg2zXTSO
	ZTEjXTpRDeNFVxGoaWP3n+cJJSEjcVvHpYId7doxDvl6Bm055fTp62/l3QYnb9AywtqnkdLtDjDAV
	3Ju95/EBRgWzoh9224Rog2vs9SIpG89wFAwMXnROmPHeq4+qSk1Bti5S36HSLSOtUfCxrOC/QUtNZ
	CZpmmHfit0cr6dbKxsd2/dJfIjt4lRpeH4fM9KMSpjeX8PTbqdc7SWXGLVHPptUb9W7oP/s93JHce
	KoVtDJ9CNlSvnjgsUzilffvyQSK/pDPBVspK7Kq+yY84C8p2Jf02QOoqipQJZ7My67jObJ/Gjmg8A
	SrLsOORtVfTjwDdxuRzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVyk9-00FBqW-RN; Thu, 30 Sep 2021 16:17:09 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVyjl-00FBfV-7S
 for linux-rockchip@lists.infradead.org; Thu, 30 Sep 2021 16:16:46 +0000
Received: by mail-lf1-x136.google.com with SMTP id x27so27150827lfa.9
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Sep 2021 09:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wrVVL6Q5oh52S40J0qY1IDd3nrzVJ/J8U0I1hgcarO4=;
 b=GGcKF1QOHQHdbK27J87+CXDf1OO+VZ4YO3NuP9kI2G8+4sWkeEA0OekFLzxL/L0w6H
 9nYnWC1zP7NmSdzsSEPUjMqDV5kXvs4oyZRlY+aUdk/RSgbjfZMi94mmTJTuz0cIMU9p
 CTHp6440J8LeqZSNzjqs6YNApx5rLH2OIRa3Jm1dJP+FE3e2aiK2ldl/2ss/r6oTcIfC
 7lXCk1V9kPA0b2fDE6xrjG7VoSAIAvbe8gVQUH2KDZT/66mrPBoSnKqW0oJzO54mqO21
 WYS+EE7VCVS+OxSjVYJ4cUrVK/qlUuYyTmB6bHW6Z7ZCkD5cXSRWMjDiSLmNxLiEoAbu
 JtzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wrVVL6Q5oh52S40J0qY1IDd3nrzVJ/J8U0I1hgcarO4=;
 b=f03k/WU72x/SqGeCCVgHmpDy5NVM1PL943H7o3KTvbysPnJCrT89os9GBOABzw/jMw
 PSsBEPdfsqJZkgpC0H+BhhFzLmItGFlPDIqrVfWokbRFPXEXJeP4KBm3GWAmJPaOs/Yk
 N05CnSSO9bKe8bdv0DWAfTzvyFJpc22t2f47iOVHHh5kZRLBs5z2RSXux/rJLMpNGL+y
 9Wv/+qpzuAIytcZTTV7kvIoSO7TEbnusfWMQirPB1g1vqI2bcPQMzjeS090VQFgJjKur
 alzNRqmXyRHK44j31/9/GdVX1SrWuaWucgUpL7d3GiMTBcmauet9wCMOY9MMk2pBCPnZ
 HPoA==
X-Gm-Message-State: AOAM531HFuPifiM8TWplBnqQT0GSlEwVlKco2SZvdT8IhSmlHUheDfVF
 uyZil/8gd6GQvHgdFP2TB8Y3wyb8ADH1niX3qmHBus/JLRo=
X-Google-Smtp-Source: ABdhPJzral1Se1YwknQbfsFc4flERKu85KncR+/GFdjE4b1oI/LFJgmnco2+Q+rENklt6Pbapdku3puvBG55dvJW1y4=
X-Received: by 2002:a2e:510a:: with SMTP id f10mr6681946ljb.358.1633018603142; 
 Thu, 30 Sep 2021 09:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210930095225.9718-1-jbx6244@gmail.com>
 <20210930095225.9718-2-jbx6244@gmail.com>
In-Reply-To: <20210930095225.9718-2-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 30 Sep 2021 18:16:32 +0200
Message-ID: <CACRpkdYvKiO_jU5rakwpkpDNq=gCjqtqnVebSECGuWioBOG4wg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: change gpio nodenames
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_091645_278099_AE3A5CD0 
X-CRM114-Status: UNSURE (   9.02  )
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

On Thu, Sep 30, 2021 at 11:52 AM Johan Jonker <jbx6244@gmail.com> wrote:

> Currently all gpio nodenames are sort of identical to there label.
> Nodenames should be of a generic type, so change them all.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Please funnel this patch through the SoC tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
