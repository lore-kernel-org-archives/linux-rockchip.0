Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC397C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 09:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOT0OCqxgUJ6GHIbPxQTTvl7YFr58l5kMSREmZniOFc=; b=QHOxmrfNVn2lG7
	uWnrwIBPdN8ZvyaJVXAYWr+ul1WG/q9zmt/YHcNlTFyIRj5BgO0uyCNJPEheSpWvzAKfuqGzudqCG
	hBp/m2HnhVxVLJj4+WeFpOgBWsQMAEc2xspKXoZ4m/8AEzSaEyWiBFV3TNPMN9O0GsVc1c7JP4kVT
	8wNNkCXvPrpyxqFKtD401JfqsYmmCHiEeqQfDcYRw5hjeU+Yt8KLfTGFDmgsHMi/zXemLDFGv5X4d
	fXdO5ES53gJqUPbuZAxony71rLTRMTCTY5U+8M5Q1JVD4e2/nodD8iiUylnd+ICS+heZtmISw4kxJ
	6Te/d6R4KvB9mmsMvZkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofdsz-0094C7-DK; Tue, 04 Oct 2022 09:06:45 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofdsx-0094BJ-3s
	for linux-rockchip@lists.infradead.org; Tue, 04 Oct 2022 09:06:44 +0000
Received: by mail-ed1-x534.google.com with SMTP id y8so17934239edc.10
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Oct 2022 02:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=kawNVgdgBSHd0eDZf0GEPhYoTAGM50TKmYEVuPpOvXw=;
        b=pFedhuEmDarcm6UGf1nBESSgNy2qes/pdzkxnRts4t/i1EH1gAok0LH2QLL/qU/GKu
         trrF6s+eKOaIBra71g1cYXySDOyofwuKEEWQZEH2VvbSko7NjTXd7EC98pgReJj1NbI+
         dUpGl6yUgOVkD4G7mgWoPWRfyms0024ab8aWNcMppTlHWPyQvfwKY56jEXu1xTZyFkxI
         2tKi3yzs/r/P1LA/ushJ6x4/RA95O5Y7lKm+ouVTil4/LPK5h0nNJew0IZ87DOUYX2/I
         qn88+BxBx7btTe9Z/EB3u1OvZ41VxUZ2ntGHBsrQTmqJV3EjHjLPz1g1Q/mmKlWUlRmS
         rhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=kawNVgdgBSHd0eDZf0GEPhYoTAGM50TKmYEVuPpOvXw=;
        b=GU2/EZ20VX456GO4vJVLz92+1YYEZ6JTG+Qe30/v7ax6vSrbYH5xdRKa/YTwch8mwh
         m6Mns0Tss873q8UPVEYoQDdTC9xrdza3H+fLio1J/KsKRL0qkx0P+WWBqkBwCJQKqb5p
         omTkEPmbqBW8e/iO4JY/q35nt+mPV4LPQnB4fkxQ0xNX2JJXjOehLbVupsNj9dTNMZba
         kLat8p/gG06PxVreDfMKSYmbZzxuWMGeR7lwSodPIymWAFXWUX1/3RQBKa5H93EaGafZ
         YeSxaGTX178GxmnPXrFqw7fdZzG/XWP/fand4bTbwzqjA1PsG4ZVuBQiDyWgpTTq71WX
         RVvw==
X-Gm-Message-State: ACrzQf1Tuiyzx7pKCq5DRy2Sbi4u+8AC5yBXVsr5bu6cGsfi+6/PcicQ
	Fja7X4xJA03cS+QWHy5V0zGo+QRdL+Y93oGluToaXw==
X-Google-Smtp-Source: AMsMyM4qfRDS9+wB85yEFq1mRkcFYkp7s9iue5GZNv/IIDTMC8BldHJka0t3IyYpPD4jVjJEviC57nGGcJxzTWyKpwU=
X-Received: by 2002:a05:6402:d0b:b0:458:a244:4e99 with SMTP id
 eb11-20020a0564020d0b00b00458a2444e99mr14584879edb.46.1664874400818; Tue, 04
 Oct 2022 02:06:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220920103108.23074-1-jay.xu@rock-chips.com> <20220920103108.23074-12-jay.xu@rock-chips.com>
 <CACRpkdZSCamhBD-M8CkZt6B3N9c2Jo_D3kwgOykj8+VJ_otYGQ@mail.gmail.com> <YzvvGValqxfIriGL@smile.fi.intel.com>
In-Reply-To: <YzvvGValqxfIriGL@smile.fi.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Oct 2022 11:06:29 +0200
Message-ID: <CACRpkdbA_h4m0cY98=0C2fCbTYEtowFRm9RF=tv=XSgjKxjcAQ@mail.gmail.com>
Subject: Re: [PATCH 11/20] gpio/rockchip: add of_node for gpiochip
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Jianqun Xu <jay.xu@rock-chips.com>, heiko@sntech.de, brgl@bgdev.pl, 
	robert.moore@intel.com, robh@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, lenb@kernel.org, rafael@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_020643_215272_12947768 
X-CRM114-Status: GOOD (  13.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Tue, Oct 4, 2022 at 10:30 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
> On Tue, Oct 04, 2022 at 09:14:38AM +0200, Linus Walleij wrote:
> > On Tue, Sep 20, 2022 at 12:31 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:
> > > The Rockchip GPIO driver will probe before pinctrl and has no parent dt
> > > node, lack of the of_node will cause the driver probe failure.
> > >
> > > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> >
> > > +#ifdef CONFIG_OF_GPIO
> > > +       gc->of_node = of_node_get(bank->dev->of_node);
> > > +#endif
> >
> > Any introduction of of_node_get() needs to be balanced with a
> > corresponding of_node_put().
>
> No, this code should not have been existed in the first place. We don't allow
> anymore any of of_node usage in the GPIO drivers. There is an fwnode and parent
> and logic to retrieve fwnode from parent in the GPIO library for the most of
> the cases.

Hm yeah given that the series want to introduce ACPI as well it makes
a lot of sense.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
