Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D4FC55178
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 15:54:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 389A5247E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 15:54:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mu8Pn3f9";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iuAxgqHL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 389A5247E1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ikQw16uM+k96euHuN1A9eViiGuSD7wzwF2qGWSkXZDI=; b=mu8Pn3f9zUHFLk5fLAMbM3mYn
	eDPEwmi71MJ7wOPjMktytyl3hS9KO7lL47tEImt3Y7TLtOVKL2dEBQmCmcBELjQTf2ht/uSG3M97W
	g+xFkGaaG/hNA28ciigKM+Wa6HN4NIFqlkio3rHTdYhXO0Yr7YQaAVMwqipyR7+6yCJ+rpxbzGeRs
	j9jueZI6WYG4U2AGL2WJ4spRtBi7egYCTveWjzDdhAz/TIG11cQAhdLdCEiXK+6HXWzO320nDl7CQ
	o2sxFKISdVUrH36SBBvGBFnRsycbmnDle7N8fkBoK5XvvO/T79wKlBmLM4LNFgSsLPVvv/qBbIUZU
	CgEAlz3Qg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXnmj-0005Lv-HL; Wed, 28 Oct 2020 15:54:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXnmg-0005Lb-RT
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 15:54:48 +0000
Received: by mail-lf1-x141.google.com with SMTP id r127so8067997lff.12
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 08:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RrRlnhg/szGXJ+CqTv+QgypRguxwePuNcvzko2eNF90=;
 b=iuAxgqHLkaJPSxfJIECz48Mk4HqjEvaKw6exSc/dPtOPplsvx9/zMz5kQQfnj90PYs
 A7tDdsksEYUq3ePEFesJ3QZL/DTEc+nPxm1fPiCsHEU4vDoxsi/t3sBLRfMsyVUSu3xJ
 EzP9TIhV/2YVRocIgkrKZ/DjHL9zjRbdOQ6+Pz29qR54ppwN0FQMIxMEZ9xnKG3kCuro
 pfH7JV7vsODpk3n2DQ9sJmXM9maBdl3w/Y8jAxhryqcXu1jXVJeNG166qF3B3TIEC5v/
 knuiF9mHiMCNLapbLVyW1D9NlLGFu4sle8tXHZQ1BidCPjtm6c/OZ32fq/BQZ2S5u/wb
 SAJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RrRlnhg/szGXJ+CqTv+QgypRguxwePuNcvzko2eNF90=;
 b=PJZiQhZjiqIJfRWIlAaJVrKmOvRcisVg0U7EjiWvBDfG0LMHBlVEPLAO9cBmxBr71S
 KTZAY2s3oUO6EUvlFFNqrmdOzNaZw6pmNV6NbqJSmb9Eg7c+6NRdW9gNJXlI0BXqjWpk
 mRPxmBdpm5evADQdK1fpYA8mu7qpV4G8VWZYrEQ+i7hyui1fLSog8mTfN28g5PrSCfCJ
 71oCxi64FZWwkYEFtktpuYPWWcl+96y5V32khMY3vSTIsGGwGN5/pms56iJhdyjNbOnf
 tW/hlnRDMrsy6vCrTqgqy4iBu+gfZN+1QTLUZnHqv/fqKCH15i4QNyPAB33noe7aP4dQ
 AGtA==
X-Gm-Message-State: AOAM533uY8moAXVkS10rnk8jMTM8U1NfDJLwK3yhkIee3UHy5o6aJpOj
 6E1VeF0axA8lSrsCm+dFnzCiQl/8sRQ0SPpsr4oUDA==
X-Google-Smtp-Source: ABdhPJwKVwR1CvYavirDMXZ0fgbvKeG/If31B/j9xpUc5tE4BcwJl2E9iG+PvZDYBYOtcz7m1HOT6sMXVSAn0X3/d8w=
X-Received: by 2002:a05:6512:322d:: with SMTP id
 f13mr2793562lfe.571.1603900485127; 
 Wed, 28 Oct 2020 08:54:45 -0700 (PDT)
MIME-Version: 1.0
References: <20201013063731.3618-1-jay.xu@rock-chips.com>
In-Reply-To: <20201013063731.3618-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 28 Oct 2020 16:54:34 +0100
Message-ID: <CACRpkdbrGBJjOPBicQKAde-Y3NNARRcpvcK52Uu1Buu7sC8AvA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] rockchip-pinctrl fixes
To: Jianqun Xu <jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_115447_200150_2516E149 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Oct 13, 2020 at 8:37 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> These patches are required by GKI.
>
> Jianqun Xu (3):
>   pinctrl: rockchip: make driver be tristate module
>   pinctrl: rockchip: enable gpio pclk for rockchip_gpio_to_irq
>   pinctrl: rockchip: create irq mapping in gpio_to_irq

Patches applied for fixes.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
