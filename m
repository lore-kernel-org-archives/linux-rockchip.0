Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E58AAC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 12:13:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4D2161152
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 12:13:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B4D2161152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaLcd0GRqnhYpuv8FdUf+kjxNMKcT6T0VJy523myIig=; b=qvdbWr4X7vlD1E
	OCx03ewke2sRwsAim6/zfo8ovr/iqwHR7IKFmY8KFQMCj0nXE35zMM/VtvA5dewEuGcNYlurmYNZp
	tiOItfAznsrQKuVkwdwDCE3hIPQgQSH0ybO8rNN5PvL0sfbrq8+2Mc6GPjSqve44hoimLCF4FrYsY
	B1G2Yh8yPaPWvIXLAihAoIwS/AkwOBm73w4vaeb6d378MGV3U8kmIOthMahFtUjFWMNwUUZQoshwZ
	qOui8f1FNgZL31/36qv6qmy8PZDa/TVPpaiMhApNMr0392uSE7iH2GTx8Iv4deHbQlgxI8EsRZ8rn
	OI64tPiONrBydn57pAog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPzx-001x9M-B2; Tue, 09 Nov 2021 12:13:09 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPxH-001vnV-Fu; Tue, 09 Nov 2021 12:10:24 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="295869045"
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="295869045"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 04:10:12 -0800
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="469954033"
Received: from smile.fi.intel.com ([10.237.72.184])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 04:10:07 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1mkPwo-0054ma-Cc;
 Tue, 09 Nov 2021 14:09:54 +0200
Date: Tue, 9 Nov 2021 14:09:54 +0200
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Joe Perches <joe@perches.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: Re: [PATCH v1 14/19] pinctrl: st: Use temporary variable for struct
 device
Message-ID: <YYplEi/F24greu+P@smile.fi.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-14-andriy.shevchenko@linux.intel.com>
 <4b3f1ee1179dd6d4b010cb110b38d26e7d91c19f.camel@perches.com>
 <CAHp75Ve0Bv9VsWFFZxL9wYk=Z_Mm7nat-vf7g8HHTiROi7EY=Q@mail.gmail.com>
 <103d7321a2d18e44fb8c01483b1197766aff645a.camel@perches.com>
 <YYjtLGlSCDPM4UVL@smile.fi.intel.com>
 <CACRpkdZQsR1yisaCgmSDfG8OtkYgu1tWPBa_mw25o++suLjf4A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZQsR1yisaCgmSDfG8OtkYgu1tWPBa_mw25o++suLjf4A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_041023_614563_E1BE2922 
X-CRM114-Status: GOOD (  12.35  )
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

On Tue, Nov 09, 2021 at 12:55:44PM +0100, Linus Walleij wrote:
> On Mon, Nov 8, 2021 at 10:26 AM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:

...

> I can queue the whole series in pinctrl when you
> think it's mature.

Forgot to react on this.

I have compile tested the pin control stuff (of course, library including)
and gpio-mockup. To me it's all ready (taking into account the tags we got).

If you feel like pulling it now, go for it and thanks!

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
