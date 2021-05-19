Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E94C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 23:27:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D14B160FF0
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 23:27:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D14B160FF0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DTu6k1owET7Sl2PPs+Fx7JQh7w8kdgudDFxedhoTuYk=; b=rPcIZMUX6eTiIzzq2hLBa+T61
	rAnmoZBxHsQaG8QIwVvgxn4YetVUzyOxKf0PvetZpWC1f8qLA+X+gdkE9NxxZr0r7JmJI0oQQKcm2
	N6W/i33ZOYYdDog/1wwZw9ortNExKhir+akUh7GL8JK2UD5cYaSvpGpowpgMO0Duvs5UIKqLl0Vc2
	e4lFlzy8JWD9qvY+fs4+1rzV875j6SAK6oCrWQ2V5Wz3IPsKLrKI6bj8j/pJfBXlItLf7gHeyIAer
	17jVfAzSu0N74Yo2Ia6JvzwNm0lEiA9C0rs906Q2tI0h6ruhiQOJXaNP6afDc604PzAsp5jpaOY2t
	HkND4bvNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljVam-005L75-Eg; Wed, 19 May 2021 23:27:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVak-005L6Z-2D
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 23:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=bxZcYYmyWxAd2KgaatHVdsQZhrW5sq/Io2MFiasBWic=; b=HsNGhqEBlEHeSF11Nl6aBoW9Pu
 XtvGDv2zsLsMjtDgEtl0Tk8p7gJHj9geODoTdBzP6xSUw2DWUv1Umnw4G0GNE/rsgThOCVA4tSaCx
 Lv5ytZs7udBHprHGRSsA0P9/ssrb+li7iYXZdCgDE9rL6fwxoxZDPfX4CGX9eTutNxR3RNlyvsLnk
 mGqnrQXbB3msnBXqOSPL7sdCIFqMKxQUovVgICQ3x7/x6TUG5b86TiPUg+yZ84ALzohI95BfTcx1f
 WyGHhct4ovMuxTKtQS7vNfv74KXDvY/ujKvXuPhSNEc6S24A0dYg58QqWUPngwMYlU0L5stPg5urT
 45taNrmA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVah-00FqIX-MM
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 23:27:04 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ljVae-0003Mu-T8; Thu, 20 May 2021 01:27:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Jianqun Xu <jay.xu@rock-chips.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 6/7] gpio/rockchip: always enable clock for gpio controller
Date: Thu, 20 May 2021 01:27:00 +0200
Message-ID: <3790260.ZaRXLXkqSa@diego>
In-Reply-To: <CACRpkdbRONGkiukppCROFFLFkCz+vDJFj_OGC=8MSR4JpZaXrQ@mail.gmail.com>
References: <20210510063602.505829-1-jay.xu@rock-chips.com>
 <7622756.lOV4Wx5bFT@phil>
 <CACRpkdbRONGkiukppCROFFLFkCz+vDJFj_OGC=8MSR4JpZaXrQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_162703_765110_AD44495B 
X-CRM114-Status: GOOD (  16.77  )
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

Am Donnerstag, 20. Mai 2021, 01:18:24 CEST schrieb Linus Walleij:
> On Thu, May 13, 2021 at 10:49 PM Heiko Stuebner <heiko@sntech.de> wrote:
> > Am Montag, 10. Mai 2021, 08:37:22 CEST schrieb Jianqun Xu:
> > > Since gate and ungate pclk of gpio has very litte benifit for system
> > > power consumption, just keep it always ungate.
> > >
> > > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> >
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> >
> > I do agree with the reasoning and as an added benefit, we
> > also drop all the clk_enable calls that don't do proper error
> > handling right now ;-)
> 
> Heiko what is your general stance on the rest of the patches?
> I was thinking I should merge them soon if you're not
> against.

I'm definitly in favor of them :-)

I haven't seen any major issues, but sadly also haven't found the
time to really dig deeper into the other patches.

One thing pinctrl/gpio maintainer will need to check is if the

+#include "../pinctrl/core.h"
+#include "../pinctrl/pinctrl-rockchip.h"

(in patch 3)

is actually the right way to go.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
