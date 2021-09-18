Return-Path: <SRS0=kUxI=OI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50567C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Sep 2021 00:00:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A867E61164
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Sep 2021 00:00:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A867E61164
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cbs9RCI7RhhF1KhKCjX0+INGEl/LEv42RVIA+zSaqy8=; b=mGgaF0yCogsAlw
	+xOozQRDrr71xYPdCI372jiIcF0eMZnsRctvgolQImi/R2RHnXYpd88nR1ocGhWuus+7ZurYcFQTT
	N+PP2Wh4aPlaCIrIeD+9Brduh6JFXkD4SLIF/usk0EA6agGmOs485H9XQw+tPcWq2p8TLv8n844i6
	zjyls39pSAgNlZ3wtkGUghkhQ6XDAdOUgfV6QzCEXVBvRsuDZpLezlhD8u7VuqsLT/PMl2deVSgpW
	rPF2g8aKGKfCNNcuXtmZp3/eUf6MCKjv9oUZZ/ZsTcP8FcWBQKLqnPct69ZKr/fuRImS5Z2RO+9p2
	rPEQSTSIsxZElYq1ArUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRNmj-00FBNh-3N; Sat, 18 Sep 2021 00:00:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRNmV-00FBEe-Hw; Sat, 18 Sep 2021 00:00:37 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mRNmN-0000hh-VN; Sat, 18 Sep 2021 02:00:28 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 4/4] gpio/rockchip: fetch deferred output settings on probe
Date: Sat, 18 Sep 2021 02:00:27 +0200
Message-ID: <1992229.jx4eJSTThl@diego>
In-Reply-To: <CACRpkda2Hc6E27LK=vH_qKkTayG3qP=BGdqBKyLR2dMhekyWTw@mail.gmail.com>
References: <20210913224926.1260726-1-heiko@sntech.de>
 <20210913224926.1260726-5-heiko@sntech.de>
 <CACRpkda2Hc6E27LK=vH_qKkTayG3qP=BGdqBKyLR2dMhekyWTw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_170035_628407_C2EC2191 
X-CRM114-Status: GOOD (  22.21  )
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

Hi Linus,

Am Samstag, 18. September 2021, 01:38:08 CEST schrieb Linus Walleij:
> On Tue, Sep 14, 2021 at 12:49 AM Heiko Stuebner <heiko@sntech.de> wrote:
> 
> > Fetch the output settings the pinctrl driver may have created
> > for pinctrl hogs and set the relevant pins as requested.
> >
> > Fixes: 9ce9a02039de ("pinctrl/rockchip: drop the gpio related codes")
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> 
> Since this patch depends on patch 4/4 I applied this to the pinctrl
> tree as well.
> 
> I still think this looks a bit kludgy but can't think of anything better
> right now and we need a fix for the problem so this goes in.
> 
> But we need to think of something better,

I'm all ears :-) . And yes I do agree with you that this is not very
elegant right now.

The issue is that the pinconf part for PIN_CONFIG_OUTPUT is actually
using the gpio controller to realize this setting. So when this ends up
in a pinctrl-hog, stuff explodes while probing the first pinctrl part.

I guess one way would be to somehow only do the pinctrl-hogs
_after_ all parts have probed.


Thinking about this, the component framework may be one option?
And then adding a pinctr-register / init+enable variant where the
pinctrl hogs can be aquired separately, not as part of pinctrl_enable?

Or maybe I'm thinking way too complex and a way easier solution
is around the corner ;-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
