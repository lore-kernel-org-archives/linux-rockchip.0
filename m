Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9789CC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 07:29:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12B2F61166
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 07:29:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 12B2F61166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cc9EZyXPFBPV4l1YPfnKbEOtlG1m9v639qHgKWe88V8=; b=W2qzyFTe59DE3q8x2qkHLIjBO
	asDpPpChwE1Yg6flf0Q5E2J1J7BxUhKCqNiD4N2e3w+sLNiWnSIHkaizM0vj7+4G7xUrEWXpOySl+
	3ODQAJgY+3ZS7lHzzdNwrWBa+lLclnpK20zyO+lpFHQEwS/+P2/PFwrCKuoHH/V+Nj8WslHJ5byP/
	o53j9N7PY6gFD1i3Z4KhpKyzIxGNeOuv+rrsgLUniqwKSoMrUx0cfJW1mp5iw0vocQ/Lru/v0G2/t
	4uHY39Jqh8JNetYm33DR0R84ESCzAs3d01/NnJ/Q1kcyTMZ72voEi7VUvlkwzciTLD6DZFCKKXd+w
	TSL2J4uNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWZxx-00BqEI-QD; Wed, 14 Apr 2021 07:29:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZxj-00BqCp-LO
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 07:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=mgKOIRuIsQ8kXdRwlwTu4ZZZzpH+5A4kyMAN1OTQ7hU=; b=cZvJHTB2/Kaviu4OGeE7y9tLjK
 hPnFVf7RT+/+/aW8G1r37B3cswALbBp1y01SpGvY2TCrP/mQ94/hglm6mwmfiQVo62/4SVTCLKdhF
 62zAFKUIz4NKBNiPLab7pPosWnzV5lqB8kAE8HGQM7Sa3bE9jvhVDTRrC1KHuuYCfcJfiM1ppazBP
 +5KhPu/JgH2g66x+Jxk68W3Yl/gzzFX2KtcqJsQ1/em0IF8VFf/DJVzuASL/ZaBZnLRvtKYbMRnwy
 kSKGX5M3rJxXDfGTn4wOyMyGh2J5oggqaeESqdT3DO8kCvMqAK1p+BdVWiEF9785kwxcUWotF4ZBv
 lLk1Uulg==;
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZxg-007ZX8-QY
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 07:29:22 +0000
Received: by mail-lj1-x235.google.com with SMTP id m7so11400692ljp.10
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Apr 2021 00:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mgKOIRuIsQ8kXdRwlwTu4ZZZzpH+5A4kyMAN1OTQ7hU=;
 b=aNINOsqBxC30qOUx5fl3WkPA5Mk9aMiC33A0aee3DD/EKIpXcqYPHs1UKb4VPk6jNr
 FKD55JILqObGYbRQIqW268PwVx0Ynzi/ficbdm4U+Z6+Zsvwl6rtpJGshQlubNEsqu0w
 UqryakdXf/ATlSn3A5/0qDKPZBH3ak3Ibc8uxlLQo7mbpQViaJj5GFYYtNmULdjy3yoQ
 3vut1tg+ZpzRt+HbrRGIESXFvB+3EUQ+8DU1MZE6sF1ReMYBiPNHm1rS8F6c4hYmUFWy
 SekA+BHgu5vimnblEKRcYRYOfe50jg90GKM5eaM0MDiu2WYV9ZfShS8lon8kPLwItAPa
 qNlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mgKOIRuIsQ8kXdRwlwTu4ZZZzpH+5A4kyMAN1OTQ7hU=;
 b=pEQ86GafH9vlkFgT9StoLp2NzR36L3HazK6sqzI8FFNumoXUoBACuuw8v87EP3bMnq
 VkDJ5OqMdLO0NsdwfxbSE/7QWa+5Cd6LYQHf7jjaJH5L+DyyA4t/us55xiE4AeJ4F7Ni
 T1RUrcyfDsArLXWlX+ml3ojxDSX7gIg5cFX/Kgrc6SXSg32tSAYi2cM6iJRDXp3py4rP
 0rjerNg+rCVsGpJN55AnM/dS0Xbp/vp6J53LmJAvcIp/21pYG4pti2wTisGYdT02Rwc5
 RJtce4g80AKikYeLLmu0jSzuvKWaLJ5B4+6lNSCR/2GV6UZSNMHnfF2KyowJBhd7rRbf
 5Fqw==
X-Gm-Message-State: AOAM5312E0Pnp3+MXIBaL7o7tfW7DwSoUP8r3wW8pioa00AWXvs3qGRO
 nHVS3mY6q5Klm8AX9+9rsn9BkkU227l7dpnMOkq7ag==
X-Google-Smtp-Source: ABdhPJwGUEe1Q2DKoTdI1PeRAGjLOJHFbrqRHykxPfSLYQ0BB18t1lAwqeZ29W3m27G4qK8f5DlU6ZV2wgRLZ48W4jU=
X-Received: by 2002:a2e:a54c:: with SMTP id e12mr7593893ljn.326.1618385358966; 
 Wed, 14 Apr 2021 00:29:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
In-Reply-To: <20210411133030.1663936-1-pgwipeout@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Apr 2021 09:29:08 +0200
Message-ID: <CACRpkdYU0qsNf=AonKR6MZg_oPNXkFnX7f2n9K4oZRBFDdtRow@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] gpio-rockchip driver
To: Peter Geis <pgwipeout@gmail.com>
Cc: Jianqun Xu <jay.xu@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, 
 Kever Yang <kever.yang@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_002920_882872_1832B795 
X-CRM114-Status: GOOD (  10.01  )
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

On Sun, Apr 11, 2021 at 3:30 PM Peter Geis <pgwipeout@gmail.com> wrote:

> Separate gpio driver from pinctrl driver, and support v2 controller.
>
> Tested on rk3566-quartz64 prototype board.
>
> Patch History:
> V2 - Rebase to latest linux-next.
>
> Tested-by: Peter Geis <pgwipeout@gmail.com>

This does not apply to the pin control tree, the problem with basing stuff
on -next is that it sometimes does not apply to any development tree
and now that happened (because of conflicts in the GPIO tree).

You can either resend this based on the pinctrl "devel" branch:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=devel
... or you can wait until kernel v5.13-rc1 is out and then we can merge
it, but it might even require rebasing after that.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
