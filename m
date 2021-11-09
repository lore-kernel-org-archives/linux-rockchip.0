Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0ED74C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:56:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C895561105
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:56:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C895561105
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkNE5U2a5A3fUuC9Pq9aSETKTh58AN40mcPQx3f1zLE=; b=q55sOawtO5+3qY
	vmhPs80/XaM/T8bUk9dNLx/UreMDIjUSVLVKQm8jv4UPy7MW2ZY7tlfaNRAoziQmXfr2YMl6Kuwka
	jIgvRNsHPiDsEZ3yx/ZOxCTjG0lh+xMVVrwwzfeorOZ7tvEul9OkqqcUJnpBDGtg6Z9wDCKalMIcn
	YKRA+EEWvy1B6i3e+7BO0qD8T+Wxr1zj9fSeO3BqlzEO7WvECpg2q/B25+ftGCnouV2CZTceUZF4n
	tkmUb1T6grXgXGSoZHSnQZ0EG4p9FwgKA0P5ukK0ubUPkvEP0801HACqEBOchkbgHc1vJ+gvwoOBe
	oIKrUPBkJsXfB7Yr6VYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPjr-001rxK-4O; Tue, 09 Nov 2021 11:56:31 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPjJ-001rls-S6
 for linux-rockchip@lists.infradead.org; Tue, 09 Nov 2021 11:55:59 +0000
Received: by mail-oi1-x231.google.com with SMTP id s139so16060436oie.13
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 03:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gmxUA056LoQ6k99jaGWjOIpUmiYexsv2HwljU2EFRE0=;
 b=N9hW88pun/80QDT7+KjR303qqqT4zVYIi+XRWtMn/4HiWTRgNwQWFEERAYSeVCzeRF
 kMxi2K6lIYVaaHWO4taF6dKSBiuaKVmm4RDBwFFcfG2cswNYdyCL0pthAVHfmisINLCR
 6iDMG7zRPO6TlFu1GMsAM4jSgn1ubQ6dzE/afRQ2FbMOZw8nLuwqSuI2Dofftp5b85HY
 ziTe4PApDuFjJjBGBLgkYNM6pFW84mHZkhmgISQqiqZMAbKkrpJ8hZtJQEwjKj0DdL9e
 oeUydszlDQXa0HRP0GeJczKTSN9jJPsxDUwpSocuXAjRlry/9KcWFtAxyoHU/dz6D5Kg
 GGtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gmxUA056LoQ6k99jaGWjOIpUmiYexsv2HwljU2EFRE0=;
 b=vgTIMLHaJL/unkCafYOM+04qP0OQ6WWLEsqLKmTz2sYFGhoef0Vr5nxHP2agmlevv0
 Pa0AVRLGG/feLvdPHvGzFzKxyEfKfQzIm3BPLv+53qsgKdSB2zIXPAJLOZrrRdbqzqvn
 yJbeSIwbUFlH948T7C2xkjnl1H67LsxVg2I154SnaHzSfX7CXI1ELCVle4JJ+ZF1lyFw
 c67MeGHT8JDM7gGXinDWXK5LHD1Fqpet50uS+7DJDGXJFLAO7Gmi33bymKCSy7dYZUVf
 ZodEVLKEFQgzvTk95+2cHwKXp1YW/qElzJXMkExM9VfKMTGJtNodyGOdCX+3WJ7IJ7Yx
 vpcg==
X-Gm-Message-State: AOAM532BHFllPQSfVUVEzoDegVQ20+nxNY9OJN7ZSLDmBhmSLuk9Zndl
 io+vJd/REiDYWBMzxUZC5ycJvQPUo4pAb6ByusA7ng==
X-Google-Smtp-Source: ABdhPJx0fwGz0nnYBXwkfboQajG0B+6ZNJQLSjASSX+GWOr9XfINOwcTdLMikJbS4mJSmY4hzz/NoIV7GnSrek6EKQs=
X-Received: by 2002:a54:4791:: with SMTP id o17mr5362981oic.114.1636458956589; 
 Tue, 09 Nov 2021 03:55:56 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-14-andriy.shevchenko@linux.intel.com>
 <4b3f1ee1179dd6d4b010cb110b38d26e7d91c19f.camel@perches.com>
 <CAHp75Ve0Bv9VsWFFZxL9wYk=Z_Mm7nat-vf7g8HHTiROi7EY=Q@mail.gmail.com>
 <103d7321a2d18e44fb8c01483b1197766aff645a.camel@perches.com>
 <YYjtLGlSCDPM4UVL@smile.fi.intel.com>
In-Reply-To: <YYjtLGlSCDPM4UVL@smile.fi.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Nov 2021 12:55:44 +0100
Message-ID: <CACRpkdZQsR1yisaCgmSDfG8OtkYgu1tWPBa_mw25o++suLjf4A@mail.gmail.com>
Subject: Re: [PATCH v1 14/19] pinctrl: st: Use temporary variable for struct
 device
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Joe Perches <joe@perches.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Bamvor Jian Zhang <bamv2005@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_035557_941636_824AF083 
X-CRM114-Status: GOOD (  12.26  )
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

On Mon, Nov 8, 2021 at 10:26 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:

> > IMO: the strarray variants introduction and use should be a separate
> > patchset from the rest.
>
> It will add unnecessary churn. Yeah, I have planned to send just that, but then
> it took more and more cleanups and I have to stop at some point, the code there
> is bad (historically or by other reasons, dunno).

I trust your judgement and taste to a large extent so this will not be
necessary. I can queue the whole series in pinctrl when you
think it's mature.

The library bits I kind of feel uncertain about who maintains, but I might just
apply it.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
