Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 801B4C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 11:03:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 401DD610FC
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 11:03:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 401DD610FC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LlWxjLyTaEjV9jOCQoPdsK1EiXUJIl2UAgYOhnGOCCs=; b=BWwsik0chOAYfqX3yfpedIBy5
	+zI0N39wCe5VwszAyD9fHV9iqAFenVE3t+lO2tr/+rDr2bjUGN+FdSqaHpCHLYmD/mzCY/SqHBWpA
	VAqM24byCIXjOLmeXrNjcunpPoJFlILebhLrc/sWh/IgSZZonTUtopNGl1bfRjmaSmsMruZ1oCVo8
	lP9x2sMO2dXiaKJ0r6VAHb0C3vSHcSghwih66YchJLyb4GqRouQGKmHXfm9x+YTD6wZKmDeSA5Hh2
	5EzQh44rCcFsGHb29SubVbr21DK6eOKcLXjqfcG+ieCHgSH5O/7Oj7IJmb33+UuOx3OqxyIiA696x
	Sw/5zb/YA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWdIw-00CM9F-8I; Wed, 14 Apr 2021 11:03:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdIt-00CM8u-V6
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 11:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3/vNS6umXkwbF29d+Z7tlr1T3O0+txjyE70BHssp7rg=; b=texfbEe0nm4U5BWOFpqosB3N4n
 RQz+trSSwhPpRIQhwYJc7XSWWdDCd9bHHpOO08kQ7ZfmPdHBltTAxUGUsovfEwrtj6O5UcWfns5Ba
 0/mY9yDOl84KZjBhFQVMZusV+vC6rcVtT9ZfMBfksC+b5KpoEU8gYJo+M0eKI5Ia9uBPRd7cdx3iO
 bPO5Tp/M7TPTPcGLM3AMWeVrlwUhHeXb8id2MmejrZKNgLOACaB7Gm3IktpQRcFYApxBj+l+ggc50
 p7jdLAGDPKLFDRwwhXr870CdTNmMPZhGTLO+F3v17QsmcSPB9oJ7pYRb1v0ZzlPXNZQb1tPWPyf34
 qXqrw8hw==;
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdIr-007hP9-FR
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 11:03:26 +0000
Received: by mail-lf1-x12c.google.com with SMTP id z13so15450812lfd.9
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Apr 2021 04:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3/vNS6umXkwbF29d+Z7tlr1T3O0+txjyE70BHssp7rg=;
 b=fdJ/dPQmKi55RzbyBZIL1hkuqGGVcUSzFj43in6mgs3qA9PsjCYAdNT3pn972rgt10
 16QCcDi23voSd1xBfjOMRaW1/mr5W3jXk2cEBV3SKAH+0uddV81gU2FgX01fRwYqIGDy
 wMjWEnDhpuk1qup0MW1tEBFvM0INw8QTMvZByOHEeBW7k4HAzoa8h3HQqZJUseBW3hUh
 lNqVhXcOmAaDcEw/FAuI8waKfcxDsf+RSsU+xh0BXT+YsE2YADQhLoxmGQJrGKmorFXl
 r/Ytjb+PJGVzjn9a1Cnw+ypU1271xnSJwXKaLdivoW0z2RNHxLdvkVDiKeMaRbUyv8zf
 FfKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3/vNS6umXkwbF29d+Z7tlr1T3O0+txjyE70BHssp7rg=;
 b=PtYrXSbRfsHxqyRhjFubvkgQA1hMrRobGAbJkMweb7hV+5rEhk92psi7kFPeHkWEAM
 08K7XHL+t7yuE/yUrbTNPrnI5cx1/eZceMdnMteJJV5NY4VB+kVGd0okQPNx95uM+Nti
 StHlSahop0Nl39Y6KmNyEFr0hhkvNw73lR+YYDyT6t9Xxa7ksXq3SdYrNdbe8jNp36ok
 K2PvsTtE/3+jwkr8ziDXOlUe0b0QXDEe2pA82HuobuUwDXq6JGLrl670SNAMrHlNar+8
 PBGdbDbX1s23QvTrZmU1534cOPYtxLy5GizFS1DY2hxpzLT7SBTkJs/aS0TQ6T9b71fB
 +2eQ==
X-Gm-Message-State: AOAM531QwXN6fvH1t5IZRw2MdtmQVcV7Frsl5Lh6dsAnxehwEql0fEpi
 EnSzDiKxFMFehkIhplZjD1XNNutH8BEp3/DgtqXZbw==
X-Google-Smtp-Source: ABdhPJw5W4a3WQ1O7p3Pr1A24/jEz2x5EJmTSO6VW7baQsN+jWwug+hpyjloLA0YsPf+3gSiUjffc5qI+Gpzp5tEnVo=
X-Received: by 2002:a19:4f0e:: with SMTP id d14mr14276105lfb.649.1618398203177; 
 Wed, 14 Apr 2021 04:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210410204500.18091-1-ezequiel@collabora.com>
In-Reply-To: <20210410204500.18091-1-ezequiel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Apr 2021 13:03:12 +0200
Message-ID: <CACRpkdYrFZOV=_yh9ab2tF6omiQ1MKeV21hYMnt0_KssuK8nGA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: rockchip: add RK3568 SoC support
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, 
 Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_040325_565448_98CB531D 
X-CRM114-Status: UNSURE (   7.19  )
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

On Sat, Apr 10, 2021 at 10:45 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:

> Add RK3568/RK3566 SoC support to pinctrl.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
